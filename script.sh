# whoami;ls;

echo "Это простой генератор пароля"
echo "Введите длину пароля"
read PASS_LENGTH

echo "Введите количество паролей для генерации"
read NUM_PASSWORDS

for p in $(seq 1 $NUM_PASSWORDS);
do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done