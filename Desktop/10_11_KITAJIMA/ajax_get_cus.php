<?php
/// Access-Control-Allow-Originエラーを回避する
header("Access-Control-Allow-Origin: *");
header('Content-type: application/json; charset=UTF-8');
include("functions.php");
var_dump($_GET);
// exit();

$search_word = $_GET["serchword"];// GETのデータ受け取り
var_dump($_GET);
$pdo=connect_to_db();

$sql = "SELECT * FROM customer_table WHERE trb1 LIKE '%{$search_word}%'";

$stmt = $pdo -> prepare($sql);
$status = $stmt -> execute();

if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
    // ...エラー処理を記述
    } else {
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result); // JSON形式にして出力
    exit();
    }