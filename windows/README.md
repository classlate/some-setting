## Windows 脚本策略

> [关于执行策略 - PowerShell | Microsoft Docs](https://docs.microsoft.com/zh-cn/powershell/module/microsoft.powershell.core/about/about_execution_policies)
  
```bash
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 查看系统保留端口

> https://zhuanlan.zhihu.com/p/341274233

```bash
netsh interface ipv4 show excludedportrange protocol=tcp
```

## 微软拼音设置

### 小鹤双拼

```bash
# 给微软拼音添加了小鹤双拼方案

# 首先打开注册表，找到这个路径
计算机计算机\HKEY_CURRENT_USER\Software\Microsoft\InputMethod\Settings\CHS

# 然后新建一个名为 UserDefinedDoublePinyinScheme0的字符串值，数值数据为
小鹤双拼*2*^*iuvdjhcwfg^xmlnpbksqszxkrltvyovt
```
