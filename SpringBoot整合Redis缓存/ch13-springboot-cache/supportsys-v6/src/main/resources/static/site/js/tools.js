
/**
 * jquery获取checkbox选中的值并存入数组
 */

function getCheckBoxValues(checkboxName) {
    let array = new Array();
    $("input[name='"+ checkboxName+ "']:checked").each(function() {
            array.push($(this).val())
    })
    return array;
}