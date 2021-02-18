import json
from django.contrib import admin
from .models import 会员, 项目, 建议, 技师, 评价, 助浴消费, 按摩消费, 开牌, 预约, 结账, 会员开牌, 会员消费, 会员结账, 会员评价, 手牌

from django.core.serializers.json import DjangoJSONEncoder
from django.db.models import Count
from django.db.models.functions import TruncDay
from django.http import JsonResponse
from django.urls import path

class 项目Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['xiangmuming', 'xiangmujiage', 'xiangmujianjie', 'suoshufanwei']
    list_filter = ('xiangmuming', 'xiangmujiage', 'suoshufanwei')
    prepopulated_fields = {"xiangmujiage": ("xiangmuming",)}

@admin.register(会员)
class 会员Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['huiyuankahao', 'kaleixing','xingming', 'shangcixiaofeishijian', 'kaneishengyujine', 'shengri', 'pingjunxiaofei','nianling','pingjunxiaofei']
    list_filter = ('kaleixing', 'shangcixiaofeishijian', 'shengri')
    date_hierarchy = 'shangcixiaofeishijian'
    search_fields = ('huiyuankahao',)  # 指定要搜索的字段，将会出现一个搜索框让管理员搜索关键词
    ordering = ('-pingjunxiaofei', 'shangcixiaofeishijian')  # 降序排列，升序
    readonly_fields = ('shengri', 'nianling', 'kaneishengyujine','pingjunxiaofei', 'shangcixiaofeishijian','huiyuanxiaofeicishu','huiyuanxiaofeizonge')

@admin.register(建议)
class 建议Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['tianxieshijian', 'tousu_jianyi']
    list_filter = ('tianxieshijian', 'tousu_jianyi')
    date_hierarchy = 'tianxieshijian'


@admin.register(技师)
class 技师Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['jishi', 'fuwuquyu', 'xingbie','shifoukongxian','shanchangxiangmu','congyenianxian']
    list_filter = ('fuwuquyu', 'xingbie','shifoukongxian','shanchangxiangmu')
    search_fields = ('jishi',)

@admin.register(开牌)
class 开牌Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'kaipaishijian', 'xingbie', 'kaipai']
    date_hierarchy = 'kaipaishijian'
    search_fields = ('shoupaihao',  'kaipai')
    ordering = ('-kaipaishijian',)
    raw_id_fields = ("shoupaihao",)
    readonly_fields = ('bianhao',)

    def get_tname(self, obj):
        return '%s' % obj.bianhao.shoupaihao
        shoupaihao.short_description = '手牌号'

@admin.register(会员开牌)
class 会员开牌Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'kaipaishijian', 'xingbie', 'kaipai', 'huiyuankahao']
    date_hierarchy = 'kaipaishijian'
    search_fields = ('shoupaihao',)
    ordering = ('-kaipaishijian',)
    raw_id_fields = ('shoupaihao', 'huiyuankahao' )
    readonly_fields = ('bianhao',)

@admin.register(助浴消费)
class 助浴消费Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao','xiaofeizhuyujishi','xiaofeizhuyuxiangmu','xiaofeizhuyujine',
                    'xiaofeiqitazhuyuxiangmu','xiaofeiqitazhuyujine']
    list_filter = ('xiaofeizhuyujishi','xiaofeizhuyuxiangmu')
    search_fields = ('shoupaihao', )
    ordering = ('-kaipaishijian',)
    readonly_fields =('bianhao', 'shoupaihao','kaipaishijian','xiaofeiqitazhuyujine','zhangdanzonge','xingbie','kaipai')
    raw_id_fields = ('xiaofeiqitazhuyuxiangmu','xiaofeizhuyujishi','xiaofeizhuyuxiangmu')
    # class 项目Admin(admin.ModelAdmin):
    #     def save_model(self, request, 助浴消费, form, change):
    #         xiangmu = 项目.objects.all();
    #         for zhangdan in xiangmu:
    #             if zhangdan.xiaofeizhuyuxiangmu == xiangmu.xiangmuming:
    #                 zhangdan.xiaofeijine = xiangmu.xiangmujiage
    #             助浴消费.save()


@admin.register(按摩消费)
class 按摩消费Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'xiaofeianmojishi', 'xiaofeianmoxiangmu', 'xiaofeianmojine',
                    'xiaofeiqitaanmoxiangmu','xiaofeiqitaanmoxiangmujine']
    list_filter = ('xiaofeianmoxiangmu', 'xiaofeianmojishi')
    search_fields = ('shoupaihao', )
    ordering = ('-kaipaishijian',)
    raw_id_fields = ('xiaofeianmoxiangmu', 'xiaofeianmojishi','xiaofeiqitaanmoxiangmu')
    readonly_fields = ('shoupaihao', 'bianhao','zhangdanzonge','xiaofeianmojine','xiaofeiqitaanmoxiangmujine','xingbie','kaipaishijian','kaipai')

@admin.register(会员消费)
class 会员消费Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'xiaofeianmoxiangmu', 'xiaofeianmojine', 'xiaofeianmojishi',
                    'xiaofeizhuyuxiangmu', 'xiaofeiqitaanmoxiangmu', 'xiaofeiqitaanmoxiangmujine',
                    'xiaofeizhuyujine', 'xiaofeiqitazhuyuxiangmu', 'xiaofeiqitazhuyujine', 'xiaofeizhuyujishi']
    list_filter = ('xiaofeianmoxiangmu', 'xiaofeianmojishi', 'xiaofeizhuyujishi', 'xiaofeizhuyuxiangmu')
    search_fields = ('shoupaihao',)
    ordering = ('-kaipaishijian',)
    readonly_fields = ('bianhao', 'shoupaihao', 'kaipaishijian')
    raw_id_fields = ('xiaofeianmoxiangmu', 'xiaofeianmojishi', 'xiaofeizhuyuxiangmu', 'xiaofeiqitaanmoxiangmu',
                     'xiaofeiqitazhuyuxiangmu', 'xiaofeizhuyujishi')
    readonly_fields = ('shoupaihao','bianhao','zhangdanzonge','youhuijine','huiyuankaleixing')

