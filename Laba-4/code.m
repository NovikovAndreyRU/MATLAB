str='Иванов Константин 1981 3 4 3 4 3 5';
disp('Оригинальная строка =');
disp([' "' str '"']); disp(' ');
spacePoz = findstr(str, ' ');
disp('Длина строки без пробелов =');
disp(length(str) - length(findstr(str, ' ')));

word1 = str(1:spacePoz(1)-1); 
word2 = str(spacePoz(end)+1:end);
newStr = strcat(word2,str(spacePoz(1):spacePoz(end)));
strRevert = strcat (newStr,[' ' word1])

i = 0;
numStr = str;
while i < length(numStr)
    i = i + 1;
    switch numStr(i)
        case '0'
            numStr = [numStr(1:i-1) 'ноль' numStr(i+1:end)];
        case '1'
            numStr = [numStr(1:i-1) 'один' numStr(i+1:end)];
        case '2'
            numStr = [numStr(1:i-1) 'два' numStr(i+1:end)];
        case '3'
            numStr = [numStr(1:i-1) 'три' numStr(i+1:end)];
        case '4'
            numStr = [numStr(1:i-1) 'четыри' numStr(i+1:end)];
        case '5'
            numStr = [numStr(1:i-1) 'пять' numStr(i+1:end)];
        case '6'
            numStr = [numStr(1:i-1) 'шесть' numStr(i+1:end)];
        case '7'
            numStr = [numStr(1:i-1) 'семь' numStr(i+1:end)];
        case '8'
            numStr = [numStr(1:i-1) 'восемь' numStr(i+1:end)];
        case '9'
            numStr = [numStr(1:i-1) 'девять' numStr(i+1:end)];
    end
end
numStr

i = 1;
numArray = 0;
[a3, tf] = str2num(str(1:spacePoz(1)-1));
if tf
    numArray(i) = a3;
    i = i + 1;
end
for j = 1:length(spacePoz)-1
    [a3, tf] = str2num(str(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        numArray(i) = a3;
        i = i + 1;
    end
end
[a3, tf] = str2num(str(spacePoz(end)+1:end));
if tf
    numArray(i) = a3;
    i = i + 1;
end
numArray

f=fopen('in3.txt','wt');
fprintf(f,'Иванов Константин 1981 3 4 3 4 3 5\n1 2 3 4 99 80\n5 6 7 8 33 21\n15 90');
fclose(f);
disp('in3.txt файл сгенирирован.'); disp(' ');

f=fopen('in3.txt','rt');
fileStr=fgetl(f); %Строка 1
fileVector1 = 0;
fileMatrix1 = 0; fileMatrix2 = 0;
i1 = 1; i2 = 1; i3 = 1;
[a3, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(1, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(1, i3) = a3;
        i3 = i3 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a3, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(1, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(1, i3) = a3;
        i3 = i3 + 1;
    end
    end
end
[a3, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(1, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(1, i3) = a3;
        i3 = i3 + 1;
    end
end
fileStr=fgetl(f); %Строка 2
spacePoz = findstr(fileStr, ' ');
i2 = 1;
[a3, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(2, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(1, i3) = a3;
        i3 = i3 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a3, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
       if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(2, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(1, i3) = a3;
        i3 = i3 + 1;
    end
    end
end
[a3, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
    if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(2, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(1, i3) = a3;
        i3 = i3 + 1;
    end
end
fileStr=fgetl(f); %Строка 3
spacePoz = findstr(fileStr, ' ');
i2 = 1; i3 = 1;
[a3, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(3, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(2, i3) = a3;
        i3 = i3 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a3, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
        if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(3, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(2, i3) = a3;
        i3 = i3 + 1;
    end
    end
end
[a3, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
   if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(3, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(2, i3) = a3;
        i3 = i3 + 1;
    end
end
fileStr=fgetl(f); %Строка 4
spacePoz = findstr(fileStr, ' ');
i2 = 1; i3 = 1;
[a3, tf] = str2num(fileStr(1:spacePoz(1)-1));
if tf
    if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(3, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(3, i3) = a3;
        i3 = i3 + 1;
    end
end
for j = 1:length(spacePoz)-1
    [a3, tf] = str2num(fileStr(spacePoz(j)+1:spacePoz(j+1)-1));
    if tf
       if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(3, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(3, i3) = a3;
        i3 = i3 + 1;
    end
    end
end
[a3, tf] = str2num(fileStr(spacePoz(end)+1:end));
if tf
   if (a3 == 1981)
        fileVector1(i1) = a3;
        i1 = i1 + 1;
    elseif (a3 < 9)
        fileMatrix1(3, i2) = a3;
        i2 = i2 + 1;
    else 
        fileMatrix2(3, i3) = a3;
        i3 = i3 + 1;
    end
end
fileVector1
fileMatrix1
fileMatrix2
fclose(f);

FileHtml=fopen(['lab3_3.html'],'wt');

fprintf(FileHtml,['<!doctype html>\n']);
fprintf(FileHtml,['<HTML lang="ru">\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>Отчет по лабораторной работе</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1251">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<div>\n']);
fprintf(FileHtml,['<H3>ОТЧЕТ<br>по лабораторной работе</h3>\n']);
fprintf(FileHtml,['<br><br><h5>Исходные данные</h5>\n']);
fprintf(FileHtml,'y = sin(3*x)<br> x - вектор от 1 до 10 с шагом 0.1');
h1=figure('Name','var3.svg y = sin(3*x)');
hold on
x = [1:0.1:10];
y = sin(3*x);
plot(x,y);
hold off;
xlabel('X ось');
ylabel('Y ось');
saveas(h1,'var3', 'svg');
fprintf(FileHtml,['<br><br><div> График </div>\n']);
fprintf(FileHtml,['<a href="var3.svg">']);
fprintf(FileHtml,['<br><img src="var3.svg">\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</div>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
disp('HTML отчет сгенирирован.');