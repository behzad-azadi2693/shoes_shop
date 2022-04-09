from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import TemplateView
# Create your views here.
from django.urls import translate_url

class IndexView(TemplateView):
    template_name = 'index.html'

