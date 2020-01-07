const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});


pool.query(`
SELECT  d.name as teacher_name ,c.name as cohort_name
FROM assistance_requests as a 
JOIN students as b on a.student_id = b.id 
JOIN cohorts as c on b.cohort_id = c.id
JOIN teachers as d on d.id = a.teacher_id
WHERE c.name = 'JUL02'
ORDER BY d.name
`)
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));