create database alta_online_shop;

use alta_online_shop;

create table operators (
    id int(11) primary key,
    name varchar(255),
    created_at timestamp default now(),
    updated_at timestamp
);

create table product_types (
    id int(11) primary key ,
    name varchar(255),
    created_at timestamp default now(),
    updated_at timestamp
);

create table product_descriptions
(
    id int(11) primary key,
    description text,
    created_at timestamp default now(),
    updated_at timestamp,
    foreign key (id) references products(id)
);

create table payment_methods (
    id int(11) primary key,
    name varchar(255),
    status smallint,
    created_at timestamp default now(),
    updated_at timestamp
);

create table users
(
    id int(11) primary key,
    name text,
    status smallint,
    dob date,
    gender char(1),
    created_at timestamp default now(),
    updated_at timestamp
);

create table products (
	id int(11) primary key,
    product_type_id int(11),
    operator_id int(11),
    name varchar(100),
    status smallint,
    created_at timestamp default now(),
    updated_at timestamp,
    foreign key (product_type_id) references product_types(id),
    foreign key (operator_id) references operators(id)
);

alter table products
add code varchar(50);

create table product_descriptions
(
    id int(11) primary key,
    description text,
    created_at timestamp default now(),
    updated_at timestamp,
    foreign key (id) references products(id)
);

create table transactions
(
    id int(11) primary key,
    user_id int(11),
    payment_method_id int(11),
    status varchar(10),
    total_qty int(11),
    total_price numeric(25,2),
    created_at timestamp default now(),
    updated_at timestamp,
    foreign key (user_id) references users(id),
    foreign key (payment_method_id) references payment_methods(id)
);

create table transaction_details
(
    transaction_id int(11),
    product_id int(11),
    status varchar(10),
    qty int(11),
    price numeric(25,2),
    created_at timestamp default now(),
    updated_at timestamp,
    primary key (transaction_id, product_id),
    foreign key (transaction_id) references transactions(id),
    foreign key (product_id) references products(id)
);

insert into operators (id, name) values (1, 'philips');
insert into operators (id, name) values (2, 'muda');
insert into operators (id, name) values (3, 'sinaga');
insert into operators (id, name) values (4, 'eko');
insert into operators (id, name) values (5, 'budi');

insert into product_types(id, name) values (1, 'Hoodie');
insert into product_types(id, name) values (2, 'Baju');
insert into product_types(id, name) values (3, 'Sepatu');

insert into products (id, product_type_id, operator_id, code, name, status)
    values (1, 1, 3, 'Hoodi1', 'Sepatuh', 1);
insert into products (id, product_type_id, operator_id, code, name, status)
    values (2, 1, 3, 'Hoodi2', 'Hodie', 1);
    
insert into products (id, product_type_id, operator_id, code, name, status)
    values (3, 2, 1, 'Baju1', 'rock', 1);
insert into products (id, product_type_id, operator_id, code, name, status)
    values (4, 2, 1, 'Baju2', 'keren', 1);
insert into products (id, product_type_id, operator_id, code, name, status)
    values (5, 2, 1, 'Baju33', 'mantap', 1);
    
insert into products (id, product_type_id, operator_id, code, name, status)
    values (6, 3, 4, 'Sepatu1', 'Statment', 1);
insert into products (id, product_type_id, operator_id, code, name, status)
    values (7, 3, 4, 'Sepatu2', 'Converse', 1);
insert into products (id, product_type_id, operator_id, code, name, status)
    values (8, 3, 4, 'Sepatu3', 'Timberlake', 1);

select * from products;

insert into product_descriptions (id, description) values (1, 'Hodi keren motif sepatuh');
insert into product_descriptions (id, description) values (2, 'jaket merk hodie');
insert into product_descriptions (id, description) values (3, 'Kaos dengan motif rock');
insert into product_descriptions (id, description) values (4, 'Kaos dengan motif keren');
insert into product_descriptions (id, description) values (5, 'Kaos dengan motif mantap');
insert into product_descriptions (id, description) values (6, 'Sepatu kulit dari bahan kulit sapi asli');
insert into product_descriptions (id, description) values (7, 'Sepatu keren');
insert into product_descriptions (id, description) values (8, 'Sepatu yang cocok kerja lapangan');

insert into payment_methods (id, name, status) values(1, 'Virtual Account', 1);
insert into payment_methods (id, name, status) values(2, 'Cash on Delivery', 1);
insert into payment_methods (id, name, status) values(3, 'Link aja ', 1);

insert into users (id, name, status, dob, gender) values(1, 'Philips', 1, '2000-02-01', 'M');
insert into users (id, name, status, dob, gender) values(2, 'Muda', 1, '1990-04-02', 'M');
insert into users (id, name, status, dob, gender) values(3, 'Gerald', 1, '1995-06-03', 'M');
insert into users (id, name, status, dob, gender) values(4, 'Septian', 1, '1992-01-08', 'M');
insert into users (id, name, status, dob, gender) values(5, 'Vier', 1, '1998-02-09', 'M');

insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (1, 1, 1, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (2, 1, 2, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (3, 1, 1, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (4, 2, 3, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (5, 2, 3, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (6, 2, 2, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (7, 3, 1, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (8, 3, 2, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (9, 3, 2, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (10, 4, 1, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (11, 4, 1, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (12, 4, 3, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (13, 5, 1, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (14, 5, 2, 1, 3, 120000);
insert into transactions(id, user_id, payment_method_id, status, total_qty, total_price) values (15, 5, 3, 1, 3, 120000);

insert into transaction_details (transaction_id, product_id, status, qty, price) values (1, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (1, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (1, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (2, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (2, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (2, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (3, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (3, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (3, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (4, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (4, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (4, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (5, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (5, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (5, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (6, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (6, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (6, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (7, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (7, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (7, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (8, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (8, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (8, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (9, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (9, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (9, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (10, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (10, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (10, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (11, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (11, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (11, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (12, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (12, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (12, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (13, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (13, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (13, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (14, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (14, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (14, 1, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (15, 2, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (15, 3, 'Done', 1, 40000);
insert into transaction_details (transaction_id, product_id, status, qty, price) values (15, 1, 'Done', 1, 40000);

select name gender from users
	where gender = 'M';
    
select * from products
	where id = 3;

SELECT * FROM users
    WHERE created_at >= '2022-03-09' AND name like '%a%';
    
select count(*) as total_pelanggang_perempuan from users
	where gender = 'F';
    
select * from users
	order by name;
    
select * from products
	where id  between 1 and 5;

update products
set name = 'product dummy'
where id = 1;

update transaction_details
set qty = 3
where product_id =1;

select * from products;

DELETE FROM products WHERE id = 1;
delete from products where product_type_id =1;


select * from transactions
	where user_id IN (1,2);
    
select sum(total_price) as jumlah_harga_transaksi from transactions
	where user_id =1;

select * from products;


SELECT p.name as product_name,
       pt.name as product_type_name
    FROM products p
    LEFT JOIN product_types pt ON p.product_type_id = pt.id;