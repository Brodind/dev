from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.home, name='index'),
    url(r'^about/$', views.about, name='about'),
    url(r'^contact/$', views.contact, name='contact'),
    url(r'^services/$', views.services, name='services'),
    url(r'^services_details/$', views.services_details, name='services_details'),
    url(r'^track/$', views.track, name='track'),
]