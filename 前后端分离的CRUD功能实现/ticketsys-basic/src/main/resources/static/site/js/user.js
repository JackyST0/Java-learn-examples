<!--    使用new Vue()方法创建一个vue对象,实现和div的绑定,即div数据和vm对象的数据实现一一绑定-->
let url = "/user"
/**页面使用到的三个对话框对象,分别对应添加、编辑和详情*/
let addModal;
let editModal;
let viewModal;
let vm = new Vue({
    el: '#app',
    data: {
        //用户列表
        userList: [],
        //获取单个用户对象
        user: {},
        addForm: {},
        queryParams: {
            currentPage:1,
            pageSize:10
        }
    },
    methods: {
        // 获取用户列表
        getTableData: function () {
            axios.get(url + "/list")
                .then(res => {
                    this.userList = res.data.data;
                });
        },
        //删除
        del: function (index, userId) {
            console.log('删除的用户id:' + userId);
            this.$confirm('此操作将删除该用户, 是否继续?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'error'
            }).then(() => {
                axios.delete(url + "/" + userId).then(res => {
                    console.log(' 删除成功...')
                    // 使用element-ui的消息提示组件提示消息
                    // this.$message({
                    //     message: '用户删除成功!',
                    //     type: 'success'
                    // });
                    Message.success('用户删除成功');
                    this.getTableData();
                    this.userList = res.data.data;
                });
            }).catch(() => {
                Message.info('已取消删除')
            })
        },
        //编辑
        openEditModal: function (userId) {
            axios.get(url + "/" + userId)
                .then(res => {
                    this.user = res.data.data;
                    console.log(this.user)
                    // 创建并显示编辑对话框

                    editModal.show();
                });
        },
        //查看
        view: function (userId) {
            axios.get(url + '/' + userId)
                .then(res => {
                    this.user = res.data.data;
                    console.log(this.user)
                    // 创建并显示详情对话框
                    viewModal.show();
                });
        },
        // 新增
        add: function () {
            axios.post(url, this.addForm).then(res => {
                // 隐藏对话框
                addModal.hide();
                console.log(res.data.code);
                if (res.data.code === 200) {
                    Message.success("用户添加成功!");
                    //更新表格数据
                    this.getTableData();
                }
            });
        },
        // 更新
        update: function () {
            console.log(this.user);
            axios.put(url, this.user).then(res => {
                    if (res.data.code === 200) {
                        Message.success("用户更新成功!");
                        // 隐藏对话框
                        editModal.hide();
                        //更新表格数据
                        this.getTableData();
                    }
                });
        },

        //打开添加对话框
        openAddModal: function () {
            // 显示对话框
            addModal.show();
        },
        query: function () {
            axios.post(url + '/page', this.queryParams)
                .then(res => {
                    this.userList = res.data.data.list;
                    console.log(this.userList )
                    res.data.data.list.forEach((item)=>{
                        this.user=item
                    })
                    // 创建并显示详情对话框
                    viewModal.show();
                });
        },
        reset: function () {
            this.getTableData();

        }
    },
    //定义过滤器,对数据进行格式转换
    filters: {
        statusFormat(status) {
            return (status === 1 ? ' 激活' : '未激活')
        }
    },
    // html页面初始化完成时调用
    mounted() {
        // 初始化对话框对象
        addModal = new bootstrap.Modal(document.querySelector('#addModal'), {});
        viewModal = new bootstrap.Modal(document.getElementById('viewModal'), {});
        editModal = new bootstrap.Modal(document.getElementById('editModal'), {})
        this.getTableData();
    }
})




