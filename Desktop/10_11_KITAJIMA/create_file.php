<?php
session_start();
include("functions.php");
check_session_id();

if (
  !isset($_POST['todo']) || $_POST['todo'] == '' ||
  !isset($_POST['deadline']) || $_POST['deadline'] == ''
) {
  // 項目が入力されていない場合はここでエラーを出力し，以降の処理を中止する
  echo json_encode(["error_msg" => "no input"]);
  exit();
}

// 受け取ったデータを変数に入れる
$todo = $_POST['todo'];
$deadline = $_POST['deadline'];

if (isset($_FILES['upfile']) && $_FILES['upfile']['error'] == 0) {

  $uploadedFileName = $_FILES['upfile']['name'];//ファイル名の取得
  $tempPathName = $_FILES['upfile']['tmp_name']; //tmpフォルダの場所
  $fileDirectoryPath = 'upload/'; //アップロード先フォルダ

  $extension = pathinfo($uploadedFileName, PATHINFO_EXTENSION);
  $uniqueName = date('YmdHis').md5(session_id()) . "." . $extension;
  $fileNameToSave = $fileDirectoryPath.$uniqueName;
  
  if(is_uploaded_file($tempPathName)){
    if (move_uploaded_file($tempPathName, $fileNameToSave)) {
      chmod($fileNameToSave, 0644); // 権限の変更
    } else {
        exit("保存できませんでした");    
      }
    } else {
    exit("ファイルがありません");
    }
    } else {
    exit("アップロード失敗");
    }

// ここからファイルアップロード&DB登録の処理を追加しよう！！！
// DB接続関数
$pdo = connect_to_db();

// ユーザ存在有無確認
$sql = 'INSERT INTO todo_table(id, todo, deadline, image, created_at, updated_at) VALUES(NULL, :todo, :deadline, :image, sysdate(), sysdate())';

$stmt = $pdo->prepare($sql);
//var_dump($stmt);
// exit();

$stmt->bindValue(':todo', $todo, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);
$stmt->bindValue(':image', $fileNameToSave, PDO::PARAM_STR);
$status = $stmt->execute();
// var_dump($todo);
// var_dump($deadline);
// var_dump($fileNameToSave);
// exit();


if ($status == false) {
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
  // ...エラー処理を記述
  } else {
    header("Location:todo_input.php");
    exit();
  }
  ?>