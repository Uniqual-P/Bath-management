from django import forms

class 预约(forms.Form):
    shoupaihao = forms.IntegerField(max_value=4, min_value=1,error_messages={'required': '手牌号不能为空', 'min_length': '手牌号错误','max_length': '手牌号错误'})
