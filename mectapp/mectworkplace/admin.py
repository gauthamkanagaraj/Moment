from django.contrib import admin
from.models import userid,bio,privatepost,darkmode,ntime,notificationcount,logout
# Register your models here.
admin.site.register(userid)
admin.site.register(bio)
admin.site.register(logout)
admin.site.register(notificationcount)
admin.site.register(ntime)
admin.site.register(darkmode)
admin.site.register(privatepost)
