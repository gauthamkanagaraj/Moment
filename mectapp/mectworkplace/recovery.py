    email=request.POST.get('email')
    password=request.POST.get('password')
    enc=pbkdf2_sha256.hash(str(password))
    a=(email,enc)
   
    

    cnx = mysql.connector.connect(user='root', database='')
    cursor = cnx.cursor()
    query = ("INSERT INTO mectworkplace_credit"
    "(email,password)"
    "VALUES (%s, %s)")
    cursor.execute(query,a)
    query1 = ("SELECT email,password FROM mectworkplace_credit")
    cursor.execute(query1)

    for (email,password) in cursor:
        print("{}, {}".format(email,password))
    cnx.commit()
    cursor.close()
    cnx.close()

    from mectworkplace.forms import CreditForm

class userid(models.Model):
    userid=models.AutoField(primary_key=True,unique=True)
    email=models.CharField(max_length=50,unique=True)
    password=models.CharField(max_length=256)
   

     
 
class bio(models.Model):
    userid=models.IntegerField(primary_key=True)
    name=models.CharField(max_length=45)
    mobile=models.IntegerField(max_length=10,unique=True)
    acctype=models.BinaryField()
    designation=models.IntegerField(max_length=45)
    profilepic=models.CharField(max_length=45,null=True)
    class Meta:
        indexes = [
            models.Index(fields=['userid'], name='fk_bio_id1_idx'),
      
       
        ]
class comment(models.Model):
    postid=models.IntegerField()
    userid=models.IntegerField()
    commentdata=models.CharField(max_length=45,null=True)
    class Meta:
        indexes = [
            models.Index(fields=['postid'], name='fk_comment_posts1_idx'),
            models.Index(fields=['userid'], name='fk_comment_id1_id'),
      
       
        ]
class followers_group(models.Model):
    userid=models.IntegerField()
    groupid=models.IntegerField()
    class Meta:
        indexes = [
            models.Index(fields=['groupid'], name='fk_followers_group_groups1_idx'),
            
      
       
        ]
class followers_people(models.Model):
    id_to_follow=models.IntegerField()
    id_follow=models.IntegerField()
    class Meta:
        indexes = [
            models.Index(fields=['id_to_follow'], name='fk_followers_people_id1_idx'),
            models.Index(fields=['id_follow'], name='fk_followers_people_id2_idx'),
      
       
        ]
class groups(models.Model):
    groupid=models.IntegerField(primary_key=True)
    adminid=models.IntegerField()
    groupname=models.CharField(max_length=45)
    groupdp=models.CharField(max_length=45,null=True)
    class Meta:
        indexes = [
            models.Index(fields=['adminid'], name='fk_groups_id1_idx'),

        ]


class joinrequest(models.Model):
    personid=models.IntegerField()
    groupd=models.IntegerField()
    class Meta:
        indexes = [
            models.Index(fields=['personid'], name='fk_joinrequest_id1_idx'),
            models.Index(fields=['groupd'], name='fk_joinrequest_groups1_idx'),
      
       
        ]
class like(models.Model):
    postid=models.IntegerField()
    userid=models.IntegerField()
     class Meta:
        indexes = [
            models.Index(fields=['postid'], name='fk_like_posts1_idx'),
            models.Index(fields=['userid'], name='fk_like_id1_idx'),
      
       
        ]
class posts(models.Model):
    postid=models.IntegerField(primary_key=True,unique=True)
    userid=models.IntegerField(null=True)
    groupid=models.IntegerField()
    postdata=models.CharField(max_length=500,null=True)
    imgdata=models.CharField(max_length=100,null=True)
    posttime=models.DateTimeField(null=True)
    class Meta:
        indexes = [
            models.Index(fields=['groupid'], name='fk_posts_groups1_idx'),
            models.Index(fields=['userid'], name='fk_posts_id1_idx'),
      
       
        ]
class privatereply(models.Model):
    idfrom=models.IntegerField()
    idto=models.IntegerField()
    replydata=models.CharField(max_length=200)

    class Meta:
        indexes = [
            models.Index(fields=['idfrom'], name='fk_privatereply_id1_idx'),
            models.Index(fields=['idto'], name='fk_privatereply_id2_idx'),
      
        ]
    






 $(".dial").knob({
	'width': 60
	});		
	
$(".next").on("click", function () {
	window.location.replace("signup1");
});




from django.core import serializers

HttpResponse(json.dumps(data), content_type="application/json")


h=userid.objects.all().values('password')
v1=[]
    v2=[]
    
 for j in h:
        a=pbkdf2_sha256.verify(password,j)
        if a=='True':
            l=1
        else:
            l=0


c=followers_group.objects.filter(userid=id1).values()
    for i in c:
        d.append(i['groupid'])
    for i in d:
        g=group.objects.filter(groupid=i).values()
        for j in g:
            j['groupname']



