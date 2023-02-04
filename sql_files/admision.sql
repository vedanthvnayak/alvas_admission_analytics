-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2023 at 04:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admision`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`username`, `password`) VALUES
('admin', 'alvas@123');

-- --------------------------------------------------------

--
-- Table structure for table `past_promo_data`
--

CREATE TABLE `past_promo_data` (
  `promo_id` int(11) NOT NULL,
  `name_of_promo` varchar(1000) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `past_promo_data`
--

INSERT INTO `past_promo_data` (`promo_id`, `name_of_promo`, `start_date`, `end_date`, `amount`) VALUES
(1, 'sms', '2023-01-09', '2023-01-16', 6789);

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` varchar(20) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `cet_ran` int(11) DEFAULT NULL,
  `jee` int(11) DEFAULT NULL,
  `komedk` int(11) DEFAULT NULL,
  `sslc` int(11) DEFAULT NULL,
  `pu1` int(11) DEFAULT NULL,
  `pu2` int(11) DEFAULT NULL,
  `promotion` varchar(50) DEFAULT NULL,
  `relegion` char(20) DEFAULT NULL,
  `cast` char(20) DEFAULT NULL,
  `category` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `phone`, `first_name`, `last_name`, `country`, `state`, `district`, `address`, `cet_ran`, `jee`, `komedk`, `sslc`, `pu1`, `pu2`, `promotion`, `relegion`, `cast`, `category`) VALUES
('al002', 9988787655, 'shreyas', 'k', 'India', 'Karnataka', 'Alluri Sitarama Raju', 'alvas institute of engineering, manglore', 234, 3456, 3456, 3456, 3456, 345, 'Pap', 'Hindu', 'adfg', 'sdfgb');

-- --------------------------------------------------------

--
-- Table structure for table `stu_auth`
--

