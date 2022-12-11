/**
 * JavaScript分页操作
 */
// let params={
//     pageId: pagerId,
//     totalCount:totalCount,
//     currentPage: currentPage,
//     btnSize: btnSize,
//     param.callback:param.callback
// }

/**
 * params 属性包括
 */

// class Pagination {
//     pagerId;
//     options;
//
//     default_options = {
//         currentPage: 1,
//         btnSize: 4
//     }
//
//     static create(pageId, options){
//         return new Pagination(pageId, options)
//     }
//     constructor(pageId, options) {
//         this.pagerId = pageId;
//         // 合并两个JSON对象
//         this.options = Object.assign(this.default_options,options);
//         console.log("ddd=="+ JSON.stringify(this.options))
//         this.init(this.options);
//         // 绑定按钮点击事件
//         $(this.pagerId).on("click", "a", this, function (event) {
//             // $(this).text() 获取当前元素的文本值
//             let numberStr = $(this).text();
//             let number=1;
//             let current = event.data.options.currentPage;
//             console.log("numberStr:"+numberStr);
//
//             if (numberStr === '首页') number =1;
//             else if (numberStr === '«') {
//                 number = (current-1 <1)?1:current-1;
//             }else if (numberStr === '»') {
//                 number = (current+1 >event.data.options.totalCount)?event.data.options.totalCount:current+1;
//             }else if (numberStr === '尾页') {
//                 number = event.data.options.totalCount;
//             }else{
//                number = parseInt(numberStr);
//             }
//             event.data.options.currentPage =number;
//             // console.log(number+ ';' + JSON.stringify(event.data.options))
//             // event.data.init(event.data.options);
//             event.data.options.callback(number);
//             // console.log(this.options.currentPage)
//         })
//     }
//
//     init(options) {
//         let str = `<nav aria-label="Page navigation">
//                 <ul class="pagination justify-content-end">
//                     <li class="page-item">
//                         <a class="page-link" href="javascript:void(0);">首页</a>
//                     </li>
//                      <li class="page-item">
//                         <a class="page-link" href="javascript:void(0);">&laquo;</a>
//                     </li>`
//         // 判断当前页是否在正确范围
//         options.currentPage = options.currentPage < 1 ? 1 : options.currentPage;
//         options.currentPage = options.currentPage > options.totalCount ? options.totalCount : options.currentPage;
//
//         // 获取起始位置和结束位置
//         let startPos = Math.ceil(options.currentPage - options.btnSize / 2);
//         startPos = (startPos < 1) ? 1 : startPos;
//
//         let endPos = startPos + options.btnSize;
//         // if (endPos  >= options.totalCount) {
//         //     startPos = endPos
//         // }
//         endPos = (endPos >= options.totalCount) ? options.totalCount : endPos;
//
//         for (let i = startPos; i < endPos; i++) {
//             // console.log(i)
//             if (i === options.currentPage) {
//                 str += `<li class="page-item active"><a class="page-link "  href="javascript:void(0);">${i}</a></li>`
//             } else {
//                 str += ` <li class="page-item"><a class="page-link"  href="javascript:void(0);">${i}</a></li>`
//             }
//         }
//         str += `<li class="page-item">
//                         <a class="page-link" href="javascript:void(0);">&raquo;</a>
//                     </li>
//                      <li class="page-item">
//                         <a class="page-link" href="javascript:void(0);">尾页</a>
//                     </li>`
//         // 添加前往第几页
//         str += `<form class="form-inline text-primary "><span style="margin: 0px 8px 7px 5px;" >前往第</span>
// <input type="text" style="width: 50px" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2">
// <span style="margin: 0px 8px 7px 5px;">页</span></form></ul></nav>`
//         // console.log(str)
//         $(this.pagerId).html(str);
//     }
// }

class Pagination {
    static  default_options = {
        currentPage: 1,
        btnSize: 5,             //默认显示6个分页按钮
        totalPages:10
    }

