create database library;
use library;
create table branch(
branch_no int primary key,
manager_id int,
branch_address varchar(55),
contact_no varchar(20)
);
create table employee(
emp_id int primary key,
emp_name varchar(20),
emp_position varchar(15),
salary decimal(10,2),
branch_no int,
foreign key(branch_no) references branch(branch_no)
);
create table books(
isbn  varchar(20) primary key,
book_title varchar(100),
category varchar(25),
rental_price decimal(10,2),
status char(3),
author varchar(50),
publisher varchar(50)
);
create table customer(
customer_id int primary key,
customer_name varchar(30),
customer_address varchar(100),
reg_date date
);
create table IssueStatus(
issue_id int primary key,
issued_cust int,
issued_bookname varchar(100),
issue_date date,
isbn_book varchar(20),
foreign key(issued_cust) references customer(customer_id),
foreign key(isbn_book) references books(isbn)
);
create table ReturnStatus(
return_id int primary key,
return_cust int,
return_bookname varchar(50),
return_date date,
isbn_book2 varchar(20),
foreign key(return_cust) references customer(customer_id),
foreign key(isbn_book2) references books(isbn)
);
insert into branch values(1,1,'Kila Library,Mulagunnathukavu,Killannur,680581','0487-2207110');
insert into branch values(2,2,'Chitilappilly,Kerala,680551','0471-2380223');
insert into branch values(3,3,'Library Buildings,convent Rd,shenoys,Kochi,682035','0484-2351894');
insert into branch values(4,4,'F82R+RPR,Kalarcode,Punnapra,Paravur,688003','0477-2266545');
insert into branch values(5,5,'Irivetty,Perakamanna,Kavanur,673639','9847309235');
select * from branch;
insert into employee values(1,'Alex Jose','Sales',53000,2);
insert into employee values(2,'Peter','CustomerService',15000,4);
insert into employee values(3,'Anish','Sales',25000,3);
insert into employee values(4,'Agnus','Telecaller',10000,2);
insert into employee values(5,'Sredha','CustomerService',18000,3);
insert into employee values(6,'Akhil','Manager',70000,2);
insert into employee values(7,'Namitha','Sales',56000,5);
insert into employee values(8,'Amritha','CustomerService',510000,2);
insert into employee values(9,'Suresh','Reviewer',80000,2);
insert into employee values(10,'Gokul','Reviewer',80000,4);
insert into employee values(11,'Meera','Manager',650000,3);
insert into employee values(12,'Shyam','Manager',72000,4);
insert into employee values(13,'Madhav','Telecaller',24000,1);
insert into employee values(14,'Mohan','Sales',28000,4);
insert into employee values(15,'Neenu','Telecaller',12000,4);
select * from employee;
insert into books values('978-0143127550','1984','Fiction',20,'Yes','George Orwell','Penguin Books');
insert into books values('978-0061120084','To Kill a Mockingbird','Fiction',30,'Yes','Harper Lee','Harper Perennial');
insert into books values('978-0307476071','The Catcher in the Rye','Fiction',28,'Yes','J.D. Salinger','Little, Brown and Company');
insert into books values('978-0062692596','Becoming','Autobiography',26,'No','Michelle Obama','Crown Publishing Group');
insert into books values('978-0547928210','The Hobbit','Fantasy',26,'Yes','J.R.R. Tolkien','Mariner Books');
insert into books values('978-0553382560','A Game of Thrones','Fantasy',35,'Yes','George R.R. Martin','Bantam');
insert into books values('978-0141981515','A Peoples Tragedy: The Russian Revolution','History',26,'Yes','Orlando Figes','Penguin Books');
insert into books values('978-0679745587','Midnights Children','Magical Realism',20,'No','Salman Rushdie','Vintage');
insert into books values('978-0060567180','The Road','Dystopian',22,'Yes','Cormac McCarthy','Vintage');
insert into books values('978-0679439388','The Fellowship of the Ring','Fantasy',30,'Yes','J.R.R. Tolkien','Mariner Books');
insert into books values('978-0679764025','The Bell Jar','Fiction',24,'Yes','Sylvia Plath','Harper Perennial');
insert into books values('978-0385472579','A Brief History of Time','Science',32,'Yes','Stephen Hawking','Bantam');
insert into books values('978-0393354326','Sapiens: A Brief History of Humankind','Anthropology',34,'Yes','Yuval Noah Harari','Harper Perennial');
insert into books values('978-0060558126','Guns, Germs, and Steel: The Fates of Human Societies','Anthropology',22,'Yes','Jared Diamond','W. W. Norton & Company');
insert into books values('978-0553280360','Lord of the Flies','Fiction',30,'Yes','William Golding','Penguin Books');
select * from books;
insert into customer (customer_id, customer_name, customer_address, reg_date) values
(1, 'Arjun Nair', '123, XYZ Lane, Kochi, Kerala', '2021-01-15'),
(2, 'Priya Menon', '456, ABC Road, Trivandrum, Kerala', '2023-01-20'),
(3, 'Rahul Kumar', '789, MNO Street, Kozhikode, Kerala', '2022-02-05'),
(4, 'Ananya Pillai', '101, PQR Avenue, Thrissur, Kerala', '2021-12-10'),
(5, 'Vivek Nambiar', '222, DEF Colony, Malappuram, Kerala', '2023-03-18'),
(6, 'Meera Krishnan', '333, GHI Street, Kannur, Kerala', '2021-10-25'),
(7, 'Siddharth Rajan', '444, JKL Road, Palakkad, Kerala', '2022-04-02'),
(8, 'Deepa Nair', '555, STU Lane, Alappuzha, Kerala', '2021-09-08'),
(9, 'Ravi Menon', '666, NOP Avenue, Kollam, Kerala', '2022-05-12'),
(10, 'Sneha Pillai', '777, RST Colony, Pathanamthitta, Kerala', '2023-04-14');
select * from customer;
insert into IssueStatus (issue_id,issued_cust,issued_bookname,issue_date,isbn_book) values(1,2,'The Bell Jar','2023-06-10','978-0679764025');
insert into IssueStatus values(2,4,'The Hobbit','2022-06-21','978-0547928210');
insert into IssueStatus values(3,9,'A Brief History of Time','2023-06-30','978-0385472579');
insert into IssueStatus values(4,6,'A Game of Thrones','2023-01-13','978-0553382560');
insert into IssueStatus values(5,2,'The Catcher in the Rye','2023-06-23','978-0307476071');
insert into IssueStatus values(6,5,'Lord of the Flies','2023-03-18','978-0553280360');
insert into IssueStatus values(7,6,'1984','2022-12-26','978-0143127550');
insert into IssueStatus values(8,7,'Sapiens: A Brief History of Humankind','2022-09-16','978-0393354326');
insert into IssueStatus values(9,3,'To Kill a Mockingbird','2023-06-29','978-0061120084');
insert into IssueStatus values(10,1,'A Peoples Tragedy: The Russian Revolution','2023-12-23','978-0141981515');
select * from IssueStatus;
insert into ReturnStatus values(1,1,'A Peoples Tragedy: The Russian Revolution','2024-01-10','978-0141981515');
insert into ReturnStatus values(2,9,'A Brief History of Time','2023-08-20','978-0385472579');
insert into ReturnStatus values(3,7,'Sapiens: A Brief History of Humankind','2022-11-10','978-0393354326');
insert into ReturnStatus values(4,6,'1984','2023-03-20','978-0143127550');
insert into ReturnStatus values(5,5,'Lord of the Flies','2023-04-18','978-0553280360');
select * from ReturnStatus;

