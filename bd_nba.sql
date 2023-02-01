-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Jan-2023 às 15:39
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_nba`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE `players` (
  `player_name` varchar(100) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `season` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `min_year` int(11) DEFAULT NULL,
  `max_year` int(11) DEFAULT NULL,
  `abbreviation` varchar(3) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `year_founded` int(11) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `arena` varchar(100) DEFAULT NULL,
  `arena_capacity` int(11) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `general_manager` varchar(100) DEFAULT NULL,
  `head_coach` varchar(100) DEFAULT NULL,
  `d_league_affiliation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `teams`
--

INSERT INTO `teams` (`team_id`, `min_year`, `max_year`, `abbreviation`, `nickname`, `year_founded`, `city`, `arena`, `arena_capacity`, `owner`, `general_manager`, `head_coach`, `d_league_affiliation`) VALUES
(1610612737, 1949, 2019, 'ATL', 'Hawks', 1949, 'Atlanta', 'State Farm Arena', 18729, 'Tony Ressler', 'Travis Schlenk', 'Lloyd Pierce', 'Erie Bayhawks'),
(1610612738, 1946, 2019, 'BOS', 'Celtics', 1946, 'Boston', 'TD Garden', 18624, 'Wyc Grousbeck', 'Danny Ainge', 'Brad Stevens', 'Maine Red Claws'),
(1610612739, 1970, 2019, 'CLE', 'Cavaliers', 1970, 'Cleveland', 'Quicken Loans Arena', 20562, 'Dan Gilbert', 'Koby Altman', 'John Beilein', 'Canton Charge'),
(1610612740, 2002, 2019, 'NOP', 'Pelicans', 2002, 'New Orleans', 'Smoothie King Center', 0, 'Tom Benson', 'Trajan Langdon', 'Alvin Gentry', 'No Affiliate'),
(1610612741, 1966, 2019, 'CHI', 'Bulls', 1966, 'Chicago', 'United Center', 21711, 'Jerry Reinsdorf', 'Gar Forman', 'Jim Boylen', 'Windy City Bulls'),
(1610612742, 1980, 2019, 'DAL', 'Mavericks', 1980, 'Dallas', 'American Airlines Center', 19200, 'Mark Cuban', 'Donnie Nelson', 'Rick Carlisle', 'Texas Legends'),
(1610612743, 1976, 2019, 'DEN', 'Nuggets', 1976, 'Denver', 'Pepsi Center', 19099, 'Stan Kroenke', 'Tim Connelly', 'Michael Malone', 'No Affiliate'),
(1610612744, 1946, 2019, 'GSW', 'Warriors', 1946, 'Golden State', 'Chase Center', 19596, 'Joe Lacob', 'Bob Myers', 'Steve Kerr', 'Santa Cruz Warriors'),
(1610612745, 1967, 2019, 'HOU', 'Rockets', 1967, 'Houston', 'Toyota Center', 18104, 'Tilman Fertitta', 'Daryl Morey', 'Mike D\'Antoni', 'Rio Grande Valley Vipers'),
(1610612746, 1970, 2019, 'LAC', 'Clippers', 1970, 'Los Angeles', 'Staples Center', 19060, 'Steve Ballmer', 'Michael Winger', 'Doc Rivers', 'Agua Caliente Clippers of Ontario'),
(1610612747, 1948, 2019, 'LAL', 'Lakers', 1948, 'Los Angeles', 'Staples Center', 19060, 'Jerry Buss Family Trust', 'Rob Pelinka', 'Frank Vogel', 'South Bay Lakers'),
(1610612748, 1988, 2019, 'MIA', 'Heat', 1988, 'Miami', 'AmericanAirlines Arena', 19600, 'Micky Arison', 'Pat Riley', 'Erik Spoelstra', 'Sioux Falls Skyforce'),
(1610612749, 1968, 2019, 'MIL', 'Bucks', 1968, 'Milwaukee', 'Fiserv Forum', 17500, 'Wesley Edens & Marc Lasry', 'Jon Horst', 'Mike Budenholzer', 'Wisconsin Herd'),
(1610612750, 1989, 2019, 'MIN', 'Timberwolves', 1989, 'Minnesota', 'Target Center', 19356, 'Glen Taylor', 'Scott Layden', 'Ryan Saunders', 'Iowa Wolves'),
(1610612751, 1976, 2019, 'BKN', 'Nets', 1976, 'Brooklyn', 'Barclays Center', 0, 'Joe Tsai', 'Sean Marks', 'Kenny Atkinson', 'Long Island Nets'),
(1610612752, 1946, 2019, 'NYK', 'Knicks', 1946, 'New York', 'Madison Square Garden', 19763, 'Cablevision (James Dolan)', 'Steve Mills', 'David Fizdale', 'Westchester Knicks'),
(1610612753, 1989, 2019, 'ORL', 'Magic', 1989, 'Orlando', 'Amway Center', 0, 'Rick DeVos', 'John Hammond', 'Steve Clifford', 'Lakeland Magic'),
(1610612754, 1976, 2019, 'IND', 'Pacers', 1976, 'Indiana', 'Bankers Life Fieldhouse', 18345, 'Herb Simon', 'Kevin Pritchard', 'Nate McMillan', 'Fort Wayne Mad Ants'),
(1610612755, 1949, 2019, 'PHI', '76ers', 1949, 'Philadelphia', 'Wells Fargo Center', 0, 'Joshua Harris', 'Elton Brand', 'Brett Brown', 'Delaware Blue Coats'),
(1610612756, 1968, 2019, 'PHX', 'Suns', 1968, 'Phoenix', 'Talking Stick Resort Arena', 0, 'Robert Sarver', 'James Jones', 'Monty Williams', 'Northern Arizona Suns'),
(1610612757, 1970, 2019, 'POR', 'Trail Blazers', 1970, 'Portland', 'Moda Center', 19980, 'Paul Allen', 'Neil Olshey', 'Terry Stotts', 'No Affiliate'),
(1610612758, 1948, 2019, 'SAC', 'Kings', 1948, 'Sacramento', 'Golden 1 Center', 17500, 'Vivek Ranadive', 'Vlade Divac', 'Luke Walton', 'Stockton Kings'),
(1610612759, 1976, 2019, 'SAS', 'Spurs', 1976, 'San Antonio', 'AT&T Center', 18694, 'Peter Holt', 'Brian Wright', 'Gregg Popovich', 'Austin Spurs'),
(1610612760, 1967, 2019, 'OKC', 'Thunder', 1967, 'Oklahoma City', 'Chesapeake Energy Arena', 19163, 'Clay Bennett', 'Sam Presti', 'Billy Donovan', 'Oklahoma City Blue'),
(1610612761, 1995, 2019, 'TOR', 'Raptors', 1995, 'Toronto', 'Scotiabank Arena', 19800, 'Maple Leaf Sports and Entertainment', 'Masai Ujiri', 'Nick Nurse', 'Raptors 905'),
(1610612762, 1974, 2019, 'UTA', 'Jazz', 1974, 'Utah', 'Vivint Smart Home Arena', 20148, 'Greg Miller', 'Dennis Lindsey', 'Quin Snyder', 'Salt Lake City Stars'),
(1610612763, 1995, 2019, 'MEM', 'Grizzlies', 1995, 'Memphis', 'FedExForum', 18119, 'Robert Pera', 'Zach Kleiman', 'Taylor Jenkins', 'Memphis Hustle'),
(1610612764, 1961, 2019, 'WAS', 'Wizards', 1961, 'Washington', 'Capital One Arena', 20647, 'Ted Leonsis', 'Tommy Sheppard', 'Scott Brooks', 'Capital City Go-Go'),
(1610612765, 1948, 2019, 'DET', 'Pistons', 1948, 'Detroit', 'Little Caesars Arena', 21000, 'Tom Gores', 'Ed Stefanski', 'Dwane Casey', 'Grand Rapids Drive'),
(1610612766, 1988, 2019, 'CHA', 'Hornets', 1988, 'Charlotte', 'Spectrum Center', 19026, 'Michael Jordan', 'Mitch Kupchak', 'James Borrego', 'Greensboro Swarm');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Índices para tabela `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
