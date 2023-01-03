from django.urls import path
from . import views

urlpatterns = [
    path('projects/', views.get_projects,  name='projects'),
]
# <a src= {% url 'projects'%} </>