//imp
for j in m:
            for i in .values():
                del i['userid']
                del i['mobile']
                del i['acctype']
                del i['designation']
                j.update(i)
                q.append(j)
        for j in q:
            for i in b2.values():
                del i['groupid']
                del i['adminid']
                j.update(i)
                r.append(j)



//imp

 postid=request.POST.get('postid')
    likestatus=request.POST.get('likestatus')
    print(postid)
    print(likestatus)
    now=datetime.datetime.now()
    t=now.strftime("%d/%m/%y %H:%M:%S")
    print(t)
    if likestatus=='1':
        l1=like(postid=postid,userid=id1,liketime=t)
        l1.save()
        p2=posts.objects.filter(postid=postid).values()
        for i in p2.values():
            p1id=i['postid']
            u1id=i['userid']
            gp1id=i['groupid']
            pd1=i['postdata']
            img1=i['imgdata']
            pttime=i['posttime']
        lik=(i['likecount']+1)
        p3=posts(postid=p1id,userid=u1id,groupid=gp1id,postdata=pd1,imgdata=img1,posttime=pttime,likecount=lik)
        p3.save()
        return HttpResponse('sucess')
    else:
        l3=like.objects.filter(postid=postid).delete()
        p2=posts.objects.filter(postid=postid).values()
        for i in p2.values():
            p1id=i['postid']
            u1id=i['userid']
            gp1id=i['groupid']
            pd1=i['postdata']
            img1=i['imgdata']
            pttime=i['posttime']
        lik=(i['likecount'])
        if lik=='0':    
            p3=posts(postid=p1id,userid=u1id,groupid=gp1id,postdata=pd1,imgdata=img1,posttime=pttime,likecount=lik)
            p3.save()
        else:
            lik1=lik-1
            print(lik1)
            p3=posts(postid=p1id,userid=u1id,groupid=gp1id,postdata=pd1,imgdata=img1,posttime=pttime,likecount=lik1)
            p3.save()
        return HttpResponse('sucess')






//imp


if len(j)==0:
            l5=like(postid=postid,userid=id1,liketime=t)
            l5.save()
            print('saved')
        else:
            for i in j:
                print(i['postid'])
                print(i['userid'])
                if i['postid']==postid and i['userid']==id1:
                    l6
                else:
                    l5=like(postid=postid,userid=id1,liketime=t)
                    l5.save()


//imp

for i in f.values():
            i.update({'dp':'null'})
            a1.append(i)
        for j in m11:
            for i in a1:
                if i['postid']==j['postid']:
                    b1=bio.objects.filter(userid=i['userid']).values()
                    for k in b1.values():
                        i.update({'dp':k['profilepic']})
                else:
                    pass
        j1=sorted(a1,key=lambda i: (i['postid'],i['commenttime']),reverse=True)
//imp

window.location.replace("signup1");

if len(l10)==0:
            for i in s:
                i.update({'likestatus':0})
                s1.append(i)
        else:
            for i in l10:
                for j in s:
                    if i['postid']==j['postid']:
                        j.update(i)
                        s1.append(j)
                        print(s1)
                    else:
                        j.update({'likestatus':0})
                        s1.append(j)
        print(s1)



/imp

b1=bio.objects.filter(userid=searchid).values()
        for i in b1.values():
            del i['userid']
            del i['mobile']
            del i['acctype']
        app.append(i)
        print(app)


path('search/group/search',views.back1,name='search/group/search'),
    path('search/user/search',views.back,name='search/'),
    path('search/group/search/group/<int:gid>',views.search,name='search/group'),
    path('search/group/search/user/<int:gid>',views.search,name='search/user')

def back(request):
    return render (request,'search.html')
def back1(request):
    return render (request,'search.html')





//imp
   b2=b1.objects.filter(userid=id1).values()
        for i in b2:
            k.append(i)
        return HttpResponse(json.dumps(k))
    except:
        print('mobile number already exists')
        return HttpResponse(json.dumps('mobile number already exists'))

def t27(request):
    lout=request.GET.get('logout')
    if lout=='1':
        request.session.flush(request.session['gid1'])
        request.session.flush(request.session['userid'])
        request.session.flush(request.session['x2'])
        request.session.flush(request.session['x1'])
        request.session.flush(request.session['w'])
        request.session.flush(request.session['n12'])
        request.session.flush(request.session['m11'])
        request.session.flush(request.session['a10'])
        request.session.flush(request.session['b10'])



//i mp



for i in l:
            for j in o:
                if j==i:
                    p1=privatepost.objects.filter(postid=i).values()
                    for j in p1.values():
                        if j['userid']!=request.session['userid']:
                            m10=[i for i in m10 if not (i['postid']==j['postid'])]
                            print('diff')
                            
                        else:
                            print('same')
                else:
                    print('postid different')
        
        print(m10)