@admin.register(评价)
class 评价Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'weishengpingjia', 'anmoxiangmupingjia', 'zhuyuxiangmupingjia','anmojishipingjia','zhuyujishipingjia',
                    'fuwupingjia', 'kaipaishijian', 'xingbie']
    list_filter = ('weishengpingjia', 'kaipaishijian','anmoxiangmupingjia', 'zhuyuxiangmupingjia','anmojishipingjia','zhuyujishipingjia','xingbie')
    ordering = ('kaipaishijian',)
    readonly_fields = ('bianhao', 'shoupaihao', 'kaipaishijian')


    # def changelist_view(self, request, extra_context=None):
    #     chart_data = self.chart_data()
    #     as_json = json.dumps(list(chart_data), cls=DjangoJSONEncoder)
    #     extra_context = extra_context or {"chart_data": as_json}
    #     return super().changelist_view(request, extra_context=extra_context)
    #
    # def get_urls(self):
    #     urls = super().get_urls()
    #     extra_urls = [
    #         path("chart_data/", self.admin_site.admin_view(self.chart_data_endpoint))
    #     ]
    #     # NOTE! Our custom urls have to go before the default urls, because they
    #     # default ones match anything.
    #     return extra_urls + urls
    #
    # # JSON endpoint for generating chart data that is used for dynamic loading
    # # via JS.
    # def chart_data_endpoint(self, request):
    #     chart_data = self.chart_data()
    #     return JsonResponse(list(chart_data), safe=False)
    #
    # def chart_data(self):
    #     return (
    #         评价.objects.annotate(date=TruncDay('kaipaishijian'))
    #         .values("date")
    #         .annotate(y=Count("bianhao"))
    #         .order_by("-date")
    #     )
@admin.register(会员评价)
class 会员评价Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'weishengpingjia', 'anmoxiangmupingjia', 'zhuyuxiangmupingjia','anmojishipingjia','zhuyujishipingjia',
                    'fuwupingjia', 'kaipaishijian', 'xingbie']
    list_filter = ('weishengpingjia', 'kaipaishijian','anmoxiangmupingjia', 'zhuyuxiangmupingjia','anmojishipingjia','zhuyujishipingjia','xingbie')
    ordering = ('kaipaishijian',)
    readonly_fields = ('bianhao', 'shoupaihao', 'kaipaishijian')

@admin.register(预约)
class 预约Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['id','shoupaihao', 'xingbie', 'fuwuquyu', 'chuangweihao','jishi','yuyueshijian',"qita"]
    list_filter = ('xingbie', 'fuwuquyu','jishi_id',"qita")
    date_hierarchy = 'yuyueshijian'
    ordering = ('-yuyueshijian',)
    raw_id_fields = ("jishi",)
    readonly_fields = ('id',)
    actions = ['custom_button']
    def custom_button(self, request, queryset):
        pass
    custom_button.short_description = '预约展示'
    custom_button.icon = 'fas fa-audio-description'
    custom_button.type = 'danger'
    custom_button.style = 'color:white;'
    custom_button.action_type = 0
    custom_button.action_url = '/vip/'

    def save_model(self, request, 预约, form, change):
        if not 预约.chuangweihao:
            预约.fuwuquyu = "助浴"
        else:
            预约.fuwuquyu = "按摩"
        if not 预约.xingbie:
            if 预约.shoupaihao <= 500:
                预约.xingbie = "女"
            if 预约.shoupaihao > 500:
                预约.xingbie = "男"

        预约.save()

@admin.register(结账)
class 结账Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'zhangdanzonge', 'kaipai']
    list_filter = ('bianhao', 'shoupaihao', 'kaipai')
    date_hierarchy = 'lidianshijian'
    ordering = ('-bianhao',)
    readonly_fields = ('shoupaihao','bianhao', 'zhangdanzonge')
    actions = ['custom_button']

    def custom_button(self, request, queryset):
        pass
    custom_button.short_description = '账单打印'
    # icon，参考element-ui icon与https://fontawesome.com
    custom_button.icon = 'fas fa-audio-description'
    custom_button.type = 'danger'
    custom_button.style = 'color:white;'
    custom_button.action_type = 0
    custom_button.action_url = '/zhangdandayin/'




@admin.register(会员结账)
class 会员结账Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['bianhao', 'shoupaihao', 'zhangdanzonge', 'kaipai','youhuijine','huiyuankaleixing','huiyuankahao','qita']
    list_filter = ('bianhao', 'shoupaihao', 'kaipai','huiyuankaleixing','huiyuankahao')
    date_hierarchy = 'lidianshijian'
    ordering = ('-bianhao',)
    raw_id_fields = ("huiyuankahao",)
    readonly_fields = ('shoupaihao','bianhao', 'zhangdanzonge', 'kaipai','youhuijine','huiyuankaleixing','huiyuankahao',)

@admin.register(手牌)
class 手牌Admin(admin.ModelAdmin):
    # 设置显示的字段
    list_display = ['shoupaihao', 'shifoukaipai','xingbie']
    list_filter = ('shoupaihao', 'shifoukaipai')
    ordering = ('shoupaihao',)
    readonly_fields = ('shoupaihao',)
