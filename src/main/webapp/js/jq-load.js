$('.tab-pane.row i').on('click', function(e) {
 e.preventDefault(); // 阻止链接跳转
 var url = this.href; // 保存点击的地址

 $('.row').remove();
 $('.row').load(url + ' .row').fadeIn('slow'); // 加载新内容,url地址与该地址下的选择器之间要有空格,表示该url下的#container
});