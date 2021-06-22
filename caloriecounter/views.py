from django.shortcuts import render,HttpResponseRedirect,redirect
from caloriecounter.models import Contact
from caloriecounter.models import Calories
from caloriecounter.models import Tablefood
from caloriecounter.models import Caloriegoal
from django.contrib.auth.models import User, auth
from django.contrib import messages


# Create your views here.
def home(request):
 #return HttpResponse("this is my home page")
 
 return render(request,'index.html')


def contact(request):
 context = {'deliver': False}
 if request.method == "POST":
  name = request.POST['name']
  email = request.POST['email']
  phone = request.POST['phone']
  desc = request.POST['desc']

  ins = Contact(name=name,email = email,phone = phone,desc=desc) 
  ins.save()
  context = {'deliver': True}
  print("the data has been written to the db")
 return render(request,'contact.html',context)

def caloriegoal(request):

 #gvalue = int(request.POST['cgoal'])
 
 return render(request,'caloriegoal.html')


def setcalgoal(request):
  if request.method == 'POST':
    gvalue = request.POST['cgoal']
    foodgoal = Caloriegoal(usercalgoal=gvalue)
    foodgoal.save()
    #foodgoalbar = Caloriegoal.objects.all()
    print(foodgoal)
    return HttpResponseRedirect('/consumed',{'goal':foodgoal})
  return render(request,'consumed.html',{'goal':foodgoal})

def search(request):
 
 fooditems = Calories.objects.all()
 return render(request,'search.html',{'fooditems':fooditems})

def searchfood(request):
 query = request.GET['query']
 fooditems = Calories.objects.filter(food_item__icontains=query)
 return render(request,'search.html',{'fooditems':fooditems})


def addfood(request):
  if request.method=='POST':
    #id=request.POST['id']
    fname=request.POST['fname']
    protein=request.POST['protein']
    carbohydrate=request.POST['carbohydrate']
    fats=request.POST['fats']
    energy=request.POST['energy']
    amount=request.POST['amount']
    protein = float(protein)*float(amount)
    carbohydrate = float(carbohydrate)*float(amount)
    fats = float(fats)*float(amount)
    energy = float(energy)*float(amount)
    tableitems = Tablefood(Tfname=fname,Tprotein=protein,Tcarbohydrate=carbohydrate,Tfats=fats,Tenergy=energy,Tamount=amount)
    tableitems.save()
    request.user.tablefood.add(tableitems)
    return HttpResponseRedirect('/consumed')
  return render(request,'search.html')

 
def displayfood(request):
  context = {'foods':allfood}
  print("this is context",context)
  return render(request,'index.html',context)


def consumedfood(request):
  allfood = request.user.tablefood.all()
  ta = 0
  tp = 0
  tc = 0
  tf = 0 
  te = 0
  for i in allfood:
    ta += i.Tamount
    tp += i.Tprotein
    tc += i.Tcarbohydrate
    tf += i.Tfats
    te += i.Tenergy
  if te == 0:
    chart = {'display':False}
  else:
    chart = {'display':True}
  tcp= tp*4
  tcc= tc*4
  tcf= tf*9
  fg = Caloriegoal.objects.last()
  context = {'foods':allfood,'fgoal':fg,'ta':ta,'tp':tp,'tc':tc,'tf':tf,'te':te,'tcp':tcp,'tcc':tcc,'tcf':tcf}
  #print("this is context",context)
  return render(request,'consumed.html',context)

def deletefood(request,id):
  if request.method=="POST":
    di = Tablefood.objects.get(pk=id)
    di.delete()
    return HttpResponseRedirect('/consumed') 

def caloriecalculator(request):
  return render(request,'caloriecalculator.html')

def calculatemcalories(request):
  gender = request.GET['gender']
  height = request.GET['height']
  weight = request.GET['weight']
  age = request.GET['age']
  activitylevel = request.GET['activitylevel']
  if gender == 'M':
    bmr = 10*float(weight)+6.25*float(height)-5*float(age)+5
    totalmcalories=float(activitylevel)*bmr
    messages.info(request,f'Your daily Calorie requirement is {totalmcalories}')
    return HttpResponseRedirect('/caloriecalculator')
  elif gender == 'F':
    bmr = 10*float(weight)+6.25*float(height)-5*float(age)-161
    totalmcalories=float(activitylevel)*bmr
    messages.info(request,f'Your daily Calorie requirement is{totalmcalories}')
    return HttpResponseRedirect('/caloriecalculator')
  else:
    messages.info(request,'Invalid Gender details')
    return HttpResponseRedirect('/caloriecalculator')
  return redirect(request,'caloriecalculator.html')