# Generated by Django 4.2.6 on 2023-10-07 04:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('AdminStaff', '0003_alter_adminstaff_usertype'),
    ]

    operations = [
        migrations.CreateModel(
            name='Feedback',
            fields=[
                ('FeedbackID', models.BigAutoField(primary_key=True, serialize=False)),
                ('Contents', models.CharField(max_length=500)),
                ('AdminName', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='feedback_admin', to='AdminStaff.adminstaff')),
            ],
        ),
    ]
