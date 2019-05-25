<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书商城用户登录</title>
  <link rel="stylesheet" href="../css/style_studio_1.css">
  <link rel="stylesheet" href="../css/login.css">
  <script type="text/javascript" src="../js/jquery-1.8.2.js"></script>
</head>
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

        //获取cookie标记
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
</script></head>
<body>
	<div id="header_entirety">
		<a href="/workshop/index"><img class="haofeng_logo" src="../img/logo.png"></a>
	</div>
	<div id="main_entirety">
		<div class="login_box">
			<ul>
				<li>
					<input type="text" tabindex="1" id="email" name="email" maxlength="64" class="input_vessel" placeholder="请输入用户名"></li>
				<li>
					<input type="password" tabindex="2" id="password" name="password" maxlength="20" class="input_vessel" placeholder="请输入密码"></li>
				<li>
					<div class="state_vessel">
						<div class="login_state">
							<input type="checkbox" id="login_state" name="login_state" value="true">		
							<span>下次自动登录</span>
						</div>
					</div>
				</li>
				<li>
					<div id="login_btn" class="login_btn">登录</div>
				</li>
				<li><a class="register_btn" href="">用户注册</a><a class="findpw_btn" href="">忘记密码</a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript" src="static/js/jquery-1.8.2.js"></script>
	<script type="text/javascript" src="static/js/user.js"></script>
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
			$("#login_btn").click(function(){
				var isOk = UserAccount.Login.CheckLoginForm();

				if (isOk == false) return;

				var email = $("#email").val(),
					password = $("#password").val()
					loginState = $(":checkbox[name=login_state][checked]").attr("value");

				if (loginState == undefined) {
					loginState = "false";
				}

				var isSort = window.location.search;
				var url = isSort == undefined ? "" : isSort;

				$.post("/workshop/TheStudioCommonLogin" + url, {
					email: email,
					password: password,
					loginState: loginState
				},function(data){
					if (data.success == 1) {
					    window.location.href = '';
					}
					if (data.success == 0) {
						alert(data.msg);
					}
				});
			});

			document.onkeydown = function (event) {
			    e = event ? event : (window.event ? window.event : null);
			    if (e.keyCode == 13) {
			        $("#login_btn").click();
			    }
			}
		});
	</script>
</body>
</html>