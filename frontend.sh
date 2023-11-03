dnf install nginx -y
echo $?

cp expense.conf /etc/nginx/default.d/expense.conf
echo $?

rm -rf /usr/share/nginx/html/*
echo $?

curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip
echo $?

cd /usr/share/nginx/html
unzip /tmp/frontend.zip
echo $?

systemctl enable nginx
systemctl start nginx
echo $?
