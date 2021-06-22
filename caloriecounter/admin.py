from django.contrib import admin
from caloriecounter.models import Contact
from caloriecounter.models import Calories
from caloriecounter.models import Tablefood
from caloriecounter.models import Caloriegoal


# Register your models here.
admin.site.register(Contact)
admin.site.register(Calories)
admin.site.register(Tablefood)
admin.site.register(Caloriegoal)
