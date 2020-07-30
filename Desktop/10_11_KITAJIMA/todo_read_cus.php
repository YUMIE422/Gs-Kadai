<?php
// DB接続の設定
// DB名は`gsacf_x00_00`にする
// var_dump($_POST);
// exit();
session_start();
include("functions.php");
// $id=$_SESSION["user_id"];

$pdo = connect_to_db();

// データ取得SQL作成
// $sql = 'SELECT * FROM customer_table';
$sql = 'SELECT * FROM users_table WHERE id=:id AND is_deleted=0';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();


// SQL準備&実行
$view='';

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  exit('sqlError:'.$error[2]);
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  // fetchAll()関数でSQLで取得したレコードを配列で取得できる
  $result = $stmt->fetch(PDO::FETCH_ASSOC);  // データの出力用変数（初期値は空文字）を設定
  // var_dump($result);
  //   exit();
  $output = "";
  // <tr><td>deadline</td><td>todo</td><tr>の形になるようにforeachで順番に$outputへデータを追加
  // `.=`は後ろに文字列を追加する，の意味

    $output .= "<tr>";
    // var_dump($record);
    // exit();
    $output .= "<td>{$result["id"]}</td>";
    // $output .= "<td>{$record["namae"]}</td>";
    // $output .= "<td>{$record["date"]}</td>";
    $output .= "</tr>";
    // edit deleteリンクを追加
    $output .= "<td><a href='todo_edit_cus.php?id={$result["id"]}'>edit</a></td>";
    $output .= "<td><a href='todo_delete_cus.php?id={$result["id"]}'>delete</a></td>";
    $output .= "</tr>";
  }

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>エステカウンセリングシート（一覧画面）</title>
</head>

<body>
  <fieldset>
    <legend>エステカウンセリングシート（一覧画面）</legend>
    <a href="todo_input_cus.php">入力画面</a>
    <table>
      <thead>
        <tr>
          <th>ID</th><br>
          <th>お名前</th><br>
          <th>日付</th><br>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>