select book_title,category,rental_price from books;

select emp_name,salary from employee order by salary desc;

select IssueStatus.issued_bookname as book_title, customer.customer_name as customer_name 
from IssueStatus join customer on IssueStatus.issued_cust=customer.customer_id;

select category,count(isbn) as count from books group by category;

select emp_name as Name, emp_position as Position, salary as Salary from employee where salary > 50000;

select c.customer_name from customer c left join IssueStatus b on c.customer_id=b.issued_cust 
where c.reg_date < '2022-01-01' and b.issued_cust is null;

select branch_no, count(emp_name) as total_employees from employee group by branch_no;

select c.customer_name from customer c join IssueStatus b on c.customer_id = b.issued_cust 
where b.issue_date >= '2023-06-01' and b.issue_date < '2023-07-01';

select book_title as Title,Category from books where category = 'History';

SELECT branch_no,count(emp_name) as Count FROM employee GROUP BY branch_no HAVING COUNT(*) >= 5;
    
select e.emp_name as employee_name, b.branch_address as branch_address from employee e
join branch b on e.branch_no = b.branch_no where e.emp_position = 'Manager';

select c.customer_name from customer c join IssueStatus b on c.customer_id = b.issued_cust 
join books a on a.isbn = b.isbn_book where a.rental_price >= 25;