from django.shortcuts import render
from django.shortcuts import render
from . import models
from django.http import HttpResponse
from django.contrib import admin
from .models import 消费, 会员消费, 会员
admin.site.site_header = '温泉养生洗浴管理系统'
admin.site.site_title = '洗浴系统'

# Create your views here.
def home(request):
    return render(request, 'home.html')
def zhangdandayinshibai(request):
    return render(request, 'zhangdandayinshibai.html')
def zhangdandayin(request):
    return render(request, 'zhangdandayin.html', {'err': ""})

def zhangdandayinto(request):
    code = request.GET.get('code')
    try:
        zhangdan = 消费.objects.get(bianhao=code)
    except Exception:
        return render(request,'zhangdandayinshibai.html')
    list = []
    list.append(zhangdan)
    for zhangdan in list:
        if zhangdan.kaipai == 1:
            sum = 30;
            if zhangdan.xiaofeianmoxiangmu is not None:
                sum += zhangdan.xiaofeianmojine
            if zhangdan.xiaofeiqitaanmoxiangmu is not None:
                sum += zhangdan.xiaofeiqitaanmoxiangmujine
            if zhangdan.xiaofeizhuyuxiangmu is not None:
                sum += zhangdan.xiaofeizhuyujine
            if zhangdan.xiaofeiqitazhuyuxiangmu is not None:
                sum += zhangdan.xiaofeiqitazhuyujine
            zhangdan.zhangdanzonge = sum
            zhangdan.kaipai = 0

    return render(request, 'zhangdan.html', {'xiyu':list})

# 账单统计页面
def zhangdan(request):
    list = 消费.objects.all();
    for zhangdan in list:
       if zhangdan.kaipai == 1:
           sum = 30;
           if zhangdan.xiaofeianmoxiangmu is not None:
               sum += zhangdan.xiaofeianmojine
           if zhangdan.xiaofeiqitaanmoxiangmu is not None:
               sum += zhangdan.xiaofeiqitaanmoxiangmujine
           if zhangdan.xiaofeizhuyuxiangmu is not None:
               sum += zhangdan.xiaofeizhuyujine
           if zhangdan.xiaofeiqitazhuyuxiangmu is not None:
               sum += zhangdan.xiaofeiqitazhuyujine
           zhangdan.zhangdanzonge = sum
           zhangdan.kaipai = 0
           消费.objects.filter(bianhao=zhangdan.bianhao).update(zhangdanzonge=sum, kaipai=0)
    context = {'xiyu':list}
    return render(request, 'zhangdan.html', context)

def zhangdandayinhuiyuan(request):
    return render(request, 'zhangdandayinhuiyuan.html', {'err': ''})

def zhangdandayinhuiyuanto(request):
    code = request.GET.get('code')
    try:
        zhangdan =  会员消费.objects.get(bianhao=code)
    except Exception:
        return render(request, 'yuyueshibai.html')
    list = []
    list.append(zhangdan)
    for zhangdan in list:
        sum = 30;
        for zhangdan in list:
            if zhangdan.kaipai == 1:
                sum = 30;
                if zhangdan.xiaofeianmoxiangmu is not None:
                    sum += zhangdan.xiaofeianmojine
                if zhangdan.xiaofeiqitaanmoxiangmu is not None:
                    sum += zhangdan.xiaofeiqitaanmoxiangmujine
                if zhangdan.xiaofeizhuyuxiangmu is not None:
                    sum += zhangdan.xiaofeizhuyujine
                if zhangdan.xiaofeiqitazhuyuxiangmu is not None:
                    sum += zhangdan.xiaofeiqitazhuyujine
        if  zhangdan.huiyuankaleixing == '钻石卡':
            zhangdanhuiyuan.zhangdanzonge = int(sum * 0.8)
            zhangdan.youhuijine = int(sum * 0.2)
        if zhangdanhuiyuan.huiyuankaleixing == '黄金卡':
            zhangdan.zhangdanzonge = int(sum * 0.9)
            zhangdan.youhuijine = int(sum * 0.1)
        if zhangdan.huiyuankaleixing == '铂金卡':
            zhangdan.zhangdanzonge = int(sum * 0.85)
            zhangdan.youhuijine = int(sum * 0.15)
        zhangdan.zhangdanzonge = int(zhangdanhuiyuan.zhangdanzonge)
        zhangdan.youhuijine = int(zhangdanhuiyuan.youhuijine)

    return render(request, 'zhangdanhuiyuan.html', {'xiyu':list})

