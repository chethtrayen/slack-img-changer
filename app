filenum=$(ls ./images/* | wc -l)
ran=$((RANDOM%filenum))
i=0
for entry in "./images"/*
do  
    if [ $i -eq $ran ]
    then
        curl https://slack.com/api/users.setPhoto -F "image=@$entry" -F "token=xoxp-692985698566-772635575382-833868623718-8d5a57e4e9d6d48fed4b06e6ff98ccc5"
    fi
    i=$((i+1))
done
