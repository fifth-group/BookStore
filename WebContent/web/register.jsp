<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书商城用户注册</title>
<link rel="stylesheet" href="../css/select2.css" />
<link rel="stylesheet" href="../css/style_studio_1.css">
<link rel="stylesheet" href="../css/register.css">
<script type="text/javascript" src="../js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="../js/location.js"></script>
<script>
    ; (function () {
        var browser = {
            versions: function () {
                var u = navigator.userAgent, app = navigator.appVersion;
                return {         //移动终端浏览器版本信息
                    trident: u.indexOf('Trident') > -1, //IE内核
                    presto: u.indexOf('Presto') > -1, //opera内核
                    webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                    gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                    mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                    ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                    android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
                    iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
                    iPad: u.indexOf('iPad') > -1, //是否iPad
                    webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
                };
            }(),
            language: (navigator.browserLanguage || navigator.language).toLowerCase()
        }

        //获取cookie中工作室标记
        function utils_getCookie_gbk(cookieName){
            var arrstr = document.cookie.split("; ");
            for(var i = 0;i < arrstr.length;i ++){
                var temp = arrstr[i].split("=");
                if(temp[0] == cookieName){
                    var thisCookie =  arrstr[i].substring( temp[0].length + 1 )
                    if( thisCookie.split('&').length>3 ){
                        var value = thisCookie.split('&')[3].split('=')[1]
                        return value == 0?'retail':'studio'
                    }
                    return 'retail';
                }
            }
            return "retail";
        }
        window.GTM_UserType = utils_getCookie_gbk('MimouserB')

        window.GTM_Device = browser.versions.mobile ? 'mobile' : 'pc';
    })();
</script>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':

new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],

j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=

'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);

})(window,document,'script','dataLayer','GTM-5L7MW34');</script>




