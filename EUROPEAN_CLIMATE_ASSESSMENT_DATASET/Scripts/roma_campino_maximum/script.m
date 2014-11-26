[STAID, SOUID, date, temp, Q_TX] = textread('data.csv', '%d %d %d %d %d', 'delimiter', ',');
date = date';
date(1) = [];
temp(1) = [];

dataLength = size(date)(2);
currentMonth = (num2str(date(1)))(5:6);
currentMonth = str2num(currentMonth);
currentYear = (num2str(date(1)))(1:4);
currentYear = str2num(currentYear);
daysInCurrentMonth = 0;
totalTemp = 0;
result = 0;
fileID = fopen('output.csv', 'w');

for i = 1:dataLength
    counterMonth = (num2str(date(i)))(5:6);
    counterMonth = str2num(counterMonth);
    counterYear = (num2str(date(i)))(1:4);
    counterYear = str2num(counterYear);
 
    if (temp(i) != -9999)
        if (currentYear == counterYear)
            if (currentMonth == counterMonth)
                totalTemp += temp(i);
                daysInCurrentMonth ++;
            else
                result = double(totalTemp) / double(daysInCurrentMonth);
                fprintf(fileID, " %d , %d , %f \n",currentYear,currentMonth,result);
                currentMonth = counterMonth;
                daysInCurrentMonth = 1;
                totalTemp = temp(i);
            end
        else
            result = double(totalTemp) / double(daysInCurrentMonth);
            fprintf(fileID, " %d , %d , %f \n",currentYear,currentMonth,result);
         
            currentMonth = counterMonth;
            currentYear = counterYear;
            daysInCurrentMonth = 1;
            totalTemp = temp(i);
        end
    end
 
    if (i == (dataLength - 1))
        result = double(totalTemp) / double(daysInCurrentMonth);
        fprintf(fileID, " %d , %d , %f \n",currentYear,currentMonth,result);
    end
 
endfor

fclose(fileID);