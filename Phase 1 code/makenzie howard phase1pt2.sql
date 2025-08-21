--
-- File generated with SQLiteStudio v3.4.13 on Tue Aug 5 14:18:43 2025
--
-- Text encoding used: UTF-8
--
-- Results of query:
-- WITH MonthlySales AS (
--     SELECT 
--         STRFTIME('%Y-%m', O.OrderDate) AS YearMonth,
--         SUM(OD.UnitPrice * OD.Quantity * (1 - OD.Discount)) AS TotalSales
--     FROM [Order Details] OD
--     JOIN Orders O ON OD.OrderID = O.OrderID
--     GROUP BY YearMonth
-- )
-- 
-- SELECT 
--     YearMonth,
--     TotalSales,
--     ROUND(((TotalSales - LAG(TotalSales) OVER (ORDER BY YearMonth)) / 
--            LAG(TotalSales) OVER (ORDER BY YearMonth)) * 100, 2) AS MoMGrowthPercent
-- FROM MonthlySales
-- ORDER BY YearMonth
--
BEGIN TRANSACTION;
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2012-07', 2066219.4, NULL);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2012-08', 3556875.79, 72.14);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2012-09', 3440144.98, -3.28);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2012-10', 3201529.96, -6.94);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2012-11', 2980494.74, -6.9);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2012-12', 3577936.85, 20.05);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-01', 3075418.29, -14.04);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-02', 2964192.86, -3.62);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-03', 3471361.21, 17.11);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-04', 3262893.52, -6.01);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-05', 3593528.01, 10.13);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-06', 2976184.24, -17.18);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-07', 4275068.43, 43.64);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-08', 2987993.36, -30.11);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-09', 2671413.23, -10.6);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-10', 3112262.1, 16.5);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-11', 3042197.05, -2.25);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2013-12', 3200607.71, 5.21);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-01', 2710443.83, -15.31);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-02', 2602658.47, -3.98);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-03', 3854314.06, 48.09);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-04', 3340038.66, -13.34);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-05', 3267340.26, -2.18);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-06', 3680115.42, 12.63);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-07', 3178414.39, -13.63);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-08', 3416670.63, 7.5);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-09', 2694898.33, -21.13);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-10', 3125850.74, 15.99);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-11', 3156916.6, 0.99);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2014-12', 3842486.74, 21.72);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-01', 3421656.38, -10.95);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-02', 2956201.14, -13.6);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-03', 3353227.79, 13.43);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-04', 3207293.13, -4.35);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-05', 3425430.69, 6.8);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-06', 2975668.32, -13.13);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-07', 3636472.82, 22.21);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-08', 4372619.01, 20.24);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-09', 3390593.89, -22.46);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-10', 3456874.61, 1.95);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-11', 3249120.89, -6.01);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2015-12', 3978298.05, 22.44);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-01', 3658051.75, -8.05);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-02', 3186904.49, -12.88);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-03', 3662692.07, 14.93);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-04', 2975703.27, -18.76);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-05', 3437922.47, 15.53);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-06', 3292493.54, -4.23);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-07', 3669700.165, 11.46);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-08', 3284795.995, -10.49);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-09', 3331124.5, 1.41);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-10', 3262160.375, -2.07);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-11', 3152849.905, -3.35);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2016-12', 3654273.83, 15.9);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-01', 3446154.51, -5.7);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-02', 2596633.885, -24.65);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-03', 3823316.56, 47.24);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-04', 3018989.7425, -21.04);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-05', 4364953.01, 44.58);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-06', 2995440.2425, -31.38);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-07', 2885691.8075, -3.66);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-08', 3341024.17, 15.78);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-09', 2807367.7525, -15.97);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-10', 3969991.476, 41.41);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-11', 3618368.419, -8.86);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2017-12', 3341972.6585, -7.64);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-01', 4051026.5705, 21.22);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-02', 3004052.9275, -25.84);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-03', 2691888.005, -10.39);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-04', 3087145.3625, 14.68);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-05', 3248964.5605, 5.24);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-06', 3242359.68, -0.2);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-07', 2901454.46, -10.51);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-08', 3286136.44, 13.26);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-09', 3424899.45, 4.22);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-10', 2789791.96, -18.54);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-11', 3113044.9, 11.59);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2018-12', 3485859.11, 11.98);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-01', 3151757.32, -9.58);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-02', 2895952.31, -8.12);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-03', 3190906.85, 10.19);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-04', 3578994.95, 12.16);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-05', 3562283.98, -0.47);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-06', 3241453.16, -9.01);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-07', 3163267.4, -2.41);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-08', 3078770.82, -2.67);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-09', 3093903.19, 0.49);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-10', 3346327.82, 8.16);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-11', 2817565.99, -15.8);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2019-12', 3395780.07, 20.52);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-01', 3423774.29, 0.82);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-02', 3467644.26, 1.28);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-03', 3018709.85, -12.95);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-04', 2655472.57, -12.03);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-05', 3122293.71, 17.58);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-06', 2871344.17, -8.04);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-07', 3643366.59, 26.89);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-08', 3794089.55, 4.14);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-09', 3783178.34, -0.29);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-10', 3060490.64, -19.1);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-11', 2968195.35, -3.02);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2020-12', 3053877.47, 2.89);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-01', 3474864.06, 13.79);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-02', 2953519.5, -15.0);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-03', 3434464.48, 16.28);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-04', 3255793.01, -5.2);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-05', 3319860.71, 1.97);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-06', 3510713.08, 5.75);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-07', 3917400.08, 11.58);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-08', 3443530.09, -12.1);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-09', 3186946.18, -7.45);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-10', 3071772.86, -3.61);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-11', 3408890.29, 10.97);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2021-12', 4377795.4, 28.42);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-01', 3591353.72, -17.96);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-02', 2832321.16, -21.13);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-03', 3222005.69, 13.76);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-04', 2628034.83, -18.43);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-05', 3719270.11, 41.52);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-06', 3378131.17, -9.17);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-07', 3358177.3, -0.59);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-08', 3660257.83, 9.0);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-09', 2606755.13, -28.78);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-10', 3717586.61, 42.61);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-11', 3542815.27, -4.7);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2022-12', 3485357.36, -1.62);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-01', 3171802.16, -9.0);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-02', 2611606.16, -17.66);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-03', 3716250.41, 42.3);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-04', 3474940.3, -6.49);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-05', 3896544.35, 12.13);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-06', 3071787.73, -21.17);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-07', 3350337.36, 9.07);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-08', 3293158.67, -1.71);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-09', 3544698.51, 7.64);
INSERT INTO MoMGrowth (YearMonth, TotalSales, MoMGrowthPercent) VALUES ('2023-10', 2923364.35, -17.53);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
