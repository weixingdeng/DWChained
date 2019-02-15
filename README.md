# DWChained
OC常用功能的链式语法

常用控件初始化会有好多参数设置，传统方法需要写很多行。链式语法用起来特别简单：

```
- (UILabel *)sendCarTimeLabel {
    
    if (!_sendCarTimeLabel) {
        
        UILabel *label = [[UILabel alloc] init];
        label.ehiTextColor(HEXCOLOR_333333).ehiFont([UIFont boldSystemFontOfSize:10]).ehiTextAlignment(NSTextAlignmentLeft).ehiText(@"- -");
        
        _sendCarTimeLabel = label;
    }
    return _sendCarTimeLabel;
}
```
