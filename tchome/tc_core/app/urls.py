from django.urls import path, include
from tc_core.app import views

urlpatterns = [
    path('', views.IndexView.as_view(), name='index')
]
