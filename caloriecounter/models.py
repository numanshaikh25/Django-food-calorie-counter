from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Contact(models.Model):
    name = models.CharField(max_length=30)
    email = models.EmailField()
    phone = models.CharField(max_length=30)
    desc = models.TextField(max_length=30)

    def __str__(self):
        return self.name 

class Calories(models.Model):
    id = models.IntegerField(primary_key=True)
    food_item = models.CharField(max_length=40, blank=True, null=True)
    protein = models.FloatField(blank=True, null=True)
    carbohydrate = models.FloatField(blank=True, null=True)
    total_fat = models.FloatField(blank=True, null=True)
    energy = models.FloatField(blank=True, null=True)

    def __str__(self):
        return self.food_item

    class Meta:
        managed = False
        db_table = 'calories_'



class Tablefood(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE,related_name="tablefood",null=True)
    #id = models.IntegerField(primary_key=True)
    Tfname = models.CharField(max_length=30)
    Tprotein = models.FloatField()
    Tcarbohydrate = models.FloatField()
    Tfats = models.FloatField()
    Tenergy = models.FloatField()
    Tamount = models.FloatField()


    def __str__(self):
        return self.Tfname

class Caloriegoal(models.Model):
    usercalgoal = models.TextField(max_length=5)

    def __str__(self):
        return self.usercalgoal