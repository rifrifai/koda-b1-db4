-- CREATE DATABASE auth_flow;
-- CREATE TABLE users(
--     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     email VARCHAR(150) UNIQUE,
--     password_hash VARCHAR(255) NOT NULL,
--     created_at DATE DEFAULT NOW(),
--     updated_at DATE DEFAULT NOW()
-- );
-- CREATE TABLE roles(
--     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     name VARCHAR(100)
-- );

-- CREATE TABLE user_role(
--     user_id INTEGER NOT NULL REFERENCES users(id),
--     role_id INTEGER NOT NULL REFERENCES roles(id)
-- );

-- ALTER TABLE user_role ADD id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY;
-- SELECT * FROM user_role;

-- CREATE TABLE sessions(
--     id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     user_id INTEGER NOT NULL REFERENCES users(id),
--     token VARCHAR(255) NOT NULL,
--     device VARCHAR(100) NOT NULL,
--     expired_at DATE,
--     created_at DATE DEFAULT NOW()
-- );
-- INSERT INTO users (email, password_hash) VALUES
-- ('kucang@mail.com', 'fhasdjkfhedisaf8978978'),
-- ('bandd0@mail.com', 'kjahsdfkjheds98789789')
-- ('abdur@mail.com', 'uierowoijdfjg878y7847385hjk'),
-- ('abdur2@mail.com', 'u9909erowoijdfjg878y7847385hjk'),
-- ('abdur3@mail.com', 'uiero6565ijdfjg878y7847385hjk'),
-- ('bagas@mail.com', 'iiouf8979jihjnjdsfhjdhkh')

-- INSERT INTO roles(name) VALUES
-- ('admin'),
-- ('super_admin'),
-- ('user')
-- INSERT INTO user_role(user_id, role_id) VALUES
-- (5, 1),
-- (6, 2)
-- UPDATE user_role SET user_id = 4 WHERE id = 2;
-- INSERT INTO sessions(user_id, token, device) VALUES
-- -- (1, 'kajsdfiouseaoirfu987', 'asus vivobook')
-- -- (1, 'kajsdfiouseaoirfu987', 'asus vivobook')
-- (2, 'kajsdfiouseaoirfu987', 'acer swift iv'),
-- (3, 'kajsdfiouseaoirfu987', 'msi prestige')
-- SELECT * FROM user_role;

SELECT u.email, r.name FROM user_role ur JOIN
users u ON u.id = ur.user_id JOIN
roles r ON r.id = ur.role_id;