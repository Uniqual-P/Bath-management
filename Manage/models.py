import pymysql.cursors

# 连接到数据库
connection = pymysql.connect(host='localhost',
                             user='root',
                             password='123456',
                             db='xiyu',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

from django.db import models

class 会员(models.Model):
    huiyuankahao = models.CharField('会员卡号',max_length=255,primary_key=True)
    xingming = models.CharField("会员姓名",max_length=20,)
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    shenfenzhenghaoma = models.CharField("会员身份证", max_length=18,blank=True, null=True, )
    nianling = models.IntegerField("会员年龄", blank=True, null=True,)
    shengri = models.DateField("会员生日",blank=True, null=True,)
    kaleixing_type = (('钻石卡', u'钻石卡'), ('铂金卡', u'铂金卡'), ('黄金卡', u'黄金卡'))
    kaleixing = models.CharField(u"会员卡类型", choices = kaleixing_type, max_length=20)
    pingjunxiaofei = models.IntegerField("会员平均消费", blank=True, null=True,)
    shangcixiaofeishijian = models.DateField("会员上次消费时间",blank=True, null=True,)
    huiyuanxiaofeicishu = models.IntegerField("会员消费次数", blank=True, null=True,)
    huiyuanxiaofeizonge = models.IntegerField("会员消费总额", blank=True, null=True,)
    kaneishengyujine = models.IntegerField("会员卡余额", blank=True, null=True,)
    bankashijian = models.DateField("会员卡办理时间")
    dianhuahaoma = models.CharField("电话号码", max_length=11,)
    class Meta:
        verbose_name = "会员管理"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'huiyuan'
    def __str__(self):
        return self.huiyuankahao

class 项目(models.Model):
    xiangmuming = models.CharField("项目名称",primary_key=True, max_length=255)
    xiangmujianjie = models.CharField("项目简介",max_length=255, blank=True, null=True)
    xiangmujiage = models.IntegerField("项目价格")
    shanchangjishi = models.CharField("擅长技师",max_length=255, blank=True, null=True)
    suoshufanwei = models.CharField("所属范围",max_length=255)

    class Meta:
        verbose_name = "项目管理"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'xiangmu'
    def __str__(self):
        return self.xiangmuming

class 建议(models.Model):
    tianxieshijian = models.DateField("填写时间", primary_key=True, blank=True)
    tousu_jianyi = models.CharField("投诉/建议",db_column='tousu/jianyi', max_length=500, blank=True)  # Field renamed to remove unsuitable characters.


    class Meta:
        verbose_name = "洗浴投诉/建议"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'jianyi'

class 技师(models.Model):
    jishi_id = models.IntegerField('技师编号')
    jishi = models.CharField('技师',primary_key=True,max_length=255)
    shifoukongxian = models.IntegerField('是否空闲（1工作，0空闲）',blank=True, null=True)
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    nianling = models.IntegerField('年龄',blank=True, null=True)
    congyenianxian = models.IntegerField('从业年限',blank=True, null=True)
    fuwuquyu = models.CharField('服务区域',max_length=2, blank=True, null=True)
    shanchangxiangmu = models.CharField('擅长项目',max_length=10, blank=True, null=True)

    class Meta:
        verbose_name = "技师管理"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'jishi'

    def __str__(self):
        return self.jishi

class 开牌(models.Model):
    bianhao = models.IntegerField('账单编号',primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号',related_name='SHOUPAI',on_delete=models.PROTECT, db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipai_type = (('1', '1'),)
    kaipai = models.CharField('开牌（开牌为1）', choices=kaipai_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    lidianshijian = models.DateTimeField('离店时间',blank=True, null=True)

    class Meta:
        verbose_name = "开牌"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan'

class 会员开牌(models.Model):
    bianhao = models.IntegerField('账单编号',primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号',related_name='SHOUPAI5',on_delete=models.PROTECT, db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipai_type = (('1', '1'), )
    kaipai = models.CharField('开牌（开牌为1）',choices=kaipai_type,max_length=255,blank=True, null=True)
    kaleixing_type = (('钻石卡', u'钻石卡'), ('铂金卡', u'铂金卡'), ('黄金卡', u'黄金卡'))
    huiyuankaleixing = models.CharField(u"会员卡类型", choices=kaleixing_type, max_length=20)
    huiyuankahao = models.ForeignKey('会员', verbose_name='会员卡号', on_delete=models.PROTECT, db_column='huiyuankahao',
                                     blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')

    class Meta:
        verbose_name = "会员开牌"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan_huiyuan'

class 按摩消费(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI132',on_delete=models.PROTECT, db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    xiaofeianmoxiangmu = models.ForeignKey('项目', verbose_name='消费按摩项目',related_name='XIAOFEIANMO', on_delete=models.SET_NULL, db_column='xiaofeianmoxiangmu', blank=True,
                                           null=True)
    xiaofeianmojine = models.IntegerField('消费按摩项目金额', blank=True, null=True)
    xiaofeiqitaanmoxiangmu = models.ForeignKey('项目', verbose_name='消费其他按摩项目',related_name='XIAOFEIANMO1',  on_delete=models.SET_NULL, db_column='xiaofeiqitaanmoxiangmu',
                                               blank=True, null=True)
    xiaofeiqitaanmoxiangmujine = models.IntegerField('消费其他按摩项目金额', blank=True, null=True)
    xiaofeianmojishi = models.ForeignKey('技师', verbose_name='按摩技师', related_name='XIAOFEIANMOJISHI',on_delete=models.SET_NULL, db_column='xiaofeianmojishi', blank=True,
                                         null=True)
    kaipai = models.IntegerField('开牌（开牌为1）', blank=True, null=True)
    zhangdanzonge = models.DecimalField('账单总额', max_digits=65, decimal_places=0)

    class Meta:
        verbose_name = "按摩消费"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan'

class 助浴消费(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI156',on_delete=models.PROTECT, db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    xiaofeizhuyuxiangmu = models.ForeignKey('项目', verbose_name='消费助浴项目', related_name='XIAOFEIZHUYU', on_delete=models.SET_NULL, db_column='xiaofeizhuyuxiangmu', blank=True,
                                            null=True)
    xiaofeizhuyujine = models.IntegerField('消费助浴金额', blank=True, null=True)
    xiaofeiqitazhuyuxiangmu = models.ForeignKey('项目', verbose_name='消费其他助浴项目',related_name='XIAOFEIZHUYU1',  on_delete=models.SET_NULL, db_column='xiaofeiqitazhuyuxiangmu',
                                                blank=True, null=True)
    xiaofeiqitazhuyujine = models.IntegerField('消费其他助浴项目金额', blank=True, null=True)
    xiaofeizhuyujishi = models.ForeignKey('技师', verbose_name='助浴技师', on_delete=models.SET_NULL, db_column='xiaofeizhuyujishi', blank=True,
                                         null=True)
    kaipai = models.IntegerField('开牌（开牌为1）', blank=True, null=True)
    zhangdanzonge = models.DecimalField('账单总额', max_digits=65, decimal_places=0)

    class Meta:
        verbose_name = "助浴消费"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan'
class 消费(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI101', on_delete=models.PROTECT,
                                   db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    kaipai = models.IntegerField('开牌（开牌为1)',blank=True, null=True)
    xiaofeianmoxiangmu = models.ForeignKey('项目', verbose_name='消费按摩项目', related_name='XIAOFEI909',
                                           on_delete=models.SET_NULL, db_column='xiaofeianmoxiangmu', blank=True,
                                           null=True)
    xiaofeianmojine = models.IntegerField('消费按摩金额', blank=True, null=True)
    xiaofeiqitaanmoxiangmu = models.ForeignKey('项目', verbose_name='消费其他按摩项目', related_name='XIAOFEI181',
                                               on_delete=models.SET_NULL, db_column='xiaofeiqitaanmoxiangmu',
                                               blank=True, null=True)
    xiaofeiqitaanmoxiangmujine = models.IntegerField('消费其他按摩项目金额', blank=True, null=True)
    xiaofeianmojishi = models.ForeignKey('技师', verbose_name='按摩技师', related_name='XIAOFEIANMO01',
                                         on_delete=models.SET_NULL, db_column='xiaofeianmojishi', blank=True,
                                         null=True)
    xiaofeizhuyuxiangmu = models.ForeignKey('项目', verbose_name='消费助浴项目', related_name='XIAOFEIZHUY4U91',
                                            on_delete=models.SET_NULL, db_column='xiaofeizhuyuxiangmu', blank=True,
                                            null=True)
    xiaofeizhuyujine = models.IntegerField('消费助浴金额', blank=True, null=True)
    xiaofeiqitazhuyuxiangmu = models.ForeignKey('项目', verbose_name='消费其他助浴项目', related_name='XIAOFEIZHUYU171',
                                                on_delete=models.SET_NULL, db_column='xiaofeiqitazhuyuxiangmu',
                                                blank=True, null=True)
    xiaofeiqitazhuyujine = models.IntegerField('消费其他助浴项目金额', blank=True, null=True)
    xiaofeizhuyujishi = models.ForeignKey('技师', verbose_name='助浴技师', on_delete=models.SET_NULL,
                                          db_column='xiaofeizhuyujishi', blank=True,
                                          null=True)
    zhangdanzonge = models.IntegerField('账单总额')
    kaipaishijian = models.DateTimeField('开牌时间')

    class Meta:
        managed = False
        db_table = 'zhangdan'
class 会员消费(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI11', on_delete=models.PROTECT,
                                   db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    kaipai = models.IntegerField('开牌（开牌为1）', blank=True, null=True)
    xiaofeicishu = models.IntegerField(blank=True, null=True)
    xiaofeianmoxiangmu = models.ForeignKey('项目', verbose_name='消费按摩项目', related_name='XIAOFEI1',
                                           on_delete=models.SET_NULL, db_column='xiaofeianmoxiangmu', blank=True,
                                           null=True)
    xiaofeianmojine = models.IntegerField('消费按摩金额', blank=True, null=True)
    xiaofeiqitaanmoxiangmu = models.ForeignKey('项目', verbose_name='消费其他按摩项目', related_name='XIAOFEI11',
                                               on_delete=models.SET_NULL, db_column='xiaofeiqitaanmoxiangmu',
                                               blank=True, null=True)
    xiaofeiqitaanmoxiangmujine = models.IntegerField('消费其他按摩项目金额', blank=True, null=True)
    xiaofeianmojishi = models.ForeignKey('技师', verbose_name='按摩技师', related_name='XIAOFEIANMO1',
                                         on_delete=models.SET_NULL, db_column='xiaofeianmojishi', blank=True,
                                         null=True)
    xiaofeizhuyuxiangmu = models.ForeignKey('项目', verbose_name='消费助浴项目', related_name='XIAOFEIZHUY4U1',
                                            on_delete=models.SET_NULL, db_column='xiaofeizhuyuxiangmu', blank=True,
                                            null=True)
    xiaofeizhuyujine = models.IntegerField('消费助浴金额', blank=True, null=True)
    xiaofeiqitazhuyuxiangmu = models.ForeignKey('项目', verbose_name='消费其他助浴项目', related_name='XIAOFEIZHUYU11',
                                                on_delete=models.SET_NULL, db_column='xiaofeiqitazhuyuxiangmu',
                                                blank=True, null=True)
    xiaofeiqitazhuyujine = models.IntegerField('消费其他助浴项目金额', blank=True, null=True)
    xiaofeizhuyujishi = models.ForeignKey('技师', verbose_name='助浴技师', on_delete=models.SET_NULL,
                                          db_column='xiaofeizhuyujishi', blank=True,
                                          null=True)
    zhangdanzonge = models.IntegerField('账单总额')
    youhuijine = models.IntegerField('优惠金额', blank=True, null=True)
    kaleixing_type = (('钻石卡', u'钻石卡'), ('铂金卡', u'铂金卡'), ('黄金卡', u'黄金卡'))
    huiyuankaleixing = models.CharField(u"会员卡类型", choices=kaleixing_type, max_length=20)
    kaipaishijian = models.DateTimeField('开牌时间')
    huiyuankahao = models.ForeignKey('会员', verbose_name='会员卡号', on_delete=models.PROTECT, db_column='huiyuankahao',
                                     blank=True, null=True)
    class Meta:
        verbose_name = "会员消费账单"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan_huiyuan'

class 评价(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI3',on_delete=models.PROTECT, db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    pingjia_type = (('5', u'5'), ('4', u'4'), ('3', u'3'), ('2', u'2'), ('1', u'1'))
    weishengpingjia = models.IntegerField('卫生评价', choices=pingjia_type, blank=True, null=True)
    anmojishipingjia = models.IntegerField('按摩技师评价', choices=pingjia_type, blank=True, null=True)
    zhuyujishipingjia = models.IntegerField('助浴技师评价', choices=pingjia_type, blank=True, null=True)
    zhuyuxiangmupingjia = models.IntegerField('助浴项目评价', choices=pingjia_type, blank=True, null=True)
    anmoxiangmupingjia = models.IntegerField('按摩项目评价', choices=pingjia_type, blank=True, null=True)
    fuwupingjia = models.IntegerField('服务评价', blank=True, choices=pingjia_type, null=True)

    class Meta:
        verbose_name = "评价管理"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan'
class 会员评价(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI43',on_delete=models.PROTECT, db_column='shoupaihao')
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    kaipaishijian = models.DateTimeField('开牌时间')
    pingjia_type = (('5', u'5'), ('4', u'4'), ('3', u'3'), ('2', u'2'), ('1', u'1'))
    weishengpingjia = models.IntegerField('卫生评价',  choices= pingjia_type , blank=True, null=True)
    anmojishipingjia = models.IntegerField('按摩技师评价',  choices= pingjia_type ,blank=True, null=True)
    zhuyujishipingjia = models.IntegerField('助浴技师评价',  choices= pingjia_type , blank=True, null=True)
    zhuyuxiangmupingjia = models.IntegerField('助浴项目评价',  choices= pingjia_type , blank=True, null=True)
    anmoxiangmupingjia = models.IntegerField('按摩项目评价',  choices= pingjia_type , blank=True, null=True)
    fuwupingjia = models.IntegerField('服务评价', blank=True,  choices= pingjia_type , null=True)

    class Meta:
        verbose_name = "会员评价管理"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan_huiyuan'

class 预约(models.Model):
    id = models.IntegerField("编号",primary_key=True)
    shoupaihao = models.IntegerField('手牌号',blank=True, null=True)
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)
    fuwuquyu = models.CharField('服务区域',max_length=2, blank=True, null=True)
    chuangweihao = models.IntegerField('床位号（按摩）',blank=True, null=True)
    yuyueshijian = models.DateTimeField('预约时间',blank=True, null=True)
    jishi = models.ForeignKey('技师',verbose_name='确认技师', on_delete=models.SET_NULL,db_column='jishi', blank=True, null=True)
    qita_type = (('预约重复', u'预约重复'), ('客人等待时间过长', u'客人等待时间过长'),('客人不在', u'客人不在'),('客人改变主意', u'客人改变主意'),)
    qita = models.CharField('其他情况',max_length=255, choices=qita_type,blank=True, null=True)

    class Meta:
        verbose_name = "服务预约"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'fuwuyuyue'

class 结账(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='SHOUPAI2', on_delete=models.PROTECT,
                                   db_column='shoupaihao')
    zhangdanzonge = models.DecimalField('账单总额',max_digits=65, decimal_places=0)
    jiezhangfangshi = models.CharField('结账方式',max_length=5)
    kaipai = models.IntegerField('结束开牌（结束为0）',blank=True, null=True)
    lidianshijian = models.DateTimeField('结账时间', blank=True, null=True)

    class Meta:
        verbose_name = "结账"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan'

class 手牌(models.Model):
    shoupaihao = models.CharField('手牌号', max_length=255,primary_key=True)
    shifoukaipai = models.ForeignKey('开牌', verbose_name='是否开牌', on_delete=models.CASCADE, db_column='shifoukaipai', blank=True, null=True)
    xingbie_type = (('女', u'女'), ('男', u'男'))
    xingbie = models.CharField('性别', choices=xingbie_type, max_length=255, blank=True, null=True)

    class Meta:
        verbose_name = "手牌管理"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'shoupai'
    def __str__(self):
        return self.shoupaihao

class 金额(models.Model):
    xiangmujiage = models.DecimalField("项目价格", primary_key=True, max_digits=65, decimal_places=0)
    xiangmuming = models.CharField("项目名称", max_length=255)

    class Meta:
        managed = False
        db_table = 'xiangmu'

class 会员结账(models.Model):
    bianhao = models.IntegerField('账单编号', primary_key=True)
    shoupaihao = models.ForeignKey('手牌', verbose_name='手牌号', related_name='PAI3', on_delete=models.PROTECT,
                                   db_column='shoupaihao')
    kaipai = models.IntegerField('结束开牌（结束为0）', blank=True, null=True)
    kaleixing_type = (('钻石卡', u'钻石卡'), ('铂金卡', u'铂金卡'), ('黄金卡', u'黄金卡'))
    huiyuankaleixing = models.CharField(u"会员卡类型", choices=kaleixing_type, max_length=20)
    kaipaishijian = models.DateTimeField('开牌时间')
    huiyuankahao = models.ForeignKey('会员', verbose_name='会员卡号', on_delete=models.PROTECT, db_column='huiyuankahao', blank=True, null=True)
    zhangdanzonge = models.IntegerField('账单总额', blank=True, null=True)
    youhuijine = models.IntegerField('优惠金额', blank=True, null=True)
    qita = models.CharField('其它',max_length=255, blank=True, null=True)
    lidianshijian = models.DateTimeField('离店时间',blank=True, null=True)

    class Meta:
        verbose_name = "会员结账"
        verbose_name_plural = verbose_name
        managed = False
        db_table = 'zhangdan_huiyuan'