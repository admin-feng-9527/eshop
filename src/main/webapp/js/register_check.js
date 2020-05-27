	//注册表单的非空校验
	function checkForm() {
		var username = document.getElementById("username").value;
	
		if (username == null || username == "") {
			alert("用户名不能为空");
			return false;
		}

		var password = document.getElementById("password").value;
		if (password == null || password == "") {
			alert("密码不能为空");
			return false;
		}

	
		var email = document.getElementById("email").value;
		if (email == null || email == "") {
			alert("邮箱不能为空");
			return false;
		}
		var phone = document.getElementById("phone").value;
		if (phone == null || phone == "") {
			alert("电话不能为空");
			return false;
		}
		var addr = document.getElementById("addr").value;
		if (addr == null || addr == "") {
			alert("地址不能为空");
			return false;
		}
	}
	
	// ajax校验用户名是否存在
	function checkUserName() {
        //创建对象
        var xmlHTTP = createXMLHttpRequest();
        var username = document.getElementById("username").value;
        //打开
        xmlHTTP.open("POST", "/eshop/checkUsername", true);

        //设置类型
        xmlHTTP.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

        //发送
        xmlHTTP.send("username=" + username + "&time=" + new Date());

        //设置监听
        xmlHTTP.onreadystatechange = function () {
            var msg = document.getElementById("msg");
            var re=new RegExp("^.{3,12}$");
            if(!re.test(username)) {
                msg.innerText = "用户名长度在3-12为之间";
                msg.style.color = "red";
			}else if (xmlHTTP.readyState == 4 && xmlHTTP.status == 200) {//xmlHTTP 发送结束 且 服务器响应 200
                    var flag = xmlHTTP.responseText;//接收的内容:响应文本的方式接收
                    if (flag == "true") {
                        msg.innerText = "用户已经存在";
                        msg.style.color = "red";
                    } else {
                        msg.innerText = "用户可以注册";
                        msg.style.color = "green";
                    }
                }
			}
	}


	function checkEmail() {
        var xmlHTTP = createXMLHttpRequest();
        var email = document.getElementById("email").value;

        xmlHTTP.open("GET", "", true);

        xmlHTTP.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

        xmlHTTP.send(null);

        xmlHTTP.onreadystatechange = function () {
            var msg = document.getElementById("e");
            var re = new RegExp("^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$");
            if (!re.test(email)) {
                msg.innerText = "邮箱格式不正确";
            }else{
                msg.innerText = "";
			}
        }
    }


    function checkPhone() {
        var xmlHTTP = createXMLHttpRequest();
        var phone = document.getElementById("phone").value;

        xmlHTTP.open("GET", "", true);

        xmlHTTP.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

        xmlHTTP.send(null);

        xmlHTTP.onreadystatechange = function () {
            var msg = document.getElementById("p");
            var re = new RegExp("^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$");
            if (!re.test(phone)) {
                msg.innerText = "电话格式不正确";
            }else{
                msg.innerText = "";
            }
        }
    }



	
	// 创建XMLHttpRequest对象
	function createXMLHttpRequest() {
		try {
			return new XMLHttpRequest();
		} catch (e) {
			try {
				return new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					return new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					alert("你用什么浏览器呢？");
					throw e;
				}
			}
		}
	};
	//切换验证码
	function changecode(){
		var img = document.getElementById("validateimage");
		img.src = "/shop/getCode?a="+new Date().getTime();
	}
	
	
	
	
	
	
	
	