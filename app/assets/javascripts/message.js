// $(function(){
//   function buildHTML(message) {
//     var content = message.content ? `${ message.content }` : "";
//     var html = `<div class="message" data-id="${message.id}">
//                     <div>
//                     ${content}
//                     </div>
//                 </div>`
//   return html;
//   }
//   $('#new_message').on('submit', function(e){
//     e.preventDefault();
//     var formData = new FormData(this);
//     var url = $(this).attr('action');
//     $.ajax({
//       url: url,
//       type: "GET",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data){
//       var html = buildHTML(data);
//       $('.chat-field').append(html);      
//       $('form')[0].reset();
//     })
//   });

// });


// var formData = new FormData(this); //サーバーにデータを送信する際に使用するオブジェクト
// var url = $(this).attr('action'); //HTML要素の属性を取得したり設定することができるメソッド,【 対象要素.attr( 属性, （変更する値） ) 】のように引数へ任意の属性を指定