# 账单统计页面
def zhangdanhuiyuan(request):
    list = 会员消费.objects.all();

    for zhangdan in list:
        if zhangdan.kaipai == 1:
            sum = 30;
            if zhangdan.xiaofeianmoxiangmu is not None:
                sum += zhangdan.xiaofeianmojine
            if zhangdan.xiaofeiqitaanmoxiangmu is not None:
                sum += zhangdan.xiaofeiqitaanmoxiangmujine
            if zhangdan.xiaofeizhuyuxiangmu is not None:
                sum += zhangdan.xiaofeizhuyujine
            if zhangdan.xiaofeiqitazhuyuxiangmu is not None:
                sum += zhangdan.xiaofeiqitazhuyujine

            # huiyuan = 会员.objects.get(huiyuankahao=zhangdan.huiyuankahao)
            # print(huiyuan.huiyuanxiaofeizonge)
            # zhangdan.zhangdanzonge = sum
            # 先判定账单表中的会员编号是否为空，
            if zhangdan.huiyuankahao is not None:
                # 通过会员编号获取当前会员对象
                # 如果能找到相应的会员就返回一个会员对象
                huiyuan = 会员.objects.get(huiyuankahao=zhangdan.huiyuankahao.huiyuankahao)
                if huiyuan.kaleixing == '钻石卡':
                    # 总额打8折
                    sum1 = int(sum * 0.8)
                    sum2 = int(sum * 0.2)
                    huiyuan.huiyuanxiaofeizonge = sum + huiyuan.huiyuanxiaofeizonge
                    # huiyuan.huihuanxiaofeicishu += 1
                    huiyuan.kaneishengyujine = huiyuan.kaneishengyujine - sum1
                    print(huiyuan.kaneishengyujine)
                    会员.objects.filter(huiyuankahao=huiyuan.huiyuankahao).update(
                        huiyuanxiaofeizonge=huiyuan.huiyuanxiaofeizonge,
                        # huiyuanxiaofeicishu=huiyuan.huihuanxiaofeicishu,
                        kaneishengyujine=huiyuan.kaneishengyujine
                    )
                    zhangdan.zhangdanzonge = int(sum1)
                    zhangdan.youhuijine = int(sum2)
                    会员消费.objects.filter(bianhao=zhangdan.bianhao).update(zhangdanzonge=sum1,
                                                                         youhuijine=sum2, kaipai=0)
                if huiyuan.kaleixing == '黄金卡':
                    # 总额打8折
                    sum1 = int(sum * 0.9)
                    sum2 = int(sum * 0.1)
                    huiyuan.huiyuanxiaofeizonge = sum + huiyuan.huiyuanxiaofeizonge
                    huiyuan.kaneishengyujine = huiyuan.kaneishengyujine - sum1
                    print(huiyuan.kaneishengyujine)
                    会员.objects.filter(huiyuankahao=huiyuan.huiyuankahao).update(
                        huiyuanxiaofeizonge=huiyuan.huiyuanxiaofeizonge,
                        # huihuanxiaofeicishu=huiyuan.huihuanxiaofeicishu
                        kaneishengyujine=huiyuan.kaneishengyujine,
                    )
                    zhangdan.zhangdanzonge = int(sum1)
                    zhangdan.youhuijine = int(sum2)
                    会员消费.objects.filter(bianhao=zhangdan.bianhao).update(zhangdanzonge=sum1,
                                                                         youhuijine=sum2, kaipai=0)

                if huiyuan.kaleixing == '铂金卡':
                    # 总额打8折
                    sum1 = int(sum * 0.85)
                    sum2 = int(sum * 0.15)
                    huiyuan.huiyuanxiaofeizonge = sum + huiyuan.huiyuanxiaofeizonge
                    # huiyuan.huihuanxiaofeicishu += 1
                    huiyuan.kaneishengyujine = huiyuan.kaneishengyujine - sum1
                    print(huiyuan.kaneishengyujine)
                    会员.objects.filter(huiyuankahao=huiyuan.huiyuankahao).update(
                        huiyuanxiaofeizonge=huiyuan.huiyuanxiaofeizonge,
                        # huihuanxiaofeicishu=huiyuan.huihuanxiaofeicishu,
                        kaneishengyujine=huiyuan.kaneishengyujine
                    )
                    zhangdan.zhangdanzonge = int(sum1)
                    zhangdan.youhuijine = int(sum2)
                    会员消费.objects.filter(bianhao=zhangdan.bianhao).update(zhangdanzonge=sum1,
                                                                         youhuijine=sum2, kaipai = 0)

    context = {'xiyu': list}
    return render(request, 'zhangdanhuiyuan.html', context)



def zhangdandayinhuiyuan(request):
    return render(request, 'zhangdandayinhuiyuan.html')

def zhangdanbucunzai(request):
    return render(request, 'zhangdanbucunzai.html')

def zhangdanbucunzaihuiyuan(request):
    return render(request, 'zhangdanbucunzaihuiyuan.html')

