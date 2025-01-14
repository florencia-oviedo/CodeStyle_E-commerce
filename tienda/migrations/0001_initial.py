# Generated by Django 4.2.6 on 2023-10-22 03:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('img_url', models.ImageField(blank=True, null=True, upload_to='tienda')),
                ('precio_por_porcion', models.FloatField()),
                ('calorias_por_porcion', models.FloatField()),
                ('disponibilidad', models.BooleanField(default=True)),
            ],
            options={
                'verbose_name': 'Producto',
                'verbose_name_plural': 'Productos',
            },
        ),
    ]
