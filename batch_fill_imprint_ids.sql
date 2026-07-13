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