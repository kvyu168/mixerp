﻿-->-->-- C:/Users/nirvan/Desktop/mixerp/0. GitHub/src/Modules/HRM/db/1.5/db/src/01.types-domains-tables-and-constraints/tables-and-constraints.sql --<--<--
/********************************************************************************
Copyright (C) MixERP Inc. (http://mixof.org).
This file is part of MixERP.
MixERP is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 2 of the License.
MixERP is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with MixERP.  If not, see <http://www.gnu.org/licenses/>.
***********************************************************************************/

INSERT INTO core.genders
SELECT 'F', 'Female' UNION ALL
SELECT 'M', 'Male' UNION ALL
SELECT 'O', 'Other';

INSERT INTO core.education_levels(education_level_name)
SELECT 'Some Schooling' UNION ALL
SELECT 'Basic Schooling' UNION ALL
SELECT 'Higher Schooling' UNION ALL
SELECT 'Associate''s Degree' UNION ALL
SELECT 'Bachelor''s Degrees' UNION ALL
SELECT 'Graduate Degrees' UNION ALL
SELECT 'Master''s Degrees' UNION ALL
SELECT 'Doctoral Degrees' UNION ALL
SELECT 'Professional Degrees';

--The meaning of the following should not change
INSERT INTO hrm.employment_status_codes
SELECT -7, 'DEC', 'Deceased'                UNION ALL
SELECT -6, 'DEF', 'Defaulter'               UNION ALL
SELECT -5, 'TER', 'Terminated'              UNION ALL
SELECT -4, 'RES', 'Resigned'                UNION ALL
SELECT -3, 'EAR', 'Early Retirement'        UNION ALL
SELECT -2, 'RET', 'Normal Retirement'       UNION ALL
SELECT -1, 'CPO', 'Contract Period Over'    UNION ALL
SELECT  0, 'NOR', 'Normal Employment'       UNION ALL
SELECT  1, 'OCT', 'On Contract'             UNION ALL
SELECT  2, 'PER', 'Permanent Job'           UNION ALL
SELECT  3, 'RTG', 'Retiring';

INSERT INTO hrm.employment_statuses(employment_status_code, employment_status_name, default_employment_status_code_id, is_contract)
SELECT 'EMP', 'Employee',       0, false UNION ALL
SELECT 'INT', 'Intern',         1, true UNION ALL
SELECT 'CON', 'Contract Basis', 1, true UNION ALL
SELECT 'PER', 'Permanent',      2, false;

INSERT INTO hrm.job_titles(job_title_code, job_title_name)
SELECT 'INT', 'Internship'                      UNION ALL
SELECT 'DEF', 'Default'                         UNION ALL
SELECT 'EXC', 'Executive'                       UNION ALL
SELECT 'MAN', 'Manager'                         UNION ALL
SELECT 'GEM', 'General Manager'                 UNION ALL
SELECT 'BME', 'Board Member'                    UNION ALL
SELECT 'CEO', 'Chief Executive Officer'         UNION ALL
SELECT 'CTO', 'Chief Technology Officer';

INSERT INTO hrm.pay_grades(pay_grade_code, pay_grade_name, minimum_salary, maximum_salary)
SELECT 'L-1', 'Level 1', 0, 0;

INSERT INTO hrm.shifts(shift_code, shift_name, begins_from, ends_on)
SELECT 'MOR', 'Morning Shift',  '6:00'::time,   '14:00'::time   UNION ALL
SELECT 'DAY', 'Day Shift',      '14:00',        '20:00'         UNION ALL
SELECT 'NIT', 'Night Shift',    '20:00',        '6:00';

INSERT INTO core.identification_types
SELECT 'DVL', 'Driving License', true UNION ALL
SELECT 'SSN', 'Social Security Number', false;

INSERT INTO core.social_networks(social_network_name)
SELECT 'Twitter' UNION ALL
SELECT 'Facebook' UNION ALL
SELECT 'Google+' UNION ALL
SELECT 'LinkedIn' UNION ALL
SELECT 'Instagram' UNION ALL
SELECT 'WeChat' UNION ALL
SELECT 'Viber' UNION ALL
SELECT 'WhatsApp' UNION ALL
SELECT 'Skype' UNION ALL
SELECT 'Hike';

INSERT INTO hrm.employee_types(employee_type_code, employee_type_name)
SELECT 'DEF', 'Default' UNION ALL
SELECT 'OUE', 'Outdoor Employees' UNION ALL
SELECT 'PRO', 'Project Employees' UNION ALL
SELECT 'SUP', 'Support Staffs' UNION ALL
SELECT 'ENG', 'Engineers';

INSERT INTO hrm.salary_types(salary_type_code, salary_type_name)
SELECT 'BAS', 'Basic Salary' UNION
SELECT 'OTS', 'Overtime Salary' UNION ALL
SELECT 'COM', 'Commision' UNION ALL
SELECT 'EBE', 'Employee Benefits';

INSERT INTO hrm.leave_types(leave_type_code, leave_type_name)
SELECT 'NOR', 'Normal' UNION ALL
SELECT 'EME', 'Emergency' UNION ALL
SELECT 'ILL', 'Illness';

INSERT INTO hrm.exit_types(exit_type_code, exit_type_name)
SELECT 'COE', 'Contract Period Over' UNION ALL
SELECT 'RET', 'Retirement' UNION ALL
SELECT 'RES', 'Resignation' UNION ALL
SELECT 'TER', 'Termination' UNION ALL
SELECT 'DEC', 'Deceased';
