package com.atguigu.eduservice.temp;


import org.junit.Test;

public class A {

    public String reverseStr(String s, int k) {
        char[] chars = s.toCharArray();
        for(int i =0;i < s.length();i += 2*k){
            int start = i;
            int end = i + 2 * k - 1;

            if(end < s.length()){
                reverse(chars,start,end - k);
            }else{
                end = s.length()-1;
                if(end - start < k){
                    reverse(chars,start,end);
                }else{
                    end = start + k - 1;
                    reverse(chars,start,end);
                }
            }
        }
        return new String(chars);
    }
    public void reverse(char[] chars,int start,int end){
        for(int i = 0;i <= (end - start)/2;i++){
            char temp = chars[start + i];
            chars[start + i] = chars[end - i];
            chars[end - i] = temp;
        }
    }

    @Test
    public void test(){
        System.out.println(reverseStr("abcdefg", 2));
    }
}
