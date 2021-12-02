///問題画像
document.addEventListener('DOMContentLoaded', function(){
  // 新規投稿・編集ページのフォームを取得
  const postForm = document.getElementById('new_post');

  // プレビューを表示するためのスペースを取得
  const previewList = document.getElementById('previews_q');

  // 新規投稿・編集ページのフォームがないならここで終了
  if (!postForm) return null;

  // input要素を取得
  const fileField_q = document.querySelector('input[type="file"][name="post[question_image]"]');
  // input要素で値の変化が起きた際に呼び出される関数
  fileField_q.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const alreadyPreview_q = document.querySelector('.preview');
    if (alreadyPreview_q) {
      alreadyPreview_q.remove();
    };

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    // 画像を表示するためのdiv要素を生成
    const previewWrapper_q = document.createElement('div');
    previewWrapper_q.setAttribute('class', 'preview_q');

    // 表示する画像を生成
    const previewImage_q = document.createElement('img');
    previewImage_q.setAttribute('class', 'preview-image_q');
    previewImage_q.setAttribute('src', blob);

    // 生成したHTMLの要素を表示
    previewWrapper_q.appendChild(previewImage_q);
    previewList.appendChild(previewWrapper_q);
  });
});


///解答画像
document.addEventListener('DOMContentLoaded', function(){
  // 新規投稿・編集ページのフォームを取得
  const postForm = document.getElementById('new_post');

  // プレビューを表示するためのスペースを取得
  const previewList = document.getElementById('previews_a');

  // 新規投稿・編集ページのフォームがないならここで終了
  if (!postForm) return null;

  // input要素を取得
  const fileField_a = document.querySelector('input[type="file"][name="post[answer_image]"]');
  // input要素で値の変化が起きた際に呼び出される関数
  fileField_a.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const alreadyPreview_a = document.querySelector('.preview');
    if (alreadyPreview_a) {
      alreadyPreview_a.remove();
    };

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    // 画像を表示するためのdiv要素を生成
    const previewWrapper_a = document.createElement('div');
    previewWrapper_a.setAttribute('class', 'preview_a');

    // 表示する画像を生成
    const previewImage_a = document.createElement('img');
    previewImage_a.setAttribute('class', 'preview-image_a');
    previewImage_a.setAttribute('src', blob);

    // 生成したHTMLの要素を表示
    previewWrapper_a.appendChild(previewImage_a);
    previewList.appendChild(previewWrapper_a);
  });
});