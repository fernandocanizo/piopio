from django.shortcuts import render
from django.views.generic import View

from users.models import User
from .models import Pip


class Index(View):
    def get(self, request):
        context = {
            'title': "Piopio",
            }

        return render(request, 'pips/base.html', context)


class Profile(View):
    def get(self, request, username):
        user = User.objects.get(username=username)
        pips = Pip.objects.filter(user=user)
        context = {
            'user': user,
            'pips': pips,
            }

        return render(request, 'pips/profile.html', context)
