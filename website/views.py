from django.shortcuts import render
from django.http import HttpResponse
from .models import Profile,Reservations,Train,Station

def dash(request):
    return render(request,'website/dash.html')

def contact(request):
	return render(request,'website/contact.html')

def about(request):
	return render(request,'website/about.html')

def choose(request):
	if request.method=="POST":
		print(request,'dwbchwbhcdwbchwbddbwchdbc')
		sou=request.POST.get('source','NULL')
		des=request.POST.get('destination','NULL')
		print(request.POST)
		print(sou,des)
		obj1=Train.objects.all()
		obj=[]
		for i in obj1:
			if i.source==sou and i.destination==des:
				obj.append(i)

		context={'obj' : obj}
		print(obj)
		return render(request,'website/showtrains.html',context)
	else:
		return render(request,'website/choose.html')

def showtrains(request):
	return render(request,'website/showtrains.html')


def book(request):
	obj=Train.objects.get(id=request.POST.get('book'))
	context={'obj' : obj}
	return render(request,'website/booking.html',context)

def ticket(request):
	obj1=Train.objects.get(id=request.POST.get('ticket'))
	obj1.seats=obj1.seats-int(request.POST.get('ntc'))-int(request.POST.get('nta'))
	obj1.save()

	current_user=request.user
	obj2=Reservations()
	obj2.name=current_user.username
	obj2.nta=request.POST.get('nta')
	obj2.ntc=request.POST.get('ntc')
	obj2.doj=request.POST.get('dateofj')
	obj2.totalfare=50    #it is a compulsory field so i have to save something u chane this to totalfare
	obj2.save()
	context={'obj1' : obj1,'obj2' : obj2}
	return render(request,'website/ticket.html',context)
