var timerId;
 
// ボックスを表示して、タイマーを開始
function showBox() {
   document.getElementById("temporaryBox").style.display = "block"; // ボックスを表示
   timerId = setTimeout( closeBox , 5000 ); // タイマーを開始
   document.getElementById("btnShowBox").disabled = true; // 表示用ボタンを無効化
}
 
// ボックスを消して、タイマーを終了
function closeBox() {
   document.getElementById("temporaryBox").style.display = "none"; // ボックスを消す
   clearTimeout( timerId ); // タイマーを終了
   document.getElementById("btnShowBox").disabled = false; // 表示用ボタンを有効化
   document.getElementById("btnKeepBox").disabled = false; // 維持用ボタンを有効化
}
 
// タイマーだけを中止
function keepBox() {
   clearTimeout( timerId ); // タイマーを終了
   document.getElementById("btnKeepBox").disabled = true; // 維持用ボタンを無効化
}