document.addEventListener('DOMContentLoaded', function(){
  var target = document.getElementById("side-bar");
  const pathname = location.pathname
  
  //国語選択時のスタイル変更
  const pullDownButton1 = document.getElementById("menu_bar01")
  pullDownButton1.addEventListener('click', function() {
    target.className = "side-bar_1";
  });

  if ((pathname == "/posts/2/choice")||(pathname == "/posts/3/choice")||(pathname == "/posts/4/choice")){
    var target = document.getElementById("side-bar");
    target.className = "side-bar_1";
  };

  //外国語選択時のスタイル変更
  const pullDownButton2 = document.getElementById("menu_bar02")
  pullDownButton2.addEventListener('click', function() {
    target.className = "side-bar_2";
  });

  if ((pathname == "/posts/5/choice")||(pathname == "/posts/6/choice")||(pathname == "/posts/7/choice")||(pathname == "/posts/8/choice")||(pathname == "/posts/9/choice")){
    var target = document.getElementById("side-bar");
    target.className = "side-bar_2";
  };

  //数学選択時のスタイル変更
  const pullDownButton3 = document.getElementById("menu_bar03")
  pullDownButton3.addEventListener('click', function() {
    target.className = "side-bar_3";
  });

  if ((pathname == "/posts/10/choice")||(pathname == "/posts/11/choice")||(pathname == "/posts/12/choice")||(pathname == "/posts/13/choice")||(pathname == "/posts/14/choice")||(pathname == "/posts/15/choice")){
    var target = document.getElementById("side-bar");
    target.className = "side-bar_3";
  };

  //理科選択時のスタイル変更
  const pullDownButton4 = document.getElementById("menu_bar04")
  pullDownButton4.addEventListener('click', function() {
    target.className = "side-bar_4";
  });

  if ((pathname == "/posts/16/choice")||(pathname == "/posts/17/choice")||(pathname == "/posts/18/choice")||(pathname == "/posts/19/choice")){
    var target = document.getElementById("side-bar");
    target.className = "side-bar_4";
  };

  //社会選択時のスタイル変更
  const pullDownButton5 = document.getElementById("menu_bar05")
  pullDownButton5.addEventListener('click', function() {
    target.className = "side-bar_5";
  });

  if ((pathname == "/posts/20/choice")||(pathname == "/posts/21/choice")||(pathname == "/posts/22/choice")||(pathname == "/posts/23/choice")){
    var target = document.getElementById("side-bar");
    target.className = "side-bar_5";
  };

});
