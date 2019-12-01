from django.db import models

# Create your models here.
class Station(models.Model):
    name=models.CharField(max_length=50)
    def __str__(self):
        return self.name

class Train(models.Model):
    name=models.CharField(max_length=50)
    source=models.TextField()
    destination=models.TextField()
    source_stn=models.TextField(default=True)
    dest_stn=models.TextField(default=True)
    d_time=models.DateTimeField()
    a_time=models.DateTimeField()
    seats=models.IntegerField()
    number=models.IntegerField(default=0)
    price=models.IntegerField()
    def __str__(self):
        return self.name

class Reservations(models.Model):
    name=models.CharField(max_length=50)
    nta=models.IntegerField()
    ntc=models.IntegerField()
    source=models.TextField()
    destination=models.TextField()
    source_stn=models.TextField(default=True)
    dest_stn=models.TextField(default=True)
    doj=models.DateTimeField()
    contactno=models.IntegerField(default=0)
    aadhaarno=models.IntegerField(default=0)
    totalfare=models.IntegerField()
    def __str__(self):
        return self.name

class Profile(models.Model):
    name=models.TextField()
    email=models.CharField(max_length=50)
    contactno=models.IntegerField()
    reserved=models.IntegerField()
    def __str__(self):
        return self.name