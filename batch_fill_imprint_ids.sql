/* =====================================================
   UPDATE IMPRINTS
===================================================== */

-- Fill imprint_id and publisher_id from the typed imprint name
UPDATE public.books b
SET
    imprint_id = i.imprint_id,
    publisher_id = i.publisher_id
FROM public.books_imprints i
WHERE LOWER(TRIM(b.imprint_name)) = LOWER(TRIM(i.imprint_name))
  AND (
      b.imprint_id IS NULL
      OR b.publisher_id IS NULL
  );

-- Fill publisher_id for books entered directly under a publisher
-- with no separate imprint
UPDATE public.books b
SET publisher_id = p.publisher_id
FROM public.books_publishers p
WHERE LOWER(TRIM(b.imprint_name)) = LOWER(TRIM(p.publisher_name))
  AND b.publisher_id IS NULL;

-- Show anything that did not match
SELECT
    book_id,
    title,
    imprint_name,
    publisher_id,
    imprint_id
FROM public.books
WHERE imprint_name IS NOT NULL
  AND publisher_id IS NULL
ORDER BY imprint_name, title;

/* =====================================================
   REFRESH BOOK GENRES
===================================================== */

TRUNCATE TABLE public.book_genres;

INSERT INTO public.book_genres
    (book_id, genre, title, genre_position)
SELECT
    b.book_id,
    TRIM(v.genre),
    b.title,
    v.genre_position
FROM public.books AS b
CROSS JOIN LATERAL (
    VALUES
        (b.genre_1, 'genre_1'),
        (b.genre_2, 'genre_2'),
        (b.genre_3, 'genre_3')
) AS v(genre, genre_position)
WHERE v.genre IS NOT NULL
  AND TRIM(v.genre) <> '';

/* =====================================================
   REFRESH BOOK SUBJECTS
===================================================== */

TRUNCATE TABLE public.book_subjects;

INSERT INTO public.book_subjects
    (book_id, title, subjects)
SELECT
    b.book_id,
    b.title,
    TRIM(v.subjects)
FROM public.books AS b
CROSS JOIN LATERAL (
    VALUES
        (b.subject_1),
        (b.subject_2)
) AS v(subjects)
WHERE v.subjects IS NOT NULL
  AND TRIM(v.subjects) <> '';


-- Show anything that did not match
SELECT
    book_id,
    title,
    imprint_name,
    publisher_id,
    imprint_id
FROM public.books
WHERE imprint_name IS NOT NULL
  AND publisher_id IS NULL
ORDER BY imprint_name, title;