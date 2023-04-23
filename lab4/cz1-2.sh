#!/bin/bash

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then #Jeśli pierwszy input to --date, wyswietl date
  date
elif [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then #Jesli pierwszy input to --logs, stworz log.txt. Jesli w drugim inpucie jest liczba, utwórz podaną ilość plików log.txt.
  if [ "$2" ]; then
    count=$2
  else
    count=100
  fi

  for i in $(seq 1 $count); do ##Pętla do tworzenia  log.txt (1 - wpisana liczba)
    filename="log$i.txt"
    echo "Nazwa pliku: $filename" >> $filename
    echo "Nazwa skryptu: skrypt.sh" >> $filename
    echo "Data utworzenia: $(date)" >> $filename
  done


elif [ "$1" = "--error" ] || [ "$1" = "-e" ]; then #analogicznie do wyżej
  if [ "$2" ]; then
    count2=$2
  else
    count2=100
  fi

  dirname="error$count2" #tworzy dir errorx
  mkdir -p $dirname
  for y in $(seq 1 $count2); do #analogicznie do wyżej
    filename="$dirname/error$y.txt"
    echo "Nazwa pliku: $filename" >> $filename
    echo "Nazwa skryptu: skrypt.sh" >> $filename
    echo "Data utworzenia: $(date)" >> $filename
  done

elif [ "$1" = "--init" ]; then
  git clone Cwiczenia-narzedzia-w-branzy-IT- $PWD/kopia_repo #niestety NIE WIEM DLACZEGO NIE DZIAŁA

elif [ "$1" = "--help" ] || [ "$1" = "-l" ]; then #Jesli pierwszy imput to --help, wyswietl menu pomocy.
  echo "Dostępne komendy:"
  echo "--date / -d - wyświetla dzisiejszą datę"
  echo "--logs / -l - tworzy 100 plików logx.txt"
  echo "--logs [x] / -l [x] - tworzy [x] plików log.txt"
  echo "--error / -e - tworzy folder error100 a w środku tworzy 100 plików error1-100"
  echo "--error [x] / -e [x] - tworzy folder error[x], a w środku tworzy [x] plików error1-[x]"
fi





