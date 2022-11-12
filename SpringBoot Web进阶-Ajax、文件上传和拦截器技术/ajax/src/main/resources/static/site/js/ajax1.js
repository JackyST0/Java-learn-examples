/**
 * ajax 获取数据和提交数据
 */
function getFile() {
    let config = {
        method: 'get',
        url: '/site/js/ajax1.js',
        success: function (res) {
            console.log(res);
            //显示数据
            $('#res1').html(res);
        },
        error: function () {
            console.log(' ajax 错误');
        }
    }
    $.ajax(config);
}

function getJsonObject() {
    let config = {
        method: 'get',
        url: '/user/detail',
        success: function (res) {
            console.log(res);
            //显示数据
            $('#res1').html(JSON.stringify(res));
            // alert(res);
        }
    }
    $.ajax(config);
}


function getJsonProps() {
    let config = {
        method: 'get',
        url: '/user/detail',
        success: function (res) {
            console.log(res);
            //显示数据
            let text = `ID:${res.data.id};\n用户名:${res.data.username};\n邮箱:${res.data.email}\n` +
                `电话号码:${res.data.phoneNumber}\n创建时间:${res.data.createdTime}\n`;
            $('#res1').html(text);
        }
    }
    $.ajax(config);
}

/**
 * 弹出模态框，加载服务器数据
 */
function openModal() {
    let config = {
        method: 'get',
        url: '/site/js/ajax1.js',
        success: function (res) {
            //显示数据
            $('#modal-body1').html(res);
            $('#exampleModal').modal('show');
        }
    }
    $.ajax(config);
}

/**
 * 提交表单数据，数据格式为普通表单格式key=value
 */
function submitFormData() {
    let config = {
        method: 'post',
        url: '/user/add_form',
        //serialize方法用于将表单数据序列化为key=value格式
        data: $('#userForm').serialize(),
        success: (res) => {
            console.log(res);
            //显示数据
            $('#res1').html('表单数据提交成功, 服务器返回结果为:' + JSON.stringify(res));
        }
    }
    $.ajax(config);
}

/**
 * 提交JSON格式数据
 */
function submitJsonData() {
    //转化为json对象
    let data = {
        username: $('#inputUsername').val(),
        email: $('#inputEmail').val(),
        phoneNumber: $('#inputPhoneNumber').val()
    }
    console.log(data);
    let config = {
        method: 'post',
        contentType: 'application/json',
        url: '/user/add_json',
        //序列化为json字符串进行传输
        data: JSON.stringify(data),
        success: (res) => {
            console.log(res);
            //显示数据
            $('#res1').html('Json数据提交成功, 操作结果' + JSON.stringify(res));
        }
    }
    $.ajax(config);
}