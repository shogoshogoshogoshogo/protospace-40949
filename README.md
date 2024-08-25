Protospace ER

usersテーブル
email(string, NOT NULL, ユニーク制約)
encrypted_password(string型, NOT NULL)
name(string型, NOT NULL)
profile(text型, NOT NULL)
occupation(text型, NOT NULL)
position(text型, NOT NULL)

prototypesテーブル

title(string型, NOT NULL)
catch_copy(text型, NOT NULL)
concept(text型, NOT NULL)
user(reference型, NOT NUU, 外部キー)

commentsテーブル

content (text型, NOT NULL)
prototype(reference型, NOT NULL, 外部キー)
user(reference型, NOT NULL, 外部キー)