<script type="text/javascript">
;(function () {
    var browser = {
        versions: function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            return {         //移动终端浏览器版本信息
                trident: u.indexOf('Trident') > -1, //IE内核
                presto: u.indexOf('Presto') > -1, //opera内核
                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                mobile: !!u.match(/AppleWebKit.*Mobile.*/), //是否为移动终端
                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或uc浏览器
                iPhone: u.indexOf('iPhone') > -1, //是否为iPhone或者QQHD浏览器
                iPad: u.indexOf('iPad') > -1, //是否iPad
                webApp: u.indexOf('Safari') == -1 //是否web应该程序，没有头部与底部
            };
        }(),
        language: (navigator.browserLanguage || navigator.language).toLowerCase()
    }

    var checkIsWechat = function () {
        var ua = navigator.userAgent.toLowerCase();//获取判断用的对象
        return (ua.match(/MicroMessenger/i) == "micromessenger");
    }

    var isWechat = checkIsWechat();
    var isMobile = browser.versions.mobile;
	var gaCode = "UA-9580877-1";//全局统计
	var gaCodeMobile = "UA-9580877-6";//移动端统计

    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    console.log("gaCode:" + gaCode);
    ga('create', gaCode, 'auto');
    ga('send', 'pageview');

    //移动端单独统计多一份
    if(isMobile){
    	ga('create', gaCodeMobile, 'auto', 'mobileTracker');
    	ga('mobileTracker.send', 'pageview');
	}

    

    (function () {
        var oJs = document.createElement("script");
        oJs.type = "text/javascript";
        oJs.src = "http://cdn1.mimoprint.com/static/script/mmping.js?v=0815";
        document.getElementsByTagName("head")[0].appendChild(oJs);

        window.mmping = window.mmping || [];
        window.mmping.methods = "create sendPV sendEV setUid".split(" ");
        window.mmping.temp = window.mmping.temp || [];
        window.mmping.factory = function (b) {
            return function () {
                var a = Array.prototype.slice.call(arguments);
                a.unshift(b);
                window.mmping.temp.push(a);
                return window.mmping;
            }
        }
        for (var i = 0; i < window.mmping.methods.length; i++) {
            var key = window.mmping.methods[i];
            window.mmping[key] = window.mmping.factory(key);
        }

        if (oJs.readyState) {  //IE  
            oJs.onreadystatechange = function () {
                if (oJs.readyState == "loaded" || oJs.readyState == "complete") {
                    oJs.onreadystatechange = null;
                    window.mmping = new mmping();
                }
            };
        } else {  //Others  
            oJs.onload = function () {
                window.mmping = new mmping();
            };
        }
    })(window)
    window.mmping.create('MM-001');
    window.mmping.sendPV();
})(window, document);
</script>
</head>
<body>
<div id="header_entirety">
		<a href="/workshop/index"><img class="haofeng_logo" src="../img/logo.png"></a>
	</div>
	<div id="main_entirety">
            <div class="account_message">
			    <ul>
				    <li>
					<div class="message_vessel">
						<input type="text" id="name" name="username" class="input_vessel" placeholder="用户名"></div>
					</li>
				    <li>
					    <div class="message_vessel">
						    <input type="password" id="password" name="password" class="input_vessel" placeholder="密码"></div>
				    </li>
				    <li>
					    <div class="message_vessel">
						    <input type="password" id="repassword" name="repassword" class="input_vessel" placeholder="重复密码"></div>
				    </li>
				    
				    <li>
					    <div class="message_vessel">
						    <input type="text" id="email" name="email" class="input_vessel" placeholder="邮箱"></div>
				    </li>
				    <li>
					<div class="message_vessel">
						<input type="text" id="phone" name="mobilephone" class="input_vessel" placeholder="联系人手机"></div>
				</li>
			    </ul>
		    </div>
		
		<div class="submit_message">
			<div id="submit_btn" class="submit_btn">确认提交</div>
			<div class="back_btn">已有<a href="">账号登陆</a></div>  <!-- 待填 -->
		</div>
	</div>
	<script>
		(function (doc, win) {
			var docEl = doc.documentElement,
			resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
			recalc = function () {
				var clientWidth = docEl.clientWidth;
				if (!clientWidth) return;
				docEl.style.fontSize = 12 * (clientWidth / 320) + 'px';
			};

			if (!doc.addEventListener) return;
			win.addEventListener(resizeEvt, recalc, false);
			doc.addEventListener('DOMContentLoaded', recalc, false);
		})(document, window);

		$(function(){
		    window.UserId = "";

		    var loc	= new Location();

		    $.each(loc.items[0],function(i,n){
		    	$("#loc_province").append('<option value="' + i + '" data-name="'+ n +'">' + n + '</option>');
		    });

		    $("#message_area")
			    .on("change","#loc_province",function(){
			    	var info = [$("#loc_city"),$("#loc_town")];
			    	initLocationOpt($(this),info);

					var index = "0," + $(this).attr("value");
					$.each(loc.items[index],function(i,n){
						info[0].append('<option value="' + i + '" data-name="'+ n +'">' + n + '</option>');
					});
			    })
			    .on("change","#loc_city",function(){
			    	var info = [$("#loc_town")];
			    	initLocationOpt($(this),info);

			    	var index = "0," + $("#loc_province").attr("value") + "," + $(this).attr("value");
			    	$.each(loc.items[index],function(i,n){
				    	info[0].append('<option value="' + i + '" data-name="'+ n +'">' + n + '</option>');
				    });
			    })
			    .on("change","#loc_town",function(){
			    	var info = [];
			    	initLocationOpt($(this),info);
			    });

			$("#main_entirety")
				.on("change","#email",function(){
					var doc = $(".error_email");
					errorMessageHint(doc,{
						email: $("#email").val()
					});
				})
				.on("change","#password",function(){
					var doc = $(".error_password");
					errorMessageHint(doc,{
						password: $("#password").val(),
						repassword: $("#repassword").val()
					},"password");
				})
				.on("change","#repassword",function(){
					var doc = $(".error_repassword");
					errorMessageHint(doc,{
						password: $("#password").val(),
						repassword: $("#repassword").val()
					},"repassword");
				})
				.on("change","#studio_name",function(){
					var doc = $(".error_studio_name");
					errorMessageHint(doc,{
						studioName: $("#studio_name").val()
					});
				})
				.on("change","#name",function(){
					var doc = $(".error_name");
					errorMessageHint(doc,{
						name: $("#name").val()
					});
				})
				.on("change","#phone",function(){
					var doc = $(".error_phone");
					errorMessageHint(doc,{
						phone: $("#phone").val()
					});
				})
				.on("change","#QQ_WeChat",function(){
					var doc = $(".error_QQ_WeChat");
					errorMessageHint(doc,{
						QQWeChat: $("#QQ_WeChat").val()
					});
				})
				.on("change","#describe",function(){
					var doc = $(".error_describe");
					errorMessageHint(doc,{
						describe: $("#describe").val()
					});
				});

			var isClick = false; //防止多次点击提交
			$("#submit_btn").click(function () {
			    if (isClick) {
			        return;
			    } else {
			        isClick = true;
			    }

				var shootTypeOther = $("#shoot_type_other").val(),
					makeCraftOther = $("#make_craft_other").val();

				var info = {
					email 			: $("#email").val(),
					password 		: $("#password").val(),
					repassword 		: $("#repassword").val(),
					name 			: $("#name").val(),
					phone	 		: $("#phone").val(),
				};
					
				var doc = $(".error_hint");
				errorMessageHint(doc,info,"submit");

				var error = $(".error_hint").length;
				if (error != 0) {
				    isClick = false;
				    return;
				}
				
				$.post("/workshop/TheStudioCommonRegister",{  //待改正
					form: "",
					userId: window.UserId,
					email: info.email,
					password: info.password,
					repassword: info.repassword,
					username: info.name,
				},function(data){
					if (data.success == 1) {
						window.location.href = data.url;
					}
					if (data.success == 0) {
						alert(data.msg);
					}
					isClick = false;
				});
			});

			function initLocationOpt(sender,loc_id){
				addLocationName(sender,sender.val());
				for (var i = 0; i < loc_id.length; i++) {
					var $this = loc_id[i].children("option");
					for (var j = 1; j < $this.length; j++) {
						$this[j].remove();
					}
			    	addLocationName(loc_id[i],loc_id[i].val());
				}
			}

			function addLocationName(sender,dataNum){
				for (var i = 0; i < sender.children("option").length; i++) {
					var num = sender.children("option")[i].value;
					if (num == dataNum) {
						var name = sender.children("option")[i].text;
						sender.attr("data-name",name);
					}
				}
			}

			function getCheckedMessageByName(name,other){
				var data,
					sender = $(":checkbox[name=" + name + "][checked]");
				for (var i = 0; i < sender.length; i++) {
					var type = sender[i].value;
					data = data == undefined ? type : data + "|" + type;
				}
				if (other != undefined) {
					data = data == undefined ? other : data + "|" + other;
				}
				
				return data;
			}

			function errorMessageHint(doc,info,sender){
				doc.remove();

				if (info.email == "") {
					$("#email").after('<span class="error_hint error_email">邮箱不能为空</span>');
				}
				if (info.password == "" && (sender == "password" || sender == "submit")) {
					$("#password").after('<span class="error_hint error_password">密码不能为空</span>');
				}else{
					if (info.password == info.repassword && (sender == "password" || sender == "submit")) {
						$(".error_repassword").remove();
					}
				}
				if (info.repassword == "" && sender == "repassword") {
					$("#repassword").after('<span class="error_hint error_repassword">密码不能为空</span>');
				}else{
					$(".error_repassword").remove();
					if (info.repassword != info.password && (sender == "repassword" || sender == "submit" || info.repassword != "")) {
						$("#repassword").after('<span class="error_hint error_repassword">两次密码有误</span>');
					}
				}
			function getByteLen (val) {
			    var len = 0;
			    for (var i = 0; i < val.length; i++) {
			        var c = val.charCodeAt(i);
			        //单字节加1 
			        if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
			            len++;
			        }
			        else {
			            len += 2;
			        }
			    };
			    return len;
			}

			document.onkeydown = function (event) {
			    e = event ? event : (window.event ? window.event : null);
			    if (e.keyCode == 13) {
			        $("#submit_btn").click();
			    }
			}
		});
	</script>
</body>
</html>