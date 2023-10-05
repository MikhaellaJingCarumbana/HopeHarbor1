from User.models import User
from django.db import models

# Create your models here.
class Donor(User):
    DONATION_CHOICES = (
        ('cash', 'Cash'),
        ('materials', 'Materials'),
    )
    DonationType = models.CharField(max_length=10, choices=DONATION_CHOICES, default='cash')
    UserType = models.CharField(
        max_length=12,
        choices=User.USER_TYPES,  # Use choices from User model
        default='donor',  # Set the default to 'donor'
    )

    def __str__(self):
        return f"{self.FirstName} {self.LastName}"



class CashDetails(models.Model):
    Amount = models.FloatField()
    Date = models.DateField()
    pass


class GoodsDetail(models.Model):
    Quantity = models.IntegerField()
    Expiry = models.DateField()
    Date = models.DateField()
    pass


class Currency(models.Model):
    CurrencyID = models.BigAutoField(primary_key=True)
    CurrencyType = models.CharField(max_length=25)


class DIK(models.Model):
    DikID = models.BigAutoField(primary_key=True)
    DikType = models.CharField(max_length=25)
    pass


class Amount_Tracker(models.Model):
    Amount = models.FloatField()
    pass


class Goods_Tracker(models.Model):
    Quantity = models.IntegerField()

# Rowen and Gian