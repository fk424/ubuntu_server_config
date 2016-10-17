#!/bin/bash

mv /etc/php/mods-available/amqp.ini /etc/php/7.0/mods-available/
ln -s /etc/php/7.0/mods-available/amqp.ini /etc/php/7.0/cli/conf.d/20-amqp.ini
ln -s /etc/php/7.0/mods-available/amqp.ini /etc/php/7.0/fpm/conf.d/20-amqp.ini

/etc/init.d/php7.0-fpm restart
