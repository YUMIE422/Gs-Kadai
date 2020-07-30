<?php
session_start();
include("functions.php");
check_session_id();

// 項目入力のチェック
// 値が存在しないor空で送信されてきた場合はNGにする
if (
  // !isset($_POST["id"]) || $_POST["id"]=='' ||
  !isset($_POST["namae"]) || $_POST["namae"]=='' ||
  !isset($_POST["birthday"]) || $_POST["birthday"]=='' ||
  !isset($_POST["bloodtype"]) || $_POST["bloodtype"]=='' ||
  !isset($_POST["age"]) || $_POST["age"]=='' ||
  !isset($_POST["seibetu"]) || $_POST["seibetu"]=='' ||
  !isset($_POST["tel"]) || $_POST["tel"]=='' ||
  !isset($_POST["jyusho"]) || $_POST["jyusho"]=='' ||
  !isset($_POST["date"]) || $_POST["date"]=='' 
  ) {
  exit("ParamError");
  }

// 受け取ったデータを変数に入れる
// $id = $_POST["id"];
$namae = $_POST["namae"];
$birthday = $_POST["birthday"];
$bloodtype = $_POST["bloodtype"];
$age = $_POST["age"];
$seibetu = $_POST["seibetu"];
$tel = $_POST["tel"];
$jyusho = $_POST["jyusho"];
$date = $_POST["date"];
$exp1 = $_POST["exp1"];
$exp2 = $_POST["exp2"];
$detail = $_POST["detail"];
$Choice = $_POST["Choice"];
$Choice1 = $_POST["Choice1"];
$Choice2 = $_POST["Choice2"];
$Choice3 = $_POST["Choice3"];
//   var_dump($_POST);
// exit();

// 写真のアップロード処理
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

// DB接続の設定
// DB名は`gsacf_x00_00`にする
$pdo = connect_to_db();
// 送信確認

//各チョイスの中に配列を入れる
$Choice = join(",", $Choice);
$Choice1 = join(",", $Choice1);
$Choice2 = join(",", $Choice2);
$Choice3 = join(",", $Choice3);
// var_dump($_POST);
// exit();

// データ登録SQL作成
// `created_at`と`updated_at`には実行時の`sysdate()`関数を用いて実行時の日時を入力する
$sql = "INSERT INTO customer_table(id, namae, seibetu, birthday, age, bloodtype, jyusho, tel, date, trb1, care1, care2, care3, exp1, exp2, detail, image)
VALUES(NULL, :namae, :seibetu, :birthday, :age, :bloodtype, :jyusho, :tel, :date, :Choice, :Choice1, :Choice2, :Choice3, :exp1, :exp2, :detail, :image)";

// SQL準備&実行
$stmt = $pdo->prepare($sql);
// $stmt->bindValue(":id", $id, PDO::PARAM_INT);
$stmt->bindValue(":namae", $namae, PDO::PARAM_STR);
$stmt->bindValue(":seibetu", $seibetu, PDO::PARAM_STR);
$stmt->bindValue(":birthday", $birthday, PDO::PARAM_STR);
$stmt->bindValue(":bloodtype", $bloodtype, PDO::PARAM_STR);
$stmt->bindValue(":age", $age, PDO::PARAM_STR);
$stmt->bindValue(":tel", $tel, PDO::PARAM_STR);
$stmt->bindValue(":jyusho", $jyusho, PDO::PARAM_STR);
$stmt->bindValue(":date", $date, PDO::PARAM_STR);
$stmt->bindValue(":Choice", $Choice, PDO::PARAM_STR);
$stmt->bindValue(":Choice1", $Choice1, PDO::PARAM_STR);
$stmt->bindValue(":Choice2", $Choice2, PDO::PARAM_STR);
$stmt->bindValue(":Choice3", $Choice3, PDO::PARAM_STR);
$stmt->bindValue(":exp1", $exp1, PDO::PARAM_STR);
$stmt->bindValue(":exp2", $exp2, PDO::PARAM_STR);
$stmt->bindValue(":detail", $detail, PDO::PARAM_STR);
$stmt->bindValue(':image', $fileNameToSave, PDO::PARAM_STR);
//   var_dump($_POST);
// exit();
$status = $stmt->execute(); // SQLを実行
//   var_dump($_POST);
// exit();

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  // データ登録失敗次にエラーを表示
  exit("sqlError:".$error[2]);
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  header("Location:todo_input_cus.php");

}
