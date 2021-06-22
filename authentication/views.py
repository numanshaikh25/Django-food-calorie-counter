from django.shortcuts import render,HttpResponse,redirect
from django.contrib.auth.models import User, auth
from django.contrib import messages

# Create your views here.

def login(request):
 if request.method == 'POST':
  username = request.POST['username']
  password = request.POST['password']
  
  user = auth.authenticate(username = username,password = password )
  if user is not None:
   auth.login(request,user)
   return redirect('/')
  else:
   messages.info(request,'Username or Password incorrect.')
   return redirect('login')
 else:
  return render(request,'login.html')

def signup(request):
 
 if request.method == "POST":
  first_name = request.POST['first_name']
  last_name = request.POST['last_name']
  username = request.POST['username']
  email = request.POST['email']
  password1 = request.POST['password1']
  password2 = request.POST['password2']
  
  if password1 == password2:
   if User.objects.filter(username=username).exists():
    messages.info(request,'Username already exists.')
    return redirect('signup')
   elif User.objects.filter(email=email).exists():
    messages.info(request,'Email already exists.')
    return redirect('signup')
   else:
    user = User.objects.create_user(username = username, first_name = first_name, last_name = last_name, email= email ,password = password1)
    user.save()
    print("user created")
    return redirect('login')
  else:
   messages.info(request,'Passwords does not match.')
   return redirect('signup')

 else:
  return render(request,'signup.html')

def logout(request):
  auth.logout(request)
  return redirect('/')

