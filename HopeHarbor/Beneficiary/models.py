from django.db import models
from User.models import User

class Address(models.Model):
    house_number = models.CharField(max_length=50)
    street = models.CharField(max_length=50, default= ' ')
    barangay = models.CharField(max_length=50, default=' ')
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=50)

    def __str__(self):
        return f"{self.house_number}, {self.street}, {self.barangay}, {self.city}, {self.state}"

class Beneficiary(User):
    Needs = models.CharField(max_length=200)
    Address = models.ForeignKey(Address, on_delete=models.SET_NULL, null=True, blank=True)
    UserType = models.CharField(
        max_length=12,
        choices=User.USER_TYPES,  # Use choices from User model
        default='beneficiary',  # Set the default to 'donor'
    )

    def __str__(self):
        return f"{self.FirstName} {self.LastName}"
# Create your models here.
