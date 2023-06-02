from django.utils.deprecation import MiddlewareMixin
from django.shortcuts import HttpResponse,redirect

class M1(MiddlewareMixin):
    """登录验证中间件"""
    def process_request(self,request):
        if request.path_info in ['/librarian/login/']:
            return

        username = request.session.get('username')
        nickname = request.session.get('nickname')
        if username and nickname:
            return

        return redirect('/librarian/login/')
