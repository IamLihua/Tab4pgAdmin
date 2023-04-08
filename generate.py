"""
生成ahk代码
"""

def spliter(s:str)->list:
    """输入abcd,返回['a','ab','abc']"""
    l=len(s)
    list=[]
    for i in range(1,l):
        list.append(s[:i])
    return list

def generater(s:str)->str:
    """输入字符串s,返回能自动补全s的ahk代码(完整版)"""
    l=spliter(s)
    template=f"::\nSendInput, {s}\nreturn\n"
    result=f";{s}\n"
    for i in l:
        result+="::"+i+template
    return result

def generater_simple(s:str)->str:
    """输入字符串s,返回能自动补全s的ahk代码(简单版,只支持第一个字母补全)"""
    template=f";{s}\n::{s[0]}::\nSendInput, {s}\nreturn\n"
    return template

def main(s:str):
    """生成大小写都支持的代码"""
    low_str=s.lower()
    up_str=s.upper()
    Gener=generater_simple
    print(Gener(low_str)+Gener(up_str))

main("between")