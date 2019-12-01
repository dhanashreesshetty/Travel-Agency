from django.urls import path
from website import views

urlpatterns = [
    path('', views.dash, name='dash'),
    path('contact/', views.contact, name='contact'),
    path('about/', views.about,name='about'),
    path('choose/',views.choose,name='choose'),
    path('showtrains/',views.showtrains,name='showtrains'),
    path('book/',views.book,name='book'),
    path('ticket/',views.ticket,name='ticket'),
]
