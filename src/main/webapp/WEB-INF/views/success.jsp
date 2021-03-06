<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>
</head>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<style>
/*----- Tabs -----*/
.tabs {
    width:100%;
    display:inline-block; 
}
 
    /*----- Tab Links -----*/
    /* Clearfix */
    /*.tab-links:after { 
        display:block;
        clear:both;
        content:''; 
    }*/
   
    .tab-links li {   
        margin:0px 5px;
        float:left;
        list-style:none;
    }
 
       .tab-links a {
    background: none repeat scroll 0 0 #7FB5DA;
    border: 1px solid #7FB5DA;
    border-radius: 3px 3px 0 0;
    color: #4C4C4C;
    display: inline-block;
    font-size: 16px;
    font-weight: 600;
    padding: 9px 15px;
    position: relative;
    transition: all 0.15s linear 0s;
    z-index: 15;
}
 
        .tab-links a:hover {
            background:#a7cce5;
            text-decoration:none;
        }
 
    
li.active a, li.active a:hover {
    background: none repeat scroll 0 0 #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
    color: #4C4C4C;
}
 
    /*----- Content of Tabs -----*/
    
.tab-content {
    background: none repeat scroll 0 0 #FFFFFF;
    border: 1px solid #7FB5DA;
    border-radius: 3px;
    box-shadow: -1px 1px 1px rgba(0, 0, 0, 0.15);
    float: left;
    margin-top: -1px;
    padding: 15px;
    width: 100%;
}
 
        .tab {
            display:none;
        }
 
        .tab.active {
            display:block;
        }

</style>


<script>
$(document).ready(function() {
	
    $('.tabs .tab-links a').on('click', function(e)  {
        var currentAttrValue = $(this).attr('href');
 
        // Show/Hide Tabs
        $('.tabs ' + currentAttrValue).show().siblings().hide();
 
        // Change/remove current tab to active
        $(this).parent('li').addClass('active').siblings().removeClass('active');
 
        e.preventDefault();
    });
});

</script>
<body>

<div class="tabs">
    <ul class="tab-links">
        <li class="active"><a href="#tab1">Tab #1</a></li>
        <li><a href="#tab2">Tab #2</a></li>
        <li><a href="#tab3">Tab #3</a></li>
        <li><a href="#tab4">Tab #4</a></li>
    </ul>
 
    <div class="tab-content">
        <div id="tab1" class="tab active">
            <p>Tab #1 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis.</p>
        </div>
 
        <div id="tab2" class="tab">
            <p>Tab #2 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
        </div>
 
        <div id="tab3" class="tab">
            <p>Tab #3 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum ri.</p>
        </div>
 
        <div id="tab4" class="tab">
            <p>Tab #4 content goes here!</p>
            <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris eget aliquet lacinia! Donec pulvinar massa interdum risus ornare mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus orci, iaculis vel.</p>
        </div>
    </div>
</div>

</body>
</html>
