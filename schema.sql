create table invoices (
  id bigint generated always as identity primary key,
  vendor text,
  invoice_number text,
  invoice_date text,
  currency text,
  total numeric,
  line_items text,
  status text default 'pending',
  created_at timestamptz default now()
);
alter table invoices enable row level security;
