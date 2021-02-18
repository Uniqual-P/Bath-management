from django.shortcuts import render, redirect
from Manage.models import 预约, 技师

import datetime as dt
# Create your views here.


def list(request):
    yuyues = 预约.objects.all()
    context = {'yuyues': yuyues}
    return render(request, 'new_list.html', context)


def add(request):
    jishiList = 技师.objects.all()
    return render(request, 'new_add.html', {'jishiList':jishiList, 'err': ' '})


def save(request):
    yuyue = 预约()
    yuyue.shoupaihao = request.POST['shoupaihao']
    yuyue.fuwuquyu = '助浴'
    if int(yuyue.shoupaihao) <= 500:
        yuyue.xingbie = '女'
    if int(yuyue.shoupaihao) > 500:
        yuyue.xingbie = '男'
    yuyue.yuyueshijian = dt.datetime.now().strftime('%F %T')
    技师.save(yuyue)
    return redirect('/vip')


