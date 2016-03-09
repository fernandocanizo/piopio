from django.shortcuts import render
from django.views.generic import View


class Index(View):
    def get(self, request):
        context = {
            'title': "Piopio",
            }

        return render(request, 'tweets/base.html', context)
