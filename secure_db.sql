-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 03:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secure_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `healthcare_info`
--

CREATE TABLE `healthcare_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `health_story` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthcare_info`
--

INSERT INTO `healthcare_info` (`id`, `first_name`, `last_name`, `gender`, `age`, `weight`, `height`, `health_story`) VALUES
(1, 'Jacqueline', 'Winters', 1, 79, 97.71, 157.04, 'Model response final bill. Together best open consumer. Accept international view.'),
(2, 'Adam', 'Khan', 1, 72, 52.86, 182.16, 'Light deep store room author whose. Effect budget people grow message say. Value find along past ahead must.\nClearly risk level city. Step wall heart theory skin standard.'),
(3, 'Rachel', 'Mccoy', 1, 26, 83.87, 157.01, 'Picture quite will commercial. Institution yard get window. Not dark party election usually thought three choice.\nChoice employee call mean author. Lose court entire bed left.'),
(4, 'Kevin', 'Durham', 1, 79, 83.17, 174.72, 'Staff beyond hair in nature talk interview Mr. Science state member with themselves. Positive market administration of area development. Staff ability town meeting think leader.'),
(5, 'Jonathon', 'Johnson', 1, 63, 66.65, 174.86, 'Try drive the various everybody suggest evening. Evidence able long tend high. Research talk discussion voice civil.\nWonder pattern pull argue successful determine bring themselves.'),
(6, 'Lauren', 'Stephenson', 1, 47, 88.42, 192.87, 'Again test author respond industry. You method mind west. Order modern issue him usually turn agency. Five time occur local world.'),
(7, 'James', 'Rivas', 0, 61, 61.11, 198.1, 'Provide sell prepare research care if sea. Pm girl treatment could.\nEvery name total visit cost. Seat unit wish myself. Page task service record watch decision.'),
(8, 'Sandra', 'Harrison', 0, 27, 67.62, 162.8, 'Age you our practice behavior sister guess. Final relate turn. Collection former tell or.\nBill over front eat war minute reason hard.'),
(9, 'Jorge', 'Gilbert', 0, 30, 66.64, 173.51, 'Item continue certain likely. Among pick piece think.\nWhole trial foreign different one. Television anyone star break work game gas. Rise knowledge song article play.'),
(10, 'Peter', 'Johnson', 0, 25, 88.72, 154.71, 'Manage million part affect land fly difficult. Budget continue expert image when week lose than. Business station provide present no present.'),
(11, 'Marisa', 'Joseph', 0, 24, 61.74, 183.33, 'Guess keep know up might later key. Population raise especially dog floor last improve. Old could doctor establish southern become a.'),
(12, 'Marissa', 'Holmes', 0, 64, 89.13, 150.1, 'Process feel prepare business. Under tough fire room beautiful of. Purpose school production fill ask who.'),
(13, 'Sara', 'Spencer', 0, 35, 62.37, 160.4, 'Officer pick history. Fly good half measure walk. Development lose college conference challenge. Pass improve recognize none education loss standard.'),
(14, 'Jessica', 'Stephens', 0, 73, 94.1, 177.9, 'Program beyond also possible you me. Color case admit check position board trouble happy. Develop then certainly like run region. Teach itself produce we.'),
(15, 'Jasmine', 'Pope', 1, 76, 51.64, 170.21, 'Sound relate only fight risk. Stage other assume performance player. Control meeting ago.'),
(16, 'Danielle', 'Nichols', 1, 29, 86.91, 162.65, 'Still reach lot you interesting attention. Author tend fast factor continue.\nRest behavior house. Something alone tend over beyond. Usually art hold quality agreement budget.'),
(17, 'Anthony', 'Martinez', 1, 26, 69.58, 183.29, 'Man your teacher difference but director.\nResponsibility strategy teach hundred. Edge before thing law including.'),
(18, 'Gary', 'Lee', 0, 69, 97.91, 191.95, 'Who news and black traditional. Popular result them break throughout.\nReality one them one. Throw agreement as among. Road very husband may job threat between.'),
(19, 'Matthew', 'Carson', 0, 32, 85.27, 198.12, 'Change safe keep paper. Around two information decision.\nDefense moment its five. Religious return market series perhaps force response world.'),
(20, 'William', 'Weber', 0, 44, 83.11, 163.38, 'Increase she five cell. Some deep end finally miss build people. Late window reduce after fast mouth sort.'),
(21, 'Amanda', 'Murray', 0, 40, 59.27, 155.35, 'Age prepare case nation. Operation scientist where yourself other down image.\nFor state ten. Administration seem next wait attack. Republican whatever fill speak onto.'),
(22, 'Heather', 'Smith', 0, 79, 55.35, 179.28, 'Sort word church apply well since. Herself say add.\nWho action involve idea full. Of meeting out operation.\nTend scene station keep region church most. At heavy be.'),
(23, 'Ryan', 'Dixon', 1, 56, 51.67, 171.52, 'Man air hear glass after human. Child present apply success guess opportunity. Opportunity give Mr special election.'),
(24, 'Kristina', 'Harris', 0, 41, 71.33, 156.35, 'Occur model east hair apply ok. Increase week beat western speak. Its air responsibility want see.\nSome can player current relate pull generation. Media girl identify to.'),
(25, 'William', 'Juarez', 1, 53, 81.52, 189.59, 'Play size use none week. Read involve half dinner free. Best entire central where.\nWith network read article glass have race. Before meet agent source home officer.'),
(26, 'Paul', 'Walker', 1, 38, 97.13, 150.84, 'Strategy gas his paper across bring. Anything feel rise they lot PM discuss. Human condition support.\nBed future brother. Knowledge wait join remember light maybe.'),
(27, 'Michelle', 'May', 0, 36, 85.58, 192.09, 'Community production hear bill. Determine order bring. Film arm report hundred moment side add mean.'),
(28, 'Diamond', 'Stewart', 0, 68, 81.73, 184.77, 'Spend party practice likely these believe very. Into win group dream own bed. Page mouth section.\nMy writer the security research military research. Such indeed scene structure sound participant.'),
(29, 'George', 'Carr', 1, 61, 89.96, 197.31, 'Determine these man prepare if daughter beat. Decide senior by.\nTravel unit far learn. Painting listen measure market indeed.'),
(30, 'Mark', 'Garcia', 1, 28, 85.91, 188.27, 'Discuss mother manager economic. Always time add language already.\nAgent fast describe walk. Understand why garden. Still mind letter house return short.\nLate to time by. Glass close word win.'),
(31, 'John', 'Raymond', 0, 80, 75.27, 180.36, 'Show condition whether ask anyone spring word. Red writer sister stage hospital itself mean court.\nFamily owner dream eight. Weight run must.'),
(32, 'Nicole', 'Yoder', 1, 35, 78.14, 170.5, 'Stop lead view whole significant. Staff push bank fall science. Human itself series bed stop point certainly production.\nMention him I world can occur. A expect protect sell method line keep.'),
(33, 'Melissa', 'Dodson', 1, 63, 74.64, 170.73, 'Might those event site international. Skill ask old in. Yourself theory power how. Our doctor sometimes all save office.'),
(34, 'Brian', 'Martin', 0, 54, 61.09, 158.72, 'Describe against small over success begin. Reality during not as. How level message arrive beautiful.'),
(35, 'Mary', 'Brown', 0, 29, 78.75, 171.89, 'Movement she this indeed address significant long white. Stop brother brother alone someone action.'),
(36, 'Logan', 'Charles', 0, 28, 84.19, 159.1, 'Require discuss stand voice blue which offer. Partner low citizen nearly decision painting. Day ready left between.'),
(37, 'Jared', 'Moore', 1, 22, 53.27, 191.61, 'Travel you war program positive capital. Start international often control others than effort.\nNear tough cut movement tree.'),
(38, 'William', 'Summers', 1, 28, 72.55, 184.09, 'In science memory painting stop treat. Option director surface thought many executive. Over enough class beyond doctor.'),
(39, 'John', 'Simpson', 0, 47, 82.29, 183, 'Bank clear both oil fire hear baby. Section card design wonder financial enough than.\nLeft condition performance research despite positive writer. Medical city fill bad both care something.'),
(40, 'Aaron', 'Tran', 0, 73, 57.45, 193.56, 'Land however time meeting three. Machine through either leave technology these.\nStop yard guess improve scene evidence. Response growth run. Marriage during network probably interview role.'),
(41, 'Sabrina', 'Burgess', 0, 63, 77.07, 152.17, 'Model fear town person together while. Free them green behind save.\nDoor family way foreign popular. Nothing painting much let. Why candidate last degree.'),
(42, 'Francis', 'Campbell', 0, 23, 60.63, 185.61, 'Design couple head instead own top. Last through risk reality.\nNor radio operation appear. Line daughter himself safe.'),
(43, 'Samantha', 'Sparks', 0, 31, 96.95, 186.17, 'Reason do tonight begin fine city relate. Budget Mr film ready ten attack. Want rate far sense down season phone.\nThese able program argue. Option gun tend dark hit central. Send couple other cut.'),
(44, 'Patrick', 'Chang', 1, 44, 58.06, 170.65, 'Audience us ready project. Safe none low around better bring. Lay believe simply happy.\nDrug compare by mission. Protect all this measure.'),
(45, 'Madison', 'Blanchard', 1, 44, 92.51, 196.42, 'Give end around situation camera author leave spring. Talk trouble for huge threat.'),
(46, 'Jill', 'Clark', 1, 36, 58.74, 157.34, 'Follow seek force everyone. Position state sea issue some shake head relate. Either throughout after. Trouble nearly few wall type talk white.'),
(47, 'Rachel', 'Ortega', 1, 75, 70.49, 167.69, 'Letter night help four economic still. Law especially public eye necessary side simply last.'),
(48, 'Sharon', 'Lin', 0, 21, 75.23, 173.73, 'From around drop star. At ahead scene rich office picture. Candidate lot goal rate enough together.\nFill mention page machine hand produce. Career safe speak class need show perhaps.'),
(49, 'Nathan', 'Castillo', 0, 79, 50.5, 162.54, 'Few another player sell significant analysis follow. Side test certainly sit different modern suffer.\nMilitary through listen partner. Bed get act relate heart.'),
(50, 'Caitlin', 'Ryan', 1, 40, 94.8, 168.34, 'Low goal course interest go. Only exactly voice interesting social. Site civil indeed control.\nBetter grow seven here. Article maybe support group throughout song. Project purpose medical down.'),
(51, 'Melanie', 'Bates', 1, 71, 52.08, 151.16, 'Still scientist read piece whatever. New event color. Maintain institution simple state bar Republican.\nLow impact seven dog. Affect recognize sing effort. Drop amount leave memory give affect.'),
(52, 'Jack', 'Hess', 1, 47, 77.48, 153.02, 'Require born young development sure. Own pull could make about.\nAmerican quality girl any thought vote continue.\nTend example line mouth.'),
(53, 'Jacqueline', 'Thomas', 1, 53, 89.68, 150.63, 'Truth book none range owner support factor south. Policy recent every matter decade.\nForeign find shoulder girl partner. Difference whole impact may some system.'),
(54, 'Mitchell', 'Randall', 0, 24, 89.44, 162.35, 'Husband perhaps where red teach. Family successful help financial practice pass. Traditional role answer.\nFilm remain church beyond source. Report item image sister.'),
(55, 'Allison', 'Lang', 1, 27, 94.48, 197.09, 'Short man magazine particular baby edge. Public radio rock institution price lead.\nPast garden less fight administration his. Around into easy event environment mind.'),
(56, 'Sandy', 'Fitzgerald', 1, 20, 62.79, 157.91, 'Feel probably window you state. Field me great hard player.\nLeg all large buy person land again. East news early car specific situation though. Him more role.'),
(57, 'Mary', 'Robinson', 0, 57, 82.25, 189.9, 'Its guy live treat road. Black edge themselves hold sing. Public reach hard system Mrs. Agent stage method ten another interesting care.\nMother public various laugh home. Activity wrong piece travel.'),
(58, 'Mark', 'Harvey', 1, 62, 88.56, 170.91, 'Fear care government. Build treatment will future son. Magazine economy public.\nSouthern little out financial indicate. Successful fight local.'),
(59, 'Christina', 'Pena', 0, 61, 78.86, 160.09, 'Tell himself close upon interview cultural. Staff character summer world maintain. Possible money we hot.'),
(60, 'Aaron', 'Randolph', 0, 56, 64.2, 188.97, 'None effect base food citizen eat learn. Less shake authority mission.\nAlong always amount state consider. Entire bill each series cause also her.'),
(61, 'Colin', 'Smith', 0, 61, 51.81, 194.66, 'Value cut spend your thousand sure. State option money prepare along site field avoid. Tree day today next.'),
(62, 'Blake', 'Roberts', 1, 37, 81.14, 195.64, 'Western year up receive word. Probably head push pretty ready knowledge Mrs pay.\nWeek million right price. Physical firm recognize town customer really bill. Build ten stage he experience low.'),
(63, 'Laura', 'Matthews', 0, 76, 80.5, 185.43, 'Decide edge able summer community factor site. That note against affect that raise arm above. Good another back computer white design instead new.'),
(64, 'Eric', 'Ray', 1, 21, 74.7, 183.16, 'Similar half old city without. Soon structure federal its audience market.\nBudget free stay teach mouth hotel since. Knowledge game best gas happy couple.'),
(65, 'Troy', 'Munoz', 1, 53, 98.47, 163.21, 'Approach message chair hospital. None field case analysis chance floor. Course theory still health.'),
(66, 'Jacqueline', 'Morgan', 0, 61, 57.74, 181.67, 'Record large activity political risk conference talk language. Value various idea executive likely activity. Seven himself up nothing church.'),
(67, 'Megan', 'Adams', 1, 24, 86.46, 195.89, 'Probably wear base mention. Offer prepare performance college detail involve fast.\nEmployee structure somebody imagine admit past. Around recognize task only goal.'),
(68, 'Cynthia', 'Ellis', 1, 53, 74.2, 175.79, 'Several point group citizen want price. Material above meeting woman respond mention. Claim throughout message seven seem could yes scene.'),
(69, 'Kayla', 'Anderson', 1, 73, 75.21, 157.25, 'Former item international decide deep minute. It lawyer suddenly hand with sort contain. Mouth foreign rich save.'),
(70, 'Scott', 'Vazquez', 0, 59, 94.72, 197.89, 'Right yourself seek measure professional attack treatment father. Purpose that stop skill begin along represent because. Now political although.'),
(71, 'Todd', 'Estrada', 0, 37, 82.14, 159.95, 'During add mention particular other.\nReach add per history. Half true brother gas local education suggest. Add room bill me.\nHospital ask year thousand. Expert chance anything design begin.'),
(72, 'Melissa', 'Martinez', 1, 43, 77.01, 193.12, 'Treat likely face between. Movie president similar arrive form behind financial. Up owner some others national fear.'),
(73, 'Mariah', 'Ramirez', 0, 51, 76.1, 168.02, 'Arrive church traditional clear know. Whole maybe economic college already record agree.\nHalf difference forget good particularly contain. Perform recent forward mouth key best on wait.'),
(74, 'Jennifer', 'Meza', 0, 70, 85.88, 158.49, 'Without night condition food above. Half but Republican bed none test unit. Hundred always past music.\nLand front him run identify mouth. Clearly learn not happen live machine.'),
(75, 'Hunter', 'Boyd', 1, 22, 88.71, 172.1, 'Daughter fight course from one position. Fire real relationship.\nRelate blood guy college stage. Reality full whole trial.'),
(76, 'Kelly', 'Spencer', 1, 48, 51.49, 196.9, 'Energy school letter bit early evidence. Remain talk federal.\nWeight deep true despite top stuff grow evening. Full age situation candidate stop art product. Difference fear step really call.'),
(77, 'Courtney', 'Reyes', 1, 49, 98.71, 167.29, 'Street central day type home leader. Hour during least type.\nAlmost chair good. Road building across college forward. Magazine have place sport picture. Near so sense name audience.'),
(78, 'Ann', 'Higgins', 1, 21, 58.85, 199.12, 'Less member guess believe. Site break child network standard yard.\nBoth impact voice system reason. Price end road sometimes join might cultural. Congress mouth agency blood Democrat drug remember.'),
(79, 'Jeremy', 'Anderson', 0, 71, 93.32, 195.76, 'Remember shake door. Play price need stage camera.\nTrial away make test clear. Dream fine affect would. Great remain north various ok individual position middle.'),
(80, 'Christopher', 'Mcmahon', 1, 23, 81.19, 171.4, 'Natural position exactly but trade walk enough approach. Exist community last visit series.\nSouth woman cause religious base Republican now. Rule successful case rise heavy.'),
(81, 'Scott', 'Michael', 0, 59, 95.47, 188.85, 'Offer thank industry table bit. Show day rate individual vote history yeah.\nProvide number entire fish. Animal worry serious thank her writer fill.'),
(82, 'Steven', 'Wilson', 0, 41, 93.43, 188.93, 'Join industry senior pass. Particularly morning arm many book expert. If instead safe specific.'),
(83, 'Matthew', 'Wade', 0, 26, 85.42, 162.11, 'Particular lawyer prove look word. Member but guess meeting tell. Skill executive season game charge involve city.\nCourse under significant degree its term high. Nice in avoid.'),
(84, 'Debra', 'Hunt', 0, 73, 71.34, 172.68, 'Economic thousand general respond mission wait off. Set industry board great dinner.'),
(85, 'Danielle', 'Reese', 1, 63, 56.56, 197.03, 'Kitchen here kid blood. Name audience many customer. Again raise along great set.\nHuman foot skill talk see.\nSurface attention find nation bag. Difference tonight enough good president seem.'),
(86, 'Jasmine', 'Wright', 0, 48, 85.14, 171.08, 'Day above place such finally.\nNation operation draw interest response.\nThank happy growth hope. Good in treat. Station start region bed attorney. Any plan fund four.'),
(87, 'Christopher', 'Tran', 0, 54, 63.06, 187.97, 'Early water event. Discover response top. Cultural arrive push set create human purpose.\nOperation difficult south as age example president.'),
(88, 'Jasmine', 'James', 1, 27, 66.19, 196.55, 'Five blood fact fear past. Clear and president west. Create nothing eye left.'),
(89, 'Larry', 'Pollard', 0, 64, 91.19, 173.59, 'Suffer letter whom particular last officer. To ten enter throughout. Into instead analysis.\nInteresting success kid political star. Chair build do both with a magazine.'),
(90, 'Krystal', 'Campbell', 0, 37, 81.14, 182.9, 'Painting someone fall program then pay meeting. Wait heavy lot laugh teacher. Chance charge receive practice there last decide about.\nEight short voice side number. Night upon occur professor.'),
(91, 'Mary', 'Flores', 0, 55, 68.15, 192.06, 'Wear seek tax million continue soldier matter. Step bring sense.\nActually another why appear. Deep behind window time. Until finally live do will. Agency far practice.'),
(92, 'Sheila', 'Kramer', 0, 47, 85.4, 188.54, 'Certain itself happy college child. Respond magazine interview the manager attention.'),
(93, 'Christian', 'Rodriguez', 0, 60, 82.55, 184.36, 'Walk themselves possible people hospital great seem. Office ability strategy employee strategy class hand begin.'),
(94, 'Jill', 'Kennedy', 1, 23, 82.72, 182.23, 'Opportunity seven once. Attention natural international for skill city save large.'),
(95, 'Mandy', 'Cook', 1, 53, 70.03, 177.76, 'Never meeting subject. Hope participant manager these blood story detail.\nInterview less year. Dream during prepare standard ask standard also. Grow medical race push Democrat stop throw.'),
(96, 'David', 'Saunders', 0, 18, 57.42, 198.2, 'School to third owner easy past. Rise event must design. Various tough represent could store recognize.\nNight know magazine. Who product each same.'),
(97, 'Edward', 'Lane', 0, 80, 65.97, 165.1, 'Eight fly also. Prove with sit might second.'),
(98, 'Ricky', 'Collier', 0, 65, 81.29, 151.07, 'Reveal join another cup exactly rate minute. Before air administration. Short top kind deal mouth control.\nNote debate get leader. Side someone after. Recently get around watch power raise become.'),
(99, 'Kimberly', 'Galloway', 1, 68, 71.91, 182.98, 'Out dog toward. Factor two talk street watch sell different not. Start cultural pressure onto. Century blood prepare beautiful boy ask will.'),
(100, 'Angela', 'Gardner', 1, 75, 92.37, 191.31, 'Serious state Republican. Something man model staff bank argue would hard. Letter early family can visit.\nNotice itself record bad or well. Right speech to class.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`) VALUES
(3, 'S680', '$2y$10$V2alYTW437Spcy5aU7aAJ.busPn4b5YwAkLwI41kTX77rei4PAFTW', 'group H'),
(4, 'hibuddy', '$2y$10$4EMoivLokhhoUaqC4od9deM1X4Gv5hERNyjg.2MQu98De1.Bv2MqO', 'group R'),
(5, 'S680', '$2y$10$KKCLkVIcdSihul.Am1GLx.azgX2ulr3Wf5hQLlKisYoEqorVXFxGG', 'group R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `healthcare_info`
--
ALTER TABLE `healthcare_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `healthcare_info`
--
ALTER TABLE `healthcare_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `healthcare_info` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
