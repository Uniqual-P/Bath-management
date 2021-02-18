# Generated by Django 2.1.8 on 2020-04-25 14:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='会员',
            fields=[
                ('huiyuankahao', models.IntegerField(primary_key=True, serialize=False, verbose_name='会员卡号')),
                ('xingming', models.CharField(max_length=20, verbose_name='会员姓名')),
                ('xingbie', models.CharField(max_length=1, verbose_name='会员性别')),
                ('nianling', models.IntegerField(verbose_name='会员年龄')),
                ('shengri', models.DateField(verbose_name='会员生日')),
                ('kaleixing', models.CharField(max_length=20, verbose_name='会员卡类型')),
                ('changzhuquyu', models.CharField(max_length=255, verbose_name='会员常住区域')),
                ('pingjunxiaofei', models.DecimalField(blank=True, decimal_places=0, max_digits=65, null=True, verbose_name='会员平均消费')),
                ('shangcixiaofeishijian', models.DateField(blank=True, null=True, verbose_name='会员上次消费时间')),
                ('huiyuanchongzhi', models.IntegerField(blank=True, null=True, verbose_name='会员卡充值')),
                ('kaneishengyujine', models.DecimalField(blank=True, decimal_places=0, max_digits=65, null=True, verbose_name='会员卡余额')),
                ('bankashijian', models.DateField(verbose_name='会员卡办理时间')),
                ('dianhuahaoma', models.CharField(max_length=11, verbose_name='电话号码')),
            ],
            options={
                'verbose_name': '会员管理',
                'verbose_name_plural': '会员管理',
                'db_table': 'huiyuan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='会员开牌',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('kaipai', models.IntegerField(blank=True, null=True, verbose_name='开牌（开牌为1）')),
                ('huiyuankaleixing', models.CharField(blank=True, max_length=255, null=True, verbose_name='会员卡类型')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
            ],
            options={
                'verbose_name': '会员开牌',
                'verbose_name_plural': '会员开牌',
                'db_table': 'zhangdan_huiyuan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='会员消费',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
                ('xiaofeianmojine', models.DecimalField(decimal_places=0, max_digits=65, verbose_name='消费按摩金额')),
                ('xiaofeiqitaanmoxiangmujine', models.DecimalField(decimal_places=0, max_digits=65, verbose_name='消费其他按摩项目金额')),
                ('xiaofeizhuyujine', models.DecimalField(decimal_places=0, max_digits=65, verbose_name='消费助浴金额')),
                ('xiaofeiqitazhuyujine', models.DecimalField(decimal_places=0, max_digits=65, verbose_name='消费其他助浴项目金额')),
                ('kaipai', models.IntegerField(blank=True, null=True, verbose_name='开牌（开牌为1）')),
            ],
            options={
                'verbose_name': '会员消费账单',
                'verbose_name_plural': '会员消费账单',
                'db_table': 'zhangdan_huiyuan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='会员结账',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('kaipai', models.IntegerField(blank=True, null=True, verbose_name='开牌（开牌为1）')),
                ('huiyuankaleixing', models.CharField(blank=True, max_length=255, null=True, verbose_name='会员卡类型')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
                ('huiyuankayue', models.DecimalField(blank=True, decimal_places=0, max_digits=65, null=True, verbose_name='会员卡余额')),
                ('zhangdanzonge', models.DecimalField(blank=True, decimal_places=0, max_digits=65, null=True, verbose_name='账单总额')),
                ('youhuijine', models.DecimalField(blank=True, decimal_places=0, max_digits=65, null=True, verbose_name='优惠金额')),
                ('qita', models.CharField(blank=True, max_length=255, null=True, verbose_name='其它')),
                ('lidianshijian', models.DateTimeField(blank=True, null=True, verbose_name='离店时间')),
            ],
            options={
                'verbose_name': '会员结账',
                'verbose_name_plural': '会员结账',
                'db_table': 'zhangdan_huiyuan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='会员评价',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
                ('weishengpingjia', models.IntegerField(blank=True, null=True, verbose_name='卫生评价')),
                ('anmojishipingjia', models.IntegerField(blank=True, null=True, verbose_name='按摩技师评价')),
                ('zhuyujishipingjia', models.IntegerField(blank=True, null=True, verbose_name='助浴技师评价')),
                ('zhuyuxiangmupingjia', models.IntegerField(blank=True, null=True, verbose_name='助浴项目评价')),
                ('anmoxiangmupingjia', models.IntegerField(blank=True, null=True, verbose_name='按摩项目评价')),
                ('fuwupingjia', models.IntegerField(blank=True, null=True, verbose_name='服务评价')),
            ],
            options={
                'verbose_name': '会员评价管理',
                'verbose_name_plural': '会员评价管理',
                'db_table': 'zhangdan_huiyuan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='建议',
            fields=[
                ('tianxieshijian', models.DateField(blank=True, primary_key=True, serialize=False, verbose_name='填写时间')),
                ('tousu_jianyi', models.CharField(blank=True, db_column='tousu/jianyi', max_length=500, verbose_name='投诉/建议')),
            ],
            options={
                'verbose_name': '洗浴投诉/建议',
                'verbose_name_plural': '洗浴投诉/建议',
                'db_table': 'jianyi',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='开牌',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('kaipai', models.IntegerField(blank=True, null=True, verbose_name='开牌（开牌为1）')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
                ('lidianshijian', models.DateTimeField(blank=True, null=True, verbose_name='离店时间')),
            ],
            options={
                'verbose_name': '开牌',
                'verbose_name_plural': '开牌',
                'db_table': 'zhangdan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='手牌',
            fields=[
                ('shoupaihao', models.IntegerField(primary_key=True, serialize=False, verbose_name='手牌号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
            ],
            options={
                'verbose_name': '手牌管理',
                'verbose_name_plural': '手牌管理',
                'db_table': 'shoupai',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='技师',
            fields=[
                ('jishi_id', models.IntegerField(verbose_name='技师编号')),
                ('jishi', models.CharField(max_length=255, primary_key=True, serialize=False, verbose_name='技师')),
                ('shifoukongxian', models.IntegerField(blank=True, null=True, verbose_name='是否空闲（1工作，0空闲）')),
                ('xingbie', models.CharField(max_length=2, verbose_name='性别')),
                ('nianling', models.IntegerField(blank=True, null=True, verbose_name='年龄')),
                ('congyenianxian', models.IntegerField(blank=True, null=True, verbose_name='从业年限')),
                ('fuwuquyu', models.CharField(blank=True, max_length=2, null=True, verbose_name='服务区域')),
                ('shanchangxiangmu', models.CharField(blank=True, max_length=10, null=True, verbose_name='擅长项目')),
            ],
            options={
                'verbose_name': '技师管理',
                'verbose_name_plural': '技师管理',
                'db_table': 'jishi',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='消费',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
                ('kaipai', models.IntegerField(blank=True, null=True, verbose_name='开牌（开牌为1）')),
            ],
            options={
                'verbose_name': '消费账单',
                'verbose_name_plural': '消费账单',
                'db_table': 'zhangdan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='结账',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('zhangdanzonge', models.DecimalField(decimal_places=0, max_digits=65, verbose_name='账单总额')),
                ('jiezhangfangshi', models.CharField(max_length=5, verbose_name='结账方式')),
                ('kaipai', models.IntegerField(blank=True, null=True, verbose_name='结束开牌（结束为0）')),
                ('lidianshijian', models.DateTimeField(blank=True, null=True, verbose_name='结账时间')),
            ],
            options={
                'verbose_name': '结账',
                'verbose_name_plural': '结账',
                'db_table': 'zhangdan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='评价',
            fields=[
                ('bianhao', models.IntegerField(primary_key=True, serialize=False, verbose_name='账单编号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('kaipaishijian', models.DateTimeField(verbose_name='开牌时间')),
                ('weishengpingjia', models.IntegerField(blank=True, null=True, verbose_name='卫生评价')),
                ('anmojishipingjia', models.IntegerField(blank=True, null=True, verbose_name='按摩技师评价')),
                ('zhuyujishipingjia', models.IntegerField(blank=True, null=True, verbose_name='助浴技师评价')),
                ('zhuyuxiangmupingjia', models.IntegerField(blank=True, null=True, verbose_name='助浴项目评价')),
                ('anmoxiangmupingjia', models.IntegerField(blank=True, null=True, verbose_name='按摩项目评价')),
                ('fuwupingjia', models.IntegerField(blank=True, null=True, verbose_name='服务评价')),
            ],
            options={
                'verbose_name': '评价管理',
                'verbose_name_plural': '评价管理',
                'db_table': 'zhangdan',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='金额',
            fields=[
                ('xiangmujiage', models.DecimalField(decimal_places=0, max_digits=65, primary_key=True, serialize=False, verbose_name='项目价格')),
                ('xiangmuming', models.CharField(max_length=255, verbose_name='项目名称')),
            ],
            options={
                'db_table': 'xiangmu',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='项目',
            fields=[
                ('xiangmuming', models.CharField(max_length=255, primary_key=True, serialize=False, verbose_name='项目名称')),
                ('xiangmujianjie', models.CharField(blank=True, max_length=255, null=True, verbose_name='项目简介')),
                ('xiangmujiage', models.DecimalField(decimal_places=0, max_digits=65, verbose_name='项目价格')),
                ('shanchangjishi', models.CharField(blank=True, max_length=255, null=True, verbose_name='擅长技师')),
                ('suoshufanwei', models.CharField(max_length=255, verbose_name='所属范围')),
            ],
            options={
                'verbose_name': '项目管理',
                'verbose_name_plural': '项目管理',
                'db_table': 'xiangmu',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='预约',
            fields=[
                ('shoupaihao', models.IntegerField(primary_key=True, serialize=False, verbose_name='手牌号')),
                ('xingbie', models.CharField(blank=True, max_length=1, null=True, verbose_name='性别')),
                ('fuwuquyu', models.CharField(blank=True, max_length=2, null=True, verbose_name='服务区域')),
                ('chuangweihao', models.IntegerField(blank=True, null=True, verbose_name='床位号（按摩）')),
                ('yuyueshijian', models.DateTimeField(blank=True, null=True, verbose_name='预约时间')),
            ],
            options={
                'verbose_name': '服务预约',
                'verbose_name_plural': '服务预约',
                'db_table': 'fuwuyuyue',
                'managed': False,
            },
        ),
    ]
