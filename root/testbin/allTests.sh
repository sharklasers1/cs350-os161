for i in {1..5};
  do
    sys161 kernel "sp2 20 2 2 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 4 4 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 8 8 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 8 1 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 1 10 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 2 0 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 0 4 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 8 0 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sp2 4 0 16 5 1 1 1 1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sy2;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "uw1;q" >> log.txt
done

for i in {1..5};
  do
    sys161 kernel "sy3;q" >> log.txt
done

echo "All tests completed successfully."