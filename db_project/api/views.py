from django.db import connection
from django.shortcuts import render


def get_projects(request):
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM table')
    projects = cursor.fetchall()
    return render(request, 'api.html', {'projects': projects})
