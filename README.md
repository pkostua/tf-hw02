# Решение домашнего задания к занятию «Основы Terraform. Yandex Cloud»
https://github.com/netology-code/ter-homeworks/blob/main/02/hw-02.md
## Задание 1
### Поиск ошибок
![image](https://github.com/user-attachments/assets/bfbf0af2-142a-46b7-b98c-7d1ebc5b2d81)
### Подключение к созданной ВМ и проверка адреса
![image](https://github.com/user-attachments/assets/46c47039-7001-4f1e-84b6-d6b278a79195)
### Скриншот из консоли яндекса
![image](https://github.com/user-attachments/assets/80709062-534f-4bbf-aa3f-581c49f534d3)
### Ответы на вопросы
preemptible = true позволяет создать прерываемую ВМ  
core_fraction = 5 позволяет создать ВМ с гарантированным уровнем производительности 5 % от максимального  
Оба этих свойства позволят экономить ресурсы = деньги  
## Задание2
Код, получившися после выполнения второго задания [https://github.com/pkostua/tf-hw02/tree/master/task2](https://github.com/pkostua/tf-hw02/tree/master/task02)
## Задание3
Код, получившися после выполнения третьего задания
https://github.com/pkostua/tf-hw02/tree/master/task03
## Задание 4
Код четвертой задачи https://github.com/pkostua/tf-hw02/tree/master/task04
### Terraform outputs
![image](https://github.com/user-attachments/assets/83aa6c96-bd11-4d2e-b9f5-a14def0096c5)
## Задание 5
Код, получившися после выполнения пятого https://github.com/pkostua/tf-hw02/tree/master/task05
## Задание 6
Финальный код, получившися после выполнения шестого https://github.com/pkostua/tf-hw02/tree/master/task06
## Задание 7
Напишите, какой командой можно отобразить второй элемент списка test_list.  
```
> local.test_list[1]
"staging"
```
Найдите длину списка test_list с помощью функции length(<имя переменной>).  
```
> length(local.test_list)
3
```
Напишите, какой командой можно отобразить значение ключа admin из map test_map.  
```
> local.test_map["admin"]
"John"
```
Напишите interpolation-выражение, результатом которого будет: "John is admin for production server based on OS ubuntu-20-04 with X vcpu, Y ram and Z virtual disks", используйте данные из переменных test_list, test_map, servers и функцию length() для подстановки значений.
```
> "${local.test_map[keys(local.test_map)[0]]} is ${keys(local.test_map)[0]} for ${keys(local.servers)[1]} server based on ${local.servers[keys(local.servers)[1]].image} with ${local.servers[keys(local.servers)[1]].cpu} vcpu, ${local.servers[keys(local.servers)[1]].ram} ram and ${length(local.servers[keys(local.servers)[1]].disks)} virtual disks"
"John is admin for production server based on ubuntu-20-04 with 10 vcpu, 40 ram and 4 virtual disks"
```
## Задание 8
Напишите и проверьте переменную test и полное описание ее type
```
> type(var.test)
tuple([
    object({
        dev1: tuple([string, string,]),
    }),
    object({
        dev2: tuple([string, string,]),
    }),
    object({
        prod1: tuple([string,string,]),
    }),
])
```
Напишите выражение в terraform console, которое позволит вычленить строку "ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117" из этой переменной.  
```
> var.test[0].dev1[0]
"ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117"
```
