-- SQL statements to create the basketball game data table in BigQuery

-- 1. Create the table
CREATE TABLE `YOUR_PROJECT.basketball_data.basketball_games` (
    Game_ID STRING,
    Date DATE,
    Home_Team STRING,
    Away_Team STRING,
    Home_Score INT64,
    Away_Score INT64,
    Winning_Team STRING,
    MVP STRING
);

-- 2. Insert data into the table
-- IMPORTANT: When copying, ensure no invisible characters are introduced.
-- Escape single quotes within string literals by using two single quotes (e.g., 'O''Neal').
INSERT INTO `YOUR_PROJECT.basketball_data.basketball_games` (Game_ID, Date, Home_Team, Away_Team, Home_Score, Away_Score, Winning_Team, MVP)
VALUES
('BSK-001', '2024-03-10', 'Los Angeles Lakers', 'Boston Celtics', 112, 108, 'Los Angeles Lakers', 'LeBron James'),
('BSK-002', '2024-03-11', 'Golden State Warriors', 'Brooklyn Nets', 125, 115, 'Golden State Warriors', 'Stephen Curry'),
('BSK-003', '2024-03-12', 'Miami Heat', 'Philadelphia 76ers', 98, 102, 'Philadelphia 76ers', 'Joel Embiid'),
('BSK-004', '2024-03-12', 'Milwaukee Bucks', 'Chicago Bulls', 105, 99, 'Milwaukee Bucks', 'Giannis Antetokounmpo'),
('BSK-005', '2024-03-13', 'Phoenix Suns', 'Dallas Mavericks', 110, 107, 'Phoenix Suns', 'Kevin Durant'),
('BSK-006', '2024-03-14', 'Denver Nuggets', 'Utah Jazz', 130, 118, 'Denver Nuggets', 'Nikola Jokic'),
('BSK-007', '2024-03-15', 'New York Knicks', 'Toronto Raptors', 95, 93, 'New York Knicks', 'Jalen Brunson'),
('BSK-008', '2024-03-16', 'Houston Rockets', 'Orlando Magic', 101, 103, 'Orlando Magic', 'Paolo Banchero'),
('BSK-009', '2024-03-17', 'Cleveland Cavaliers', 'Atlanta Hawks', 109, 106, 'Cleveland Cavaliers', 'Darius Garland'),
('BSK-010', '2024-03-18', 'Sacramento Kings', 'Portland Trail Blazers', 120, 110, 'Sacramento Kings', 'De Aaron Fox'),
('BSK-011', '2024-03-19', 'San Antonio Spurs', 'Charlotte Hornets', 100, 97, 'San Antonio Spurs', 'Victor Wembanyama'),
('BSK-012', '2024-03-20', 'Indiana Pacers', 'Detroit Pistons', 118, 105, 'Indiana Pacers', 'Tyrese Haliburton'),
('BSK-013', '2024-03-21', 'Minnesota Timberwolves', 'Memphis Grizzlies', 108, 92, 'Minnesota Timberwolves', 'Anthony Edwards'),
('BSK-014', '2024-03-22', 'New Orleans Pelicans', 'Washington Wizards', 115, 100, 'New Orleans Pelicans', 'Zion Williamson'),
('BSK-015', '2024-03-23', 'Oklahoma City Thunder', 'Utah Jazz', 122, 109, 'Oklahoma City Thunder', 'Shai Gilgeous-Alexander'),
('BSK-016', '2024-03-24', 'Orlando Magic', 'Cleveland Cavaliers', 105, 108, 'Cleveland Cavaliers', 'Donovan Mitchell'),
('BSK-017', '2024-03-25', 'Philadelphia 76ers', 'New York Knicks', 100, 99, 'Philadelphia 76ers', 'Tyrese Maxey'),
('BSK-018', '2024-03-26', 'Boston Celtics', 'Milwaukee Bucks', 110, 115, 'Milwaukee Bucks', 'Giannis Antetokounmpo'),
('BSK-019', '2024-03-27', 'Los Angeles Clippers', 'Phoenix Suns', 107, 104, 'Los Angeles Clippers', 'Kawhi Leonard'),
('BSK-020', '2024-03-28', 'Atlanta Hawks', 'Charlotte Hornets', 116, 102, 'Atlanta Hawks', 'Trae Young'),
('BSK-021', '2024-03-29', 'Golden State Warriors', 'Los Angeles Lakers', 120, 122, 'Los Angeles Lakers', 'Anthony Davis'),
('BSK-022', '2024-03-30', 'Boston Celtics', 'Miami Heat', 105, 95, 'Boston Celtics', 'Jayson Tatum'),
('BSK-023', '2024-03-31', 'Brooklyn Nets', 'Milwaukee Bucks', 110, 118, 'Milwaukee Bucks', 'Damian Lillard'),
('BSK-024', '2024-04-01', 'Chicago Bulls', 'New York Knicks', 90, 97, 'New York Knicks', 'Julius Randle'),
('BSK-025', '2024-04-02', 'Dallas Mavericks', 'Houston Rockets', 115, 100, 'Dallas Mavericks', 'Luka Doncic'),
('BSK-026', '2024-04-03', 'Los Angeles Lakers', 'Denver Nuggets', 105, 110, 'Denver Nuggets', 'Nikola Jokic'),
('BSK-027', '2024-04-04', 'Golden State Warriors', 'Phoenix Suns', 118, 112, 'Golden State Warriors', 'Stephen Curry'),
('BSK-028', '2024-04-05', 'Miami Heat', 'Boston Celtics', 92, 100, 'Boston Celtics', 'Jayson Tatum'),
('BSK-029', '2024-04-06', 'Milwaukee Bucks', 'Philadelphia 76ers', 115, 105, 'Milwaukee Bucks', 'Giannis Antetokounmpo'),
('BSK-030', '2024-04-07', 'New York Knicks', 'Cleveland Cavaliers', 98, 96, 'New York Knicks', 'Jalen Brunson');
