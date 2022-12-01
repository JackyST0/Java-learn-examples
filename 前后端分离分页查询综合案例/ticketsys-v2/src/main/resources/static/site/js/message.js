

// 对vue的message组件进行简单的封装

class Message {
    static success(text) {
        Vue.prototype.$message({
            message: text,
            type: 'success'
        });
    }

    static warning(text) {
        Vue.prototype.$message({
            message: text,
            type: 'warning'
        });
    }

    static error(text) {
        Vue.prototype.$message({
            message: text,
            type: 'error'
        });
    }

    static info(text) {
        Vue.prototype.$message({
            message: text,
            type: 'info'
        });
    }
}