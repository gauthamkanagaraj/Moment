# Generated by Django 3.1.1 on 2020-10-12 15:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mectworkplace', '0002_logout'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='like',
            unique_together={('postid', 'userid')},
        ),
    ]