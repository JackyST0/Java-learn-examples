<!--    使用new Vue()方法创建一个vue对象,实现和div的绑定,即div数据和vm对象的数据实现一一绑定-->
let url = "/login"

let vm = new Vue({
    el: '#app',
    data: {
        // 登录提交的数据
        loginForm: {}
    },
    methods: {
        //登录
        login: function () {
            axios.post(url, this.loginForm)
                .then(res => {
                    // 登录成功
                    if (res.data.code === 200) {
                        Message.success("登录成功!");
                        sessionStorage.setItem("loginUser", JSON.stringify(res.data));
                        // 跳转到后台页面
                        window.open("/user", "_self");
                    } else {
                        Message.error(res.data.data);
                    }
                })
        }
    },

})




