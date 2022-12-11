package com.javaee.supportsysv5.biz.domain;


/**
 * description:
 *
 * @author: hevean
 * @date: 2022/05/06
 */

import com.github.pagehelper.PageInfo;
import lombok.Data;

import java.util.List;

/**
 * 分页返回结果
 */
@Data
public class PageResult<T> {
    /** 当前页码*/
    private int currentPage;
    /*** 每页数量*/
    private int pageSize;
    /*** 记录总数*/
    private long totalRows;
    /*** 总页数*/
    private int totalPages;
    /*** 当前页记录开始位置     */
    private long startRow;

    /*** 当前页结束位置*/
    private long endRow;

    /*** 分页数据*/
    private List<T> list;

    /**将PageHelper的分页结果转换为PageResult类型*/
    public static PageResult fromPageInfo(PageInfo pageInfo) {
        PageResult result = new PageResult();
        result.currentPage = pageInfo.getPageNum();
        result.pageSize = pageInfo.getPageSize();
        result.totalPages = pageInfo.getPages();
        result.totalRows = pageInfo.getTotal();
        result.startRow = pageInfo.getStartRow();
        result.endRow = pageInfo.getEndRow();
        result.list = pageInfo.getList();
        return result;
    }
}