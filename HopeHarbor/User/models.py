from django.db import models

# Create your models here.
class User(models.Model):
    UserID = models.BigAutoField(primary_key=True)
    FirstName = models.CharField(max_length=20)
    LastName = models.CharField(max_length=20)
    EmailAddress = models.CharField(max_length=100)  # Changed to CharField
    Password = models.CharField(max_length=20)
    USER_TYPES = (
        ('donor', 'Donor'),
        ('beneficiary', 'Beneficiary'),
        ('admin', 'Admin'),
    )
    UserType = models.CharField(max_length=12, choices=USER_TYPES)

    class Meta:
        abstract = True