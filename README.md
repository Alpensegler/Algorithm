# Solutions

本项目包含部分 LeetCode、《剑指 Offer》、《程序员面试金典（第 6 版）》等题目的 Swift 题解。

### 该项目有什么优势？

1. 基本 Runtime beats 95% 以上
2. 一道多个解题思路，例如：
   - [215. 数组中的第K个最大元素](https://leetcode-cn.com/problems/kth-largest-element-in-an-array/) 有 [快速选择](https://github.com/Alpensegler/Solutions/blob/main/Leetcode/215.%20%E6%95%B0%E7%BB%84%E4%B8%AD%E7%9A%84%E7%AC%ACK%E4%B8%AA%E6%9C%80%E5%A4%A7%E5%85%83%E7%B4%A0%20%E5%BF%AB%E9%80%9F%E9%80%89%E6%8B%A9.swift) 和 [基于堆排序的选择](https://github.com/Alpensegler/Solutions/blob/main/Leetcode/215.%20%E6%95%B0%E7%BB%84%E4%B8%AD%E7%9A%84%E7%AC%ACK%E4%B8%AA%E6%9C%80%E5%A4%A7%E5%85%83%E7%B4%A0%20%E5%9F%BA%E4%BA%8E%E5%A0%86%E6%8E%92%E5%BA%8F%E7%9A%84%E9%80%89%E6%8B%A9.swift) 两种解法
3. 更好地利用 Swift 的特性，例如：
   - [106. 从中序与后序遍历序列构造二叉树](https://github.com/Alpensegler/Solutions/blob/main/Leetcode/106.%20%E4%BB%8E%E4%B8%AD%E5%BA%8F%E4%B8%8E%E5%90%8E%E5%BA%8F%E9%81%8D%E5%8E%86%E5%BA%8F%E5%88%97%E6%9E%84%E9%80%A0%E4%BA%8C%E5%8F%89%E6%A0%91.swift) 题解中，利用了 ArraySlice 为对原数组的引用，不耗费内存，且 index 均为在原数组中的 index 的特性
   - [139. 单词拆分](https://github.com/Alpensegler/Solutions/blob/main/Leetcode/139.%20%E5%8D%95%E8%AF%8D%E6%8B%86%E5%88%86.swift) 中里用 String 的特性，不需要如同其他题解一样将字符串转化为数组
