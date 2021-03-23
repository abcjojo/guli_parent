//package com.atguigu.eduservice.temp;
//
//import com.atguigu.eduservice.entity.EduTeacher;
//import org.junit.Test;
//
//import java.util.*;
//
///**
// * @program: guli_parent
// * @description:
// * @author: Jojo.Lee
// * @create: 2021-02-24 13:37
// **/
//public class TestLambda {
//
//
//
//    public List<EduTeacher> filterTeacher(List<EduTeacher> teachers, MyPredicate<EduTeacher> mp) {
//        List<EduTeacher> list = new ArrayList<>();
//
//        for (EduTeacher tea : teachers) {
//            if (mp.getVariable(tea))
//                list.add(tea);
//        }
//
//        return list;
//    }
//
//    // 匿名内部类
//    @Test
//    public void test1(){
//        System.out.println(filterTeacher(teacherList, new MyPredicate<EduTeacher>() {
//            @Override
//            public boolean getVariable(EduTeacher eduTeacher) {
//                return eduTeacher.getSort() > 10;
//            }
//        }));
//    }
//
//    // lambda 表达式方式
//    @Test
//    public void test2() {
//        List<EduTeacher> eduTeachers = filterTeacher(teacherList, e -> e.getSort() > 10);
//        eduTeachers.forEach(System.out::println);
//    }
//
//
//    // 优化4 stream API
//    @Test
//    public void test3(){
//        teacherList.stream()
//                .filter(e -> e.getSort() > 30)
//                .limit(2)
//                .forEach(System.out::println);
//        System.out.println("---------------------------------------");
//
//        teacherList.stream()
//                .filter(e -> e.getSort() > 30)
//                .map(EduTeacher::getName)
//                .limit(3)
//                .sorted()
//                .forEach(System.out::println);
//    }
//
//
//    List<EduTeacher> teacherList = Arrays.asList(
//            new EduTeacher("1","sala", 1),
//            new EduTeacher("2","a", 32),
//            new EduTeacher("3","fga", 23),
//            new EduTeacher("4","b", 32),
//            new EduTeacher("5","c", 45),
//            new EduTeacher("6","drdgd", 5)
//    );
//
//
//    // lambda 表达式的基本语法
//    @Test
//    public void test5() {
//        Comparator<Integer> com = (x, y) -> {
//            System.out.println("lambda");
//            return Integer.compare(x, y);
//        };
//    }
//    @Test
//    public void test4(){
//        Comparator<Integer> com =(x, y)-> Integer.compare(x,y);
//    }
//
//    @Test
//    public void test6(){
//        Integer mun = operation(100, x -> x * x);
//        System.out.println(mun);
//        System.out.println(operation(200, x -> x + 300));
//    }
//    public Integer operation(Integer a, MyFunc<Integer> mf) {
//        return mf.getValue(a);
//    }
//
//
//    @Test
//    public void test7() {
//        Collections.sort(teacherList, (t1, t2) -> {
//            if (t1.getSort() == t2.getSort())
//                return t1.getName().compareTo(t2.getName());
//            else
//                return t1.getSort().compareTo(t2.getSort());
//        });
//        teacherList.forEach(System.out::println);
//    }
//
//    public String strHandler(String str, MyToUpperCase mf){
//        return mf.getValue(str);
//    }
//    @Test
//    public void test8() {
//        String str = strHandler("abcdef", x -> x.toUpperCase());
//        System.out.println(str);
//    }
//
//    public Long operation2(Long value1, Long value2, MyFunc2<Long, Long> mf) {
//        return mf.getValue(value1, value2);
//    }
//    @Test
//    public void test9() {
//        System.out.println(operation2(100l, 200l, (x1, x2) -> x1 + x2));
//        System.out.println(operation2(10l, 20l, (x1, x2) -> x1 * x2));
//    }
//    @Test
//    public void test10(){
//    }
//
//
//}