CREATE TABLE `stu_auth` (
  `id` varchar(11) NOT NULL,
  `phone` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu_auth`
--

INSERT INTO `stu_auth` (`id`, `phone`) VALUES
('al001', 8088651724);

-- --------------------------------------------------------

--
-- Table structure for table `st_di`
--

CREATE TABLE `st_di` (
  `state` varchar(50) DEFAULT NULL,
  `dist` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_di`
--

INSERT INTO `st_di` (`state`, `dist`) VALUES
('Andhra Pradesh', 'Alluri Sitarama Raju'),
('Andhra Pradesh', 'Anakapalle'),
('Andhra Pradesh', 'Ananthapuramu'),
('Andhra Pradesh', 'Annamayya'),
('Andhra Pradesh', 'Bapatla'),
('Andhra Pradesh', 'Chittoor'),
('Andhra Pradesh', 'East Godavari'),
('Andhra Pradesh', 'Eluru'),
('Andhra Pradesh', 'Guntur'),
('Andhra Pradesh', 'YSR Kadapa (Cuddapah)'),
('Andhra Pradesh', '	Kakinada'),
('Andhra Pradesh', '	Krishna'),
('Andhra Pradesh', '	Konaseema'),
('Andhra Pradesh', '	Kurnool'),
('Andhra Pradesh', '	Parvathipuram Manyam'),
('Andhra Pradesh', '	Nandyal'),
('Andhra Pradesh', '	NTR'),
('Andhra Pradesh', '	Palnadu'),
('Andhra Pradesh', '	Prakasam'),
('Andhra Pradesh', '	Nellore'),
('Andhra Pradesh', '	Tirupati'),
('Andhra Pradesh', '	Sri Sathya Sai'),
('Andhra Pradesh', '	Srikakulam'),
('Andhra Pradesh', '	Visakhapatnam'),
('Andhra Pradesh', '	Vizianagaram'),
('Andhra Pradesh', '	West Godavari'),
('Arunachal Pradesh', 'Anjaw'),
('Arunachal Pradesh', 'Changlang'),
('Arunachal Pradesh', 'Dibang Valley'),
('Arunachal Pradesh', 'East Kameng'),
('Arunachal Pradesh', 'East Siangl'),
('Arunachal Pradesh', 'Kamle'),
('Arunachal Pradesh', 'Kra Daadi'),
('Arunachal Pradesh', 'Kurung Kumey'),
('Arunachal Pradesh', 'Lepa Rada'),
('Arunachal Pradesh', 'Lohit'),
('Arunachal Pradesh', 'Longdling'),
('Arunachal Pradesh', 'Lower Dibang Valley'),
('Arunachal Pradesh', 'Lower Siang'),
('Arunachal Pradesh', 'Lower Subansiri'),
('Arunachal Pradesh', 'Namsai'),
('Arunachal Pradesh', 'Pakke Kessang'),
('Arunachal Pradesh', 'Papum Pare'),
('Arunachal Pradesh', 'Shi Yomi'),
('Arunachal Pradesh', 'Siang'),
('Arunachal Pradesh', 'Tawang'),
('Arunachal Pradesh', 'Tirap'),
('Arunachal Pradesh', 'Upper Siang'),
('Arunachal Pradesh', 'Upper Subansiri'),
('Arunachal Pradesh', 'West Kameng'),
('Arunachal Pradesh', 'West Siang'),
('Arunachal Pradesh', 'Capital Complex Itanagar'),
('Assam', 'Baksa'),
('Assam', 'Barpeta'),
('Assam', 'Biswanath'),
('Assam', 'Bongaigaon'),
('Assam', 'Cachar'),
('Assam', 'Charaideo'),
('Assam', 'Chirang'),
('Assam', 'Darrang'),
('Assam', 'Dhemaji'),
('Assam', 'Dhubri'),
('Assam', 'Dibrugarh'),
('Assam', 'Dima Hasao (North Cachar Hills)'),
('Assam', 'Goalpara'),
('Assam', 'Golaghat'),
('Assam', 'Hailakandi'),
('Assam', 'Hojai'),
('Assam', 'Jorhat'),
('Assam', 'Kamrup'),
('Assam', 'Kamrup Metropolitan'),
('Assam', 'Karbi Anglong'),
('Assam', 'Karimaganj'),
('Assam', 'Kokrajhar'),
('Assam', 'Lakhimpur'),
('Assam', 'Majuli'),
('Assam', 'Morigaon'),
('Assam', 'Nagaon'),
('Assam', 'Nalbari'),
('Assam', 'Sivasagar'),
('Assam', 'Sonitpur'),
('Assam', 'South Salamara Mankachar'),
('Assam', 'Tinsukia'),
('Assam', 'Udakguri'),
('Assam', 'West Karbi Anglong'),
('Assam', 'Bajali'),
('Assam', 'Tamulpur'),
('Bihar', 'Araria'),
('Bihar', 'Arwal'),
('Bihar', 'Aurangabad'),
('Bihar', 'Banka'),
('Bihar', 'Begusarai'),
('Bihar', 'Bhagalpur'),
('Bihar', 'Bhojpur'),
('Bihar', 'Buxar'),
('Bihar', 'Darbhanga'),
('Bihar', 'East Champaran'),
('Bihar', 'Gaya'),
('Bihar', 'Gopalganj'),
('Bihar', 'Jamui'),
('Bihar', 'Jehanabad'),
('Bihar', 'Kaimur (Bhabua)'),
('Bihar', 'Katihar'),
('Bihar', 'Khagaria'),
('Bihar', 'Kishanganj'),
('Bihar', 'Lakhisarai'),
('Bihar', 'Madhepura'),
('Bihar', 'Madhubani'),
('Bihar', 'Munger (Monghyr)'),
('Bihar', 'Muzaffarpur'),
('Bihar', 'Nalanda'),
('Bihar', 'Nawada'),
('Bihar', 'Patna'),
('Bihar', 'Purnia (Purnea)'),
('Bihar', 'Rohtas'),
('Bihar', 'Saharasa'),
('Bihar', 'Samastipur'),
('Bihar', 'Saran'),
('Bihar', 'Sheikhpura'),
('Bihar', 'Sheohar'),
('Bihar', 'Sitamarhi'),
('Bihar', 'Siwan'),
('Bihar', 'Supaul'),
('Bihar', 'Vaishali'),
('Bihar', 'West Champaran'),
('Chandigarh', 'Chandigarh'),
('Chhattisgarh', 'Balod'),
('Chhattisgarh', 'Baloda Bazar'),
('Chhattisgarh', 'Balrampur'),
('Chhattisgarh', 'Bastar'),
('Chhattisgarh', 'Bemetara'),
('Chhattisgarh', 'Bijapur'),
('Chhattisgarh', 'Bilaspur'),
('Chhattisgarh', 'Dantewada'),
('Chhattisgarh', 'Dhamtari'),
('Chhattisgarh', 'Durg'),
('Chhattisgarh', 'Gariyaband'),
('Chhattisgarh', 'Janjigir-Champa'),
('Chhattisgarh', 'Jashpur'),
('Chhattisgarh', 'Kabirdham'),
('Chhattisgarh', 'Kanker (North Bastar)'),
('Chhattisgarh', 'Kondagaon'),
('Chhattisgarh', 'Korba'),
('Chhattisgarh', 'Korea (Koriya)'),
('Chhattisgarh', 'Mahasamund'),
('Chhattisgarh', 'Mungeli'),
('Chhattisgarh', 'Narayanpur'),
('Chhattisgarh', 'Raigarh'),
('Chhattisgarh', 'Raipur'),
('Chhattisgarh', 'Rajnandgaon'),
('Chhattisgarh', 'Sukma'),
('Chhattisgarh', 'Surajpur'),
('Chhattisgarh', 'Surguja'),
('Chhattisgarh', 'Gaurela-Pendra-Marwahi'),
('Chhattisgarh', 'Khairagarh-Chhuikhadan-Gandai'),
('Chhattisgarh', 'Manendragarh-Chirmiri-Bharatpur'),
('Chhattisgarh', 'Mohla-Manpur-Chowki'),
('Chhattisgarh', 'Sarangarh-Bilaigarh'),
('Chhattisgarh', 'Shakti'),
('Dadra and Nagar Haveli', 'Dadra And Nagar Haveli'),
('Daman And Diu', 'Daman'),
('Daman And Diu', 'Diu'),
('Delhi ', 'Central Delhi'),
('Delhi ', 'East Delhi'),
('Delhi ', 'New Delhi'),
('Delhi ', 'North Delhi'),
('Delhi ', 'North East Delhi'),
('Delhi ', 'North West Delhi'),
('Delhi ', 'Shahdara'),
('Delhi ', 'South Delhi'),
('Delhi ', 'South East Delhi'),
('Delhi ', 'South West Delhi'),
('Delhi ', 'West Delhi'),
('Goa', 'North Goa'),
('Goa', 'South Goa'),
('Gujarat', 'Ahmedabad'),
('Gujarat', 'Amreli'),
('Gujarat', 'Anand'),
('Gujarat', 'Arvalli'),
('Gujarat', 'Banaskantha (Palanpur)'),
('Gujarat', 'Bharuch'),
('Gujarat', 'Bhavnagar'),
('Gujarat', 'Botad'),
('Gujarat', 'Chhota Udepur'),
('Gujarat', 'Dahod'),
('Gujarat', 'Dangs (Ahwa)'),
('Gujarat', 'Devbhoomi Dwarka'),
('Gujarat', 'Gandhinagar'),
('Gujarat', 'Gir Somnath'),
('Gujarat', 'Jamnagar'),
('Gujarat', 'Junagadh'),
('Gujarat', 'Kachchh'),
('Gujarat', 'Kheda (Nadiad)'),
('Gujarat', 'Mahisagar'),
('Gujarat', 'Mehsana'),
('Gujarat', 'Morbi'),
('Gujarat', 'Narmada (Rajpipla)'),
('Gujarat', 'Navsari'),
('Gujarat', 'Panchmahal (Godhra)'),
('Gujarat', 'Patan'),
('Gujarat', 'Porbandar'),
('Gujarat', 'Rajkot'),
('Gujarat', 'Sabarkantha (Himmatnagar)'),
('Gujarat', 'Surat'),
('Gujarat', 'Surendranagar'),
('Gujarat', 'Tapi (Vyara)'),
('Gujarat', 'Vadodara'),
('Gujarat', 'Valsad'),
('Haryana', 'Ambala'),
('Haryana', 'Bhiwani'),
('Haryana', 'Charkhi Dadri'),
('Haryana', 'Faridabad'),
('Haryana', 'Gurgaon'),
('Haryana', 'Hisar'),
('Haryana', 'Jhajjar'),
('Haryana', 'Jind'),
('Haryana', 'Kaithal'),
('Haryana', 'Karnal'),
('Haryana', 'Kurukshetra'),
('Haryana', 'Mahendragarh'),
('Haryana', 'Nuh'),
('Haryana', 'Palwal'),
('Haryana', 'Panchkula'),
('Haryana', 'Panjpat'),
('Haryana', 'Rohtak'),
('Haryana', 'Sirsa'),
('Haryana', 'Sonipat'),
('Haryana', 'Yamunanagar'),
('Haryana', 'Fatehabad'),
('Haryana', 'Rewari'),
('Himachal Pradesh', 'Bilaspur'),
('Himachal Pradesh', 'Chamba'),
('Himachal Pradesh', 'Hamirpur'),
('Himachal Pradesh', 'Kangra'),
('Himachal Pradesh', 'Kinnaur'),
('Himachal Pradesh', 'Kullu'),
('Himachal Pradesh', 'Lahaul & Spiti'),
('Himachal Pradesh', 'Mandi'),
('Himachal Pradesh', 'Shimla'),
('Himachal Pradesh', 'Sirmaur'),
('Himachal Pradesh', 'Solan'),
('Himachal Pradesh', 'Una'),
('Jammu and Kashmir', 'Anantnag'),
('Jammu and Kashmir', 'Bandipore'),
('Jammu and Kashmir', 'Baramulla'),
('Jammu and Kashmir', 'Budgam'),
('Jammu and Kashmir', 'Doda'),
('Jammu and Kashmir', 'Ganderbal'),
('Jammu and Kashmir', 'Jammu'),
('Jammu and Kashmir', 'Kathua'),
('Jammu and Kashmir', 'Kishtwar'),
('Jammu and Kashmir', 'Kulgam'),
('Jammu and Kashmir', 'Kupwara'),
('Jammu and Kashmir', 'Poonch'),
('Jammu and Kashmir', 'Pulwama'),
('Jammu and Kashmir', 'Rajouri'),
('Jammu and Kashmir', 'Ramban'),
('Jammu and Kashmir', 'Reasi'),
('Jammu and Kashmir', 'Samba'),
('Jammu and Kashmir', 'Shopian'),
('Jammu and Kashmir', 'Srinagar'),
('Jammu and Kashmir', 'Udhampur'),
('Jharkhand', 'Bokaro'),
('Jharkhand', 'Chatra'),
('Jharkhand', 'Deoghar'),
('Jharkhand', 'Dhanbad'),
('Jharkhand', 'Dumka'),
('Jharkhand', 'East Singhbhum'),
('Jharkhand', 'Garhwa'),
('Jharkhand', 'Giridih'),
('Jharkhand', 'Godda'),
('Jharkhand', 'Gumla'),
('Jharkhand', 'Hazaribag'),
('Jharkhand', 'Jamtara'),
('Jharkhand', 'Khunti'),
('Jharkhand', 'Koderma'),
('Jharkhand', 'Latehar'),
('Jharkhand', 'Lohardaga'),
('Jharkhand', 'Ranchi'),
('Jharkhand', 'Pakur'),
('Jharkhand', 'Palamu'),
('Jharkhand', 'Ramgarh'),
('Jharkhand', 'Sahibganj'),
('Jharkhand', 'Seraikela-Kharsawan'),
('Jharkhand', 'Simdega'),
('Jharkhand', 'West Singhbhum'),
('Karanataka', 'Bagalkot'),
('Karanataka', 'Bellari (Bellary)'),
('Karanataka', 'Belagavi (Begaum)'),
('Karanataka', 'Bengaluru (Bangalore) Rural'),
('Karanataka', 'Bengaluru (Bangalore) Urban'),
('Karanataka', 'Bidar'),
('Karanataka', 'Chamarajanagar'),
('Karanataka', 'Chikballapur'),
('Karanataka', 'Chikkamagaluru (Chikmagalur)'),
('Karanataka', 'Dakshina Kannada'),
('Karanataka', 'Davangere'),
('Karanataka', 'Dharwad'),
('Karanataka', 'Gadag'),
('Karanataka', 'Hassan'),
('Karanataka', 'Haveri'),
('Karanataka', 'Kalaburagi (Gulbaraga)'),
('Karanataka', 'Kodagu'),
('Karanataka', 'Kolar'),
('Karanataka', 'Koppal'),
('Karanataka', 'Mandya'),
('Karanataka', 'Mysuru (Mysore)'),
('Karanataka', 'Raichur'),
('Karanataka', '	Ramanagara'),
('Karanataka', 'Shivamogga (Shimoga)'),
('Karanataka', 'Tumakuru (Tumkur)'),
('Karanataka', 'Udupi'),
('Karanataka', 'Uttara Kannada (Karwar)'),
('Karanataka', 'Vijayapura (Bijapur)'),
('Karanataka', 'Yadgir'),
('Karanataka', 'Chitradurga'),
('Karanataka', 'Vijayanagara'),
('Kerala', 'Alappuzha'),
('Kerala', 'Ernakulam'),
('Kerala', 'Idukki'),
('Kerala', 'Kannur'),
('Kerala', 'Kasaragod'),
('Kerala', 'Kollam'),
('Kerala', 'Kottayam'),
('Kerala', 'Kozhikode'),
('Kerala', 'Malappuram'),
('Kerala', 'Palakkad'),
('Kerala', 'Pathanamthitta'),
('Kerala', 'Thiruvananthapuram'),
('Kerala', 'Thrissur'),
('Kerala', 'Wayanad'),
('Ladakh', 'Kargil'),
('Ladakh', 'Leh'),
('Madhya Pradesh', 'Agar Malwa'),
('Madhya Pradesh', 'Alirajpur'),
('Madhya Pradesh', 'Anuppur'),
('Madhya Pradesh', 'Ashoknagar'),
('Madhya Pradesh', 'Balaghat'),
('Madhya Pradesh', 'Barwani'),
('Madhya Pradesh', 'Betul'),
('Madhya Pradesh', 'Bhind'),
('Madhya Pradesh', 'Bhopal'),
('Madhya Pradesh', 'Burhanpur'),
('Madhya Pradesh', 'Chhatarpur'),
('Madhya Pradesh', 'Chhindwara'),
('Madhya Pradesh', 'Damoh'),
('Madhya Pradesh', 'Datia'),
('Madhya Pradesh', 'Dewas'),
('Madhya Pradesh', 'Dhar'),
('Madhya Pradesh', 'Dindori'),
('Madhya Pradesh', 'Guna'),
('Madhya Pradesh', 'Gwalior'),
('Madhya Pradesh', 'Harda'),
('Madhya Pradesh', 'Hoshangabad'),
('Madhya Pradesh', 'Indore'),
('Madhya Pradesh', 'Jabalpur'),
('Madhya Pradesh', 'Jhabua'),
('Madhya Pradesh', 'Katni'),
('Madhya Pradesh', 'Khandwa'),
('Madhya Pradesh', 'Khargone'),
('Madhya Pradesh', 'Mandla'),
('Madhya Pradesh', 'Mandsaur'),
('Madhya Pradesh', 'Morena'),
('Madhya Pradesh', 'Narsinghpur'),
('Madhya Pradesh', 'Neemuch'),
('Madhya Pradesh', 'Panna'),
('Madhya Pradesh', 'Raisen'),
('Madhya Pradesh', 'Rajgarh'),
('Madhya Pradesh', 'Ratlam'),
('Madhya Pradesh', 'Rewa'),
('Madhya Pradesh', 'Sagar'),
('Madhya Pradesh', 'Satna'),
('Madhya Pradesh', 'Sehore'),
('Madhya Pradesh', 'Seoni'),
('Madhya Pradesh', 'Shahdol'),
('Madhya Pradesh', 'Shajapur'),
('Madhya Pradesh', 'Sheopur'),
('Madhya Pradesh', 'Shivpuri'),
('Madhya Pradesh', 'Sidhi'),
('Madhya Pradesh', 'Singrauli'),
('Madhya Pradesh', 'Tikamgarh'),
('Madhya Pradesh', 'Ujjain'),
('Madhya Pradesh', 'Umaria'),
('Madhya Pradesh', 'Vidisha'),
('Madhya Pradesh', 'Niwari'),
('Maharashtra', 'Ahmednagar'),
('Maharashtra', 'Akola'),
('Maharashtra', 'Amravati'),
('Maharashtra', 'Beed'),
('Maharashtra', 'Bhandara'),
('Maharashtra', 'Buldhana'),
('Maharashtra', 'Chandrapur'),
('Maharashtra', 'Dhule'),
('Maharashtra', 'Gadchiroli'),
('Maharashtra', 'Gondia'),
('Maharashtra', 'Hingoli'),
('Maharashtra', 'Jalgaon'),
('Maharashtra', 'Jalna'),
('Maharashtra', 'Kolhapur'),
('Maharashtra', 'Latur'),
('Maharashtra', 'Mumbai City'),
('Maharashtra', 'Mumbai Suburban'),
('Maharashtra', 'Nagpur'),
('Maharashtra', 'Nanded'),
('Maharashtra', 'Nandurbar'),
('Maharashtra', 'Nashik'),
('Maharashtra', 'Osmanabad'),
('Maharashtra', 'Palghar'),
('Maharashtra', 'Parbhani'),
('Maharashtra', 'Pune'),
('Maharashtra', 'Raigad'),
('Maharashtra', 'Ratnagiri'),
('Maharashtra', 'Sangli'),
('Maharashtra', 'Satara'),
('Maharashtra', 'Sindhudurg'),
('Maharashtra', 'Solapur'),
('Maharashtra', 'Thane'),
('Maharashtra', 'Wardha'),
('Maharashtra', 'Washim'),
('Maharashtra', 'Yavatmal'),
('Maharashtra', 'Aurangabad'),
('Manipur', 'Bishnupur'),
('Manipur', 'Chandel'),
('Manipur', 'Churachandpur'),
('Manipur', 'Imphal East'),
('Manipur', 'Imphal West'),
('Manipur', 'Jiribam'),
('Manipur', 'Kakching'),
('Manipur', 'Kamjong'),
('Manipur', 'Kangpokpi'),
('Manipur', 'Noney'),
('Manipur', 'Pherzawl'),
('Manipur', 'Senapati'),
('Manipur', 'Tamenglong'),
('Manipur', 'Tengnoupal'),
('Manipur', 'Thoubal'),
('Manipur', 'Ukhrul'),
('Meghalaya', 'East Garo Hills'),
('Meghalaya', 'East Jaintia Hills'),
('Meghalaya', 'East Khasi Hills'),
('Meghalaya', 'North Garo Hills'),
('Meghalaya', 'Ri Bhoi'),
('Meghalaya', 'South Garo Hills'),
('Meghalaya', 'South West Garo Hills'),
('Meghalaya', 'South West Khasi Hills'),
('Meghalaya', 'West Garo Hills'),
('Meghalaya', 'West Jaintia Hills'),
('Meghalaya', 'West Khasi Hills'),
('Meghalaya', 'Eastern West Khasi Hills'),
('Mizoram', 'Aizawl'),
('Mizoram', 'Champhai'),
('Mizoram', 'Kolasib'),
('Mizoram', 'Lawngtlai'),
('Mizoram', 'Hnahthial'),
('Mizoram', 'Lunglei'),
('Mizoram', 'Mamit'),
('Mizoram', 'Saiha'),
('Mizoram', 'Serchhip'),
('Mizoram', 'Khawzawl'),
('Mizoram', 'Saitual'),
('Nagaland', 'Dimapur'),
('Nagaland', 'Kiphire'),
('Nagaland', 'Kohima'),
('Nagaland', 'Longleng'),
('Nagaland', 'Mokokchung'),
('Nagaland', 'Mon'),
('Nagaland', 'Peren'),
('Nagaland', 'Phek'),
('Nagaland', 'Tuensang'),
('Nagaland', 'Wokha'),
('Nagaland', 'Zunheboto'),
('Nagaland', 'Tseminyü'),
('Nagaland', 'Chümoukedima'),
('Nagaland', 'Niuland '),
('Nagaland', 'Noklak'),
('Nagaland', 'Shamator'),
('Odisha', 'Angul'),
('Odisha', 'Balangir'),
('Odisha', 'Balasore'),
('Odisha', 'Bargarh'),
('Odisha', 'Bhadrak'),
('Odisha', 'Boudh'),
('Odisha', 'Cuttack'),
('Odisha', 'Deogarh'),
('Odisha', 'Dhenkanal'),
('Odisha', 'Gajapati'),
('Odisha', 'Ganjam'),
('Odisha', 'Jagatsinghapur'),
('Odisha', 'Jajpur'),
('Odisha', 'Jharsuguda'),
('Odisha', 'Kalahandi'),
('Odisha', 'Kandhamal'),
('Odisha', 'Kendrapara'),
('Odisha', 'Kendujhar (Keonjhar)'),
('Odisha', 'Khordha'),
('Odisha', 'Koraput'),
('Odisha', 'Malkangiri'),
('Odisha', 'Mayurbhanj'),
('Odisha', 'Nabarangpur'),
('Odisha', 'Nayagarh'),
('Odisha', 'Nuapada'),
('Odisha', 'Puri'),
('Odisha', 'Rayagada'),
('Odisha', 'Sambalpur'),
('Odisha', 'Subarnapur'),
('Odisha', 'Sundargarh'),
('Puducherry', 'Karaikal'),
('Puducherry', 'Yanam'),
('Puducherry', 'Mahe'),
('Puducherry', 'Pondicherry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `past_promo_data`
--
ALTER TABLE `past_promo_data`
  ADD PRIMARY KEY (`promo_id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `past_promo_data`
--
ALTER TABLE `past_promo_data`
  MODIFY `promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
