SELECT * FROM coviddeaths WHERE continent IS NOT NULL ORDER BY 3,4

#SELECT * FROM covidvaccinations WHERE continent IS NOT NULL ORDER BY 3,4

SELECT location , DATE, total_cases, total_deaths, population 
FROM coviddeaths WHERE continent IS NOT NULL ORDER BY 1,2

# ORDER BY is ->> sort the reult set in ascending order or desc order. By default
#it sords the record in ascending order.

# IS NOT NULL ->> used to test for non empty values, it is used to filter out the result if the column that is used in where clause contains non-null values.

SELECT location, DATE, population, total_deaths, (total_deaths/population)*100
AS percentpopulationinfected FROM coviddeaths 
WHERE location LIKE '%India%'
ORDER BY 1,2


SELECT location, DATE, population, total_cases, (total_cases/population)*100
AS percentpopulationinfected FROM coviddeaths ORDER BY 1,2
# looking at the total cases vs total deaths
# How many deaths do they have for their entire cases, whats the percentage of people who died who had it


SELECT location, DATE, total_cases, total_deaths, ROUND((total_cases/total_deaths)*100,2)
AS percentpopulationinfected FROM coviddeaths 
WHERE location LIKE '%India%'
ORDER BY 1,2


SELECT location, DATE, total_cases, total_deaths, CONCAT(ROUND((total_cases/total_deaths),2)*0.1,' %')
AS percentpopulationinfected FROM coviddeaths  
WHERE location LIKE '%India%'
ORDER BY 1,26
