-- public.books definition
-- Drop table
-- DROP TABLE public.books;

create table public.books (
	book_id serial4 not null,
	title text not null,
-- what it says on the tin, the title of the book.
author_first_name text not null,
-- the first name of the author, duh
author_last_name text not null,
-- author's last name, duh
publisher text null
-- publisher of the book, leave blank if publisher is unknown,
is_series bool default false not null,
-- Is this a series, yes or no, automatically defaults to no, input true if a series
series_title text null,
-- title of the series if needed. constrain this later to work in tandem with is_series
series_number int4 null,
-- number within series, need to make constraint to work with is_series and series title
publication_year int4 null,
-- year of publication
price numeric null,
-- price of book, duh
genre_1 text not null,
-- Primary Genre, always needed
genre_2 text null,
-- secondary genre if needed
genre_3 text null,
-- Fiction or Non-fiction
subject_1 text null,
-- LOC Subject Heading
subject_2 text null,
-- 2nd LOC subject heading
fiction_status text default 'Fiction'::text not null,
-- Valid values: Fiction, Non-Fiction
purchase_url text null,
-- url to the book on publisher, amazon, goodreads, etc
status text default 'Want'::text not null,
-- Default Values:¶Want, Ordering, Owned, Reading, Finished, DNF
notes text null,
-- notes if needed
	constraint books_pk primary key (book_id)
);
-- Column comments

comment on
column public.books.title is 'what it says on the tin, the title of the book.';

comment on
column public.books.author_first_name is 'the first name of the author, duh';

comment on
column public.books.author_last_name is 'author''s last name, duh';

comment on
column public.books.publisher is 'publisher of the book, leave blank if publisher is unknown';

comment on
column public.books.is_series is 'Is this a series, yes or no, automatically defaults to no, input true if a series';

comment on
column public.books.series_title is 'title of the series if needed. constrain this later to work in tandem with is_series';

comment on
column public.books.series_number is 'number within series, need to make constraint to work with is_series and series title';

comment on
column public.books.publication_year is 'year of publication';

comment on
column public.books.price is 'price of book, duh';

comment on
column public.books.genre_1 is 'Primary Genre, always needed';

comment on
column public.books.genre_2 is 'secondary genre if needed';

comment on
column public.books.genre_3 is 'Fiction or Non-fiction';

comment on
column public.books.subject_1 is 'LOC Subject Heading';

comment on
column public.books.subject_2 is '2nd LOC subject heading';

comment on
column public.books.fiction_status is 'Valid values: Fiction, Non-Fiction';

comment on
column public.books.purchase_url is 'url to the book on publisher, amazon, goodreads, etc';

comment on
column public.books.status is 'Default Values:
Want, Ordering, Owned, Reading, Finished, DNF';

comment on
column public.books.notes is 'notes if needed';
