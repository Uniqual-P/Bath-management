"""mtblog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import url
from newManage import views

# import every app/autocomplete_light_registry.py

urlpatterns = (
    url(r'^$', views.list),   # http://127.0.0.1:8000/vip/  y预约列表
    url(r'^add$', views.add),  # http://127.0.0.1:8000/vip/add  添加预约页面
    url(r'^save$', views.save),  # http://127.0.0.1:8000/vip/add  添加页面提交按钮
)
