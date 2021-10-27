# Generated by Django 3.2.8 on 2021-10-26 11:47

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('login', models.CharField(max_length=50, unique=True)),
                ('channel_name', models.CharField(max_length=250, unique=True)),
            ],
        ),
    ]
