CKEDITOR.editorConfig = function(config) {
  config.height = 135;
  config.width = 1150;
  return true;
};


$(document).ready(function() {
  CKEDITOR.config.removePlugins = 'save,source,newpage,docdrops,preview,print,templates,document,find,replace,selectall,form,radio,createplaceholder,flash,table,tabletools,horizontalrule,smiley,specialchar,pagebreak,iframe,insertpre,creatediv, blockquote,numberedlist,bulletlist,form,checkbox,radio,textarea,textfield,select,anchor,link';
});
