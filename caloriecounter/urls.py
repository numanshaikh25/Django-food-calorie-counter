"""Fat2Fit URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
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
from django.urls import path,include
from caloriecounter import views

urlpatterns = [
 path('', views.home, name='home'),
 path('contact', views.contact, name='contact'), 
 path('caloriegoal',views.caloriegoal, name='caloriegoal'), 
 path('setcalgoal',views.setcalgoal,name='setcalgoal'),
 path('search',views.search,name='search'),
 path('searchfood',views.searchfood,name='searchfood'),
 path('addfood',views.addfood,name='addfood'),
 path('consumed',views.consumedfood,name='consumedfood'),
 path('deletefood/<int:id>/',views.deletefood,name='deletefood'),
 path('caloriecalculator',views.caloriecalculator,name='caloriecalculator'),
 path('calculatemcalories',views.calculatemcalories,name='calculatemcalories'),
]