    // static create(pageId, options){
    //     return new Pagination(pageId, options)
    // }
    // constructor(pageId, options) {
    //     this.pagerId = pageId;
    //     // 合并两个JSON对象
    //     this.options = Object.assign(this.default_options,options);
    //     console.log("ddd=="+ JSON.stringify(this.options))
    //     this.init(this.options);
    //     // 绑定按钮点击事件
    //     $(this.pagerId).on("click", "a", this, function (event) {
    //         // $(this).text() 获取当前元素的文本值
    //         let numberStr = $(this).text();
    //         let number=1;
    //         let current = event.data.options.currentPage;
    //         console.log("numberStr:"+numberStr);
    //
    //         if (numberStr === '首页') number =1;
    //         else if (numberStr === '«') {
    //             number = (current-1 <1)?1:current-1;
    //         }else if (numberStr === '»') {
    //             number = (current+1 >event.data.options.totalCount)?event.data.options.totalCount:current+1;
    //         }else if (numberStr === '尾页') {
    //             number = event.data.options.totalCount;
    //         }else{
    //             number = parseInt(numberStr);
    //         }
    //         event.data.options.currentPage =number;
    //         // console.log(number+ ';' + JSON.stringify(event.data.options))
    //         // event.data.init(event.data.options);
    //         event.data.options.callback(number);
    //         // console.log(this.options.currentPage)
    //     })
    // }

    static create(pagerId, options) {
        // 合并默认属性
        options = Object.assign(Pagination.default_options,options);

        // if (options.totalPages < options.btnSize)
        //     options.btnSize = options.totalPages;
        // console.log("options:" + JSON.stringify(options))
        let str=``;
        str += `<nav aria-label="Page navigation">
                <ul class="pagination justify-content-end">
                    <li class="page-item">
                        <a class="page-link" href="javascript:void(0);">首页</a>
                    </li>
                     <li class="page-item">
                        <a class="page-link" href="javascript:void(0);">&laquo;</a>
                    </li>`
        // 判断当前页是否在正确范围
        let currentPage = (options.currentPage < 1) ? 1 : options.currentPage;
        currentPage = (options.currentPage > options.totalPages) ? options.totalPages : options.currentPage;

        // 计算分页按钮的个数
        let btnSize = (options.btnSize > options.totalPages) ? options.totalPages : options.btnSize;

        // 获取起始位置和结束位置
        let startPos = (Math.ceil(currentPage - btnSize /2)<=0)?1:Math.ceil(currentPage - btnSize /2);
        startPos = (Math.ceil(currentPage + btnSize /2) > options.totalPages)?(options.totalPages - btnSize+1):startPos;

        console.log('startPos:' + startPos+";"+options.totalPages + btnSize);

        //循环输出分页按钮
        for (let i = startPos; i <= startPos+btnSize-1; i++) {
            // console.log(i)
            if (i === currentPage) {
                str += `<li class="page-item active"><a class="page-link "  href="javascript:void(0);">${i}</a></li>`
            } else {
                str += ` <li class="page-item"><a class="page-link"  href="javascript:void(0);">${i}</a></li>`
            }
        }
        str += `<li class="page-item">
                        <a class="page-link" href="javascript:void(0);">&raquo;</a>
                    </li>  
                     <li class="page-item">
                        <a class="page-link" href="javascript:void(0);">尾页</a>
                    </li>`
        // 添加前往第几页
        str += `<form class="form-inline text-primary "><span style="margin: 0px 8px 7px 5px;" >前往第</span>
<input type="text" style="width: 50px" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2">
<span style="margin: 0px 8px 7px 5px;">页</span></form></ul></nav>`
        // console.log(str)
        $(pagerId).html(str);

        // 移除以前的绑定事件
        $(pagerId).off("click", "a");
        // 新增绑定按钮点击事件
        $(pagerId).on("click", "a", {options:options}, function (event) {
            // $(this).text() 获取当前元素的文本值
            let numberStr = $(this).text();
            //获取当前页
            let current = event.data.options.currentPage;
            console.log("numberStr:"+numberStr + ";current:"+ current);

            if (numberStr === '首页') current =1;
            else if (numberStr === '«') {
                current = (current-1 <1)?1:current-1;
            }else if (numberStr === '»') {
                current = (current+1 >event.data.options.totalPages)?event.data.options.totalPages:current+1;
            }else if (numberStr === '尾页') {
                current = event.data.options.totalPages;
            }else{
                current = parseInt(numberStr);
            }
            if (current === options.currentPage)
                return ;
            event.data.options.callback(current);
        })
    }
}
