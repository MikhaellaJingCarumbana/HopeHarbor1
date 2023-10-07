from User.models import User
from django.db import models

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
    donorID = models.ForeignKey(Donor, on_delete=models.CASCADE, null=False)
    Amount = models.FloatField(default=1.0)
    Date = models.DateField(auto_now=True)
    pass



class GoodsDetails(models.Model):
    Quantity = models.IntegerField(default= 1)
    Expiry = models.DateField(default='')
    Date = models.DateField(auto_now_add=True)
    pass


class Currency(models.Model):
    CurrencyID = models.BigAutoField(primary_key=True)
    CURRENCY_CHOICES = (
        ('USD', 'US Dollar'),
        ('EUR', 'Euro'),
        ('JPY', 'Japanese Yen'),
        ('GBP', 'British Pound Sterling'),
        ('CAD', 'Canadian Dollar'),
        ('AUD', 'Australian Dollar'),
        ('CHF', 'Swiss Franc'),
        ('CNY', 'Chinese Yuan'),
        ('INR', 'Indian Rupee'),
        ('RUB', 'Russian Ruble'),
        ('ZAR', 'South African Rand'),
        ('AED', 'United Arab Emirates Dirham'),
        ('SGD', 'Singapore Dollar'),
        ('NZD', 'New Zealand Dollar'),
        ('HKD', 'Hong Kong Dollar'),
        ('SEK', 'Swedish Krona'),
        ('NOK', 'Norwegian Krone'),
        ('DKK', 'Danish Krone'),
        ('KRW', 'South Korean Won'),
        ('BRL', 'Brazilian Real'),
        ('MXN', 'Mexican Peso'),
        ('ARS', 'Argentine Peso'),
        ('TRY', 'Turkish Lira'),
        ('EGP', 'Egyptian Pound'),
        ('PHP', 'Philippine Peso'),
        # Add more currencies as needed
    )
    CurrencyType = models.CharField(max_length=3, choices=CURRENCY_CHOICES, default='PHP')

    def __str__(self):
        return self.get_CurrencyType_display()


class DIK(models.Model):
    DikID = models.BigAutoField(primary_key=True)
    DikType = models.CharField(max_length=25)
    pass


class Amount_Tracker(models.Model):
    Amount = models.FloatField(default=0.0)
    pass


class Goods_Tracker(models.Model):
    Quantity = models.IntegerField(default=0)

# Rowen and Gian