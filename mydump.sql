--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.5.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: artists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE artists (
    artist text NOT NULL,
    tag1 text,
    weight1 numeric,
    tag2 text,
    weight2 numeric,
    tag3 text,
    weight3 numeric,
    tag4 text,
    weight4 numeric,
    tag5 text,
    weight5 numeric
);


ALTER TABLE artists OWNER TO postgres;

--
-- Name: artistssmall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE artistssmall (
    artist text NOT NULL,
    tag1 text,
    weight1 numeric,
    tag2 text,
    weight2 numeric,
    tag3 text,
    weight3 numeric,
    tag4 text,
    weight4 numeric,
    tag5 text,
    weight5 numeric
);


ALTER TABLE artistssmall OWNER TO postgres;

--
-- Name: usersearch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usersearch (
    id integer NOT NULL,
    curtime timestamp without time zone,
    searchtype text,
    artist1 text,
    artist2 text,
    artist3 text,
    artist4 text,
    artist5 text
);


ALTER TABLE usersearch OWNER TO postgres;

--
-- Name: usersearch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usersearch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usersearch_id_seq OWNER TO postgres;

--
-- Name: usersearch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usersearch_id_seq OWNED BY usersearch.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usersearch ALTER COLUMN id SET DEFAULT nextval('usersearch_id_seq'::regclass);


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY artists (artist, tag1, weight1, tag2, weight2, tag3, weight3, tag4, weight4, tag5, weight5) FROM stdin;
The Killers	indie	100.0	rock	93.0	indie rock	90.0	alternative	75.0	alternative rock	64.0
Florence + the Machine	indie	100.0	female vocalists	87.0	alternative	72.0	british	72.0	indie pop	61.0
Arcade Fire	indie	100.0	indie rock	99.0	alternative	76.0	Canadian	63.0	seen live	57.0
Death Cab for Cutie	indie	100.0	indie rock	62.0	alternative	47.0	seen live	33.0	rock	30.0
The Smiths	indie	100.0	80s	96.0	new wave	84.0	post-punk	84.0	alternative	77.0
The xx	indie	100.0	electronic	80.0	british	62.0	post-punk	61.0	seen live	41.0
Modest Mouse	indie	100.0	indie rock	87.0	alternative	63.0	rock	44.0	seen live	42.0
Interpol	indie	100.0	indie rock	90.0	post-punk	73.0	seen live	66.0	alternative	63.0
The Kooks	indie	100.0	indie rock	85.0	british	73.0	britpop	53.0	alternative	48.0
Sufjan Stevens	indie	100.0	folk	91.0	singer-songwriter	79.0	alternative	37.0	indie rock	31.0
Franz Ferdinand	indie	100.0	indie rock	89.0	rock	81.0	alternative	69.0	seen live	61.0
Vampire Weekend	indie	100.0	indie rock	82.0	indie pop	63.0	seen live	58.0	alternative	57.0
Bloc Party	indie	100.0	indie rock	84.0	seen live	63.0	alternative	56.0	british	46.0
Belle and Sebastian	indie	100.0	indie pop	74.0	alternative	40.0	seen live	37.0	indie rock	34.0
Yeah Yeah Yeahs	indie	100.0	indie rock	94.0	female vocalists	71.0	alternative	69.0	rock	54.0
Snow Patrol	indie	100.0	alternative	86.0	rock	71.0	indie rock	68.0	britpop	58.0
Kasabian	indie	100.0	indie rock	92.0	british	77.0	alternative	73.0	rock	65.0
The Shins	indie	100.0	indie rock	60.0	indie pop	44.0	alternative	40.0	seen live	31.0
Phoenix	indie	100.0	french	70.0	indie pop	65.0	electronic	56.0	seen live	56.0
Bright Eyes	indie	100.0	singer-songwriter	55.0	folk	50.0	seen live	45.0	indie rock	42.0
Tegan and Sara	indie	100.0	female vocalists	81.0	Canadian	59.0	indie pop	58.0	alternative	46.0
Imagine Dragons	indie	100.0	indie rock	95.0	alternative	85.0	rock	64.0	indie pop	57.0
alt-J	indie	100.0	electronic	86.0	seen live	78.0	british	64.0	alternative	61.0
Two Door Cinema Club	indie	100.0	electronic	68.0	british	63.0	alternative	53.0	seen live	45.0
Foals	indie	100.0	math rock	80.0	indie rock	76.0	british	65.0	seen live	61.0
Metric	indie	100.0	indie rock	82.0	female vocalists	70.0	Canadian	64.0	alternative	48.0
Cat Power	indie	100.0	female vocalists	95.0	singer-songwriter	83.0	folk	71.0	alternative	46.0
Foster the People	indie	100.0	indie pop	83.0	alternative	65.0	american	36.0	seen live	22.0
The Decemberists	indie	100.0	indie rock	58.0	folk	50.0	seen live	45.0	alternative	35.0
Band of Horses	indie	100.0	indie rock	90.0	seen live	71.0	alternative	55.0	Alt-country	47.0
Kings of Convenience	indie	100.0	acoustic	85.0	norwegian	60.0	indie pop	59.0	Mellow	39.0
Grizzly Bear	indie	100.0	experimental	82.0	folk	78.0	seen live	63.0	Lo-Fi	54.0
Morrissey	indie	100.0	british	89.0	alternative	89.0	seen live	89.0	rock	65.0
Neutral Milk Hotel	indie	100.0	indie rock	66.0	folk	58.0	Lo-Fi	56.0	Elephant 6	27.0
The Flaming Lips	indie	100.0	seen live	91.0	alternative	89.0	indie rock	63.0	rock	56.0
Broken Social Scene	indie	100.0	indie rock	73.0	Canadian	58.0	seen live	57.0	post-rock	43.0
Kaiser Chiefs	indie	100.0	indie rock	91.0	seen live	72.0	britpop	69.0	rock	67.0
Eels	indie	100.0	alternative	86.0	rock	61.0	indie rock	57.0	singer-songwriter	47.0
of Montreal	indie	100.0	seen live	87.0	indie pop	82.0	indie rock	43.0	alternative	39.0
Andrew Bird	indie	100.0	singer-songwriter	97.0	folk	88.0	seen live	80.0	indie pop	41.0
Of Monsters and Men	indie	100.0	folk	89.0	indie pop	65.0	icelandic	55.0	seen live	40.0
The Postal Service	indie	100.0	electronic	69.0	indie pop	46.0	alternative	36.0	electronica	30.0
Spoon	indie	100.0	indie rock	96.0	seen live	67.0	alternative	53.0	rock	45.0
The Mountain Goats	indie	100.0	folk	89.0	Lo-Fi	64.0	seen live	62.0	singer-songwriter	61.0
Bastille	indie	100.0	electronic	71.0	alternative	69.0	british	66.0	seen live	60.0
TV on the Radio	indie	100.0	indie rock	86.0	experimental	81.0	seen live	76.0	alternative	60.0
Bombay Bicycle Club	indie	100.0	british	77.0	indie rock	76.0	seen live	50.0	alternative	49.0
Pavement	indie	100.0	indie rock	97.0	Lo-Fi	78.0	alternative	59.0	rock	40.0
The Libertines	indie	100.0	indie rock	95.0	british	81.0	rock	58.0	alternative	49.0
The Kills	indie	100.0	Garage Rock	100.0	indie rock	100.0	alternative	74.0	rock	62.0
Stars	indie	100.0	indie pop	74.0	Canadian	68.0	seen live	57.0	indie rock	41.0
Yo La Tengo	indie	100.0	indie rock	85.0	seen live	59.0	alternative	55.0	indie pop	38.0
Gotye	indie	100.0	electronic	80.0	alternative	68.0	australian	64.0	Aussie	17.0
The Magnetic Fields	indie	100.0	indie pop	78.0	Lo-Fi	58.0	indie rock	43.0	alternative	42.0
CocoRosie	indie	100.0	experimental	95.0	female vocalists	81.0	folk	73.0	freak folk	67.0
The Fratellis	indie	100.0	indie rock	96.0	british	73.0	rock	59.0	alternative	55.0
Rilo Kiley	indie	100.0	female vocalists	59.0	indie rock	54.0	indie pop	46.0	seen live	44.0
Patrick Wolf	indie	100.0	singer-songwriter	79.0	seen live	77.0	electronic	75.0	folk	61.0
Circa Survive	indie	100.0	experimental	99.0	alternative	64.0	seen live	63.0	emo	59.0
The Wombats	indie	100.0	seen live	82.0	british	78.0	indie rock	77.0	britpop	48.0
The Temper Trap	indie	100.0	indie rock	89.0	australian	70.0	alternative	66.0	seen live	51.0
The Naked and Famous	indie	100.0	electronic	83.0	indie pop	62.0	Electro Pop	60.0	New Zealand	48.0
Minus the Bear	indie	100.0	indie rock	81.0	seen live	64.0	alternative	44.0	experimental	39.0
Cold War Kids	indie	100.0	indie rock	99.0	seen live	98.0	alternative	66.0	rock	51.0
Elbow	indie	100.0	seen live	90.0	alternative	81.0	indie rock	67.0	britpop	54.0
Daughter	indie	100.0	indie folk	78.0	acoustic	74.0	female vocalists	70.0	british	67.0
The Ting Tings	indie	100.0	electronic	83.0	british	74.0	electropop	74.0	female vocalists	59.0
The Antlers	indie	100.0	indie rock	92.0	slowcore	75.0	seen live	68.0	singer-songwriter	41.0
Local Natives	indie	100.0	indie rock	84.0	seen live	80.0	folk	70.0	indie pop	53.0
Awna Teixeira	female vocalists	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
My Morning Jacket	indie	100.0	indie rock	91.0	seen live	69.0	Alt-country	68.0	rock	54.0
The New Pornographers	indie	100.0	indie rock	73.0	seen live	71.0	Canadian	68.0	indie pop	52.0
Blonde Redhead	indie	100.0	indie rock	79.0	seen live	71.0	female vocalists	60.0	alternative	60.0
The Drums	indie	100.0	indie rock	80.0	indie pop	71.0	surf rock	66.0	seen live	62.0
Broken Bells	indie	100.0	experimental	69.0	indie pop	63.0	alternative	57.0	indie rock	53.0
HAIM	indie	100.0	indie pop	100.0	seen live	88.0	female vocalists	73.0	indie rock	66.0
The Last Shadow Puppets	indie	100.0	british	90.0	indie rock	86.0	alternative	53.0	rock	50.0
The 1975	indie	100.0	indie rock	99.0	british	72.0	alternative	72.0	seen live	70.0
OK Go	indie	100.0	indie rock	86.0	rock	63.0	alternative	61.0	seen live	50.0
The Maccabees	indie	100.0	indie rock	84.0	seen live	79.0	british	76.0	alternative	48.0
The Neighbourhood	indie	100.0	indie rock	88.0	indie pop	66.0	rock	48.0	seen live	20.0
Babyshambles	indie	100.0	indie rock	88.0	british	84.0	rock	50.0	seen live	49.0
Gossip	indie	100.0	indie rock	97.0	female vocalists	86.0	seen live	71.0	rock	61.0
Architecture in Helsinki	indie	100.0	indie pop	82.0	australian	51.0	seen live	51.0	alternative	38.0
Peter Bjorn and John	indie	100.0	swedish	83.0	indie pop	72.0	seen live	55.0	alternative	44.0
We Are Scientists	indie	100.0	indie rock	91.0	seen live	85.0	alternative	48.0	rock	48.0
Plain White T's	indie	100.0	rock	88.0	pop punk	81.0	alternative	77.0	seen live	57.0
The Whitest Boy Alive	indie	100.0	electronic	77.0	seen live	72.0	indie pop	71.0	norwegian	50.0
Death from Above 1979	indie	100.0	indie rock	91.0	rock	67.0	alternative	64.0	Canadian	55.0
The Dandy Warhols	indie	100.0	alternative	76.0	rock	76.0	indie rock	68.0	alternative rock	51.0
Okkervil River	seen live	100.0	indie	100.0	folk	78.0	indie rock	68.0	Alt-country	52.0
Razorlight	indie	100.0	indie rock	86.0	seen live	67.0	british	64.0	rock	60.0
Why?	indie	100.0	Hip-Hop	95.0	seen live	88.0	experimental	79.0	anticon	67.0
Nada Surf	indie	100.0	seen live	84.0	indie rock	81.0	alternative	64.0	rock	55.0
Wolf Parade	indie	100.0	indie rock	94.0	Canadian	67.0	seen live	50.0	alternative	37.0
The Bravery	indie	100.0	indie rock	86.0	alternative	64.0	rock	62.0	seen live	53.0
Clap Your Hands Say Yeah	indie	100.0	indie rock	79.0	seen live	54.0	alternative	42.0	indie pop	34.0
Woodkid	indie	100.0	alternative	80.0	folk	63.0	chamber pop	58.0	seen live	47.0
Doves	indie	100.0	indie rock	74.0	britpop	64.0	alternative	59.0	rock	57.0
Hellogoodbye	indie	100.0	powerpop	92.0	seen live	76.0	alternative	54.0	pop	48.0
The Raveonettes	indie	100.0	indie rock	97.0	seen live	83.0	danish	73.0	alternative	68.0
Copeland	indie	100.0	emo	64.0	indie rock	61.0	alternative	51.0	seen live	47.0
Grouplove	indie	100.0	indie rock	84.0	indie pop	74.0	alternative	63.0	rock	47.0
The Cribs	indie	100.0	seen live	93.0	indie rock	90.0	british	68.0	alternative	46.0
The Rapture	indie	100.0	electronic	84.0	indie rock	71.0	post-punk	66.0	seen live	65.0
Frou Frou	indie	100.0	electronic	96.0	female vocalists	86.0	alternative	56.0	electronica	46.0
Pinback	indie	100.0	indie rock	71.0	seen live	46.0	alternative	42.0	indie pop	33.0
Cursive	indie	100.0	indie rock	83.0	seen live	69.0	emo	49.0	alternative	39.0
Fink	indie	100.0	singer-songwriter	92.0	downtempo	86.0	ninja tune	78.0	chillout	71.0
Ra Ra Riot	indie	100.0	indie pop	78.0	indie rock	70.0	seen live	66.0	alternative	54.0
Jamie T	indie	100.0	british	87.0	seen live	77.0	singer-songwriter	62.0	alternative	52.0
Destroyer	indie	100.0	seen live	84.0	indie rock	82.0	Canadian	70.0	singer-songwriter	62.0
The Format	indie	100.0	seen live	75.0	indie pop	58.0	alternative	46.0	indie rock	43.0
Hot Hot Heat	indie	100.0	indie rock	81.0	seen live	52.0	alternative	52.0	rock	50.0
Brandon Flowers	indie	100.0	alternative rock	82.0	indie rock	80.0	singer-songwriter	63.0	rock	58.0
Mutemath	indie	100.0	alternative	99.0	rock	68.0	experimental	67.0	electronic	64.0
Radical Face	indie	100.0	indie pop	60.0	singer-songwriter	57.0	electronic	45.0	indietronica	42.0
Neon Trees	indie	100.0	indie rock	87.0	alternative	85.0	alternative rock	68.0	pop	51.0
Sparklehorse	indie	100.0	indie rock	71.0	alternative	64.0	singer-songwriter	58.0	rock	36.0
The Faint	indie	100.0	electronic	99.0	seen live	66.0	indie rock	56.0	dance	47.0
MS MR	indie	100.0	electronic	100.0	dream pop	86.0	alternative	60.0	pop	50.0
The Go! Team	indie	100.0	seen live	81.0	electronic	62.0	indie rock	53.0	indie pop	48.0
The Notwist	indie	100.0	electronic	89.0	seen live	71.0	indietronica	57.0	german	54.0
Athlete	indie	100.0	indie rock	76.0	britpop	68.0	alternative	53.0	rock	45.0
Badly Drawn Boy	indie	100.0	singer-songwriter	79.0	alternative	44.0	indie rock	41.0	rock	33.0
Mystery Jets	indie	100.0	seen live	79.0	indie rock	74.0	british	73.0	alternative	49.0
The Hush Sound	indie	100.0	seen live	69.0	piano rock	68.0	indie rock	53.0	female vocalists	47.0
The Bird and the Bee	indie	100.0	female vocalists	87.0	electronic	84.0	indie pop	82.0	chillout	47.0
The Coral	indie	100.0	indie rock	76.0	british	59.0	britpop	54.0	rock	49.0
Guster	indie	100.0	seen live	100.0	alternative	88.0	rock	64.0	indie rock	52.0
Midlake	indie	100.0	seen live	92.0	indie rock	60.0	Lo-Fi	54.0	alternative	48.0
Le Tigre	indie	100.0	electronic	95.0	riot grrrl	84.0	female vocalists	72.0	alternative	50.0
Eisley	indie	100.0	female vocalists	68.0	indie pop	55.0	indie rock	42.0	seen live	42.0
Tom Odell	indie	100.0	folk	73.0	seen live	71.0	british	71.0	singer-songwriter	67.0
Hard-Fi	indie	100.0	indie rock	85.0	british	65.0	rock	58.0	alternative	57.0
Halsey	indie	100.0	pop	82.0	indie pop	50.0	female vocalists	41.0	american	37.0
Starsailor	indie	100.0	britpop	98.0	rock	71.0	alternative	64.0	british	63.0
Kimya Dawson	indie	100.0	anti-folk	96.0	singer-songwriter	89.0	female vocalists	80.0	folk	69.0
Coconut Records	indie	100.0	indie pop	80.0	alternative	53.0	indie rock	52.0	pop	35.0
Grandaddy	indie	100.0	indie rock	80.0	alternative	52.0	rock	40.0	indie pop	37.0
The Rocket Summer	seen live	100.0	indie	100.0	alternative	68.0	emo	66.0	rock	55.0
Dirty Pretty Things	indie	100.0	indie rock	100.0	british	85.0	seen live	60.0	rock	52.0
Tindersticks	indie	100.0	chamber pop	89.0	alternative	76.0	seen live	59.0	indie rock	48.0
The Dø	indie	100.0	female vocalists	72.0	folk	66.0	french	62.0	indie pop	58.0
The Pigeon Detectives	indie	100.0	indie rock	92.0	british	80.0	seen live	66.0	britpop	48.0
Rogue Wave	indie	100.0	seen live	72.0	indie rock	72.0	indie pop	47.0	alternative	45.0
Milky Chance	indie	100.0	indie rock	66.0	seen live	60.0	reggae	58.0	singer-songwriter	45.0
Little Joy	indie	100.0	alternative	76.0	folk	73.0	brazilian	67.0	indie rock	59.0
Aqualung	indie	100.0	singer-songwriter	72.0	alternative	67.0	indie rock	42.0	rock	36.0
The Futureheads	indie	100.0	seen live	89.0	indie rock	85.0	british	52.0	rock	45.0
Mirah	indie	100.0	female vocalists	90.0	singer-songwriter	76.0	folk	61.0	indie pop	48.0
Houndmouth	indie folk	100.0	seen live	80.0	indie	50.0	indie rock	50.0	folk	40.0
Sea of Bees	indie folk	100.0	folk	89.0	female vocalists	89.0	acoustic	75.0	Mellow	35.0
The Shivers	indie folk	100.0	beautiful	80.0	anti-childbirth	54.0	seen live	47.0	indie	47.0
Prehistöricos	indie folk	100.0	indie pop	90.0	indie	70.0	acoustic	50.0	chile	50.0
Basecamp	indie folk	100.0	indie	67.0	folk	67.0	acoustic	67.0	electronic	56.0
All The Luck In The World	seen live	100.0	indie folk	100.0	folk	84.0	irish	84.0	indie	50.0
Old Man Canyon	indie	100.0	indie folk	100.0	seen live	50.0	folk	50.0	Canadian	50.0
Aunt Martha	indie folk	100.0	folk	88.0	indie	63.0	dream country	38.0	seen live	25.0
Butcher The Bar	indie folk	100.0	folk	69.0	indie pop	69.0	indietronica	50.0	indie	41.0
Springtime Carnivore	indie	100.0	dream pop	100.0	indie folk	100.0	seen live	75.0	indie pop	50.0
The Hat	indie folk	100.0	seen live	80.0	rock	40.0	folk	40.0	calm	40.0
Kalle Mattson	indie folk	100.0	indie	80.0	folk	60.0	indie rock	60.0	canada	60.0
Falls	test	100.0	pop	100.0	indie pop	100.0	female vocalists	100.0	australian	100.0
Aidan Moffat & The Best-Ofs	folk rock	100.0	indie folk	100.0	alternative rock	60.0	Scottish	60.0	singer-songwriter	40.0
Swear and Shake	indie pop	100.0	indie folk	100.0	indie	67.0	folk	67.0	seen live	34.0
Down Like Silver	acoustic	100.0	nostalgic	100.0	indie folk	100.0	folk	50.0	low-fi	50.0
Aaron Krause	indie	100.0	folk	100.0	indie folk	100.0	Singer/Songwriter	100.0	\N	0.0
Anadel	indie	100.0	folk	100.0	indie folk	100.0	napa	100.0	rock	50.0
Reza	pop	100.0	singer-songwriter	100.0	acoustic	100.0	indie folk	100.0	folk	84.0
Ruby the Rabbitfoot	indie	100.0	pop	100.0	folk	100.0	indie folk	100.0	athens	100.0
Boris Smile	indie folk	100.0	count your lucky stars	75.0	seen live	50.0	indie rock	50.0	Mellow	50.0
La Reina Morsa	indie folk	100.0	acoustic	78.0	indie	67.0	folk	56.0	chile	56.0
Conveyor	indie folk	100.0	indie	80.0	seen live	60.0	acoustic	60.0	All	40.0
Hezekiah Jones	indie folk	100.0	acoustic	90.0	folk	40.0	seen live	30.0	indie	30.0
Arum Rae	seen live	100.0	indie folk	100.0	female vocalists	67.0	virginia	67.0	indie	34.0
Ofelia K	indie	100.0	pop	100.0	indie folk	100.0	suave	100.0	\N	0.0
Katie Kim	indie folk	100.0	Mellow	63.0	folk-pop	50.0	slowcore	50.0	seen live	38.0
Ayla Nereo	indie folk	100.0	singer-songwriter	80.0	acoustic	70.0	folk	60.0	female vocalists	60.0
Joe la Reina	indie	100.0	folk	100.0	indie pop	100.0	indie folk	100.0	folk pop	100.0
The Cairo Gang	seen live	100.0	indie folk	100.0	alternative	67.0	experimental	67.0	indie	34.0
Emily Yacina	folk	100.0	indie pop	100.0	female vocalists	100.0	singer-songwriter	100.0	acoustic	100.0
Pigpen Theatre Co.	indie	100.0	folk	100.0	singer-songwriter	100.0	USA	100.0	indie folk	100.0
The Young Romans	seen live	100.0	indie	100.0	indie pop	100.0	american	100.0	indie folk	100.0
The Ascetic Junkies	indie folk	100.0	portland	75.0	indie	50.0	folk punk	25.0	All	25.0
Four Visions	singer-songwriter	100.0	Lo-Fi	100.0	indie folk	100.0	USA	80.0	american	60.0
Keston Cobblers' Club	feel good	100.0	indie folk	100.0	mumford and Sons	100.0	All	100.0	seen live	50.0
Wardell	seen live	100.0	indie	100.0	american	100.0	indie folk	100.0	SXSW 2013	100.0
Shenandoah Davis	singer-songwriter	100.0	indie folk	100.0	seen live	80.0	female vocalists	80.0	piano	60.0
yOya	electronic	100.0	indie folk	100.0	folk rock	75.0	radiohead	75.0	los angeles	75.0
The Wild Reeds	folk rock	100.0	indie folk	100.0	wild reeds	100.0	The Wild Reeds	100.0	pickathon 2016	100.0
Soft Hearted Scientists	seen live	100.0	british	100.0	folk	100.0	psychedelic	100.0	indie folk	100.0
Aeroplane, 1929	indie folk	100.0	seen live	75.0	indie	75.0	indie pop	50.0	american	50.0
The Triangle	folk rock	100.0	indie folk	100.0	psychedelic folk	100.0	ambient folk	100.0	\N	0.0
Soledad Vélez	folk	100.0	indie folk	100.0	indie	67.0	pop	67.0	chile	67.0
And the Giraffe	indie folk	100.0	dream pop	89.0	indie	45.0	dream folk	34.0	Summertime Kids	23.0
Field Division	indie	100.0	folk	100.0	indie folk	100.0	Folkwave	100.0	\N	0.0
Mikaela Davis	indie folk	100.0	harp	100.0	singer-songwriter	67.0	USA	67.0	indie rock	34.0
Paul Spring	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Nat Simons	spanish	100.0	female vocalists	100.0	singer-songwriter	100.0	folk rock	100.0	indie folk	100.0
Nadine Carina	singer-songwriter	100.0	indie folk	100.0	rock	75.0	alternative	75.0	female vocalists	75.0
Camera Obscura	indie pop	100.0	indie	82.0	female vocalists	62.0	Scottish	54.0	twee	52.0
Los Campesinos!	indie pop	100.0	indie	83.0	seen live	80.0	british	65.0	indie rock	54.0
London Grammar	indie pop	100.0	electronic	88.0	indie	83.0	female vocalists	69.0	british	60.0
Cults	indie pop	100.0	Lo-Fi	75.0	experimental	54.0	seen live	42.0	noise	37.0
MØ	indie pop	100.0	seen live	87.0	dream pop	73.0	indie	69.0	danish	68.0
Au Revoir Simone	indie pop	100.0	female vocalists	86.0	indie	79.0	electronic	61.0	synthpop	58.0
Tennis	Lo-Fi	100.0	indie pop	100.0	chillwave	71.0	indie	60.0	electronic	51.0
Kimbra	indie pop	100.0	female vocalists	94.0	soul	85.0	alternative pop	50.0	alternative	49.0
The Pipettes	indie pop	100.0	female vocalists	92.0	indie	72.0	seen live	64.0	british	62.0
I'm from Barcelona	indie pop	100.0	swedish	95.0	indie	82.0	seen live	76.0	pop	40.0
Electric Guest	indie pop	100.0	indie	78.0	electronic	71.0	american	42.0	Danger Mouse	27.0
The Submarines	indie pop	100.0	indie	92.0	female vocalists	54.0	indie rock	44.0	pop	35.0
San Cisco	indie pop	100.0	indie	72.0	australian	72.0	indie rock	43.0	alternative	35.0
Acid House Kings	indie pop	100.0	swedish	100.0	twee	66.0	indie	57.0	pop	31.0
Jukebox the Ghost	seen live	100.0	indie pop	100.0	indie	76.0	piano rock	63.0	indie rock	59.0
God Help the Girl	indie pop	100.0	indie	68.0	Scottish	67.0	female vocalists	61.0	twee	54.0
Veronica Falls	indie pop	100.0	seen live	91.0	Lo-Fi	88.0	indie	77.0	twee	48.0
Summer Camp	indie pop	100.0	Lo-Fi	99.0	indie	71.0	female vocalists	63.0	seen live	49.0
Bleachers	indie pop	100.0	indie	66.0	seen live	41.0	folk	35.0	power pop	32.0
The Go-Betweens	indie pop	100.0	indie	98.0	australian	91.0	alternative	53.0	80s	53.0
Dan Croll	indie	100.0	indie pop	100.0	electronic	63.0	seen live	52.0	pop	49.0
Geographer	indie pop	100.0	electronic	88.0	indie	78.0	indietronica	48.0	seen live	37.0
The Lucksmiths	indie pop	100.0	twee	77.0	australian	72.0	indie	68.0	seen live	42.0
La casa azul	indie pop	100.0	pop	97.0	spanish	85.0	spanish indie pop	69.0	tontipop	50.0
Field Music	indie pop	100.0	indie	98.0	seen live	73.0	british	58.0	indie rock	53.0
The Royal Concept	indie pop	100.0	indie	88.0	swedish	71.0	indie rock	71.0	alternative	49.0
La Sera	indie pop	100.0	Lo-Fi	69.0	female vocalists	66.0	indie	62.0	seen live	31.0
Allo Darlin'	indie pop	100.0	indie	54.0	twee	48.0	seen live	40.0	female vocalists	39.0
NONONO	electronic	100.0	indie pop	100.0	indie	94.0	swedish	90.0	pop	66.0
Givers	indie pop	100.0	indie	69.0	seen live	62.0	louisiana	26.0	lafayette	13.0
Smallpools	indie pop	100.0	indie	93.0	alternative	43.0	pop rock	43.0	seen live	29.0
The Pastels	indie pop	100.0	twee	96.0	indie	76.0	c86	60.0	Scottish	57.0
Carla Morrison	indie pop	100.0	female vocalists	85.0	mexico	56.0	dream pop	55.0	alternative	43.0
Alex Winston	indie pop	100.0	indie	98.0	female vocalists	95.0	pop	62.0	american	57.0
Hello Seahorse!	indie pop	100.0	indie	86.0	mexican	69.0	dream pop	64.0	twee	40.0
Hospitality	indie pop	100.0	indie	70.0	seen live	54.0	indie rock	45.0	twee	45.0
Seapony	indie pop	100.0	dream pop	94.0	Lo-Fi	62.0	twee	55.0	surf pop	53.0
Graffiti6	indie pop	100.0	pop	88.0	seen live	72.0	british	72.0	soul	59.0
Dënver	indie pop	100.0	chilean	81.0	electronic	64.0	chile	58.0	electropop	56.0
Headlights	indie pop	100.0	indie	86.0	seen live	58.0	female vocalists	51.0	indie rock	49.0
Mocca	indie pop	100.0	indonesian	81.0	indie	59.0	indonesian indie	49.0	pop	47.0
Coma Cinema	indie pop	100.0	Lo-Fi	95.0	chillwave	83.0	indie	79.0	dream pop	61.0
Frankie Cosmos	indie pop	100.0	Lo-Fi	95.0	indie	83.0	female vocalists	42.0	seen live	30.0
Throw Me The Statue	indie pop	100.0	indie	89.0	indie rock	69.0	seattle	40.0	seen live	26.0
Love Is All	indie pop	100.0	swedish	98.0	indie	84.0	seen live	80.0	indie rock	55.0
Saturday Looks Good To Me	indie pop	100.0	indie	84.0	twee	64.0	seen live	60.0	pop	23.0
Elle King	indie pop	100.0	female vocalists	79.0	seen live	43.0	rock	43.0	blues	43.0
Radiohead	alternative	100.0	alternative rock	80.0	rock	73.0	indie	59.0	electronic	48.0
Gorillaz	alternative	100.0	electronic	88.0	Hip-Hop	63.0	rock	58.0	indie	46.0
Pixies	alternative	100.0	indie	88.0	rock	80.0	alternative rock	76.0	indie rock	62.0
Beck	alternative	100.0	indie	72.0	rock	55.0	singer-songwriter	52.0	indie rock	42.0
Sonic Youth	alternative	100.0	experimental	96.0	post-punk	88.0	indie	77.0	seen live	57.0
The Fray	alternative	100.0	rock	80.0	piano rock	73.0	indie	67.0	alternative rock	67.0
Cake	alternative	100.0	rock	79.0	indie	59.0	alternative rock	57.0	indie rock	41.0
John Frusciante	alternative	100.0	singer-songwriter	93.0	experimental	88.0	rock	86.0	alternative rock	70.0
Angels & Airwaves	alternative	100.0	alternative rock	100.0	rock	77.0	punk rock	52.0	emo	34.0
Dinosaur Jr.	alternative	100.0	indie rock	94.0	seen live	94.0	Grunge	83.0	indie	77.0
They Might Be Giants	alternative	100.0	indie	67.0	rock	62.0	seen live	55.0	geek rock	54.0
The Red Jumpsuit Apparatus	alternative	100.0	emo	99.0	rock	98.0	pop punk	78.0	screamo	77.0
311	alternative	100.0	rock	88.0	alternative rock	71.0	reggae	70.0	ska	58.0
Lumen	alternative	100.0	russian rock	77.0	punk rock	71.0	rock	67.0	russian	58.0
Ween	alternative	100.0	experimental	80.0	rock	75.0	indie	61.0	seen live	48.0
Blue October	alternative rock	100.0	alternative	100.0	rock	90.0	indie	54.0	indie rock	49.0
Ben Folds Five	alternative	100.0	rock	85.0	indie	85.0	piano rock	84.0	piano	63.0
The Replacements	alternative	100.0	punk	91.0	post-punk	85.0	rock	81.0	alternative rock	48.0
Violent Femmes	alternative	100.0	rock	74.0	indie	68.0	alternative rock	64.0	80s	48.0
Augustana	alternative	100.0	piano rock	94.0	indie	87.0	rock	70.0	alternative rock	69.0
Lao Che	alternative	100.0	polish	98.0	alternative rock	72.0	rock	71.0	seen live	67.0
The Breeders	alternative	100.0	indie	87.0	rock	69.0	female vocalists	66.0	indie rock	61.0
Animal Джаz	alternative	100.0	alternative rock	81.0	russian	75.0	russian alternative	56.0	rock	55.0
Czesław Śpiewa	alternative	100.0	polish	88.0	experimental	66.0	folk	59.0	poetry	59.0
Vast	alternative	100.0	alternative rock	91.0	rock	75.0	industrial	68.0	electronic	49.0
Дельфин	alternative	100.0	experimental	79.0	russian	79.0	electronic	67.0	russian alternative	42.0
Five for Fighting	alternative	100.0	rock	85.0	singer-songwriter	77.0	alternative rock	60.0	pop	58.0
The Good, the Bad & the Queen	alternative	100.0	indie	88.0	british	79.0	britpop	64.0	indie rock	56.0
Kerli	alternative	100.0	pop	98.0	female vocalists	93.0	estonian	70.0	rock	69.0
Слот	alternative	100.0	russian alternative	54.0	russian	52.0	Nu-metal	50.0	rapcore	43.0
Dolphin	alternative	100.0	experimental	92.0	trip-hop	81.0	russian	71.0	alternative rock	47.0
Team Sleep	alternative	100.0	electronic	85.0	ambient	78.0	alternative rock	63.0	rock	53.0
Butthole Surfers	alternative	100.0	noise rock	99.0	punk	91.0	psychedelic	89.0	rock	63.0
The Lemonheads	alternative	100.0	indie	100.0	alternative rock	79.0	seen live	76.0	rock	74.0
Психея	alternative	100.0	cybercore	82.0	russian alternative	54.0	Nu-metal	41.0	russian	40.0
Kill Hannah	alternative	100.0	alternative rock	86.0	rock	82.0	seen live	72.0	indie	56.0
Jane Air	alternative	100.0	russian alternative	62.0	emocore	57.0	russian	43.0	Nu-metal	42.0
Chumbawamba	alternative	100.0	pop	79.0	punk	74.0	anarcho-punk	71.0	rock	69.0
Gin Blossoms	alternative	100.0	rock	94.0	alternative rock	87.0	90s	86.0	indie	34.0
7раса	alternative	100.0	Grunge	94.0	post-grunge	86.0	russian alternative	53.0	russian	48.0
Frank Black	alternative	100.0	rock	86.0	indie	84.0	seen live	67.0	indie rock	66.0
Marcy Playground	alternative	100.0	alternative rock	86.0	rock	79.0	90s	60.0	indie	44.0
New Radicals	alternative	100.0	rock	93.0	90s	82.0	alternative rock	73.0	pop	65.0
Soul Coughing	alternative	100.0	rock	67.0	indie	65.0	alternative rock	56.0	jazz	39.0
Toad The Wet Sprocket	alternative	100.0	90s	81.0	alternative rock	76.0	rock	73.0	indie	42.0
Tracktor Bowling	alternative	100.0	russian alternative	59.0	female vocalists	56.0	Nu-metal	50.0	russian	47.0
Harvey Danger	alternative	100.0	rock	100.0	indie	85.0	alternative rock	68.0	indie rock	58.0
Waglewski Fisz Emade	alternative	100.0	polish	79.0	experimental	58.0	blues	57.0	rock	44.0
Soulsavers	alternative	100.0	trip-hop	88.0	electronic	75.0	indie rock	57.0	gospel	45.0
David Byrne	alternative	100.0	new wave	96.0	singer-songwriter	80.0	rock	78.0	seen live	65.0
Louis XIV	indie	100.0	indie rock	95.0	seen live	92.0	rock	65.0	alternative	62.0
Youth Group	indie	100.0	indie rock	74.0	australian	59.0	seen live	47.0	alternative	46.0
Banda do Mar	indie	100.0	brazilian	94.0	mpb	78.0	indie rock	46.0	Marcelo Camelo DEUS	23.0
The Sunshine Underground	indie	100.0	indie rock	89.0	british	70.0	seen live	66.0	alternative	47.0
Pete Yorn & Scarlett Johansson	indie	100.0	folk	89.0	alternative	72.0	indie pop	56.0	female vocalists	50.0
Vivendo do Ócio	indie	100.0	brazilian	90.0	indie rock	78.0	rock	77.0	alternative	63.0
Barcelona	indie	100.0	indie pop	66.0	electronic	47.0	synthpop	43.0	Geeky	22.0
Q and Not U	indie	100.0	indie rock	79.0	post-hardcore	61.0	seen live	51.0	post-punk	45.0
V V Brown	indie	100.0	pop	79.0	female vocalists	79.0	alternative	58.0	doo wop indie	43.0
The Spinto Band	indie	100.0	seen live	95.0	indie rock	68.0	indie pop	65.0	alternative	41.0
X Ambassadors	indie	100.0	pop	67.0	indie pop	67.0	electronic	60.0	seen live	54.0
Jets to Brazil	indie	100.0	emo	92.0	indie rock	88.0	rock	50.0	alternative	42.0
Brazzaville	indie	100.0	Bossa Nova	77.0	indie rock	57.0	post-rock	39.0	rock	34.0
Boy Kill Boy	indie	100.0	indie rock	94.0	british	68.0	alternative	51.0	rock	47.0
Avi Buffalo	indie	100.0	indie pop	94.0	seen live	72.0	indie rock	67.0	Lo-Fi	52.0
Milo Greene	indie	100.0	folk	89.0	acoustic	67.0	indie folk	65.0	seen live	41.0
Is Tropical	indie	100.0	electronic	95.0	new rave	76.0	british	68.0	Lo-Fi	53.0
Ivy	indie	100.0	female vocalists	76.0	indie pop	72.0	chillout	63.0	pop	44.0
Dale Earnhardt Jr. Jr.	indie	100.0	electropop	90.0	electronic	74.0	seen live	53.0	pop	44.0
Ambulance Ltd	indie	100.0	indie rock	73.0	alternative	35.0	rock	30.0	indie pop	29.0
MisterWives	indie	100.0	pop	86.0	alternative	43.0	soul	29.0	indie pop	29.0
Pomplamoose	indie	100.0	female vocalists	77.0	indie pop	70.0	singer-songwriter	50.0	soul	37.0
Maritime	indie	100.0	indie pop	74.0	indie rock	69.0	seen live	65.0	alternative	37.0
The Most Serene Republic	indie	100.0	Canadian	90.0	indie rock	71.0	seen live	65.0	indie pop	41.0
The Vaselines	indie	100.0	indie pop	94.0	Scottish	75.0	twee	69.0	alternative	52.0
Alpine	indie	100.0	australian	64.0	alternative	37.0	synthpop	35.0	synth pop	34.0
Delays	indie	100.0	britpop	54.0	alternative	50.0	seen live	46.0	indie rock	42.0
Oren Lavie	indie	100.0	acoustic	94.0	folk	82.0	alternative	63.0	singer-songwriter	58.0
Moptop	indie	100.0	rock	100.0	brazilian	100.0	indie rock	92.0	alternative	76.0
Brighten	indie	100.0	seen live	97.0	indie rock	92.0	pop punk	77.0	alternative	45.0
Kyla La Grange	indie	100.0	folk	87.0	female vocalists	81.0	singer-songwriter	70.0	acoustic	43.0
The New Amsterdams	indie	100.0	acoustic	61.0	indie rock	54.0	emo	53.0	seen live	49.0
The Delgados	indie	100.0	indie rock	85.0	Scottish	67.0	alternative	53.0	indie pop	46.0
The Holloways	indie	100.0	british	85.0	indie rock	77.0	seen live	60.0	britpop	46.0
Jonathan Richman	indie	100.0	singer-songwriter	100.0	seen live	93.0	proto-punk	59.0	kickasstic	59.0
Zee Avi	indie	100.0	singer-songwriter	97.0	female vocalist	83.0	female vocalists	55.0	alternative	52.0
Cornershop	indie	100.0	britpop	87.0	alternative	70.0	british	52.0	rock	44.0
Oh No Oh My	indie	100.0	indie pop	68.0	indie rock	40.0	seen live	28.0	folk	18.0
Say Hi	indie	100.0	indie pop	75.0	electronic	44.0	indie rock	38.0	seen live	31.0
Orson	indie	100.0	rock	77.0	indie rock	72.0	alternative	43.0	indie pop	39.0
Paper Route	indie	100.0	seen live	95.0	indie rock	80.0	electronic	78.0	post-rock	55.0
Throwing Muses	indie	100.0	alternative	94.0	4ad	79.0	female vocalists	75.0	indie rock	68.0
Sheppard	indie	100.0	folk	74.0	seen live	67.0	australian	60.0	pop	47.0
You Say Party! We Say Die!	indie	100.0	indie rock	72.0	female vocalists	64.0	Canadian	64.0	post-punk	61.0
ClickClickDecker	indie	100.0	singer-songwriter	86.0	german	86.0	seen live	85.0	deutsch	48.0
The Mowgli's	indie	100.0	folk	70.0	rock	50.0	alternative	47.0	seen live	34.0
Elefant	indie	100.0	indie rock	81.0	alternative	48.0	rock	37.0	alternative rock	33.0
Swim Deep	indie	100.0	dream pop	91.0	indie rock	73.0	seen live	60.0	surf rock	52.0
I Can Make a Mess Like Nobody's Business	indie	100.0	acoustic	81.0	emo	60.0	alternative	44.0	singer-songwriter	41.0
Lovedrug	indie	100.0	seen live	71.0	indie rock	60.0	rock	51.0	alternative	49.0
Nine Black Alps	indie	100.0	indie rock	87.0	rock	73.0	alternative	67.0	seen live	66.0
Ima Robot	indie	100.0	electronic	79.0	alternative	70.0	indie rock	59.0	rock	54.0
Supersubmarina	indie	100.0	spanish	78.0	rock	51.0	alternative	46.0	pop rock	45.0
Gypsy & The Cat	indie	100.0	electronic	97.0	australian	78.0	electropop	75.0	indie pop	70.0
Supercombo	indie	100.0	brazilian	83.0	rock	74.0	indie rock	70.0	powerpop	70.0
The Bees	indie	100.0	indie rock	63.0	alternative	40.0	seen live	39.0	rock	38.0
Hockey	indie	100.0	electronic	58.0	alternative	57.0	new wave	51.0	indie rock	49.0
Luna	indie	100.0	dream pop	93.0	indie rock	76.0	indie pop	64.0	seen live	38.0
Wild Belle	indie	100.0	reggae	68.0	female vocalists	62.0	indie pop	58.0	seen live	45.0
Deluxe	indie	100.0	spanish indie pop	77.0	spanish	67.0	indie pop	62.0	pop	45.0
Iván Ferreiro	indie	100.0	spanish	83.0	pop	57.0	singer-songwriter	44.0	indie pop	38.0
Harlem Shakes	indie	100.0	indie rock	98.0	indie pop	73.0	rock	43.0	new york	41.0
VACATIONER	indie	100.0	chillout	63.0	electronic	40.0	seen live	35.0	american	26.0
Chinawoman	indie	100.0	Lo-Fi	85.0	experimental	78.0	female vocalists	76.0	Canadian	44.0
Youngblood Hawke	indie	100.0	electronic	85.0	indie pop	82.0	pop	56.0	alternative	50.0
Faded Paper Figures	indie	100.0	electronic	73.0	indie pop	63.0	indietronica	52.0	pop	25.0
Hop Along	indie	100.0	folk	82.0	seen live	63.0	female vocalists	57.0	indie rock	50.0
Nightmare Of You	indie	100.0	seen live	69.0	indie rock	67.0	rock	45.0	alternative	44.0
Cajun Dance Party	indie	100.0	british	84.0	indie rock	58.0	indie pop	52.0	I was listening to this artist waaaaay before you because I try out new music BEFORE its hyped by the media	23.0
Vincent Gallo	indie	100.0	Lo-Fi	97.0	singer-songwriter	89.0	experimental	87.0	ambient	75.0
The Rosebuds	indie	100.0	indie rock	84.0	seen live	73.0	indie pop	62.0	alternative	37.0
The Long Winters	indie	100.0	seen live	85.0	indie rock	72.0	alternative	47.0	indie pop	39.0
Landon Pigg	indie	100.0	singer-songwriter	98.0	indie pop	60.0	alternative	50.0	male vocalists	49.0
Little Man Tate	indie	100.0	indie rock	85.0	british	70.0	seen live	69.0	britpop	47.0
Los Piratas	indie	100.0	spanish	77.0	pop	73.0	spanish indie pop	70.0	rock	56.0
Yellow Ostrich	indie	100.0	folk	56.0	american	52.0	seen live	45.0	acoustic	45.0
Pompeya	indie	100.0	new wave	82.0	russian	75.0	indie rock	57.0	seen live	53.0
Karate	indie	100.0	indie rock	84.0	post-rock	84.0	jazz	72.0	rock	35.0
Simian	indie	100.0	electronic	94.0	indie rock	67.0	indie pop	48.0	electronica	46.0
Bad Books	indie	100.0	folk	98.0	indie rock	75.0	folk rock	63.0	alternative	45.0
Page France	indie	100.0	indie pop	98.0	folk	95.0	seen live	71.0	Lo-Fi	48.0
Enon	indie	100.0	seen live	67.0	indie rock	66.0	electronic	47.0	indie pop	40.0
Antsy Pants	indie	100.0	anti-folk	82.0	Lo-Fi	61.0	alternative	57.0	twee	31.0
Between the Trees	indie	100.0	indie rock	87.0	piano rock	79.0	rock	60.0	emo	52.0
Saint Motel	indie	100.0	indie rock	67.0	seen live	41.0	american	34.0	los angeles	34.0
Efek Rumah Kaca	indie	100.0	indonesian	68.0	alternative	52.0	indonesia	42.0	pop	39.0
Deas Vail	indie	100.0	indie rock	62.0	alternative	57.0	christian	45.0	emo	30.0
Last Dinosaurs	indie	100.0	indie rock	70.0	australian	68.0	rock	49.0	seen live	35.0
Fallulah	indie	100.0	indie pop	99.0	danish	84.0	alternative	74.0	indietronica	50.0
White Rose Movement	indie	100.0	post-punk	93.0	electronic	88.0	new wave	67.0	indie rock	62.0
The House of Love	indie	100.0	shoegaze	95.0	80s	68.0	indie pop	67.0	alternative	65.0
stellastarr*	indie	100.0	indie rock	89.0	alternative	48.0	new wave	46.0	seen live	40.0
Museum	indie	100.0	indie rock	93.0	alternative	73.0	alternative rock	65.0	german	65.0
22-20s	indie	100.0	indie rock	93.0	rock	85.0	british	71.0	alternative	56.0
The Like	indie	100.0	female vocalists	94.0	indie rock	74.0	seen live	66.0	alternative	59.0
Sidonie	indie	100.0	spanish indie pop	72.0	spanish	68.0	indie pop	58.0	psychedelic	47.0
Deptford Goth	electronic	100.0	indie	100.0	ambient	77.0	Lo-Fi	77.0	british	45.0
Brad Sucks	indie	100.0	rock	89.0	indie rock	75.0	alternative rock	68.0	creative commons	63.0
Josef Salvat	indie	100.0	experimental	87.0	indie pop	87.0	pop	79.0	alternative	70.0
Мои Ракеты Вверх	indie	100.0	indie rock	73.0	post-grunge	62.0	russian	57.0	alternative	44.0
Bis	indie	100.0	electronic	90.0	indie pop	70.0	Scottish	70.0	J-rock	68.0
Urban Cone	indie	100.0	swedish	80.0	electronic	74.0	seen live	45.0	dance	33.0
Wakey!Wakey!	indie	100.0	piano	74.0	alternative	67.0	indie rock	57.0	rock	47.0
Sir Sly	indie	100.0	electronic	97.0	indie rock	67.0	rock	30.0	seen live	26.0
Joan of Arc	indie	100.0	indie rock	91.0	experimental	84.0	post-rock	71.0	kinsella	46.0
The Elected	indie	100.0	seen live	66.0	indie rock	56.0	Alt-country	46.0	indie pop	42.0
Papercuts	indie	100.0	indie pop	87.0	folk	70.0	indie folk	52.0	seen live	47.0
VHS or Beta	indie	100.0	electronic	72.0	indie rock	58.0	seen live	57.0	dance	43.0
Soley	indie	100.0	reggae	64.0	icelandic	58.0	female vocalists	53.0	madagascar	53.0
Earlimart	indie	100.0	indie rock	94.0	indie pop	60.0	alternative	49.0	rock	35.0
Frog Eyes	indie	100.0	seen live	87.0	experimental	83.0	Canadian	68.0	indie rock	61.0
Heatmiser	indie	100.0	indie rock	98.0	rock	77.0	alternative	77.0	elliott smith	37.0
SAKURA	indie	100.0	alternative	76.0	alternative rock	57.0	russian	52.0	russian alternative	48.0
陳綺貞	indie	100.0	indie pop	69.0	chinese	63.0	taiwan	63.0	folk	61.0
Test Icicles	indie	100.0	experimental	77.0	indie rock	64.0	alternative	61.0	punk	56.0
The Limousines	indie	100.0	electronic	91.0	experimental	60.0	electronica	52.0	electropop	47.0
Divine Fits	indie	100.0	indie rock	86.0	electronic	60.0	seen live	60.0	alternative	49.0
Gardens & Villa	indie	100.0	shoegaze	83.0	seen live	80.0	glo-fi	65.0	electronic	62.0
JEFF the Brotherhood	indie	100.0	kickasstic	84.0	Nashville	83.0	pay attention	74.0	Recommended	73.0
Tobias Jesso Jr.	indie	100.0	singer-songwriter	100.0	seen live	75.0	indie pop	44.0	pop	32.0
Dorian	indie	100.0	indie pop	91.0	seen live	75.0	spanish indie pop	75.0	spanish	67.0
Jaymes Young	indie	100.0	alternative	70.0	indie rock	68.0	Experimental Rock	68.0	rock	64.0
Bronze Radio Return	indie	100.0	blues	57.0	rock	48.0	american	40.0	indie rock	22.0
Moving Units	indie	100.0	indie rock	79.0	electronic	66.0	dance	43.0	alternative	39.0
The Rumble Strips	indie	100.0	seen live	90.0	british	84.0	indie rock	80.0	alternative	45.0
On-The-Go	indie	100.0	russian	77.0	indie rock	75.0	britpop	49.0	seen live	47.0
Enjambre	indie	100.0	indie rock	82.0	alternative	78.0	garage rock revival	52.0	Indie-Rock	30.0
Hefner	indie	100.0	indie pop	83.0	indie rock	43.0	twee	41.0	rock	30.0
Gruff Rhys	indie	100.0	seen live	88.0	welsh	86.0	singer-songwriter	79.0	indie pop	68.0
Kevin Drew	indie	100.0	Canadian	99.0	indie rock	79.0	seen live	70.0	indie pop	55.0
Tópaz	indie	100.0	brazilian rock	89.0	rock gaucho	89.0	rio grande do sul	60.0	brazilian	52.0
Princess Chelsea	indie	100.0	indie pop	89.0	female vocalists	65.0	New Zealand	62.0	pop	42.0
The Little Ones	indie	100.0	seen live	98.0	indie pop	93.0	indie rock	53.0	alternative	46.0
The 88	indie	100.0	indie rock	83.0	alternative	56.0	rock	55.0	indie pop	42.0
Tally Hall	indie	100.0	seen live	67.0	alternative	67.0	wonky	46.0	rock	42.0
The Reindeer Section	indie	100.0	indie rock	63.0	Scottish	57.0	alternative	44.0	indie pop	44.0
Rainer Maria	indie	100.0	indie rock	82.0	emo	67.0	seen live	63.0	female vocalists	53.0
Mansions	indie	100.0	singer-songwriter	92.0	acoustic	70.0	alternative	61.0	seen live	57.0
The Leisure Society	indie	100.0	folk	90.0	british	69.0	seen live	65.0	indie pop	54.0
The Evens	indie	100.0	indie rock	88.0	dischord	64.0	post-punk	63.0	seen live	54.0
The New Raemon	indie	100.0	singer-songwriter	89.0	spanish indie pop	85.0	pop	81.0	indie pop	77.0
South	indie	100.0	indie rock	73.0	alternative	56.0	britpop	53.0	rock	43.0
Kind of Like Spitting	indie	100.0	singer-songwriter	63.0	indie rock	60.0	seen live	44.0	emo	42.0
Cherub	electronic	100.0	indie	100.0	seen live	86.0	alternative	58.0	electropop	43.0
Fences	indie	100.0	acoustic	91.0	indie folk	71.0	folk	69.0	Mellow	35.0
Giant Drag	indie	100.0	female vocalists	92.0	indie rock	82.0	alternative	53.0	seen live	52.0
Gorky's Zygotic Mynci	indie	100.0	welsh	83.0	indie pop	60.0	folk	57.0	indie rock	35.0
Lazlo Bane	indie	100.0	rock	93.0	alternative	77.0	scrubs	71.0	Soundtrack	57.0
Porter	indie	100.0	experimental	78.0	alternative	63.0	rock	45.0	mexico	45.0
Larrikin Love	indie	100.0	british	71.0	indie rock	65.0	seen live	52.0	alternative	41.0
Le Loup	indie	100.0	experimental	91.0	psychedelic	83.0	seen live	71.0	indie pop	59.0
The Ordinary Boys	indie	100.0	indie rock	69.0	british	55.0	ska	50.0	seen live	44.0
La Habitación Roja	indie	100.0	spanish indie pop	75.0	indie pop	67.0	spanish	50.0	pop	38.0
Jim Noir	indie	100.0	indie pop	88.0	singer-songwriter	78.0	british	58.0	Lo-Fi	58.0
TOPS	indie	100.0	indie pop	78.0	seen live	67.0	tops	45.0	montreal	39.0
Black Box Recorder	indie	100.0	female vocalists	79.0	british	64.0	indie pop	63.0	britpop	53.0
Choir of Young Believers	indie	100.0	danish	91.0	seen live	88.0	folk	68.0	singer-songwriter	26.0
Polaris	indie	100.0	alternative	91.0	indie rock	79.0	japanese	65.0	pete and pete	57.0
White Shoes & The Couples Company	indie	100.0	indonesian	94.0	indie pop	89.0	Retro	72.0	female vocalists	56.0
The Real Tuesday Weld	indie	100.0	cabaret	99.0	british	86.0	Avant-Garde	83.0	alternative	60.0
Swan Lake	indie	100.0	indie rock	94.0	Canadian	94.0	Lo-Fi	55.0	alternative	35.0
The Twang	indie	100.0	indie rock	89.0	british	73.0	seen live	70.0	rock	35.0
Torres	indie	100.0	folk	97.0	alternative	81.0	seen live	65.0	indie pop	65.0
Bromheads Jacket	indie	100.0	seen live	94.0	indie rock	88.0	british	74.0	Garage Rock	61.0
The Sunday Drivers	indie	100.0	indie pop	71.0	spanish	67.0	spanish indie pop	46.0	indie rock	45.0
Colin Meloy	indie	100.0	singer-songwriter	89.0	seen live	83.0	folk	62.0	acoustic	61.0
The One AM Radio	indie	100.0	electronic	68.0	indie pop	59.0	seen live	52.0	Lo-Fi	52.0
Cherry Ghost	indie	100.0	indie rock	68.0	british	67.0	seen live	62.0	indie pop	53.0
A Silent Film	indie	100.0	indie rock	90.0	post-punk	78.0	alternative	67.0	rock	60.0
The Paddingtons	indie	100.0	indie rock	93.0	british	73.0	rock	48.0	seen live	44.0
Eugene McGuinness	seen live	100.0	indie	100.0	british	90.0	singer-songwriter	82.0	folk	55.0
The Dead 60s	indie	100.0	indie rock	88.0	seen live	86.0	ska	72.0	alternative	53.0
Little Green Cars	indie	100.0	irish	90.0	seen live	74.0	folk	58.0	dublin	48.0
Mellowdrone	indie	100.0	indie rock	86.0	alternative	69.0	rock	61.0	electronic	43.0
Canterbury	indie	100.0	seen live	91.0	alternative	79.0	rock	69.0	british	69.0
Jeremy Messersmith	indie	100.0	singer-songwriter	86.0	folk	84.0	acoustic	67.0	Minnesota	33.0
Company Of Thieves	indie	100.0	female vocalists	79.0	chicago	75.0	alternative	70.0	indie pop	68.0
Морэ & Рэльсы	indie	100.0	indie rock	78.0	Pop-punk	67.0	russian	65.0	punk rock	44.0
The Lighthouse and the Whaler	indie	100.0	indie pop	100.0	dream pop	66.0	folk	62.0	seen live	39.0
American Music Club	indie	100.0	Alt-country	91.0	indie rock	80.0	sadcore	75.0	slowcore	56.0
El Columpio Asesino	indie	100.0	spanish indie pop	84.0	spanish	70.0	indie pop	54.0	seen live	45.0
Grand Archives	indie	100.0	indie rock	82.0	slowcore	60.0	seen live	52.0	indie pop	48.0
The Wonder Stuff	indie	100.0	britpop	69.0	seen live	58.0	alternative	58.0	british	56.0
The Indelicates	indie	100.0	indie pop	69.0	british	61.0	seen live	55.0	indie rock	50.0
Обе Две	indie	100.0	russian	99.0	female vocalists	89.0	Pop-Rock	73.0	seen live	34.0
Snowmine	indie	100.0	psychedelic	70.0	indie pop	62.0	ambient	60.0	Brooklyn	24.0
Natalie Prass	indie	100.0	seen live	65.0	female vocalists	52.0	americana	52.0	Alt-country	46.0
Mikroboy	indie	100.0	german	99.0	seen live	87.0	Indietronic	57.0	alternative	50.0
Nizlopi	indie	100.0	acoustic	89.0	seen live	73.0	british	62.0	Acoustic Rock	50.0
Puggy	indie	100.0	seen live	75.0	rock	58.0	Acoustic Rock	58.0	belgian	45.0
Aloha	indie	100.0	indie rock	65.0	seen live	61.0	post-rock	31.0	indie pop	24.0
The Love Language	indie	100.0	Lo-Fi	95.0	indie rock	87.0	seen live	53.0	rock	50.0
JJ72	indie	100.0	seen live	76.0	alternative	64.0	indie rock	63.0	irish	56.0
+/-	indie	100.0	electronic	68.0	indie rock	65.0	seen live	57.0	indie pop	44.0
The Airborne Toxic Event	indie rock	100.0	indie	96.0	rock	58.0	seen live	42.0	american	37.0
Yuck	indie rock	100.0	shoegaze	89.0	Lo-Fi	88.0	seen live	64.0	alternative	52.0
Albert Hammond, Jr.	indie rock	100.0	indie	97.0	seen live	95.0	singer-songwriter	79.0	alternative	63.0
The Joy Formidable	indie rock	100.0	seen live	80.0	indie	73.0	female vocalists	65.0	british	63.0
Born Ruffians	indie rock	100.0	Canadian	90.0	seen live	89.0	indie	77.0	alternative	54.0
The Courteeners	indie rock	100.0	indie	97.0	british	92.0	seen live	64.0	Manchester	49.0
Vetusta Morla	indie rock	100.0	indie	100.0	spanish	76.0	Spanish Rock	43.0	pop rock	34.0
We Were Promised Jetpacks	indie rock	100.0	seen live	86.0	indie	70.0	Scottish	68.0	rock	43.0
The Boxer Rebellion	indie rock	100.0	indie	85.0	british	69.0	alternative	67.0	rock	54.0
The Dismemberment Plan	indie rock	100.0	indie	82.0	post-punk	64.0	alternative	40.0	seen live	37.0
White Rabbits	indie rock	100.0	indie	79.0	seen live	77.0	alternative	54.0	rock	44.0
Superchunk	indie rock	100.0	indie	61.0	seen live	45.0	alternative	40.0	post-punk	37.0
The Automatic	indie rock	100.0	indie	100.0	british	63.0	seen live	62.0	alternative	56.0
White Denim	seen live	100.0	indie rock	100.0	Garage Rock	77.0	indie	66.0	rock	59.0
Atlas Genius	indie rock	100.0	electronic	85.0	indie	77.0	synthpop	73.0	australian	59.0
Julian Plenti	indie rock	100.0	post-punk	82.0	indie	77.0	alternative	64.0	interpol	35.0
Carolina Liar	indie rock	100.0	alternative rock	89.0	indie	86.0	alternative	72.0	rock	59.0
New Politics	indie rock	100.0	alternative rock	97.0	alternative	79.0	rock	66.0	rap rock	45.0
Milburn	indie rock	100.0	indie	97.0	british	73.0	rock	41.0	Sheffield	35.0
The Cinematics	indie rock	100.0	indie	90.0	british	65.0	alternative	59.0	seen live	51.0
Wolf Alice	indie rock	100.0	indie	62.0	seen live	60.0	british	56.0	alternative rock	38.0
Johnny Foreigner	indie rock	100.0	seen live	81.0	indie	76.0	british	66.0	alternative	40.0
Archers of Loaf	indie rock	100.0	indie	58.0	Lo-Fi	54.0	alternative	36.0	North Carolina	27.0
Cymbals Eat Guitars	indie rock	100.0	seen live	89.0	shoegaze	82.0	indie	63.0	noise rock	55.0
The Duke Spirit	indie rock	100.0	indie	94.0	Garage Rock	77.0	seen live	73.0	british	72.0
Pete and the Pirates	indie rock	100.0	indie	90.0	seen live	84.0	british	81.0	indie pop	47.0
Catfish and The Bottlemen	indie rock	100.0	british	60.0	indie	49.0	seen live	46.0	rock	40.0
Young Knives	indie rock	100.0	indie	94.0	british	79.0	alternative	48.0	rock	46.0
French Kicks	indie rock	100.0	indie	83.0	seen live	82.0	indie pop	39.0	post-punk	32.0
Ramona Falls	indie rock	100.0	experimental	93.0	indie	82.0	freak folk	53.0	Avant-Garde	39.0
Speedy Ortiz	indie rock	100.0	seen live	66.0	Grunge	61.0	noise rock	59.0	indie	57.0
J Mascis	indie rock	100.0	indie	89.0	singer-songwriter	84.0	seen live	62.0	alternative rock	55.0
Meg Myers	indie rock	100.0	female vocalists	90.0	indie pop	80.0	rock	67.0	singer-songwriter	67.0
The Constantines	indie rock	100.0	indie	92.0	seen live	90.0	Canadian	87.0	rock	59.0
Hooray For Earth	indie rock	100.0	indie	79.0	post-punk	74.0	chillwave	59.0	electronic	54.0
Tribes	indie rock	100.0	british	89.0	indie	78.0	seen live	56.0	rock	39.0
Operator Please	indie rock	100.0	seen live	94.0	australian	89.0	indie	89.0	female vocalists	67.0
People In Planes	indie rock	100.0	indie	83.0	rock	77.0	alternative rock	77.0	alternative	68.0
Bad Suns	indie rock	100.0	indie	76.0	rock	32.0	space rock	32.0	desert rock	32.0
A Great Big Pile Of Leaves	indie rock	100.0	seen live	71.0	indie	60.0	experimental	41.0	rock	36.0
2:54	indie rock	100.0	shoegaze	99.0	indie	92.0	alternative rock	79.0	female vocalists	76.0
Morning Parade	indie rock	100.0	indie	78.0	alternative	75.0	seen live	48.0	electronic	40.0
Mona	indie rock	100.0	rock	78.0	indie	71.0	alternative	60.0	seen live	58.0
Tired Pony	indie rock	100.0	alternative	98.0	country	78.0	indie	74.0	gary lightbody	27.0
Quasi	indie rock	100.0	indie	99.0	seen live	84.0	indie pop	59.0	portland	52.0
Wild Flag	indie rock	100.0	seen live	88.0	female vocalists	62.0	rock	56.0	indie	52.0
Funeral Party	indie rock	100.0	post-punk	95.0	dance punk	75.0	indie	66.0	dance-punk	42.0
Eleanor Friedberger	indie rock	100.0	female vocalists	85.0	alternative	73.0	seen live	62.0	indie	62.0
EL VY	indie rock	100.0	seen live	60.0	rock	60.0	indie	50.0	alternative	40.0
Calla	indie rock	100.0	post-rock	81.0	indie	78.0	seen live	43.0	experimental	40.0
The Crookes	indie rock	100.0	indie pop	90.0	indie	88.0	british	88.0	seen live	43.0
The Young Veins	indie rock	100.0	indie	74.0	alternative	70.0	rock	66.0	folk	52.0
The Anniversary	indie rock	100.0	indie	94.0	emo	92.0	seen live	67.0	indie pop	44.0
Twin Peaks	rock	100.0	indie rock	100.0	Garage Rock	74.0	seen live	64.0	industrial	53.0
Howler	indie rock	100.0	Garage Rock	89.0	indie	81.0	alternative	47.0	seen live	42.0
Robert Pollard	indie rock	100.0	indie	93.0	Lo-Fi	93.0	singer-songwriter	63.0	seen live	33.0
Big Scary	indie rock	100.0	australian	100.0	seen live	88.0	alternative	69.0	rock	63.0
Snowden	indie rock	100.0	indie	83.0	shoegaze	82.0	post-punk	76.0	seen live	67.0
Drowners	indie rock	100.0	indie	96.0	alternative	63.0	new wave	50.0	indie pop	30.0
The Parlotones	indie rock	100.0	south african	82.0	indie	71.0	rock	49.0	seen live	31.0
Jason Lytle	indie rock	100.0	singer-songwriter	76.0	indie	50.0	seen live	47.0	Grandaddy	26.0
The Fashion	indie rock	100.0	indie	95.0	alternative	74.0	danish	66.0	rock	50.0
Radio 4	indie rock	100.0	indie	100.0	post-punk	84.0	dance-punk	77.0	seen live	75.0
Crash Kings	indie rock	100.0	piano rock	91.0	rock	80.0	alternative rock	79.0	alternative	62.0
Selvagens À Procura de Lei	indie rock	100.0	indie	95.0	brazilian	60.0	fortaleza	45.0	rock	40.0
Thee More Shallows	indie rock	100.0	indie	92.0	experimental	84.0	slowcore	78.0	post-rock	64.0
Scanners	indie rock	100.0	indie	97.0	female vocalists	60.0	seen live	55.0	alternative	46.0
Rock Kills Kid	indie rock	100.0	indie	96.0	rock	77.0	alternative	77.0	alternative rock	56.0
Sleeper Agent	indie rock	100.0	Garage Rock	80.0	post-punk	57.0	rock	50.0	indie	47.0
The Halo Benders	indie rock	100.0	Lo-Fi	92.0	indie	84.0	k records	49.0	alternative	44.0
The Lonely Forest	indie rock	100.0	indie	66.0	seen live	60.0	rock	54.0	alternative	44.0
The Answering Machine	indie rock	100.0	indie	95.0	british	81.0	seen live	53.0	indie pop	53.0
Arthur Beatrice	indie rock	100.0	indie	93.0	british	93.0	indie pop	85.0	seen live	47.0
Cambian	instrumental	100.0	indie rock	100.0	blues	100.0	\N	0.0	\N	0.0
Lifter Puller	indie rock	100.0	rock	58.0	Minnesota	54.0	indie	43.0	bar rock	25.0
Fother Muckers	indie rock	100.0	chile	89.0	rock chileno	73.0	indie	56.0	rock n roll	50.0
Shocking Pinks	indie rock	100.0	shoegaze	100.0	New Zealand	70.0	indie	60.0	dream pop	51.0
The Zolas	indie rock	100.0	indie	83.0	Canadian	83.0	piano rock	53.0	piano	31.0
The Ponys	indie rock	100.0	seen live	83.0	Garage Rock	75.0	indie	64.0	chicago	33.0
Sakin	indie rock	100.0	turkish rock	78.0	indie	59.0	turkish	49.0	rock	33.0
All Get Out	indie rock	100.0	indie	75.0	seen live	55.0	rock	42.0	folk	38.0
Gaz Coombes	indie	100.0	rock	100.0	indie rock	100.0	seen live	89.0	alternative	67.0
The Cliks	indie rock	100.0	Canadian	92.0	indie	82.0	rock	75.0	female vocalists	68.0
Silkworm	indie rock	100.0	post-punk	63.0	indie	53.0	Lo-Fi	44.0	rock	28.0
Paws	indie	100.0	indie rock	100.0	Lo-Fi	100.0	seen live	86.0	Scottish	72.0
Air Traffic Controller	indie rock	100.0	indie	75.0	indie pop	75.0	pop	38.0	All	25.0
Dogs	indie rock	100.0	indie	98.0	seen live	84.0	british	66.0	rock	54.0
Will Butler	seen live	100.0	indie rock	100.0	indie	47.0	alternative	31.0	Canadian	31.0
Broken Social Scene Presents: Brendan Canning	indie rock	100.0	Canadian	100.0	experimental	96.0	indie	88.0	arts and crafts	59.0
The Brobecks	indie rock	100.0	indie pop	80.0	indie	66.0	piano rock	52.0	Salt Lake	29.0
Paper Rival	indie rock	100.0	indie	90.0	rock	50.0	seen live	43.0	alternative	40.0
Lissy Trullie	indie rock	100.0	indie	97.0	female vocalists	67.0	indie pop	59.0	alternative	55.0
Portastatic	indie rock	100.0	indie	92.0	seen live	69.0	Lo-Fi	63.0	indie pop	59.0
Helium	indie rock	100.0	indie	71.0	female vocalists	62.0	noise pop	59.0	shoegaze	55.0
Chastity Belt	indie rock	100.0	indie	85.0	post-punk	85.0	seattle	54.0	seen live	39.0
The Departure	indie rock	100.0	indie	84.0	post-punk	76.0	british	62.0	rock	43.0
Brick+Mortar	indie	100.0	indie rock	100.0	psychedelic	72.0	seen live	43.0	alternative	43.0
Royal Bangs	seen live	100.0	indie rock	100.0	indie	52.0	math pop	38.0	rock	35.0
The Amps	indie rock	100.0	indie	91.0	alternative	82.0	female vocalists	66.0	kim deal	62.0
LVL UP	indie rock	100.0	Garage Rock	88.0	seen live	50.0	indie	50.0	indie pop	25.0
Pompeii	indie rock	100.0	indie	94.0	alternative	50.0	emo	46.0	rock	32.0
Brendan Canning	indie rock	100.0	Canadian	90.0	indie	71.0	Broken social scene	44.0	rock	38.0
Nickel Eye	indie	100.0	indie rock	100.0	singer-songwriter	93.0	folk	66.0	Garage Rock	64.0
The Little Flames	indie rock	100.0	indie	80.0	british	80.0	female vocalists	59.0	liverpool	37.0
Cazals	indie rock	100.0	indie	95.0	british	81.0	seen live	50.0	rock	32.0
Skaters	punk	100.0	indie rock	100.0	indie	84.0	seen live	67.0	noise	59.0
Atomic Tom	indie rock	100.0	indie	73.0	rock	66.0	alternative	64.0	pop	35.0
The Metros	indie	100.0	indie rock	100.0	british	92.0	northern soul	49.0	seen live	44.0
Three Mile Pilot	indie rock	100.0	indie	49.0	san diego	34.0	duyster	24.0	rock	23.0
Harrisons	indie rock	100.0	indie	92.0	british	82.0	britpop	50.0	Sheffield	43.0
A Toys Orchestra	indie rock	100.0	italian	86.0	alternative	49.0	seen live	47.0	indie	43.0
Dick Diver	indie rock	100.0	indie	70.0	post-punk	62.0	seen live	47.0	australian	47.0
The Tunics	indie rock	100.0	indie	76.0	british	61.0	britpop	52.0	rock	38.0
Velocity Girl	indie rock	100.0	indie	96.0	indie pop	89.0	alternative	64.0	female vocalists	61.0
Hollerado	indie rock	100.0	Canadian	100.0	seen live	66.0	alternative rock	58.0	indie	55.0
No	indie rock	100.0	indie	95.0	punk	74.0	seen live	37.0	hardcore	37.0
The Deadly Syndrome	indie rock	100.0	indie	88.0	seen live	63.0	american	34.0	California	30.0
Blood On the Wall	indie rock	100.0	indie	73.0	seen live	64.0	post-punk	62.0	Lo-Fi	58.0
No Knife	indie rock	100.0	indie	76.0	emo	48.0	post-hardcore	44.0	math rock	42.0
Hunter Hunted	indie	100.0	indie rock	100.0	indie pop	34.0	anthem indie	34.0	electropop	23.0
Delorentos	indie rock	100.0	irish	100.0	indie	78.0	seen live	67.0	ireland	45.0
Pilot Speed	indie rock	100.0	Canadian	97.0	indie	91.0	alternative	63.0	rock	60.0
The Broken West	seen live	100.0	indie rock	100.0	indie	92.0	indie pop	59.0	alternative	42.0
Wussy	indie rock	100.0	indie	80.0	rock	74.0	Cincinnati	74.0	seen live	67.0
The Weeks	indie rock	100.0	indie	60.0	rock	54.0	Garage Rock	54.0	alternative	34.0
La Rocca	indie rock	100.0	irish	79.0	indie	71.0	rock	50.0	alternative	40.0
Pela	indie rock	100.0	seen live	53.0	indie	50.0	alternative	21.0	alternative rock	21.0
Flake Music	indie rock	100.0	indie	96.0	indie pop	73.0	Lo-Fi	64.0	american	23.0
Boston Spaceships	indie rock	100.0	rock	89.0	power pop	65.0	seen live	42.0	indie	36.0
Prinzhorn Dance School	seen live	100.0	indie rock	100.0	indie	76.0	british	63.0	dfa	60.0
Elephant Stone	indie rock	100.0	seen live	82.0	indie	67.0	psychedelic	63.0	Lo-Fi	45.0
Los Dynamite	indie rock	100.0	indie	70.0	rock	52.0	mexican indie	50.0	mexico	49.0
Ti	indie rock	100.0	indie pop	84.0	seen live	67.0	psychedelic pop	67.0	indie	50.0
Versus	indie rock	100.0	indie	75.0	seen live	69.0	rock	44.0	alternative	41.0
Clearlake	indie rock	100.0	indie	89.0	british	48.0	seen live	40.0	alternative	34.0
Colony House	indie rock	100.0	indie	58.0	indie pop	43.0	seen live	29.0	alternative	15.0
Six By Seven	indie rock	100.0	indie	94.0	alternative	94.0	seen live	76.0	alternative rock	76.0
Pale Young Gentlemen	indie rock	100.0	indie	94.0	indie pop	67.0	Canadian	64.0	alternative rock	50.0
Office	indie rock	100.0	indie	89.0	chicago	67.0	seen live	63.0	indie pop	56.0
Fort Atlantic	indie	100.0	indie rock	100.0	american	40.0	United States	40.0	himym	40.0
Eastern Conference Champions	indie rock	100.0	indie	87.0	alternative	74.0	rock	58.0	seen live	48.0
Life In Film	indie rock	100.0	british	94.0	alternative	82.0	indie	75.0	seen live	50.0
JJAMZ	alternative	100.0	indie rock	100.0	indie	86.0	female vocalists	86.0	Garage Rock	72.0
Gun Outfit	punk	100.0	indie rock	100.0	seen live	75.0	indie	75.0	olympia	50.0
Air Review	indie rock	100.0	indie pop	56.0	indie	45.0	folk	45.0	seen live	34.0
The Chevin	indie rock	100.0	alternative	95.0	indie	83.0	british	83.0	rock	71.0
Driftless Pony Club	indie rock	100.0	alternative rock	69.0	math rock	32.0	rock	27.0	indie	22.0
Antarctigo Vespucci	indie rock	100.0	power pop	100.0	pop punk	75.0	seen live	50.0	alternative	50.0
Bound Stems	indie rock	100.0	indie	93.0	chicago	56.0	indie pop	45.0	seen live	41.0
Voxhaul Broadcast	indie rock	100.0	rock	85.0	seen live	55.0	indie	40.0	California	40.0
Willamette Stone	indie	100.0	alternative	100.0	indie rock	100.0	\N	0.0	\N	0.0
Malachai	indie rock	100.0	psychedelic	81.0	indie	58.0	alternative	53.0	rock	48.0
Pickwick	indie rock	100.0	soul	59.0	indie	50.0	seattle	50.0	Garage Soul	42.0
Treepeople	indie	100.0	indie rock	100.0	Grunge	84.0	punk	57.0	rock	50.0
Cayetana	indie rock	100.0	seen live	78.0	experimental	45.0	under 2000 listeners	34.0	hungarian	34.0
Subvision	indie rock	100.0	swedish	67.0	Soundtrack	50.0	indie	34.0	tobias forge	34.0
Polyenso	indie rock	100.0	indie	74.0	experimental	74.0	jazz	35.0	alternative rock	35.0
Wilderness	indie rock	100.0	indie	97.0	post-rock	88.0	post-punk	59.0	seen live	46.0
Krill	seen live	100.0	indie rock	100.0	noise rock	84.0	Lo-Fi	67.0	math rock	50.0
School Of Language	indie rock	100.0	indie	46.0	seen live	32.0	experimental	19.0	rock	14.0
The Blakes	indie rock	100.0	seen live	88.0	indie	64.0	alternative	60.0	rock	56.0
The New Frontiers	indie rock	100.0	indie	80.0	rock	80.0	ambient	50.0	seen live	42.0
Ovens	seen live	100.0	indie	100.0	indie pop	100.0	indie rock	100.0	Awesome	100.0
Music	indie rock	100.0	indie	78.0	rock	45.0	alternative	45.0	britpop	45.0
Mason Proper	indie	100.0	indie rock	100.0	seen live	95.0	experimental	90.0	Michigan	70.0
Fmlybnd	indie rock	100.0	indie	84.0	synthpop	84.0	electronica	67.0	electropop	67.0
Grant Hart	indie rock	100.0	seen live	85.0	singer-songwriter	75.0	rock	55.0	alternative	35.0
The Corin Tucker Band	indie rock	100.0	riot grrl	53.0	indie	43.0	rock	43.0	seen live	37.0
Low Shoulder	indie rock	100.0	Soundtrack	85.0	indie	85.0	alternative rock	79.0	alternative	64.0
Loon Lake	indie rock	100.0	australian	100.0	seen live	45.0	indie	45.0	rock	45.0
J Mascis and the Fog	indie rock	100.0	alternative rock	65.0	seen live	62.0	indie	59.0	alternative	59.0
Owl John	indie rock	100.0	indie	56.0	Scottish	56.0	blues rock	45.0	british	23.0
Chisel	indie	100.0	indie rock	100.0	punk	90.0	90s	69.0	alternative	53.0
スカート	pop	100.0	rock	100.0	japanese	100.0	indie pop	100.0	indie rock	100.0
Oranger	indie rock	100.0	indie	85.0	indie pop	52.0	rock	34.0	alternative	28.0
Brazos	indie rock	100.0	indie	71.0	seen live	59.0	austin	59.0	rock	53.0
The Medics	indie rock	100.0	seen live	87.0	indie	87.0	dutch	82.0	rock	69.0
Menace Beach	indie rock	100.0	seen live	75.0	indie	67.0	shoegaze	50.0	Leeds	34.0
The High Strung	indie rock	100.0	seen live	80.0	indie	47.0	daytrotter	34.0	indie pop	14.0
Unquiet Nights	indie rock	100.0	rock	82.0	irish	46.0	interpol	37.0	belfast	28.0
National Skyline	indie rock	100.0	indie	89.0	rock	62.0	space rock	45.0	electronic	39.0
12 Rods	indie rock	100.0	indie	63.0	rock	30.0	Minnesota	30.0	twin cities	26.0
Mt. St. Helens Vietnam Band	indie rock	100.0	seen live	97.0	rock	54.0	seattle	50.0	pop	20.0
Kill the Young	seen live	100.0	indie rock	100.0	indie	77.0	rock	77.0	british	53.0
764-HERO	indie rock	100.0	indie	64.0	emo	37.0	seen live	30.0	alternative	24.0
The Main Drag	indie rock	100.0	indie	71.0	rock	18.0	math rock	18.0	indietronica	18.0
Ume	rock	100.0	indie rock	100.0	seen live	78.0	female vocalists	78.0	indie	67.0
Wildlife Control	indie	100.0	indie rock	100.0	rock	88.0	electronic	50.0	alternative	38.0
NEULORE	indie rock	100.0	folk rock	80.0	seen live	60.0	rock	40.0	folk	40.0
Wavves X Cloud Nothings	indie rock	100.0	Lo-Fi	100.0	noise rock	75.0	indie	63.0	punk	38.0
Favez	indie rock	100.0	swiss	92.0	seen live	87.0	rock	83.0	indie	66.0
Beware of Darkness	indie rock	100.0	alternative	77.0	seen live	62.0	alternative rock	54.0	blues rock	54.0
Ikara Colt	indie rock	100.0	seen live	75.0	art rock	66.0	indie	47.0	punk	42.0
Sound of Guns	indie rock	100.0	rock	92.0	alternative	75.0	british	67.0	seen live	59.0
Come	indie rock	100.0	noise rock	66.0	alternative	61.0	indie	53.0	noise	45.0
LoveLikeFire	indie rock	100.0	female vocalists	76.0	alternative	52.0	indie	48.0	indie pop	44.0
The Kin	indie rock	100.0	rock	67.0	australian	67.0	indie	42.0	australia	42.0
Sunflower Bean	indie rock	100.0	psychedelic	67.0	Psychedelic Rock	67.0	rock	50.0	female vocalists	34.0
Comisario Pantera	indie rock	100.0	indie	58.0	seen live	43.0	mexico	43.0	All	43.0
The Gifted Children	indie rock	100.0	indie	75.0	Lo-Fi	75.0	folk	63.0	c86	25.0
Oh No! Yoko	indie	100.0	indie rock	100.0	BIRP	45.0	electronic	39.0	seen live	39.0
Wax Fang	seen live	100.0	indie rock	100.0	rock	86.0	kentucky	72.0	louisville	58.0
BC Camplight	indie rock	100.0	singer-songwriter	100.0	indie	86.0	seen live	29.0	indie pop	29.0
Trust Fund	seen live	100.0	pop	100.0	indie rock	100.0	bristol	100.0	alternative	50.0
Stephen	indie rock	100.0	indie	67.0	flying nun	67.0	New Zealand Rock	67.0	80s	34.0
The Sun	indie rock	100.0	alternative	75.0	seen live	70.0	indie	65.0	rock	60.0
The Blows	indie rock	100.0	indie	63.0	alternative	38.0	indie pop	38.0	spanish indie pop	38.0
Madee	indie rock	100.0	indie	58.0	alternative rock	48.0	rock	24.0	spanish	20.0
Holiday Shores	indie rock	100.0	seen live	82.0	indie	82.0	experimental	82.0	Tropical Pop	38.0
Lagartija Nick	indie rock	100.0	alternative rock	91.0	indie	69.0	seen live	50.0	spanish	46.0
Shrag	indie rock	100.0	indie pop	95.0	post-punk	95.0	art rock	77.0	female vocalists	71.0
Division Day	indie rock	100.0	indie	89.0	seen live	77.0	rock	42.0	alternative rock	42.0
Hallelujah The Hills	indie rock	100.0	indie	94.0	boston	82.0	seen live	69.0	Lo-Fi	57.0
Copy Haho	indie rock	100.0	seen live	88.0	Scottish	75.0	indie	46.0	glasgow	17.0
Driver Friendly	indie	100.0	rock	100.0	indie rock	100.0	seen live	75.0	pop punk	50.0
Admiral Radley	indie rock	100.0	alternative	53.0	american	42.0	California	30.0	seen live	18.0
Miracles of Modern Science	indie pop	100.0	indie rock	100.0	orchestral	100.0	indie	86.0	seen live	72.0
Linus Young	jazz	100.0	indie pop	100.0	indie rock	100.0	blues	100.0	rock	50.0
Happy Body Slow Brain	indie rock	100.0	Progressive	89.0	indie	67.0	rock	67.0	alternative rock	67.0
My Diet Pill	indie rock	100.0	indie	72.0	rock	54.0	alternative	44.0	alternative rock	41.0
Легендарные Пластилиновые Ноги	indie rock	100.0	cardiowave	89.0	rock	81.0	Ukrainian	74.0	cardio-wave	74.0
Magic Bullets	indie rock	100.0	indie pop	94.0	indie	60.0	seen live	47.0	alternative	34.0
The Heligoats	indie rock	100.0	alternative	63.0	seen live	38.0	indie	38.0	pop	25.0
Drive-By Argument	indie rock	100.0	Scottish	93.0	alternative rock	72.0	seen live	65.0	indie	58.0
The Outline	indie rock	100.0	seen live	83.0	indie	72.0	rock	47.0	alternative rock	29.0
Bottomless Pit	indie rock	100.0	chicago	79.0	indie	58.0	rock	58.0	alternative rock	43.0
Holy Holy	indie	100.0	indie rock	100.0	Alt-country	100.0	seen live	50.0	australian	50.0
Balkans	indie rock	100.0	garage	72.0	atlanta	72.0	jangle pop	43.0	indie	29.0
Detroit Social Club	indie rock	100.0	indie	73.0	seen live	68.0	british	68.0	shoegaze	49.0
Neuman	indie rock	100.0	spanish	72.0	post-rock	72.0	seen live	58.0	indie	58.0
Ur S Man	indie rock	100.0	americana	100.0	rock ballad	100.0	bluesrock	100.0	countryrock	100.0
Blondelle	indie rock	100.0	british	86.0	indie	69.0	britpop	43.0	rock	35.0
Shaimus	indie rock	100.0	indie	85.0	rock	77.0	Guitar Hero	77.0	alternative	54.0
Will Joseph Cook	seen live	100.0	indie pop	100.0	indie rock	100.0	singer-songwriter	100.0	under 2000 listeners	100.0
The Burning Hotels	indie rock	100.0	indie	89.0	rock	34.0	post-punk	28.0	Love	17.0
Arcwelder	indie rock	100.0	post-hardcore	72.0	indie	43.0	Minnesota	36.0	rock	29.0
Olivver the Kid	indie rock	100.0	pop	67.0	alternative	67.0	sweater weather	67.0	electronic	34.0
The Like Young	indie rock	100.0	indie	85.0	indie pop	50.0	seen live	25.0	rock	25.0
The Rosewood Thieves	indie rock	100.0	seen live	60.0	americana	50.0	indie	40.0	rock	40.0
Gabriel Bruce	rock	100.0	alternative rock	100.0	indie rock	100.0	indie	75.0	seen live	50.0
The Forms	indie rock	100.0	seen live	45.0	indie	45.0	new york	40.0	rock	25.0
Surfin' Bichos	indie rock	100.0	spanish indie pop	86.0	spanish	72.0	indie	72.0	pop	50.0
Jonny	indie	100.0	indie rock	100.0	seen live	72.0	power pop	58.0	United Kingdom	58.0
Big Dipper	indie rock	100.0	power pop	75.0	seen live	50.0	80s	50.0	indie	34.0
Victory At Sea	indie rock	100.0	indie	80.0	female vocalists	64.0	seen live	44.0	rock	40.0
The Plastic Constellations	indie rock	100.0	indie	60.0	Minnesota	56.0	rock	52.0	seen live	40.0
Bop English	electronic	100.0	seen live	100.0	indie	100.0	indie rock	100.0	Psychedelic Rock	100.0
The Ruse	indie rock	100.0	indie	64.0	alternative	46.0	alternative rock	37.0	indie pop	37.0
Portugal	indie rock	100.0	indie	80.0	chile	80.0	rock	60.0	hola	40.0
Young Buffalo	indie rock	100.0	indie	59.0	indie pop	50.0	seen live	42.0	acoustic	42.0
son feci bisiklet	alternative rock	100.0	indie rock	100.0	acoustic	67.0	turkish	67.0	Alternatif	67.0
The High Dials	indie rock	100.0	Canadian	96.0	psychedelic	82.0	indie	78.0	seen live	73.0
The Static Jacks	indie	100.0	indie rock	100.0	seen live	84.0	Lo-Fi	84.0	Garage Rock	84.0
Color Collapse	indie	100.0	alternative	100.0	indie rock	100.0	pop	80.0	chill	80.0
Escondido	seen live	100.0	indie	100.0	indie rock	100.0	Alt-country	100.0	Nashville	100.0
Ripchord	indie rock	100.0	indie	89.0	british	75.0	seen live	72.0	alternative	49.0
Kingswood	indie rock	100.0	blues rock	100.0	rock	75.0	seen live	50.0	alternative	50.0
Jr. Jr.	electronic	100.0	indie	100.0	experimental	100.0	indie rock	100.0	deastro	100.0
Grand Duchy	indie rock	100.0	alternative	95.0	indie	89.0	new wave	62.0	seen live	23.0
Arcade Fire & David Bowie	indie rock	100.0	alternative	85.0	indie	70.0	Canadian	54.0	british	47.0
The Black and White Years	indie rock	100.0	austin	75.0	seen live	69.0	alternative	57.0	indie	50.0
Test Your Reflex	indie	100.0	rock	100.0	alternative	100.0	indie rock	100.0	seen live	50.0
Lullabies	indie rock	100.0	spanish	50.0	seen live	50.0	pop	50.0	spanish indie rock	50.0
Propellers	indie pop	100.0	indie rock	100.0	electropop	89.0	electro rock	89.0	new wave	78.0
Beginners	seen live	100.0	indie rock	100.0	dutch	100.0	female vocalist	100.0	\N	0.0
Golden Shoulders	indie	100.0	indie rock	100.0	seen live	50.0	folk	42.0	alternative	34.0
Von Iva	indie rock	100.0	female vocalists	100.0	indie	91.0	rock	81.0	dance rock	62.0
Marmoset	indie rock	100.0	psychedelic	78.0	american	56.0	indie	45.0	Indiana	45.0
We Barbarians	indie rock	100.0	seen live	67.0	alternative	45.0	post-punk	45.0	indie	39.0
Birdmonster	indie rock	100.0	seen live	83.0	indie	53.0	Bay Area	36.0	rock	24.0
Alterkicks	indie rock	100.0	seen live	77.0	british	70.0	indie	65.0	rock	36.0
Sick Tamburo	seen live	100.0	indie rock	100.0	post-punk	100.0	punk rock	50.0	electropunk	50.0
Three Blind Wolves	indie	100.0	indie rock	100.0	seen live	72.0	Scottish	72.0	folk	29.0
The Lapse	indie rock	100.0	emo	60.0	post-rock	56.0	indie	32.0	Post punk	24.0
Dead Sons	indie rock	100.0	indie	75.0	seen live	50.0	Stoner Rock	50.0	english	50.0
Mucho	spanish	100.0	pop	100.0	indie rock	100.0	indie	50.0	rock	50.0
Tallhart	indie rock	100.0	rock	72.0	florida	58.0	Southern Rock	43.0	indie	29.0
Jennifer Lo-Fi	indie rock	100.0	indie	85.0	math rock	85.0	alternative	77.0	experimental	77.0
Cobra Verde	indie rock	100.0	indie	91.0	rock	91.0	male vocalists	28.0	true blood	28.0
Odisseo	indie rock	100.0	rock	34.0	All	34.0	\N	0.0	\N	0.0
Du Blonde	indie	100.0	british	100.0	indie rock	100.0	female vocalists	100.0	post-grunge	100.0
Hooton Tennis Club	alternative	100.0	indie rock	100.0	indie	34.0	pop	34.0	rock	34.0
Dried Cassava	alternative	100.0	indie rock	100.0	Psychedelic Rock	67.0	funk	34.0	blues	34.0
Devin Davis	indie rock	100.0	singer-songwriter	79.0	indie	65.0	indie pop	58.0	seen live	43.0
Ang Bandang Shirley	seen live	100.0	indie rock	100.0	Filipino	100.0	OPM	50.0	Filipino Music	50.0
Finish Ticket	indie rock	100.0	seen live	50.0	indie pop	50.0	indie	25.0	alternative	25.0
American Princes	seen live	100.0	indie	100.0	indie rock	100.0	SXSW2007	29.0	rock	15.0
Slot Machine	indie rock	100.0	thai	88.0	alternative rock	63.0	thai rock	63.0	rock	50.0
The Heavenly States	indie rock	100.0	indie	78.0	Minnesota	56.0	seen live	45.0	sxsw 2009	34.0
Bestia Bebé	indie rock	100.0	seen live	67.0	indie	67.0	escuchar luego	67.0	noise	34.0
Sleeping Bag	indie pop	100.0	indie rock	100.0	indie	75.0	seen live	50.0	pop	50.0
Marr	indie rock	100.0	seen live	90.0	german	68.0	indie	50.0	hamburg	43.0
Jookabox	folk	100.0	indie rock	100.0	electronic	64.0	crazy	64.0	New Weird America	64.0
Quiet Life	indie rock	100.0	folk	72.0	indie	58.0	seen live	43.0	blues	29.0
The Dimes	indie rock	100.0	seen live	82.0	indie	82.0	PDX	46.0	portland	46.0
The Bronze Medal	seen live	100.0	rock	100.0	british	100.0	indie rock	100.0	emotional	100.0
Channels	indie rock	100.0	post-punk	67.0	dischord	67.0	DC	59.0	indie	50.0
Sequoyah Prep School	indie rock	100.0	south carolina	75.0	indie	50.0	rock	50.0	alt rock	50.0
Las Ligas Menores	indie rock	100.0	argentina	75.0	dream pop	75.0	seen live	50.0	indie	50.0
Goldrush	seen live	100.0	indie rock	100.0	indie	78.0	rock	34.0	oxford	28.0
Volcano Suns	indie rock	100.0	post-punk	84.0	post-hardcore	75.0	Post punk	42.0	boston	42.0
Butterglory	indie rock	100.0	indie	70.0	indie pop	40.0	underrated	30.0	Lo-Fi	20.0
Long-view	indie rock	100.0	british	67.0	indie	50.0	seen live	42.0	alternative	25.0
Bumblebeez 81	indie rock	100.0	Hip-Hop	75.0	indie	69.0	rock	50.0	rap	50.0
Dignan	seen live	100.0	indie pop	100.0	indie rock	100.0	indie	67.0	pop	50.0
Title Tracks	indie rock	100.0	rock	67.0	seen live	60.0	indie pop	60.0	indie	54.0
Campfire Ok	indie rock	100.0	folk	89.0	indie pop	67.0	indie	45.0	seattle	45.0
Ambulette	indie rock	100.0	indie	71.0	female vocalists	65.0	seen live	42.0	alternative rock	39.0
Plague Vendor	indie rock	100.0	Garage Punk	100.0	garage	50.0	seen live	34.0	alternative	34.0
Pilot to Gunner	indie rock	100.0	seen live	63.0	punk	57.0	emo	50.0	indie	44.0
Bear Lake	indie rock	100.0	indie	67.0	BIRP	67.0	chill	34.0	american	34.0
Кошки Jam	indie rock	100.0	russian	84.0	Pop-Rock	84.0	indie	73.0	rock	62.0
The Progress	indie rock	100.0	emo	80.0	seen live	60.0	indie	40.0	rock	40.0
Peter Nalitch and Friends	indie	100.0	rock	100.0	indie rock	100.0	russian	100.0	art-rock	67.0
Rostam	indie rock	100.0	male vocalists	100.0	washington dc	100.0	udaj se za me	100.0	asian power	100.0
Landlady	indie rock	100.0	seen live	50.0	new york	50.0	Brooklyn	50.0	male vocalists	50.0
Selton	seen live	100.0	indie rock	100.0	brazil	100.0	brazilian	100.0	alternative	67.0
RACES	indie	100.0	indie rock	100.0	alternative	84.0	seen live	50.0	american	34.0
Stephen Brodsky	indie rock	100.0	alternative rock	72.0	seen live	65.0	indie	58.0	singer-songwriter	50.0
Coastal Cities	indie pop	100.0	indie rock	100.0	indie	84.0	dance	50.0	alternative	34.0
Awesome City Club	indie pop	100.0	indie rock	100.0	indie	67.0	rock	34.0	japanese	34.0
Single Frame	indie rock	100.0	indie	67.0	Post punk	67.0	electronic	50.0	electronica	50.0
Apex Manor	indie rock	100.0	power pop	55.0	los angeles	46.0	indie	37.0	rock	37.0
Dead Heart Bloom	indie	100.0	indie rock	100.0	rock	75.0	singer-songwriter	67.0	new york	50.0
Los Seis Días	indie rock	100.0	female vocalists	86.0	indie	72.0	pop	58.0	alternative	58.0
Halo Fauna	indie rock	100.0	plan-it-x	55.0	indie	46.0	emo	46.0	seen live	37.0
The Dark Romantics	indie rock	100.0	indie	94.0	alternative	49.0	alternative rock	46.0	rock	36.0
국카스텐	indie rock	100.0	korean indie	85.0	Psychedelic Rock	77.0	Korean	77.0	indie	47.0
Nightmares For A Week	indie rock	100.0	melodic punk	75.0	punk	50.0	punk rock	50.0	emo	25.0
Raglans	indie rock	100.0	seen live	75.0	irish	75.0	indie	50.0	folk	50.0
Some Velvet Morning	indie rock	100.0	indie	80.0	seen live	50.0	alternative	50.0	rock	40.0
The Southland	indie rock	100.0	rock	70.0	indie	60.0	seen live	30.0	pop	30.0
Aerocirco	rock	100.0	indie rock	100.0	alternative	43.0	alternative rock	43.0	Garage Rock	43.0
Glös	indie rock	100.0	indie	84.0	female vocalists	67.0	experimental	59.0	rock	42.0
Methyl Ethel	alternative	100.0	indie pop	100.0	indie rock	100.0	australian	100.0	dream pop	100.0
Quix*O*Tic	indie rock	100.0	riot grrrl	95.0	female vocalists	85.0	kill rock stars	74.0	Garage Rock	64.0
The Canon Logic	indie rock	100.0	twee	80.0	new york	40.0	piano	40.0	not emo	40.0
Dark Night Of The Soul	indie rock	100.0	indie	84.0	electronic	67.0	pop	67.0	moody	67.0
Os Dissonantes	indie rock	100.0	brazilian	100.0	indie	79.0	rock	72.0	mod	65.0
Lewis Del Mar	electronica	100.0	indie	100.0	pop	100.0	folk	100.0	experimental	100.0
The Ceremonies	indie	100.0	alternative	100.0	indie rock	100.0	indie pop	75.0	los angeles	75.0
Missing Andy	indie	100.0	alternative rock	100.0	indie rock	100.0	british	67.0	UK	67.0
DJ Sunderland	indie rock	100.0	mashup	75.0	rock	63.0	indietronica	50.0	electronic	38.0
The Lashes	indie	100.0	indie rock	100.0	seen live	95.0	alternative	53.0	punk	36.0
Cavil at Rest	indie	100.0	indie rock	100.0	seen live	64.0	rock	28.0	seen	28.0
Traindodge	indie rock	100.0	seen live	58.0	rock	43.0	alternative	43.0	oklahoma	43.0
Killers Walk Among Us	emo	100.0	indie rock	100.0	post rock	100.0	\N	0.0	\N	0.0
The Firebird Band	indie	100.0	indie rock	100.0	seen live	84.0	Electro Indie	67.0	electronic	34.0
Nap Eyes	seen live	100.0	indie	100.0	alternative	100.0	indie pop	100.0	indie rock	100.0
Jed Whedon and the Willing	rock	100.0	indie rock	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Mumblr	seen live	100.0	indie rock	100.0	indie	67.0	emo	67.0	power pop	67.0
Lights On	indie rock	100.0	male vocalists	46.0	BIRP	28.0	seen live	19.0	indie	19.0
Underground Heroes	indie	100.0	indie rock	100.0	seen live	86.0	punk	58.0	ska	36.0
The Standard	indie rock	100.0	indie	88.0	shoegaze	50.0	post-punk	38.0	tooons	38.0
Silver Firs	indie rock	100.0	psychedelic	100.0	chamber pop	67.0	dreampop	67.0	swiss	67.0
Sisters	seen live	100.0	indie	100.0	indie rock	100.0	Lo-Fi	80.0	punk	60.0
The Tontons	indie rock	100.0	Houston	100.0	indie	84.0	female vocalists	67.0	texas	67.0
Bradford Cox	indie	100.0	rock	100.0	indie rock	100.0	Experimental pop	50.0	genius	50.0
Bored Man Overboard	seen live	100.0	indie rock	100.0	indie	75.0	folk	75.0	Alt-country	75.0
The Future Kings of Nowhere	indie rock	100.0	North Carolina	78.0	indie	56.0	anti-folk	56.0	antifolk	56.0
Uniqplan	seen live	100.0	indie rock	100.0	new wave	100.0	synthpop	75.0	polish	75.0
Derby	indie rock	100.0	seen live	67.0	indie	50.0	alternative	50.0	indie pop	50.0
Los Angeles Police Department	indie	100.0	indie pop	100.0	indie rock	100.0	bedroom pop	100.0	5432fun	100.0
Bend Sinister	indie rock	100.0	seen live	86.0	rock	72.0	indie	58.0	Progressive rock	29.0
Vant	british	100.0	indie rock	100.0	All	100.0	\N	0.0	\N	0.0
Carter Tanton	indie rock	100.0	seen live	75.0	dream pop	75.0	indie	50.0	americana	25.0
Quiet Hounds	indie rock	100.0	seen live	50.0	indie	50.0	folk	50.0	\N	0.0
Nathan Reich	folk	100.0	indie rock	100.0	acoustic	100.0	\N	0.0	\N	0.0
Nothing Painted Blue	indie rock	100.0	power pop	80.0	american	80.0	pop	60.0	alternative	60.0
Kite Party	punk	100.0	Philadelphia	100.0	indie rock	100.0	seen live	50.0	indie	50.0
Hopewell	indie rock	100.0	psychedelic	77.0	Psychedelic Rock	65.0	indie	59.0	Neo-Psychedelia	30.0
The Plastics Revolution	indie rock	100.0	indie	86.0	alternative	72.0	indie pop	72.0	electronic rock	58.0
Bicicletas	indie rock	100.0	seen live	71.0	indie	65.0	argentina	65.0	Rock Argentino	36.0
Butch Walker & The Black Widows	alternative rock	100.0	indie rock	100.0	rock	84.0	alternative	84.0	seen live	50.0
Harriet	rock	100.0	indie rock	100.0	indie	50.0	pop	50.0	alternative	50.0
Avid Dancer	indie	100.0	indie pop	100.0	indie rock	100.0	singer-songwriter	50.0	solo	50.0
혁오 (Hyukoh)	indie	100.0	indie rock	100.0	Korean	100.0	k-rock	100.0	\N	0.0
The Winter Sounds	indie rock	100.0	indie	39.0	seen live	24.0	athens	24.0	insomnia radio	16.0
Hunting Grounds	indie rock	100.0	seen live	75.0	indie	75.0	Garage Rock	75.0	garage	75.0
Los Evangelistas	indie rock	100.0	spanish	89.0	spain	45.0	españa	34.0	rock	23.0
Correcto	indie rock	100.0	Scottish	77.0	british	39.0	Post punk	39.0	post-punk	31.0
Brass Bed	indie	100.0	indie rock	100.0	louisiana	100.0	Park The Van Records	100.0	seen live	50.0
Harrison Hudson	seen live	100.0	indie rock	100.0	Southern Rock	100.0	american	50.0	live	50.0
Röyksopp & Susanne Sundfør	electronic	100.0	indie rock	100.0	electronica	50.0	indie	50.0	norwegian	50.0
Velhos e Usados	indie rock	100.0	brazilian	95.0	alternative	84.0	brasil	84.0	rock	67.0
Colaars	indie	100.0	indie rock	100.0	math rock	91.0	dance	46.0	seen live	37.0
Suárez	indie rock	100.0	indie	75.0	90s	50.0	argentina	50.0	argentina indie	50.0
Igloo	indie	100.0	indie rock	100.0	spanish	80.0	seen live	60.0	shoegaze	40.0
The Gunshy	seen live	100.0	indie rock	100.0	singer-songwriter	100.0	folk	84.0	folk punk	50.0
Vincent Vega	indie rock	100.0	indie	55.0	indonesian	55.0	mama mrda maso	46.0	art rock indonesia indie	46.0
Adam Agin	indie rock	100.0	rock	75.0	indie	50.0	soul	50.0	folk	50.0
Adam & Naive	indie rock	100.0	Lo-Fi	100.0	indie	50.0	emo	50.0	Mellow	50.0
The Deathray Davies	indie rock	100.0	power pop	84.0	indie	67.0	texas	67.0	seen live	50.0
The Swimmers	indie rock	100.0	power pop	100.0	pop	67.0	powerpop	67.0	Philadelphia	50.0
Young Jesus	indie	100.0	indie rock	100.0	rock	50.0	alternative	50.0	alternative rock	25.0
Chamberlin	indie rock	100.0	folk	50.0	Vermont	50.0	radio paradise	25.0	radioparadise	25.0
As Elephants Are	indie rock	100.0	indie	67.0	alternative	67.0	seen live	34.0	UK	34.0
Spanish Prisoners	indie rock	100.0	experimental	86.0	indie	58.0	alternative	58.0	Brooklyn	58.0
The walters	indie rock	100.0	blues rock	100.0	Queensland Blues	100.0	\N	0.0	\N	0.0
The Stereotypes	indie rock	100.0	nu jazz	58.0	idm	58.0	indie	43.0	rock	43.0
Mainstreet	heavy metal	100.0	seen live	100.0	pop	100.0	rock	100.0	indie rock	100.0
Brown Shoe	indie rock	100.0	indie	40.0	All	40.0	seen live	20.0	rock	20.0
Ewan Mcgregor, Nicole Kidman	Soundtrack	100.0	alternative	100.0	alternative rock	100.0	hardcore	100.0	indie rock	100.0
Euphoria Again	indie rock	100.0	Lo-Fi	100.0	lofi	67.0	slowcore	67.0	indie	34.0
We Are!!	indie rock	100.0	alternative	92.0	rock	84.0	brit rock	71.0	brit pop	63.0
The Windupdeads	indie rock	100.0	swedish	86.0	indie	58.0	alternative	58.0	indie pop	58.0
vuvuVultures	indie rock	100.0	indie	63.0	seen live	38.0	female vocalists	38.0	t1234 found on radio - check more	25.0
No Wyld	Hip-Hop	100.0	indie	100.0	hip hop	100.0	rap	100.0	indie rock	100.0
Pillow Fight Club	indie rock	100.0	rock	98.0	riot grrrl	82.0	indie	69.0	female	69.0
Dexters	indie rock	100.0	indie	67.0	seen live	34.0	\N	0.0	\N	0.0
New Radiant Storm King	indie rock	100.0	indie	75.0	indie pop	42.0	Lo-Fi	42.0	noise rock	17.0
Alvarez kings	indie	100.0	indie rock	100.0	british	72.0	seen live	58.0	Sheffield	58.0
Operahouse	indie rock	100.0	british	80.0	post-punk	56.0	indie	48.0	rock	28.0
Born Cages	alternative rock	100.0	new york	100.0	indie rock	100.0	New York City	100.0	SXSW 2014	100.0
Bent Shapes	seen live	100.0	indie	100.0	punk	100.0	indie rock	100.0	post-punk	100.0
Mac McCaughan	indie rock	100.0	seen live	50.0	indie	50.0	saw these dudes	50.0	\N	0.0
トリプルファイヤー	indie	100.0	rock	100.0	alternative	100.0	alternative rock	100.0	indie rock	100.0
Ventura	indie rock	100.0	noise-rock	67.0	noise rock	56.0	swiss	56.0	trance	45.0
The Novel Ideas	indie rock	100.0	folk-rock	100.0	folk	75.0	rock	50.0	00s	50.0
Fire When Ready	indie rock	100.0	indie	74.0	seen live	60.0	rock	47.0	alternative	47.0
Pamela Hute	indie rock	100.0	french	91.0	rock	91.0	French rock	91.0	lagrosseradio	46.0
The Epilogues	rock	100.0	alternative	100.0	indie rock	100.0	Colorado	75.0	seen in concert	75.0
Jack Ladder & The Dreamlanders	indie	100.0	pop	100.0	rock	100.0	alternative	100.0	alternative rock	100.0
Nightmare And The Cat	indie rock	100.0	indie	50.0	sxsw 2012	50.0	SXSW 2013	50.0	\N	0.0
Landshapes	indie rock	100.0	seen live	75.0	folk	75.0	england	50.0	indie folk	50.0
Chauchat	indie	100.0	indie rock	100.0	Lo-Fi	100.0	shoegaze	50.0	folk rock	40.0
Matyas Mon	rock	100.0	indie rock	100.0	indie	50.0	pop	50.0	alternative	50.0
N/A	rock	100.0	experimental	100.0	indie rock	100.0	russian	100.0	All	100.0
Takasa	indie rock	100.0	Eurovision	100.0	indie	78.0	switzerland	67.0	rock	56.0
Yakari	indie rock	100.0	shoegaze	100.0	trance	67.0	Lo-Fi	34.0	switzerland	34.0
吉田ヨウヘイgroup	indie rock	100.0	indie	50.0	jazz	50.0	japanese	50.0	math rock	50.0
Utopians	seen live	100.0	indie rock	100.0	argentina	88.0	alternative	63.0	rock	50.0
Mujercitas Terror	indie rock	100.0	alternative	86.0	indie	72.0	seen live	43.0	punk	43.0
Happy	indie	100.0	japanese	100.0	indie pop	100.0	indie rock	100.0	female vocalist	100.0
Je Suis France	indie rock	100.0	post-punk	86.0	indie	43.0	rock	43.0	alternative	29.0
The Hang Ups	indie pop	100.0	indie rock	100.0	indie	80.0	rock	40.0	power pop	40.0
Olin & the Moon	alternative rock	100.0	indie rock	100.0	seen live	50.0	indie	50.0	rock	50.0
The Gadsdens	indie rock	100.0	indie	67.0	indie pop	67.0	british	45.0	underplayed artists	34.0
Hammer No More the Fingers	indie rock	100.0	indie	86.0	triangle	58.0	seen live	43.0	acoustic	43.0
Radio Tehran	indie rock	100.0	persian rock	88.0	Iranian	75.0	rock	63.0	Persian	63.0
Built Like Alaska	indie	100.0	indie rock	100.0	rock	25.0	California	25.0	post hippie	25.0
The American Spirit	indie	100.0	alternative	100.0	indie rock	100.0	rock	50.0	\N	0.0
Llama Farmers	indie rock	100.0	indie	60.0	rock	60.0	seen live	50.0	alternative	50.0
Diners	Surf	100.0	indie rock	100.0	arizona	100.0	5432fun	100.0	\N	0.0
Pat Jordache	indie rock	100.0	Lo-Fi	78.0	seen live	56.0	indie	56.0	experimental	45.0
Blunt Mechanic	indie	100.0	indie rock	100.0	Lo-Fi	100.0	seen live	80.0	noise pop	80.0
The Philistines Jr.	indie rock	100.0	seen live	67.0	college	67.0	connecticut	67.0	tarquin	67.0
Los Ginkas	Surf	100.0	indie rock	100.0	spanish	67.0	seen live	67.0	indie pop	34.0
Bats & Mice	indie rock	100.0	emo	90.0	indie	80.0	post-hardcore	50.0	seen live	20.0
The Natural History	indie rock	100.0	indie	89.0	rock	67.0	seen live	45.0	electronic	12.0
G.A.S. Drummers	indie rock	100.0	seen live	84.0	melodic hardcore	67.0	fast melodic punk	50.0	punk rock	34.0
Bunky	indie rock	100.0	indie	74.0	female vocalists	37.0	experimental	32.0	seen live	27.0
Further	indie	100.0	indie rock	100.0	seen live	80.0	alternative rock	80.0	Lo-Fi	80.0
The Great Depression	indie rock	100.0	shoegaze	100.0	alternative	75.0	emo	75.0	seen live	50.0
Me Like Bees	indie	100.0	alternative	100.0	indie rock	100.0	All	100.0	\N	0.0
Burn The Negative	indie rock	100.0	indie	93.0	synthpop	72.0	electronic	65.0	alternative rock	50.0
We are the Storm	swedish	100.0	indie rock	100.0	indie	75.0	indie pop	50.0	Pop-Rock	50.0
Shrimp Boat	indie rock	100.0	indie	50.0	chicago	42.0	rock	34.0	experimental	17.0
Gran Ronde	indie rock	100.0	seen live	75.0	alternative	75.0	post-punk	75.0	los angeles	75.0
The Bell	indie rock	100.0	indie	67.0	swedish	67.0	electronic	50.0	emusic	50.0
The Hair	indie rock	100.0	indie	65.0	seen live	48.0	Leeds	42.0	LMS Artist	30.0
Briana Marela	indie rock	100.0	female vocalist	100.0	experimental	67.0	seen live	34.0	indie	34.0
All Tomorrow's Parties	indie rock	100.0	indie	80.0	rock	60.0	alternative	50.0	alternative rock	50.0
EZTV	indie rock	100.0	indie	67.0	rock	67.0	pop	34.0	indie pop	34.0
mi amigo invencible	indie rock	100.0	argentina	100.0	seen live	50.0	indie	50.0	soft rock	50.0
Indios	seen live	100.0	indie rock	100.0	argentina	100.0	native american	100.0	rock nacional	100.0
Travis Morrison Hellfighters	indie rock	100.0	indie	64.0	experimental	46.0	seen live	37.0	alternative rock	37.0
Least of These	indie	100.0	indie rock	100.0	christian	100.0	christian rock	100.0	rock	50.0
Thomas Jefferson Slave Apartments	indie rock	100.0	post-punk	70.0	Ohio	60.0	indie	30.0	alternative	30.0
Virginia To Vegas	indie	100.0	rock	100.0	indie rock	100.0	\N	0.0	\N	0.0
Crush Luther	indie rock	100.0	Canadian	100.0	indie	86.0	indie pop	58.0	alternative	43.0
Talain Rayne	indie rock	100.0	indie	67.0	indie pop	67.0	singer-songwriter	67.0	Pop-Rock	34.0
New Desert Blues	rock	100.0	indie rock	100.0	seen live	67.0	indie	34.0	alternative	34.0
Tuscadero	indie rock	100.0	seen live	90.0	DC	60.0	teenbeat	60.0	twee	50.0
Mary Timony Band	indie rock	100.0	female vocalists	84.0	indie	50.0	seen live	34.0	singer-songwriter	34.0
Chance	indie rock	100.0	rock	86.0	brazilian post-punk	65.0	alternative rock	58.0	post-punk	58.0
Gung Ho	indie rock	100.0	indie pop	84.0	indie	50.0	pop	50.0	metal	34.0
Al Bairre	indie	100.0	indie rock	100.0	south african	100.0	violin	67.0	rock	34.0
Drinks	british	100.0	indie rock	100.0	welsh	100.0	beyondwithin	100.0	Cate Le Bon	100.0
Papermoons	indie rock	100.0	indie	86.0	folk	86.0	Alt-country	58.0	seen live	29.0
The Analog Affair	indie	100.0	indie rock	100.0	electronic	50.0	electronica	50.0	pop	50.0
Ludes	indie	100.0	indie rock	100.0	seen live	50.0	rock	50.0	british	43.0
Lulu and the Lampshades	indie folk	100.0	female vocalists	80.0	indie	60.0	singer-songwriter	60.0	seen live	40.0
Ghost Stories	emo	100.0	folk	100.0	screamo	100.0	indie folk	100.0	indie	50.0
The Tiger & Me	folk	100.0	indie folk	100.0	australian	50.0	gypsy folk	50.0	\N	0.0
Golden Slumbers	folk	100.0	Portugal	100.0	indie folk	100.0	\N	0.0	\N	0.0
Wayward Daughter	indie	100.0	pop	100.0	rock	100.0	indie pop	100.0	pop rock	100.0
Les Hay Babies	indie folk	100.0	female vocalist	100.0	Singer/Songwriter	100.0	\N	0.0	\N	0.0
David F. Bello	indie	100.0	emo	100.0	experimental	100.0	Lo-Fi	100.0	synthpop	100.0
The Lisps	indie	100.0	indie folk	100.0	seen live	75.0	new york	75.0	indie pop	75.0
Fran Palermo	indie folk	100.0	Vagabond	100.0	indie	75.0	alternative rock	75.0	indie rock	75.0
Pocket Satellite	seen live	100.0	indie	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0
Anamai	folk	100.0	canada	100.0	dream pop	100.0	indie folk	100.0	dark folk	100.0
If Bears Were Bees	seen live	100.0	indie	100.0	folk	100.0	indie rock	100.0	singer-songwriter	100.0
City And Colour feat. Gordon Downie	acoustic	100.0	indie	65.0	singer-songwriter	56.0	folk	52.0	Canadian	36.0
Thad Kopec	indie	100.0	folk	100.0	american	100.0	indie folk	100.0	male vocalists	100.0
3 dudes & a mullet	pop	100.0	indie pop	100.0	indie folk	100.0	All	100.0	\N	0.0
Space Ghost Cowboys	indie	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Trostrigo	indie folk	100.0	chile	100.0	argentina	67.0	under 2000 listeners	34.0	neo folk	34.0
Lunatic Wolf	alternative rock	100.0	folk	100.0	indie rock	100.0	folk rock	100.0	indie folk	100.0
Jay Farrar, Will Johnson, Anders Parker, Yim Yames	folk	100.0	acoustic	100.0	americana	100.0	Alt-country	100.0	indie folk	100.0
Hunter and The Bear	indie	100.0	rock	100.0	indie folk	100.0	the bedford	100.0	\N	0.0
Marti Jones	indie folk	100.0	female vocalist	100.0	pop	67.0	female vocalists	67.0	power pop	67.0
Rosie June	seen live	100.0	indie	100.0	indie pop	100.0	female vocalists	100.0	canada	100.0
Tall Tales & The Silver Lining	seen live	100.0	folk	100.0	California	100.0	indie folk	100.0	5432fun	100.0
Nonaphoenix	indie	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Paul Otten	indie	100.0	rock	100.0	folk	100.0	singer-songwriter	100.0	american	100.0
Little Suns	indie folk	100.0	folk	50.0	noisetrade favorites	50.0	\N	0.0	\N	0.0
American Opera	folk	100.0	experimental	100.0	acoustic	100.0	indie folk	100.0	\N	0.0
Abi Reimold	folk	100.0	female vocalists	100.0	singer-songwriter	100.0	acoustic	100.0	freak folk	100.0
Alison May	indie	100.0	folk	100.0	female vocalists	100.0	singer-songwriter	100.0	indie folk	100.0
Billy Lockett	folk	100.0	acoustic	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
David Beats Goliath	indie	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
The Traditionist	indie pop	100.0	indie folk	100.0	indie	50.0	folk	50.0	All	50.0
Little Sur	indie	100.0	folk	100.0	indie folk	100.0	how i met your mother folk	100.0	\N	0.0
Marie Flore	female vocalists	100.0	singer-songwriter	100.0	indie folk	100.0	folk women	50.0	\N	0.0
Firewoodisland	indie	100.0	folk	100.0	indie folk	100.0	celtic	100.0	Viking	100.0
Dirty Bourbon River Show	seen live	100.0	rock	100.0	americana	100.0	blues	100.0	Gypsy	100.0
Quentin Hannappe	indie	100.0	singer-songwriter	100.0	indie folk	100.0	Acoustic Folk	100.0	\N	0.0
Dovekins	seen live	100.0	contemporary folk	100.0	indie folk	100.0	boulder	100.0	friendly people	100.0
Flora Cash	Minnesota	100.0	folk	100.0	female vocalists	100.0	singer-songwriter	100.0	unsigned	100.0
Kubaterra	seen live	100.0	indie	100.0	indie pop	100.0	indie rock	100.0	indie folk	100.0
The Pastels And Tenniscoats	Lo-Fi	100.0	indie folk	100.0	chillout	50.0	indie	50.0	folk	50.0
bony king	indie	100.0	singer-songwriter	100.0	folk-rock	100.0	americana	100.0	indie folk	100.0
Aurette and The Polska Seeking Carnival	indie folk	100.0	Accordeon	100.0	indonesian	100.0	Yogyakarta	100.0	jogja	100.0
Last Good Tooth	folk	100.0	new york	100.0	New Weird America	100.0	indie folk	100.0	college	100.0
Dillinger Girl & Baby Face Nelson	french	100.0	indie	100.0	indie folk	100.0	folk	50.0	singer-songwriter	50.0
Salvage My Dream	ambient	100.0	indie folk	100.0	anti-folk	100.0	under 2000 listeners	100.0	\N	0.0
Nathaniel Rateliff & The Wheel	indie	100.0	folk	100.0	folk rock	100.0	indie folk	100.0	Colorado	100.0
Side Saddle	folk	100.0	indie folk	100.0	indie	50.0	\N	0.0	\N	0.0
The Weather Machine	indie	100.0	folk	100.0	indie folk	100.0	portland	100.0	oregon	100.0
Smile Down Upon Us	folktronica	100.0	indie folk	100.0	electronic	75.0	female vocalists	50.0	indie	25.0
Marcel Thee	alternative rock	100.0	folk	100.0	Lo-Fi	100.0	ambient pop	100.0	indie folk	100.0
The Parlor	indie	100.0	indie folk	100.0	rock	50.0	indie rock	50.0	Garage Rock	50.0
Jenny Jenkins	seen live	100.0	folk	100.0	female vocalists	100.0	singer-songwriter	100.0	acoustic	100.0
The Rudy Trouvé Septet	jazz	100.0	folk	100.0	calm	100.0	Lo-Fi	100.0	soft	100.0
Erica Buettner	indie folk	100.0	singer-songwriter	84.0	seen live	67.0	female vocalists	50.0	fragile	34.0
Scenic Route to Alaska	indie folk	100.0	Edmonton	100.0	indie	50.0	folk	50.0	indie rock	50.0
Michael Malarkey	indie	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Before the Brave	indie	100.0	alternative	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0
Kana Kapila	punk	100.0	folk	100.0	acoustic	100.0	Lo-Fi	100.0	barcelona	100.0
Die Mason Die	folk	100.0	indie rock	100.0	indie folk	100.0	ghost folk	100.0	indie	50.0
Gwyn Fowler	folk	100.0	indie folk	100.0	indie	50.0	alternative	50.0	singer-songwriter	50.0
Joe gil	indie	100.0	folk	100.0	singer-songwriter	100.0	indie folk	100.0	under 2000 listeners	100.0
Grantura	country	100.0	indie folk	100.0	folk	86.0	americana	72.0	central point	72.0
Conor Linnie	indie	100.0	folk	100.0	singer-songwriter	100.0	indie folk	100.0	male vocalists	100.0
WolfRider	death metal	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Ema and the Ghosts	singer-songwriter	100.0	indie folk	100.0	los angeles	100.0	magic	100.0	ukulele	100.0
María Colores	pop	100.0	folk	100.0	indie pop	100.0	female vocalists	100.0	indie folk	100.0
David Karsten Daniels & Fight the Big Bull	indie	100.0	folk	100.0	indie folk	100.0	\N	0.0	\N	0.0
House Of Brothers	seen live	100.0	indie folk	100.0	acoustic	80.0	guitar	60.0	indie	40.0
Matt Harlan	seen live	100.0	indie	100.0	folk	100.0	americana	100.0	genius	100.0
Naked Girls And Aeroplanes	indie	100.0	indie folk	100.0	brazilian	75.0	rock	50.0	alternative	50.0
Charlie Hope	singer-songwriter	100.0	acoustic	100.0	indie folk	100.0	kids	100.0	lullabies	100.0
Bad Cello	indie	100.0	american	100.0	indie folk	100.0	seen live	50.0	pop	50.0
Big Little Lions	folk	100.0	indie folk	100.0	Alternative Folk	100.0	\N	0.0	\N	0.0
Waving Hands	indie	100.0	indie pop	100.0	indie folk	100.0	swiss	100.0	duo	100.0
The Gardener & The Tree	indie folk	100.0	Revolution - EP	100.0	\N	0.0	\N	0.0	\N	0.0
Aaron Stout	indie	100.0	folk	100.0	indie rock	100.0	psychedelic	100.0	Alt-country	100.0
Galia Arad	indie folk	100.0	female singer-songwriter	75.0	seen live	50.0	indie	50.0	female vocalists	50.0
Hideout	seen live	100.0	indie	100.0	pop	100.0	soul	100.0	alternative	100.0
Sweet Soubrette	indie folk	100.0	folk	80.0	under 2000 listeners	80.0	female vocalist	60.0	female vocalists	40.0
Ann Scott	seen live	100.0	female vocalists	100.0	irish	100.0	indie folk	100.0	irish indie	100.0
The Cloud Hymn	folk	100.0	acoustic	100.0	indie folk	100.0	book	100.0	under 2000 listeners	100.0
Casey Hurt	indie folk	100.0	portland	100.0	beautiful	50.0	under 2000 listeners	50.0	All	50.0
Gallop	indie	100.0	pop	100.0	rock	100.0	folk	100.0	acoustic	100.0
The Lost Cavalry	indie	100.0	alternative	100.0	folk	100.0	indie folk	100.0	violin	67.0
Ben Kamen	singer-songwriter	100.0	indie folk	100.0	indie	50.0	olympia	50.0	acoustic	50.0
The Conduits	singer-songwriter	100.0	indie folk	100.0	BIRP	100.0	All	50.0	electronic	25.0
Rusa Militan	indie	100.0	folk	100.0	indie pop	100.0	indie folk	100.0	\N	0.0
Jeffrey James	jazz	100.0	indie folk	100.0	indie	50.0	folk	50.0	acoustic	50.0
The Lonesome Southern Comfort Company	indie folk	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Wheels	indie	100.0	americana	100.0	indie folk	100.0	fuck that shit	100.0	life is bullshit	100.0
Nina Violet	seen live	100.0	female	100.0	folk	100.0	strings	100.0	genius	100.0
Joshua Burkett	indie folk	100.0	psychedelic folk	100.0	folk	34.0	singer-songwriter	34.0	psychedelic	34.0
Moddi / Einar Stray	indie	100.0	norwegian	100.0	indie folk	100.0	\N	0.0	\N	0.0
Armadillo	trance	100.0	rock	100.0	folk	100.0	Post punk	100.0	folktronica	100.0
El Meister	rock	100.0	folk	100.0	indie rock	100.0	singer-songwriter	100.0	pop rock	100.0
Eine Blume	indie	100.0	folk	100.0	beautiful	100.0	cinematic	100.0	post rock	100.0
All The Pictures	indie folk	100.0	Tasty	100.0	electronica	50.0	singer-songwriter	50.0	banjo	50.0
The Sunny Era	indie	100.0	Minnesota	100.0	folk	100.0	experimental	100.0	indie folk	100.0
Oryx and Crake	seen live	100.0	indie	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0
South China	female vocalists	100.0	singer-songwriter	100.0	indie folk	100.0	experimental	67.0	Lo-Fi	34.0
The Beaten Sea	folk	100.0	singer-songwriter	100.0	Alt-country	100.0	indie folk	100.0	2010 Dallas Observer Music Awards nominee	100.0
Uzi Ramirez	indie folk	100.0	rock	50.0	funk	50.0	beautiful	50.0	groove	50.0
Surrounded by Lions	hardcore	100.0	indie pop	100.0	acoustic	100.0	indie folk	100.0	small-scale	100.0
Nathan Edwin	indie	100.0	acoustic	100.0	indie folk	100.0	folk	50.0	indie rock	50.0
Solletico	pop	100.0	twee	100.0	indie folk	100.0	Madrid	100.0	Solletico	100.0
blueberryseason	indie	100.0	acoustic	100.0	indie folk	100.0	\N	0.0	\N	0.0
Jack Ruby Presents	americana	100.0	indie folk	100.0	portland	100.0	folk	63.0	experimental country	63.0
Gli Amanti	indie rock	100.0	folk rock	100.0	indie folk	100.0	male vocalists	100.0	under 2000 listeners	100.0
Trapped Mice	rock	100.0	alternative	100.0	Scottish	100.0	indie folk	100.0	male vocalists	100.0
Louis Berry	rock	100.0	folk	100.0	indie rock	100.0	indie folk	100.0	\N	0.0
4 Peniti	indie	100.0	pop	100.0	acoustic	100.0	folk rock	100.0	indie folk	100.0
Grey Anne	seen live	100.0	indie	100.0	folk	100.0	female vocalists	100.0	singer-songwriter	100.0
Elisabeth Schwarzkopf, Giuseppe Taddei, Etc.; Carlo Maria Giulini: Philharmonia Orchestra & Chorus	indie	100.0	opera	100.0	folk	100.0	ambient	100.0	Lo-Fi	100.0
Old Sea Brigade	singer-songwriter	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Sam Burchfield	folk	100.0	singer-songwriter	100.0	indie folk	100.0	modern folk	100.0	\N	0.0
Lambs & Wolves	folk	100.0	singer-songwriter	100.0	acoustic	100.0	Lo-Fi	100.0	folk-pop	100.0
Ernest Ellis & The Panamas	indie	100.0	alternative	100.0	folk	100.0	australian	100.0	indie folk	100.0
Jake Houlsby	indie	100.0	folk	100.0	blues	100.0	indie folk	100.0	under 2000 listeners	100.0
Raw Geronimo	indie	100.0	alternative	100.0	folk	100.0	female vocalists	100.0	jungle	100.0
Beasts And Superbeasts	folk	100.0	indie folk	100.0	indie	50.0	canada	50.0	Mellow	50.0
Chantilly	indie	100.0	pop	100.0	folk	100.0	indie pop	100.0	female vocalists	100.0
Cuscobayo	indie	100.0	folk	100.0	latin	100.0	indie folk	100.0	pampa	100.0
Friends Of The Family	indie	100.0	folk	100.0	indie pop	100.0	psychedelic	100.0	indie folk	100.0
Pauwel De Meyer	folk	100.0	singer-songwriter	100.0	acoustic	100.0	intimate	100.0	indie folk	100.0
Uddhava	indie	100.0	pop	100.0	electroacoustic	100.0	indie folk	100.0	\N	0.0
Juviley	folk	100.0	acoustic	100.0	indie folk	100.0	indie	50.0	pop	50.0
howard hughes	folk	100.0	singer-songwriter	100.0	acoustic	100.0	guitar	100.0	indie folk	100.0
Trilobite	indie	100.0	folk	100.0	experimental	100.0	doom metal	100.0	acoustic	100.0
Sleep In Sundays	singer-songwriter	100.0	Lo-Fi	100.0	indie folk	100.0	\N	0.0	\N	0.0
Black handed Kites	indie	100.0	indie folk	100.0	south african	100.0	\N	0.0	\N	0.0
Ghost and Gale	female vocalists	100.0	americana	100.0	Alt-country	100.0	folk rock	100.0	indie folk	100.0
Nowhere Train	seen live	100.0	indie folk	100.0	austrian	100.0	\N	0.0	\N	0.0
Oh, Mountain	baroque	100.0	pop	100.0	instrumental	100.0	ambient	100.0	experimental	100.0
Paper Navy	rock	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0	Alt-country	67.0
Dry River Yacht Club	seen live	100.0	indie	100.0	instrumental	100.0	folk	100.0	experimental	100.0
Pretend Electric	Lo-Fi	100.0	indie folk	100.0	psychedelic folk	100.0	00s	100.0	los angeles	100.0
Skating Club	seen live	100.0	indie	100.0	folk	100.0	singer-songwriter	100.0	USA	100.0
Alex Bowen	seen live	100.0	indie	100.0	Classical	100.0	female	100.0	british	100.0
Tarran the Tailor	experimental	100.0	dark	100.0	tango	100.0	melancholy	100.0	indie folk	100.0
Kenny Feinstein	folk	100.0	acoustic	100.0	covers	100.0	indie folk	100.0	loveless	100.0
Toni Bruna	singer-songwriter	100.0	freak folk	100.0	indie folk	100.0	psychedelic folk	100.0	folk	50.0
Submarinos	folk	100.0	brazil	100.0	brasil	100.0	indie folk	100.0	brazilian music	100.0
Itamar Ziegler	indie	100.0	pop	100.0	alternative	100.0	indie rock	100.0	song	100.0
Tajdar Junaid	indie	100.0	indie pop	100.0	singer-songwriter	100.0	Indian	100.0	indie folk	100.0
Laura Marling / The Dharohar Project / Mumford & Sons	indie	100.0	folk	100.0	singer-songwriter	100.0	Love	100.0	indie folk	100.0
Harry Bird and the Rubber Wellies	folk	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Chasing Owls	folk	100.0	indie folk	100.0	edinburgh	100.0	under 2000 listeners	100.0	Discoveries	100.0
Leanids	alternative rock	100.0	swedish	100.0	indie rock	100.0	folk rock	100.0	indie folk	100.0
Curly Hair	folk	100.0	indie folk	100.0	indie	67.0	under 2000 listeners	67.0	british	34.0
The Boys Age	dream pop	100.0	japan	100.0	indie folk	100.0	Wild Weird World	100.0	\N	0.0
Audrey Ryan	indie pop	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Good Company	Hip-Hop	100.0	folk	100.0	indie folk	100.0	cdbaby	100.0	\N	0.0
Joe Innes & The Cavalcade	indie	100.0	british	100.0	alternative	100.0	folk	100.0	indie folk	100.0
Holy Moly & The Crackers	indie	100.0	british	100.0	folk	100.0	acoustic	100.0	Gypsy	100.0
videosforpictures	alternative	100.0	indie rock	100.0	Lo-Fi	100.0	indie folk	100.0	under 2000 listeners	100.0
Union Duke	folk	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Treefort	americana	100.0	Alt-country	100.0	indie folk	100.0	All	100.0	5432fun	100.0
Brett Newski	alternative	100.0	folk	100.0	USA	100.0	indie folk	100.0	\N	0.0
Detective Kalita	singer-songwriter	100.0	canada	100.0	indie folk	100.0	Curious	100.0	folk	50.0
the sleepy trees	indie pop	100.0	indie folk	100.0	under 2000 listeners	50.0	5432fun	50.0	\N	0.0
JASON CHOI	seen live	100.0	indie	100.0	rock	100.0	indie rock	100.0	singer-songwriter	100.0
Bears of manitou	indie	100.0	folk	100.0	acoustic	100.0	indie folk	100.0	\N	0.0
Robh Hokum	folk	100.0	acoustic	100.0	guitar	100.0	indie folk	100.0	Favorite	100.0
capsela	indie folk	100.0	female vocalist	84.0	indie	67.0	indie pop	67.0	twee	34.0
Lulu Mae	indie	100.0	folk	100.0	american	100.0	indie folk	100.0	\N	0.0
Corey Fox-Fardell	pop	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Fire/Works	pop	100.0	folk	100.0	indie pop	100.0	cinematic	100.0	indie folk	100.0
The Silt	indie	100.0	Lo-Fi	100.0	Canadian	100.0	indie folk	100.0	alternative	50.0
Cloud Seeding	indie	100.0	rock	100.0	folk	100.0	indie rock	100.0	dream pop	100.0
Dawn & Hawkes	country	100.0	folk	100.0	female vocalists	100.0	acoustic	100.0	americana	100.0
Brooklyn Brothers	pop	100.0	indie pop	100.0	indie folk	100.0	male vocalists	100.0	\N	0.0
Jo Schornikow	indie pop	100.0	contemporary folk	100.0	indie folk	100.0	indie	50.0	pop	50.0
The Golden Oaks	indie folk	100.0	folk	50.0	experimental	50.0	psychedelic folk	50.0	under 2000 listeners	50.0
Double Jump	indie	100.0	punk	100.0	emo	100.0	folk	100.0	indie rock	100.0
Night Genes	indie	100.0	pop	100.0	rock	100.0	alternative	100.0	alternative rock	100.0
Dan Gautreau & Wolfgang Black	indie	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Shere	pop	100.0	rock	100.0	indie pop	100.0	indie rock	100.0	indie folk	100.0
Hello Caller	indie	100.0	indie folk	100.0	dark folk	100.0	texas	100.0	under 2000 listeners	100.0
Pino Placentile	indie rock	100.0	dream pop	100.0	Garage Rock	100.0	indie folk	100.0	\N	0.0
Pepper Johnson	indie	100.0	indie rock	100.0	indie folk	100.0	Indie Folk Rock	100.0	Bandcamp	100.0
The Great Albatross	acoustic	100.0	indie folk	100.0	indie	50.0	emo	50.0	indie pop	50.0
Giuradei	seen live	100.0	indie pop	100.0	indie folk	100.0	\N	0.0	\N	0.0
Backwood Sun	indie folk	100.0	indie	50.0	pop	50.0	rock	50.0	indie pop	50.0
Wooly & the Mammoth	indie	100.0	rock	100.0	folk	100.0	USA	100.0	acoustic	100.0
Anna Tivel	folk	100.0	indie folk	100.0	PDX	100.0	\N	0.0	\N	0.0
florentino	Indie-Rock	100.0	indie folk	100.0	hippie	100.0	psycho folk	100.0	Musica psicodelica	100.0
No River City	indie	100.0	indie folk	100.0	atlanta	100.0	ALt-CR	100.0	\N	0.0
The Man Whom	indie pop	100.0	singer-songwriter	100.0	indie folk	100.0	folk pop	100.0	under 2000 listeners	100.0
harp and a monkey	folktronica	100.0	indie folk	100.0	male vocalists	100.0	psychedelic folk	100.0	-artist	100.0
Dom Robinson	indie	100.0	folk	100.0	ambient	100.0	acoustic	100.0	indie folk	100.0
Marcomarche	folk	100.0	indie folk	100.0	indonesia	100.0	\N	0.0	\N	0.0
The Midnight Pine	indie pop	100.0	female vocalists	100.0	indie folk	100.0	\N	0.0	\N	0.0
Noahs	folk	100.0	folk rock	100.0	indie folk	100.0	radio paradise	100.0	radioparadise	100.0
Philos Moore	indie	100.0	singer-songwriter	100.0	acoustic	100.0	Lo-Fi	100.0	Alt-country	100.0
Who's Masquerade	indie	100.0	Avant-Garde	100.0	indie folk	100.0	dark folk	100.0	under 2000 listeners	100.0
Jeffrey Foucault & Mark Erelli	indie folk	100.0	alt country	100.0	alt rock	100.0	\N	0.0	\N	0.0
Blackberry Hill	seen live	100.0	indie folk	100.0	female vocalist	100.0	Blackberry Hill	100.0	\N	0.0
Benjamin Poole	Lo-Fi	100.0	indie folk	100.0	Philadelphia	50.0	sadcore	50.0	under 100 listeners	50.0
Heyward Howkins	indie	100.0	alternative	100.0	alternative rock	100.0	folk	100.0	indie pop	100.0
Midwest Dilemma	seen live	100.0	indie folk	100.0	Nebraska	100.0	Omaha	100.0	geohash:9z7dxmqftv7d	100.0
Lutine	seen live	100.0	folk	100.0	female vocalists	100.0	indie folk	100.0	\N	0.0
Mel Washington	electronic	100.0	folk	100.0	singer-songwriter	100.0	folk rock	100.0	blues rock	100.0
Michael Cassidy	folk	100.0	singer-songwriter	100.0	Scottish	100.0	indie folk	100.0	male vocalists	100.0
The Ludlow Thieves	seen live	100.0	folk	100.0	indie folk	100.0	check em out	100.0	\N	0.0
The Skeleton Dead	indie	100.0	folk	100.0	slowcore	100.0	indie folk	100.0	check out	100.0
Miss Murgatroid And Petra Haden	instrumental	100.0	freak folk	100.0	indie folk	100.0	accordian violin	100.0	\N	0.0
Rob Snarski	indie	100.0	folk	100.0	indie rock	100.0	indie folk	100.0	\N	0.0
Jenny Mayhem	indie	100.0	folk	100.0	indie rock	100.0	canada	100.0	acoustic	100.0
The Shakadellics	indie	100.0	pop	100.0	alternative	100.0	indie pop	100.0	indie rock	100.0
the northernness	indie	100.0	folk	100.0	singer-songwriter	100.0	indie folk	100.0	rock	50.0
Jonas Carping	indie	100.0	alternative	100.0	acoustic	100.0	americana	100.0	jeff buckley	100.0
Tommy Santee Klaws	seen live	100.0	folk	100.0	freak folk	100.0	spiritual	100.0	folk rock	100.0
Enderby's Room	acoustic	100.0	soft	100.0	indie folk	100.0	anti-folk	100.0	under 2000 listeners	100.0
Taylor Project	australia	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Dragonfly Collector	indie folk	100.0	Pop-Rock	100.0	Filipino	100.0	\N	0.0	\N	0.0
Cavalier in Clay	indie	100.0	rock	100.0	folk	100.0	indie folk	100.0	reddit	100.0
Ines Talbi	indie folk	100.0	montreal	100.0	helsinki	100.0	Pop Folk	100.0	ines talbi	100.0
History of Painters	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Audience Of Actors	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Allison Scagliotti	pop rock	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
The Tranquis	indie folk	100.0	Yo La Tengo	67.0	seen live	34.0	folk	34.0	under 2000 listeners	34.0
Parábolas del Bosque	sadcore	100.0	blues	100.0	indie folk	100.0	\N	0.0	\N	0.0
Diamond Carter	classic rock	100.0	indie	100.0	pop	100.0	rock	100.0	soul	100.0
The Kaleurs	indie	100.0	indie rock	100.0	acoustic	100.0	Dreamy	100.0	indie folk	100.0
Man&Dog	seen live	100.0	indie folk	100.0	perfect	100.0	FUCKING AWESOME	100.0	\N	0.0
Bahia Inutil	indie	100.0	folk	100.0	acoustic	100.0	indie folk	100.0	chilean	100.0
Justin Robinson & the Mary Annettes	folk	100.0	experimental	100.0	Lo-Fi	100.0	strings	100.0	cello	100.0
Benjamin Oak Goodman	seen live	100.0	Alt-country	100.0	indie folk	100.0	All	100.0	\N	0.0
Wild Leaves	indie	100.0	folk	100.0	americana	100.0	indie folk	100.0	alt country	100.0
Annabelle's Curse	indie rock	100.0	folk-rock	100.0	indie folk	100.0	male vocalists	100.0	\N	0.0
Materia Gris	rock	100.0	reggae	100.0	Progressive rock	100.0	ska reggae	100.0	argentina	100.0
Little Talks	indie rock	100.0	folk rock	100.0	indie folk	100.0	\N	0.0	\N	0.0
The Three 4 Tens	indie	100.0	indie rock	100.0	funk	100.0	indie folk	100.0	under 2000 listeners	100.0
Sour Boy, Bitter Girl	indie rock	100.0	Alt-country	100.0	indie folk	100.0	folk punk	100.0	\N	0.0
The Folk	seen live	100.0	british	100.0	folk	100.0	female vocalists	100.0	indie folk	100.0
cavalry	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Robin Pahlman	indie	100.0	rock	100.0	folk	100.0	indie rock	100.0	singer-songwriter	100.0
Ally Heman	indie	100.0	pop	100.0	alternative	100.0	folk	100.0	acoustic	100.0
Figueiredo	acoustic	100.0	brazil	100.0	brasil	100.0	indie folk	100.0	\N	0.0
Capitol Jay	indie folk	100.0	country	50.0	folk rock	50.0	underrated	50.0	thesixtyone	50.0
Alasdair Bouch	indie folk	100.0	uk songwriter folk acoustic blues	100.0	\N	0.0	\N	0.0	\N	0.0
Great Grandpa	indie	100.0	pop	100.0	indie rock	100.0	acoustic	100.0	noise pop	100.0
Madonna & Gogol Bordello	indie	100.0	pop	100.0	indie pop	100.0	indie rock	100.0	indie folk	100.0
Mustache And Beard	indie	100.0	folk	100.0	indie folk	100.0	chill out	100.0	indonesian	100.0
Wildflowers	seen live	100.0	indie	100.0	alternative	100.0	alternative rock	100.0	indie pop	100.0
King Devil	indie rock	100.0	contemporary folk	100.0	folk rock	100.0	indie folk	100.0	indie isnt a genre	100.0
Diane Zeigler	singer-songwriter	100.0	indie folk	100.0	lyrical	100.0	Myjukebox	100.0	Neo-Pagan	100.0
Nýr Líf	indie	100.0	folk	100.0	american	100.0	indie folk	100.0	math folk	100.0
Mike Bochoff	alternative	100.0	singer-songwriter	100.0	indie folk	100.0	male vocalists	100.0	\N	0.0
The Lexington Chapter	indie folk	100.0	rock	67.0	alternative	67.0	indie rock	67.0	alt rock	34.0
Chris Ho	indie pop	100.0	singer-songwriter	100.0	Canadian	100.0	folk rock	100.0	indie folk	100.0
Nana Jacobi	indie	100.0	indie pop	100.0	indie rock	100.0	female vocalists	100.0	indie folk	100.0
Darynyck	indie	100.0	pop	100.0	folk	100.0	indie pop	100.0	unsigned	100.0
Wing & Tusk	indie	100.0	folk	100.0	Alt-country	100.0	indie folk	100.0	\N	0.0
Vote Dukakis	folk	100.0	acoustic	100.0	indie folk	100.0	under 2000 listeners	100.0	periferin	100.0
Those Willows	indie	100.0	pop	100.0	folk	100.0	indie rock	100.0	folk rock	100.0
Lisa/Liza	indie	100.0	indie folk	100.0	portland	100.0	United States	100.0	maine	100.0
Trembling Bells & Bonnie "Prince" Billy	folk	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
The Fallows	indie	100.0	british	100.0	alternative	100.0	folk	100.0	indie pop	100.0
Southern Gothic Tales	indie folk	100.0	dark folk	100.0	alt country	100.0	folk pop	100.0	\N	0.0
Легкий/Земляникин	classic rock	100.0	folk	100.0	Lo-Fi	100.0	indie folk	100.0	New Weird Russia	100.0
Adel Bengo	punk	100.0	folk	100.0	experimental	100.0	female vocalists	100.0	singer-songwriter	100.0
Jennifer Evans	seen live	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Subaru	indie	100.0	folk	100.0	indie folk	100.0	singer-songwriter	75.0	alternative	25.0
The Big head troubled boy	indie folk	100.0	under 2000 listeners	100.0	Folk Jazz	100.0	\N	0.0	\N	0.0
Matt Montez	indie	100.0	folk	100.0	singer-songwriter	100.0	Love	100.0	acoustic	100.0
León	indie	100.0	pop	100.0	emo	100.0	screamo	100.0	folk rock	100.0
For Wishes	indie	100.0	Dreamy	100.0	dream pop	100.0	detroit	100.0	Mellow	100.0
Molina y los Cósmicos	folk	100.0	lofi	100.0	indie folk	100.0	western	100.0	Montevideo	100.0
Eliza Douglas	folk	100.0	freak folk	100.0	New Weird America	100.0	indie folk	100.0	stuff I like	100.0
Evan Krestov	Classical	100.0	ambient	100.0	sad	100.0	indie folk	100.0	neofolk	100.0
Goose Lake	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Tan or Boil	seen live	100.0	indie	100.0	alternative	100.0	folk	100.0	experimental	100.0
Hayley Coupon	female vocalists	100.0	singer-songwriter	100.0	indie folk	100.0	\N	0.0	\N	0.0
House by the Lake	singer-songwriter	100.0	americana	100.0	norwegian	100.0	indie folk	100.0	Norway	100.0
Amarante :)	alternative	100.0	indie pop	100.0	indie folk	100.0	eletronic	100.0	\N	0.0
The Surf, The Sundried	indie	100.0	chill	100.0	instrumental	100.0	folk	100.0	download	100.0
X-tal	80s	100.0	alternative rock	100.0	90s	100.0	punk rock	100.0	indie folk	100.0
Marcos Almeida	indie	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Frànçois	seen live	100.0	singer-songwriter	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
Gibson Bull	folk	100.0	Mellow	100.0	alt folk	100.0	indie folk	100.0	british	67.0
The Cellar Door	seattle	100.0	USA	100.0	chamber pop	100.0	folk rock	100.0	indie folk	100.0
Only in the Mornings	indie	100.0	emo	100.0	ambient	100.0	singer-songwriter	100.0	acoustic	100.0
Olivia Fernandez	chillout	100.0	electronic	100.0	electronica	100.0	indie	100.0	jazz	100.0
Little Lo	indie	100.0	indie pop	100.0	indie folk	100.0	folk	50.0	indie rock	50.0
A boy with glasses	folk	100.0	singer-songwriter	100.0	indie folk	100.0	italian	100.0	Italian Indie	100.0
Ermine Coat	noise	100.0	experimental	100.0	noise rock	100.0	singer-songwriter	100.0	australian	100.0
Wholesome Fish	seen live	100.0	indie folk	100.0	cajun	50.0	punk folk	50.0	fantastic live	50.0
Faran Flad	folk	100.0	acoustic	100.0	world	100.0	irish	100.0	indie folk	100.0
Saints Apollo	indie	100.0	folk	100.0	Love	100.0	indie folk	100.0	North Carolina	100.0
Jacob Faurholt & Sweetie Pie Wilbur	seen live	100.0	singer-songwriter	100.0	indie folk	100.0	under 2000 listeners	100.0	slow and sad	100.0
Ami Sioux	folk	100.0	folk rock	100.0	indie folk	100.0	singer-songwriters	100.0	under 2000 listeners	100.0
Fall Classic	soul	100.0	alternative	100.0	indie rock	100.0	Progressive rock	100.0	funk	100.0
Split Tongue Crow	americana	100.0	indie folk	100.0	singer songwriter	100.0	Alternative Folk	100.0	newgrass	100.0
Distance, Light And Sky	indie folk	100.0	glitterhouse	100.0	americana	50.0	all country	50.0	\N	0.0
Everyone's Heart	folk	100.0	indie rock	100.0	indie folk	100.0	\N	0.0	\N	0.0
People Person	rock	100.0	folk	100.0	ambient	100.0	experimental	100.0	indie rock	100.0
Ryan Cassata	indie rock	100.0	indie folk	100.0	Alternative Folk	100.0	anti folk	100.0	Acoustic Folk	100.0
Tan Low	singer-songwriter	100.0	indie folk	100.0	spanish	50.0	spain	50.0	under 2000 listeners	50.0
Peter And The Mountain	indie	100.0	folk	100.0	acoustic	100.0	indie folk	100.0	\N	0.0
Kat Maslich Bode	female vocalists	100.0	singer-songwriter	100.0	indie folk	100.0	\N	0.0	\N	0.0
Парад Большой Головы	indie	100.0	folk	100.0	freak folk	100.0	indie folk	100.0	IndieFolk	100.0
Spider + Octopus	seen live	100.0	folk	100.0	indie folk	100.0	pensacola	100.0	\N	0.0
Mark Duval	folk	100.0	singer-songwriter	100.0	folk-rock	100.0	acoustic	100.0	americana	100.0
NIKOL, LUKA & VEDRAN	seen live	100.0	indie	100.0	folk	100.0	acoustic	100.0	psychedelic	100.0
John The Baptist	New Zealand	100.0	Alt-country	100.0	folk rock	100.0	indie folk	100.0	alt country	100.0
Dear Sleeper	folk	100.0	acoustic	100.0	indie folk	100.0	\N	0.0	\N	0.0
Honey Locust	indie folk	100.0	folk	67.0	acoustic	67.0	orchestral	67.0	banjo	67.0
Young Readers	indie	100.0	folk	100.0	acoustic	100.0	indie folk	100.0	\N	0.0
With a Light Heart	swedish	100.0	indie pop	100.0	indie folk	100.0	check em out	100.0	Sweden	50.0
Cameron Blake	folk	100.0	indie rock	100.0	folk-rock	100.0	beautiful	100.0	strings	100.0
Jens Bosteen	pop	100.0	folk	100.0	indie folk	100.0	singer songwriter	100.0	under 2000 listeners	100.0
Tyler Sjöström	folk	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
J. Allen	indie	100.0	alternative	100.0	ambient	100.0	acoustic	100.0	Brooklyn	100.0
Grand Lake Islands	indie	100.0	acoustic	100.0	indie folk	100.0	lyrics oriented	100.0	\N	0.0
Lovely Dark	indie	100.0	folk	100.0	indie folk	100.0	more famous soon	100.0	\N	0.0
Hundred Air	indie	100.0	indie folk	100.0	rock	50.0	indie pop	50.0	chapel hill	50.0
Marc Ribot & My Brightest Diamond	pop	100.0	folk	100.0	indie pop	100.0	female vocalists	100.0	indie folk	100.0
Omarbeat	folk	100.0	indie rock	100.0	indie folk	100.0	mexicano	100.0	\N	0.0
Jordan O'Shea	folk	100.0	singer-songwriter	100.0	indie folk	100.0	male vocalists	100.0	\N	0.0
Hannah Hays	acoustic	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Semicircle	indie	100.0	folk	100.0	freak folk	100.0	indie folk	100.0	\N	0.0
The Mountain Parade	folk	100.0	horns	100.0	bristol	100.0	banjo	100.0	indie folk	100.0
Chill Murray	indie rock	100.0	Lo-Fi	100.0	freak folk	100.0	indie folk	100.0	\N	0.0
The New Originals	indie pop	100.0	indie rock	100.0	folk rock	100.0	indie folk	100.0	folk pop	100.0
Brigitte Naggar	rock	100.0	folk	100.0	indie pop	100.0	indie rock	100.0	female vocalists	100.0
jonathan balfour	indie	100.0	indie rock	100.0	post-rock	100.0	singer-songwriter	100.0	piano	100.0
Sacha Sieff & Manuel Armstrong	indie	100.0	pop	100.0	rock	100.0	folk	100.0	indie pop	100.0
Chloe Makes Music	singer-songwriter	100.0	indie folk	100.0	female vocalists	50.0	under 2000 listeners	50.0	Discoveries	50.0
Streetlight Cadence	indie folk	100.0	indie	50.0	vocal	50.0	alternative	50.0	folk	50.0
The YuYa	indie	100.0	indie folk	100.0	british	50.0	alternative	50.0	folk	50.0
Putnam Smith	folk	100.0	singer-songwriter	100.0	acoustic	100.0	Alt-country	100.0	bluegrass	100.0
Malo Zima	rock	100.0	alternative	100.0	folk	100.0	ambient	100.0	australian	100.0
Sgt Dunbar and the Hobo Banned	indie	100.0	folk	100.0	Lo-Fi	100.0	Gypsy	100.0	indie folk	100.0
Morgan Mecaskey	folk	100.0	folk rock	100.0	indie folk	100.0	indie	50.0	indie pop	50.0
Cooper Kaminsky Music	indie	100.0	folk	100.0	singer-songwriter	100.0	UK	100.0	acoustic	100.0
Mevansa	indie	100.0	rock	100.0	folk	100.0	female vocalists	100.0	acoustic	100.0
Jose Delhart	indie folk	100.0	experimental	67.0	folk rock	67.0	singer songwriter	67.0	under 2000 listeners	67.0
Second Child	seen live	100.0	indie	100.0	folk	100.0	Alt-country	100.0	indie folk	100.0
No Blood In Bones	electronic	100.0	indie folk	100.0	under 2000 listeners	100.0	indie	50.0	prog	50.0
That Blasted Hound	seen live	100.0	indie	100.0	folk	100.0	Lo-Fi	100.0	indie folk	100.0
Koonsidi'o	indie	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0	easy listening	100.0
Carter Behnke	indie	100.0	folk	100.0	guitar	100.0	indie folk	100.0	creative commons	100.0
Sean Patton	indie	100.0	singer-songwriter	100.0	acoustic	100.0	indie folk	100.0	British Columbia	100.0
The Family Simpson	indie	100.0	acoustic	100.0	Scottish	100.0	scotland	100.0	beauty	100.0
nahe	indie folk	100.0	Alternative Folk	100.0	electronic	50.0	electronica	50.0	seen live	50.0
Sci-Fi Romance	indie folk	100.0	rock-progressive-psychedelic	100.0	\N	0.0	\N	0.0	\N	0.0
Prague	post-rock	100.0	japanese	50.0	chinese	44.0	rock	38.0	J-rock	32.0
William Within	indie	100.0	Minnesota	100.0	singer-songwriter	100.0	americana	100.0	indie folk	100.0
Fields of Gaffney	indie rock	100.0	Lo-Fi	100.0	indie folk	100.0	\N	0.0	\N	0.0
Jordan Velez	indie pop	100.0	acoustic	100.0	indie folk	100.0	folk pop	100.0	Acoustic Folk	100.0
Falso Coral	indie	100.0	folk	100.0	indie pop	100.0	dream pop	100.0	folk rock	100.0
Monograf	seen live	100.0	indie folk	100.0	Norway	100.0	norwegian folk	100.0	\N	0.0
The Ramisco Maki Maki Rocking Horse	indie	100.0	alternative	100.0	indie folk	100.0	folk	50.0	indie rock	50.0
El Le Faunt & His Traveling Circus	indie	100.0	twin cities	100.0	folk	100.0	Gothic	100.0	Gypsy	100.0
JARDIER	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Innen Drinnen Project	trance	100.0	indie	100.0	pop	100.0	rock	100.0	60s	100.0
Jason Kanakis and his Coalition of the Unwilling	singer-songwriter	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Drugs in Vegas	indie folk	100.0	check this out	100.0	\N	0.0	\N	0.0	\N	0.0
Rough Partner	indie folk	100.0	SnG	100.0	folk	50.0	Lo-Fi	50.0	i have seen live	50.0
Valerio Lysander	alternative	100.0	folk	100.0	indie pop	100.0	poetry	100.0	indie folk	100.0
or The Children's Crusade	indie	100.0	folk	100.0	indie rock	100.0	acoustic	100.0	Lo-Fi	100.0
Wearyland	acoustic	100.0	Mellow	100.0	indie folk	100.0	\N	0.0	\N	0.0
Lipstick Lumberjack	folk	100.0	singer-songwriter	100.0	Alt-country	100.0	indie folk	100.0	folk pop	100.0
Tom Dron	indie folk	100.0	experimental folk	100.0	Lo-Fi Indie	100.0	depressioncore	100.0	TTMMWTKM-core	100.0
katie mullins	indie	100.0	folk	100.0	singer-songwriter	100.0	indie folk	100.0	female vocalist	100.0
Panda Bear Jones	indie	100.0	acoustic	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
Yo Zushi	indie	100.0	singer-songwriter	100.0	indie folk	100.0	\N	0.0	\N	0.0
Ярн	indie folk	100.0	dark folk	100.0	ukrainian Indie since 90s	100.0	\N	0.0	\N	0.0
Julia Jacklin	pop	100.0	folk	100.0	singer-songwriter	100.0	indie folk	100.0	\N	0.0
Ultan Conlon	folk	100.0	acoustic	100.0	melodic	100.0	original	100.0	irish	100.0
UpDaiGlasses	indie folk	100.0	indie	50.0	deutsch	50.0	german	50.0	irish	50.0
Rebel Kites	indie	100.0	rock	100.0	folk	100.0	epic	100.0	acoustic	100.0
Johnny Bertram & The Golden Bicycles	singer-songwriter	100.0	americana	100.0	indie folk	100.0	\N	0.0	\N	0.0
Mammut Is in Love	electronica	100.0	indie	100.0	folk	100.0	ambient	100.0	indie pop	100.0
Scott Liss	seen live	100.0	indie	100.0	fantastic	100.0	beautiful	100.0	indie folk	100.0
Sam Green And The Midnight Heist	rock	100.0	country	100.0	british	100.0	blues	100.0	folk rock	100.0
Animal Daydream	indie	100.0	jangle pop	100.0	soft rock	100.0	psychedelic pop	100.0	indie folk	100.0
More Wine Please	indie folk	100.0	alternative	50.0	female vocals	50.0	psychopop	50.0	\N	0.0
Teddy Goldstein	seen live	100.0	rock	100.0	indie folk	100.0	New York City	100.0	new england	100.0
The Meadowlarks	singer-songwriter	100.0	indie folk	100.0	doo wop	100.0	under 2000 listeners	100.0	\N	0.0
Willie Breeding	indie	100.0	folk	100.0	singer-songwriter	100.0	singer	100.0	songwriter	100.0
Caj	indie	100.0	folk	100.0	indie rock	100.0	twee	100.0	acoustic	100.0
Trinity & Triage	rock	100.0	alternative rock	100.0	Progressive	100.0	Psychedelic Rock	100.0	indie folk	100.0
Sam Bennett	indie	100.0	pop	100.0	british	100.0	alternative	100.0	folk	100.0
George Woods	indie	100.0	pop	100.0	indie pop	100.0	singer-songwriter	100.0	indie folk	100.0
Tchello Palma	indie	100.0	pop	100.0	folk	100.0	acoustic	100.0	soft rock	100.0
Onat Önol	indie rock	100.0	acoustic	100.0	Lo-Fi	100.0	post-punk	100.0	shoegaze	100.0
Ranulfo el contador	indie	100.0	alternative	100.0	folk	100.0	Lo-Fi	100.0	indie folk	100.0
Rio Mezzanino	indie	100.0	acoustic	100.0	indie folk	100.0	italian	100.0	Desert	100.0
Church Library	folk	100.0	female vocalists	100.0	acoustic	100.0	indie folk	100.0	Holiday Records	100.0
Wolfie's Just Fine	indie	100.0	folk	100.0	indie rock	100.0	indie folk	100.0	\N	0.0
Michael Bowman (Michael Bowman Productions)	electronic	100.0	indie	100.0	chill	100.0	alternative	100.0	alternative rock	100.0
Coutto Orchestra de Cabeça	electronic	100.0	folk	100.0	brasil	100.0	indie folk	100.0	under 2000 listeners	100.0
Shedding Feathers	experimental	100.0	banjo	100.0	indie folk	100.0	brushes	100.0	Like So	100.0
Robert Robinson	folk	100.0	indie pop	100.0	Lo-Fi	100.0	indie folk	100.0	mn	100.0
Ninette & The Goldfish	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Anchor in the Valley	indie	100.0	folk	100.0	americana	100.0	female songwriter	100.0	Alt-country	100.0
Dogwood and Dahlia	folk	100.0	folk-pop	100.0	Canadian	100.0	indie folk	100.0	canadian folk	100.0
Emma Hill and Her Gentlemen Callers	americana	100.0	indie folk	100.0	country folk	100.0	\N	0.0	\N	0.0
Ranger 3	chillout	100.0	electronic	100.0	indie	100.0	chill	100.0	alternative	100.0
Our Minor Fall	seen live	100.0	indie	100.0	indie folk	100.0	amsterdam	100.0	\N	0.0
Digo Policiano	indie	100.0	chill	100.0	alternative	100.0	folk	100.0	singer-songwriter	100.0
雪月ありす	electronic	100.0	electronica	100.0	rock	100.0	singer-songwriter	100.0	pop rock	100.0
The Surgical Staff	indie	100.0	experimental	100.0	indie rock	100.0	epic	100.0	dark	100.0
Chicha Morais	Bossa Nova	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Greg Koons	rock	100.0	alternative rock	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0
Pipa	alternative	100.0	folk	100.0	indie pop	100.0	female vocalists	100.0	indie folk	100.0
Radio Wire Empire & A Problem Like Maria	indie	100.0	free	100.0	indie folk	100.0	collaboration	100.0	lyrical	100.0
Sleeping Empires	indie	100.0	british	100.0	alternative	100.0	folk	100.0	UK	100.0
The Hand in the Ocean	indie	100.0	alternative	100.0	folk	100.0	indie rock	100.0	americana	100.0
Kirsten Opstad	seen live	100.0	singer-songwriter	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
Rusty Borealis	folk	100.0	Alt-country	100.0	indie folk	100.0	Michigan	100.0	\N	0.0
Justin Matthew Dullum	indie	100.0	acoustic	100.0	beautiful	100.0	Mellow	100.0	indie folk	100.0
Alisia Casper	indie	100.0	Lo-Fi	100.0	outsider	100.0	indie folk	100.0	sublime	100.0
Josh Perlman	folk	100.0	singer-songwriter	100.0	literate	100.0	indie folk	100.0	\N	0.0
Stephen Wings & The Regulars	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Stefan Fink	indie folk	100.0	under 2000 listeners	100.0	acoustic punk	100.0	spirituals	100.0	A Few Songs About Flying	100.0
Kat Izabit White	indie	100.0	chill	100.0	alternative	100.0	folk	100.0	ambient	100.0
Riverhouse	indie	100.0	alternative	100.0	folk	100.0	ambient	100.0	indie pop	100.0
Muke	indie	100.0	acoustic	100.0	indie folk	100.0	under 2000 listeners	100.0	oregon	50.0
The Natural History Museum	indie pop	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
The Lovecats	seen live	100.0	folk	100.0	indie folk	100.0	female vocalist	100.0	Italy	100.0
Kuzmich Orchestra	indie	100.0	indie folk	100.0	folkrock	100.0	sequencer	100.0	two-piece	100.0
Valter Lobo	alternative	100.0	indie rock	100.0	portuguese	100.0	indie folk	100.0	\N	0.0
Blå Nætter	indie	100.0	indie rock	100.0	folk rock	100.0	indie folk	100.0	dansk	100.0
Secret Babies	indie	100.0	folk	100.0	female vocalists	100.0	indie folk	100.0	folk pop	100.0
The Graze	folk	100.0	singer-songwriter	100.0	indie folk	100.0	\N	0.0	\N	0.0
Amit Erez & The Secret Sea	indie folk	100.0	Israel	100.0	tel aviv	100.0	check em out	100.0	\N	0.0
Blackwood Harvest	folk	100.0	indie folk	100.0	\N	0.0	\N	0.0	\N	0.0
Temple Book	japanese	100.0	contemporary folk	100.0	indie folk	100.0	\N	0.0	\N	0.0
Los Paquitos	80s	100.0	latin	100.0	folk rock	100.0	cumbia	100.0	indie folk	100.0
J. Gabriel	indie	100.0	pop	100.0	indie pop	100.0	alt folk	100.0	indie folk	100.0
Dark Ambient Forest	noise	100.0	drone	100.0	indie folk	100.0	dark ambient	100.0	black metal	50.0
Rachel Kate	country	100.0	folk	100.0	singer-songwriter	100.0	blues	100.0	indie folk	100.0
Dedo Caracol	alternative	100.0	alternative rock	100.0	folk	100.0	experimental	100.0	indie rock	100.0
John Mark Arcilla	indie	100.0	pop	100.0	rock	100.0	alternative	100.0	folk	100.0
Colin Spring	folk	100.0	acoustic	100.0	folk rock	100.0	indie folk	100.0	\N	0.0
Adam Donen	indie folk	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Jos. Fortin	indie	100.0	indie pop	100.0	indie folk	100.0	Peterborough	100.0	\N	0.0
Milly Geronimo	indie	100.0	folk	100.0	indie rock	100.0	twee	100.0	acoustic	100.0
The Warren G. Hardings	country	100.0	folk	100.0	folk rock	100.0	bluegrass	100.0	indie folk	100.0
Matthew Haseltine	alternative	100.0	indie rock	100.0	singer-songwriter	100.0	acoustic	100.0	folk rock	100.0
Will Simmons	indie	100.0	folk	100.0	Lo-Fi	100.0	indie folk	100.0	\N	0.0
Cigarettes and Milk	singer-songwriter	100.0	contemporary folk	100.0	Lo-Fi	100.0	indie folk	100.0	Acoustic Folk	100.0
Martin Bradford-Gago	indie	100.0	folk	100.0	ambient	100.0	post-rock	100.0	acoustic	100.0
Alone in Boston	indie	100.0	pop	100.0	rock	100.0	folk	100.0	indie pop	100.0
Michael Cota	indie	100.0	experimental	100.0	Canadian	100.0	indie folk	100.0	montreal	100.0
St. Clair Board	folk	100.0	ambient	100.0	experimental	100.0	female vocalists	100.0	Lo-Fi	100.0
Kuh	indie	100.0	japanese	100.0	indie pop	100.0	pop	75.0	rock	75.0
Me Enveneno De Azules	indie pop	100.0	spanish	92.0	indie	50.0	pop	50.0	spanish indie pop	42.0
OH!hello	indie	100.0	Surf	100.0	indie pop	100.0	acoustic	100.0	other	100.0
Mexico City Blondes	indie pop	100.0	All	100.0	\N	0.0	\N	0.0	\N	0.0
Electric Zoo	classic rock	100.0	rock	100.0	hard rock	100.0	funk	100.0	blues	100.0
Katarse	rock	100.0	mpb	100.0	blues rock	100.0	rock brasil	100.0	rock brasileiro	100.0
Russell Crowe & 30 Odd Foot Of Grunts	rock	100.0	alternative rock	100.0	pop rock	100.0	australian	100.0	blues rock	100.0
Little Mike & The Tornadoes	blues rock	100.0	blues	50.0	harmonica	50.0	Lecker Blues	17.0	\N	0.0
Matt Corcoran	blues rock	100.0	blues	67.0	australian	50.0	hard rock-blues	34.0	All	17.0
The Izzys	seen live	100.0	new york	100.0	blues rock	100.0	rock n roll	100.0	music	100.0
Hugo Race Fatalists	Psychedelic Rock	100.0	blues rock	100.0	seen live	50.0	indie	50.0	rock	50.0
Bobby Mack	blues rock	100.0	blues	67.0	allboutguitar	67.0	seen live	34.0	rockabilly	34.0
Albany Down	classic rock	100.0	blues rock	100.0	british blues rock	100.0	blues rock artist	100.0	\N	0.0
BB Chung King & The Buddaheads	blues	100.0	blues rock	100.0	rock	75.0	bluesrock	75.0	blues-rock	50.0
Slash's Blues Ball	blues	100.0	blues rock	100.0	Slash	60.0	hard rock	40.0	american	40.0
Hey Jimi	rock	100.0	blues	100.0	guitar	100.0	blues rock	100.0	polish	100.0
Kris Pohlmann Band	blues	100.0	blues rock	100.0	guitar	58.0	German Blues Lovers	58.0	rock	43.0
Cheap Wine	rock	100.0	blues rock	100.0	Psychedelic Rock	67.0	seen live	34.0	Stoner Rock	34.0
Coyote Kings	blues	100.0	blues rock	100.0	rock	50.0	bluesrock	50.0	Contemporary Blues	50.0
the brand	british	100.0	blues rock	100.0	mod	100.0	belgique	100.0	midlands uk	100.0
Ooh La La	blues rock	100.0	hard rock	50.0	under 2000 listeners	50.0	rock	25.0	australian	25.0
Sam Apple Pie	blues rock	100.0	classic rock	70.0	70s	50.0	british	40.0	psychedelic	40.0
The Helpful Soul	japanese	100.0	blues rock	100.0	Psychedelic Rock	86.0	hard rock	43.0	Progressive rock	43.0
Lara Price Band	blues rock	100.0	blues guitar women	100.0	blues	72.0	bluesrock	72.0	female vocalists	58.0
Трофимов Сергей	blues rock	100.0	Russia	100.0	Author song	100.0	\N	0.0	\N	0.0
John Earl Walker Band	blues rock	100.0	blues	50.0	bluesrock	50.0	harmonica blues	34.0	rock	17.0
Nuts	jazz	100.0	hardcore	100.0	bass	100.0	trumpet	100.0	blues rock	100.0
Krzak & Ryszard Riedel	blues rock	100.0	polish	60.0	rock	40.0	blues	40.0	80s	20.0
Ben Poole	blues	100.0	blues rock	100.0	rock	60.0	seen live	40.0	singer-songwriter	40.0
Tommy Bolin & Friends	hard rock	100.0	funk	100.0	blues rock	100.0	deep purple	100.0	\N	0.0
The Duke Robillard Band	blues	100.0	blues rock	100.0	under 2000 listeners	100.0	Myjukebox	100.0	\N	0.0
100 WATT VIPERS	heavy metal	100.0	hard rock	100.0	Garage Rock	100.0	blues rock	100.0	hard blues	100.0
Eric Bell	seen live	100.0	rock	100.0	blues	100.0	House	100.0	guitar	100.0
Spirit of John Morgan	Progressive rock	100.0	Psychedelic Rock	100.0	blues rock	100.0	psychedellic	67.0	rock 70s	67.0
Hamburg Blues Band	blues	100.0	blues rock	100.0	seen live	60.0	jazz	20.0	rock	20.0
Bill Leverty	blues rock	100.0	guitar virtuoso	100.0	guitar	50.0	\N	0.0	\N	0.0
Jim Suhler	blues rock	100.0	blues	75.0	guitar	50.0	rock	38.0	bluesrock	25.0
JW-Jones	blues rock	100.0	allboutguitar	100.0	BRC Blues Band	100.0	BRC Blues Band Karlsruhe	100.0	German Blues Lovers	67.0
Muleskinner Blues Band	blues rock	100.0	blues	87.0	rock	54.0	guitar	34.0	british	27.0
Ride The Blinds	blues rock	100.0	rock	58.0	blues	58.0	guitar	43.0	under 2000 listeners	43.0
Hidden Masters	seen live	100.0	rock	100.0	folk	100.0	indie rock	100.0	hard rock	100.0
Jon Amor Blues Group	blues	100.0	blues rock	100.0	rock	80.0	singer-songwriter	40.0	UK	40.0
Tony Vega Band	blues rock	100.0	blues	50.0	seen live	17.0	omg	17.0	american	17.0
Julia Smith	indie	100.0	rock	100.0	folk	100.0	experimental	100.0	psychedelic	100.0
Ozone Mama	blues rock	100.0	Southern Rock	100.0	hard rock	80.0	rock	40.0	hungarian	40.0
The Immigrants	guitar	100.0	blues rock	100.0	Awesome	34.0	melodic	34.0	punk rock	34.0
Ari Borger	blues	100.0	blues rock	100.0	jazz	50.0	gramusels bluesrock	50.0	\N	0.0
Federal Charm	hard rock	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
Van Wilks	blues rock	100.0	blues	67.0	United States	67.0	rock	34.0	guitar	34.0
Jessica Breanne & The Electric Hearts	soul	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
DJENDEMA	Psychedelic Rock	100.0	blues rock	100.0	hard rock	67.0	bulgarian rock	67.0	blues	34.0
72Blues	blues rock	100.0	canada	50.0	blues	50.0	dirty blues	50.0	garage blues	50.0
Barry Levenson	blues	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
Indische Party	indie	100.0	oldies	100.0	blues rock	100.0	Rock and Roll	100.0	60s revival	100.0
Crow Black Chicken	blues rock	100.0	blues	84.0	rock	67.0	guitar	34.0	Progressive	34.0
Goodbye June	indie	100.0	rock	100.0	alternative	100.0	alternative rock	100.0	blues	100.0
Don Ray Band	blues	100.0	blues rock	100.0	Southern Rock	58.0	rock	29.0	guitar	15.0
Taste Of Blues	blues rock	100.0	psychedelic	84.0	Psychedelic Rock	67.0	Progressive rock	34.0	blues	34.0
Laurie Morvan Band	blues	100.0	blues rock	100.0	female blues vocalist	100.0	Laurie Morvan	100.0	rhythm and blues	67.0
Delbert McClinton & Glen Clark	blues	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
Kozmic Blues Band	classic rock	100.0	blues rock	100.0	under 2000 listeners	67.0	hard rock	34.0	blues	34.0
Dave Stewart feat. Candy Dulfer	pop	100.0	rock	100.0	blues	100.0	blues rock	100.0	\N	0.0
Mike Snowden	blues	100.0	blues rock	100.0	bluesrock	100.0	alternative	50.0	electric blues	50.0
Bernard Allison Group	blues rock	100.0	guitar	60.0	blues	40.0	rock band	20.0	allboutguitar	20.0
Renegade Creation	blues rock	100.0	rock	50.0	blues	50.0	guitar	50.0	jazz	25.0
The Jumping Cats	blues rock	100.0	bluesrock	75.0	guitar blues	75.0	rock	50.0	guitar	50.0
Barry McCabe	blues rock	100.0	blues	67.0	Southern Rock	67.0	Celtic Blues	50.0	Folk Blues	34.0
Supersonic Blues Machine	rock	100.0	blues	100.0	blues rock	100.0	\N	0.0	\N	0.0
David Lindley & Ry Cooder	blues rock	100.0	ry cooder	75.0	David Lindley	75.0	rock	50.0	slide guitar	50.0
Loners	classic rock	100.0	indie	100.0	pop	100.0	rock	100.0	soul	100.0
A.L.O.	blues rock	100.0	alternativ	100.0	Jam Rock	100.0	jj n friends	100.0	\N	0.0
Arina	blues	100.0	lithuanian	100.0	blues rock	100.0	seen live	50.0	\N	0.0
Black Kali Ma	punk	100.0	blues rock	100.0	Southern Rock	67.0	rock n roll	67.0	punkrock	34.0
John the Revelator	favorite songs	100.0	blues rock	100.0	rock 70s	100.0	blues-rock	50.0	blues	50.0
DATURA4	blues rock	100.0	rock	67.0	Stoner Rock	67.0	Garage Rock	67.0	Psychedelic Rock	67.0
Dr. Wu' and Friends	blues	100.0	blues rock	100.0	electric blues	67.0	guitar	34.0	american	34.0
Slidin' Slim	blues rock	100.0	singer-songwriter	75.0	guitarist	75.0	Sweden	50.0	rock	25.0
Johnny Winter And	classic rock	100.0	rock	100.0	70s	100.0	blues rock	100.0	blues	50.0
Steve Earle & Reckless Kelly	rock	100.0	alternative rock	100.0	Progressive rock	100.0	guitar	100.0	cover	100.0
The Perpetrators	rock	100.0	blues rock	100.0	blues	67.0	Winnipeg	67.0	canada	34.0
Eighteen Nightmares At The Lux	indie	100.0	indie rock	100.0	blues rock	100.0	New band of the day	100.0	\N	0.0
Cedric Burnside Project	blues	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
Ron Spielman Trio	rock	100.0	blues	100.0	art rock	100.0	german	100.0	blues rock	100.0
Сергей Чиграков	blues	100.0	blues rock	100.0	russian rock	100.0	rock	50.0	under 2000 listeners	50.0
Michael Keck	rock	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
Miller Brothers Band	blues rock	100.0	blues	86.0	rock	29.0	bluesrock	29.0	All	29.0
Big Foot Chester	blues rock	100.0	punk blues	100.0	foot and mouth disease	100.0	spotify	100.0	alternative blues	100.0
Fanny Adams	blues rock	100.0	Progressive rock	67.0	classic rock	50.0	rock	50.0	Stoner Rock	34.0
Bon Scott With Fraternity	blues rock	100.0	classic rock	34.0	Progressive rock	34.0	dead heroes	34.0	\N	0.0
The Rocky Athas Group	blues rock	100.0	blues	25.0	slide guitar	25.0	electric blues	25.0	under 2000 listeners	25.0
Jake Andrews	blues rock	100.0	rock	50.0	american	50.0	spotify	50.0	under 2000 listeners	25.0
The Raging Honkies	rock	100.0	blues rock	100.0	Grunge	34.0	\N	0.0	\N	0.0
Artur Menezes	classic rock	100.0	seen live	100.0	rock	100.0	blues	100.0	guitar	100.0
A.B. Skhy	blues rock	100.0	organ	67.0	rock	34.0	funk	34.0	blues	34.0
The Black Explosion	blues rock	100.0	hard rock	50.0	Psychedelic Rock	50.0	Acid Rock	50.0	\N	0.0
Davy Knowles / Paul Kemmish / Steven Banrci / Ty Bailie	rock	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
The Surgens	blues	100.0	england	100.0	blues rock	100.0	country rock	100.0	surf rock	100.0
From Behind	blues rock	100.0	rock	70.0	Southern Rock	70.0	hard rock	60.0	blues	50.0
Handsome Jack	blues rock	100.0	rock	67.0	blues	34.0	Southern Rock	34.0	fuckingawesome	34.0
The Kropotkins	country	100.0	punk	100.0	folk	100.0	post-punk	100.0	blues	100.0
Chicken Legs Weaver	seen live	100.0	UK	100.0	blues	100.0	blues rock	100.0	Sheffield	100.0
Memo Gonzalez & The Bluescasters	blues rock	100.0	blues	50.0	under 2000 listeners	50.0	harmonica blues	50.0	rhythm & blues	50.0
Walter Trout Power Trio	blues rock	100.0	blues	84.0	bluesrock	34.0	asciiecho	34.0	hardcore blues	17.0
The Deans	blues rock	100.0	rock	50.0	oldies	50.0	irish	50.0	doo wop	50.0
Captain Ivory	seen live	100.0	other	100.0	blues rock	100.0	\N	0.0	\N	0.0
Andrew Medwed	blues rock	100.0	indie rock	67.0	Garage Rock	67.0	seen live	34.0	singer-songwriter	34.0
La Chinga	rock	100.0	alternative	100.0	hard rock	100.0	latin	100.0	blues rock	100.0
John Henry	folk	100.0	blues rock	100.0	Rock 'n' Roll	100.0	under 2000 listeners	100.0	Funk Rock	100.0
The Bluescasters	blues rock	100.0	southern blues	75.0	All	50.0	blues-rock	25.0	blues	25.0
Neal Black	blues rock	100.0	blues	34.0	\N	0.0	\N	0.0	\N	0.0
Carl Wayne	classic rock	100.0	rock	100.0	60s	100.0	blues rock	100.0	birmingham	100.0
Churchwood	blues rock	100.0	SXSW 2013	100.0	\N	0.0	\N	0.0	\N	0.0
Kentucky Bridgeburners	rock	100.0	soul	100.0	blues	100.0	blues rock	100.0	male vocalists	100.0
Don Griffin	blues rock	100.0	blues	60.0	guitar	60.0	blues guitar	30.0	All	20.0
Greg Chaisson	blues rock	100.0	Southern Rock	67.0	rock	34.0	christian blues	34.0	ArtistToKnow	34.0
Rémi Charmasson Quintet	jazz	100.0	blues rock	100.0	gammarec	100.0	2juma	100.0	\N	0.0
The Aviators	seen live	100.0	Stoner Rock	100.0	happy	100.0	funk	100.0	Awesome	100.0
Blue Coupe	blues rock	100.0	rock	34.0	hard rock	34.0	blues	34.0	electric blues	34.0
Sam Samudio	blues rock	100.0	soul	50.0	funk	50.0	blues	50.0	rock 70s	50.0
Rudy Rotta Band	blues	100.0	blues rock	100.0	blues-rock	67.0	allboutguitar	67.0	BRC Blues Band	67.0
Muddy Brothers	classic rock	100.0	Stoner Rock	100.0	brasil	100.0	blues rock	100.0	rock brasileiro	100.0
The Sir Douglas Band	rock	100.0	country	100.0	blues	100.0	blues rock	100.0	texas	100.0
Kris Lager Band	blues rock	100.0	Nebraska	50.0	blues	25.0	jam band	25.0	under 2000 listeners	25.0
Band Of Light	blues rock	100.0	bluesy	67.0	rocky	67.0	blues metal	67.0	hard of 70s	67.0
Devils Creek	blues rock	100.0	blues	56.0	guitar	56.0	classic rock	23.0	rock	23.0
Only Living Boy	seen live	100.0	blues rock	100.0	new jersey	100.0	\N	0.0	\N	0.0
Asım Can Gündüz	blues rock	100.0	blues	75.0	Awesome John	75.0	guitar virtuoso	50.0	turkish	50.0
Coo Coo Birds	rock	100.0	indie rock	100.0	Garage Rock	100.0	Psychedelic Rock	100.0	blues rock	100.0
Jay Hooks	blues	100.0	blues rock	100.0	bluesrock	50.0	Berlin	34.0	yeah	34.0
The Barnburners	blues rock	100.0	blues	25.0	Rock n' Roll	25.0	Ohio	25.0	akron	25.0
Burn Antares	blues rock	100.0	folk	50.0	female vocalists	50.0	Psychedelic Rock	50.0	\N	0.0
Cathy Jean	harmonica	100.0	blues rock	100.0	Jazz Rock	100.0	rock n roll	100.0	harmonica blues	100.0
Atlee	blues rock	100.0	hard rock	50.0	Southern Rock	50.0	70s	34.0	Progressive rock	34.0
The Apple Pie Motherhood Band	rock	100.0	Psychedelic Rock	100.0	blues rock	100.0	60's	50.0	New York City	50.0
Chicago Stone Lightning Band	blues rock	100.0	blues	29.0	rock	15.0	heavy	15.0	chicago	15.0
Little Mike	electronic	100.0	dance	100.0	blues	100.0	techno	100.0	blues rock	100.0
Trem Fantasma	seen live	100.0	Stoner Rock	100.0	psychedelic	100.0	blues rock	100.0	Power Trio	100.0
Rocquette	rock	100.0	hard rock	100.0	blues rock	100.0	powerpop	100.0	Southern Rock	100.0
Delta Blues Band	blues	100.0	blues rock	100.0	danish	100.0	under 500 listeners	100.0	Roskilde	100.0
Jackson Fishauf	alternative rock	100.0	Garage Rock	100.0	blues rock	100.0	\N	0.0	\N	0.0
Jon Spencer and the Elegant Too	Soundtrack	100.0	rock	100.0	indie rock	100.0	hard rock	100.0	breakbeat	100.0
David Hidalgo, Mato Nanji & Luther Dickinson	blues rock	100.0	rock	67.0	blues	34.0	hard-n-blues	34.0	\N	0.0
Graham Greene	metal	100.0	hard rock	100.0	guitar	100.0	spoken word	100.0	blues rock	100.0
Eric Steckel Band	blues	100.0	blues rock	100.0	guitar	60.0	Texas Blues	40.0	treble	20.0
The Mud Howlers	indie rock	100.0	Garage Rock	100.0	blues rock	100.0	SXSW 2014	100.0	sxsw 2015	100.0
Jorge Calderon & Jennifer Warnes	rock	100.0	alternative rock	100.0	Progressive rock	100.0	guitar	100.0	cover	100.0
Broken Glass	blues rock	100.0	Hip-Hop	67.0	bluesrock	67.0	rock	50.0	blues	50.0
Gail Swanson	pop	100.0	indie pop	100.0	blues	100.0	blues rock	100.0	Discoveries	100.0
Beth Hart & the Ocean of Souls	female vocalists	100.0	blues rock	100.0	\N	0.0	\N	0.0	\N	0.0
Mauro Motoki	indie	100.0	rock	100.0	alternative	100.0	brazilian	100.0	blues rock	100.0
Terry Quiett Band	blues rock	100.0	rock	50.0	blues	50.0	\N	0.0	\N	0.0
Gnaposs	funk	100.0	blues rock	100.0	Guitar Hero	100.0	under 2000 listeners	100.0	Funk Rock	100.0
the Spaceship and the Cows	blues rock	100.0	Retro	67.0	rockabilly	34.0	Grunge	34.0	alternative rock	34.0
Bad Dreams	Progressive rock	100.0	doom metal	100.0	Lo-Fi	100.0	shitgaze	100.0	death metal	100.0
Luella and the Sun	seen live	100.0	blues rock	100.0	retro rock	100.0	female fronted	100.0	New Bands	100.0
Bart Walker	blues rock	100.0	seen live	25.0	blues	25.0	Southern Rock	25.0	guitar rock	25.0
Kenny Parker	blues	100.0	guitar	100.0	new zic	100.0	blues rock	100.0	electric blues	100.0
Hackensack	hard rock	100.0	UK	100.0	blues rock	100.0	Southern Rock	100.0	bands to check out later	50.0
Javier Martinez	blues	100.0	argentina rock	100.0	blues rock	100.0	seen live	50.0	jazz	50.0
The Naked Sweat Drips	rock	100.0	alternative rock	100.0	hard rock	100.0	Stoner Rock	100.0	Psychedelic Rock	100.0
Beats Working	blues	100.0	blues rock	100.0	featuring John Hardman on guitar	100.0	classic rock	50.0	Hip-Hop	50.0
Joecephus and the George Jonestown Massacre	country	100.0	Alt-country	100.0	blues rock	100.0	All	100.0	\N	0.0
Mike Bloomfield, Al Kooper and Steve Stills	jazz	100.0	blues	100.0	organ	100.0	blues rock	100.0	wind instruments	100.0
Nick Woodland	blues	100.0	blues rock	100.0	bluesrock	50.0	guitar blues	50.0	\N	0.0
The Brew UK	rock	100.0	blues	100.0	blues rock	100.0	modern rock	100.0	British Blues	100.0
Aileen Loy & Blue Valentines	heavy metal	100.0	blues	100.0	american	100.0	blues rock	100.0	check out	100.0
Franz	classic rock	100.0	electronic	100.0	rock	100.0	dance	100.0	Schlager	100.0
Pat Travers & Carmine Appice	classic rock	100.0	rock	100.0	hard rock	100.0	blues rock	50.0	guitar rock	50.0
Stop	Disco	100.0	classic rock	100.0	electronic	100.0	rock	100.0	alternative rock	100.0
Teddy Bears Feat Iggy Pop	classic rock	100.0	electronic	100.0	indie	100.0	rock	100.0	punk	100.0
Amazing Blue Gurus	classic rock	100.0	blues rock	75.0	rock	50.0	blues	50.0	Southern Rock	38.0
Elizabethtown Soundtrack	Soundtrack	100.0	classic rock	100.0	indie	100.0	rock	100.0	alternative	100.0
Remember the Titans Soundtrack	classic rock	100.0	rock	100.0	60s	100.0	\N	0.0	\N	0.0
Spencer Davis	classic rock	100.0	blues	50.0	oldies	50.0	United Kingdom	50.0	Need to Rate	50.0
Walter Becker & Donald Fagen	classic rock	100.0	steely dan	100.0	jazz	50.0	pop	50.0	singer-songwriter	50.0
Brave Belt	classic rock	100.0	Canadian	100.0	70s	50.0	country rock	50.0	rhythm and blues	34.0
Appletree Theatre	classic rock	100.0	Psychedelic Rock	100.0	Appletree Theatre	50.0	\N	0.0	\N	0.0
Bernard Fowler	classic rock	100.0	seen live	34.0	rock	34.0	vocal jazz	34.0	Funk Rock	34.0
The Power Of Love 2	classic rock	100.0	80s	100.0	hard rock	100.0	rock n roll	100.0	loved tracks	100.0
Elton John & John Lennon	classic rock	100.0	rock	50.0	classic	50.0	rock n roll	50.0	\N	0.0
Кирил Маричков	classic rock	100.0	rock	75.0	bulgarian	75.0	hard rock	50.0	seen live	25.0
Shalom Chanoch	classic rock	100.0	hebrew	100.0	melodic	50.0	rock n roll	50.0	Israel	50.0
Beaky/Dave Dee/Dozy/Mick/Tich	Soundtrack	100.0	classic rock	100.0	cool	100.0	\N	0.0	\N	0.0
T. Bolin	classic rock	100.0	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0
Dave Maclean	classic rock	100.0	70s	67.0	brazilian	67.0	Brasilian	50.0	brazil	34.0
Back to the future soundtrack	Soundtrack	100.0	classic rock	100.0	heavy metal	100.0	metal	100.0	electronic	100.0
Sighieri	classic rock	100.0	70s	100.0	80s	100.0	youtube	100.0	warner	100.0
Badﬁnger	classic rock	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Shook Up!	Soundtrack	100.0	classic rock	100.0	pop	100.0	rock	100.0	british	100.0
Donovan Leitch	classic rock	100.0	rock	100.0	british	100.0	donovan	100.0	\N	0.0
Ringo Starr And His All Starr Band	classic rock	100.0	seen live	100.0	pop	34.0	rock	34.0	pop rock	34.0
Concert for George	classic rock	100.0	60s	50.0	beatles	50.0	british rock	50.0	\N	0.0
Sheriff & the Ravels	classic rock	100.0	rockabilly	100.0	oldies	100.0	Rock and Roll	100.0	rhythm and blues	100.0
Ticket	classic rock	100.0	New Zealand	100.0	experimental	67.0	Stoner Rock	67.0	psychedelic	67.0
Criminal Element Orchestra	classic rock	100.0	Hip-Hop	100.0	pop	100.0	rock	100.0	80s	100.0
Phil & Friends	classic rock	100.0	Jam	67.0	JamVibe	67.0	Awesome	34.0	GrayCharles	34.0
The Brian May Band	classic rock	100.0	rock	100.0	seen live	34.0	british	34.0	hard rock	34.0
Oko	classic rock	100.0	hard rock	100.0	Progressive rock	100.0	70s	80.0	rock	40.0
Bob Dylan;The Grateful Dead;Dylan & The Dead	classic rock	100.0	rock	100.0	folk	100.0	singer-songwriter	100.0	folk rock	100.0
Joan Baez & Donovan	classic rock	100.0	60s	100.0	protest music	100.0	folk	50.0	female vocalists	50.0
Chris Brady	classic rock	100.0	rock	67.0	ambient	34.0	Progressive rock	34.0	psychedelic	34.0
Honk	Soundtrack	100.0	classic rock	100.0	rock	100.0	70s	100.0	experimental	100.0
Look Left	classic rock	100.0	folk rock	100.0	rock	50.0	alternative	50.0	alternative rock	50.0
Phantom's Divine Comedy	classic rock	100.0	blues	100.0	Psychedelic Rock	100.0	rock	50.0	USA	50.0
Sanford & Townsend	classic rock	100.0	rock	100.0	70s	100.0	\N	0.0	\N	0.0
Altre di B	classic rock	100.0	rock	100.0	alternative	100.0	GenteCheNonStaBene	100.0	italiani	100.0
70s Music All Stars	classic rock	100.0	pop	100.0	rock	100.0	70s	100.0	Rock and Roll	100.0
Van Halen / David Lee Roth	classic rock	100.0	hard rock	50.0	Live Rock	50.0	\N	0.0	\N	0.0
The Illusion	classic rock	100.0	seen live	100.0	rock	100.0	60s	100.0	funk	100.0
Joaquin Phoenix; Reese Witherspoon	Soundtrack	100.0	classic rock	100.0	rock	100.0	country	100.0	folk	100.0
The Bet	classic rock	100.0	jazz	100.0	soul	100.0	Belgium	100.0	power soul	100.0
Summer of Love	classic rock	100.0	Hip-Hop	100.0	seen live	100.0	rock	100.0	alternative	100.0
Pete Rivera	classic rock	100.0	rock	100.0	\N	0.0	\N	0.0	\N	0.0
James Rado	classic rock	100.0	opera	100.0	musical	100.0	\N	0.0	\N	0.0
Broken Home	classic rock	100.0	rock	100.0	80s	100.0	Gothic	100.0	Bandcamp	100.0
Anvil Feat. Franky Perez	Soundtrack	100.0	classic rock	100.0	70s	100.0	canada	100.0	cover	100.0
Batteaux	classic rock	100.0	pop	100.0	folk	100.0	Folky Groove	100.0	\N	0.0
The Band & Van Morrison	classic rock	100.0	rock	100.0	\N	0.0	\N	0.0	\N	0.0
Styx & REO Speedwagon	classic rock	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
The Sky	classic rock	100.0	rock	100.0	alternative	100.0	Progressive rock	100.0	art rock	100.0
The Travel Agency	classic rock	100.0	pop	100.0	pop rock	100.0	psychedelic pop	100.0	psychedelic	100.0
Marcus	psychedelic	100.0	hard rock	75.0	singer-songwriter	75.0	fun	75.0	male vocalists	75.0
Hypnagog	psychedelic	100.0	experimental	80.0	psyglitch	80.0	psychill	60.0	australian	40.0
Lenguas Largas	psychedelic	100.0	Garage Rock	67.0	garage	67.0	seen live	34.0	rock	34.0
Psymbionic	dubstep	100.0	psychedelic	100.0	dub	75.0	glitch-hop	75.0	chillout	25.0
The Thoughts	psychedelic	100.0	freakbeat	100.0	60s	75.0	Acoustic Rock	50.0	classic rock	25.0
Mad River	psychedelic	100.0	Psychedelic Rock	82.0	Acid Rock	34.0	60s	30.0	classic rock	23.0
Hello Echo	indie	100.0	rock	100.0	psychedelic	100.0	indie rock	34.0	los angeles	34.0
Bill Holt	experimental	100.0	psychedelic	100.0	Obscuro	72.0	70s	58.0	Avant-Garde	43.0
Kawabata Makoto	psychedelic	100.0	experimental	91.0	drone	81.0	japanese	66.0	Psychedelic Rock	55.0
Tagore	psychedelic	100.0	seen live	50.0	acoustic	50.0	easy listening	50.0	poetry	50.0
The Electronic Hole	psychedelic	100.0	Psychedelic Rock	81.0	60s	20.0	Acid Rock	20.0	acid folk	20.0
Os Haxixins	psychedelic	100.0	Garage Rock	89.0	alternative	78.0	brasil	56.0	brazilian	56.0
Sultan Bathery	psychedelic	100.0	Garage Rock	100.0	Psychedelic Rock	100.0	Italy	100.0	discover	100.0
Оле Лукойе	psychedelic	100.0	folk	71.0	electronic	68.0	experimental	59.0	ethnic	52.0
Tropicália	pop	100.0	folk	100.0	psychedelic	100.0	mpb	100.0	Psychedelic Rock	100.0
The Flies	psychedelic	100.0	60s	84.0	freakbeat	84.0	mod	67.0	garage	50.0
Ulrika Spacek	psychedelic	100.0	seen live	50.0	indie	50.0	alternative	50.0	Experimental Rock	50.0
Actual Water	psychedelic	100.0	noise	72.0	pop	58.0	garage	58.0	ambient	43.0
Azalia Snail	psychedelic	100.0	Lo-Fi	89.0	Avant-Garde	56.0	indie	45.0	psych-pop	34.0
Samantha Glass	psychedelic	100.0	rock	40.0	experimental	40.0	Lo-Fi	40.0	minimal	40.0
The Volta Sound	psychedelic	100.0	Neo-Psychedelia	70.0	shoegaze	60.0	psychedelic folk	60.0	space rock	50.0
The Mystery Trend	60s	100.0	psychedelic	100.0	rock	89.0	nuggets	89.0	Psychedelic Rock	78.0
The Jacks	japanese	100.0	psychedelic	100.0	doo wop	100.0	60s	58.0	Garage Rock	58.0
Mystic Siva	psychedelic	100.0	Psychedelic Rock	97.0	Garage Rock	33.0	garage	22.0	60s psychedelic and garage	22.0
Лампа Накаливания	psychedelic	100.0	russian alternative	84.0	indie	34.0	rock	34.0	alternative	34.0
Psilocybe Project	psychedelic	100.0	psytrance	100.0	full-on	80.0	full on	80.0	psychedelic trance	40.0
Kurbeats	psychedelic	100.0	folktronica	100.0	ambient	86.0	psychill	86.0	folk	43.0
Roger Sellers	ambient	100.0	psychedelic	100.0	under 2000 listeners	100.0	electronic	50.0	seen live	50.0
Red Alder	psychedelic	100.0	female vocalists	89.0	ambient pop	89.0	dream pop	89.0	sad	78.0
Ferris Wheel	psychedelic	100.0	psychedelic folk	89.0	60s	77.0	acid folk	59.0	Loner Folk	59.0
Sudden Death Of Stars	psychedelic	100.0	shoegaze	50.0	psych rock	50.0	seen live	38.0	space rock	38.0
Zeke Khaseli	psychedelic	100.0	indie	67.0	experimental	67.0	indonesia	34.0	Avant-Garde	23.0
Regular Fries	psychedelic	100.0	indie	43.0	rock	43.0	ambient	29.0	All	29.0
Tintern Abbey	psychedelic	100.0	60s	73.0	Psychedelic Rock	37.0	british	32.0	punk	19.0
Halasan Bazar	psychedelic	100.0	seen live	50.0	indie	50.0	rock	50.0	folk	50.0
Ole Lukkoye	psychedelic	100.0	folk	79.0	experimental	75.0	ethno	75.0	electronic	57.0
Mungusid	psychedelic	100.0	psytrance	100.0	psychill	75.0	psychedelic trance	63.0	chillout	38.0
The Animated Egg	psychedelic	100.0	Psychedelic Rock	46.0	60s	37.0	classic rock	10.0	rock	10.0
Paul Kantner	psychedelic	100.0	rock	72.0	jefferson starship	72.0	san francisco 60s	58.0	hippie	43.0
Jeffertitti's Nile	indie	100.0	Progressive rock	100.0	psychedelic	100.0	hypnotic	100.0	psychedelic folk	100.0
Turquoise	psychedelic	100.0	60s	79.0	Progressive rock	58.0	british	43.0	rock	11.0
Kingdom of the Holy Sun	psychedelic	100.0	shoegaze	67.0	Psychedelic Rock	59.0	seattle	50.0	under 2000 listeners	25.0
Alex Bleeker	Lo-Fi	100.0	psychedelic	100.0	folk	34.0	bennington	34.0	seen live	17.0
THE★米騒動	indie	100.0	rock	100.0	punk	100.0	psychedelic	100.0	female vocalists	67.0
La Otracina	psychedelic	100.0	space rock	88.0	Psychedelic Rock	68.0	Progressive rock	55.0	seen live	26.0
Mashmakhan	psychedelic	100.0	70s	75.0	rock	67.0	Canadian	50.0	classic rock	34.0
Tiny Fingers	electronic	100.0	psychedelic	100.0	seen live	75.0	instrumental	75.0	experimental	75.0
Tony, Caro & John	psychedelic	100.0	acid folk	84.0	psychedelic folk	50.0	folk	34.0	british folk	34.0
Amazing	chillout	100.0	electronic	100.0	alternative	100.0	ambient	100.0	indie rock	100.0
Plasticland	psychedelic	100.0	Garage Rock	90.0	rock	70.0	Psychedelic Rock	60.0	80s	40.0
Yung Internet	hip hop	100.0	rap	100.0	psychedelic	100.0	drugs	100.0	trap	100.0
Aliens	psychedelic	100.0	film score	75.0	seen live	50.0	fieldday2007	50.0	pop	25.0
Sonic Jesus	psychedelic	100.0	shoegaze	84.0	Psychedelic Rock	84.0	noise	67.0	drone	50.0
Mountainhood	psychedelic	100.0	folk	82.0	experimental	73.0	New Weird America	64.0	psych-folk	46.0
Orange Bicycle	psychedelic	100.0	60s	80.0	british	54.0	freakbeat	47.0	Psychedelic Rock	34.0
Earth Opera	psychedelic	100.0	Psychedelic Rock	78.0	60s	56.0	Progressive rock	56.0	rock	39.0
Shizuka	psychedelic	100.0	japanese	75.0	noise rock	50.0	Japanese Psychedelic Noise	40.0	Psychedelic Rock	35.0
Al Cisneros	dub	100.0	psychedelic	100.0	Doom	56.0	ambient	45.0	ethereal	45.0
Alice Spacedoll	chillout	100.0	psychedelic	100.0	psybient	100.0	cosmic mojo	100.0	\N	0.0
The Bavarian Druglords	psychedelic	100.0	Neo-Psychedelia	84.0	madchester	34.0	need to check out	34.0	the bavarian druglords	34.0
Navet Confit	indie	100.0	psychedelic	100.0	québec	100.0	seen live	50.0	indie rock	50.0
Higamos Hogamos	psychedelic	100.0	experimental	67.0	krautrock	67.0	UK	50.0	DC Recordings	50.0
The Dowling Poole	power pop	100.0	psychedelic	100.0	under 2000 listeners	100.0	under 500 listeners	100.0	under 1000 listeners	100.0
Monopoly Child Star Searchers	psychedelic	100.0	experimental	85.0	noise	64.0	drone	48.0	trance	32.0
Markley	psychedelic	100.0	Psychedelic Rock	100.0	60s	94.0	west coast psychedelia	40.0	psychedelic garage rock	27.0
kandodo	psychedelic	100.0	drone	100.0	ambient	80.0	experimental	80.0	electronic	60.0
Анжела Лондон	psychedelic	100.0	trash pop	72.0	drugcore	72.0	Electroclash	58.0	kircore	58.0
Tala	rock	100.0	Fusion	100.0	world	100.0	funk	100.0	House	100.0
Bohemian Vendetta	psychedelic	100.0	Psychedelic Rock	70.0	60s	60.0	Garage Rock	35.0	psych	30.0
The New Lines	psychedelic	100.0	indie	50.0	indie pop	50.0	shoegaze	50.0	alternative pop	50.0
Pridjevi	psychedelic	100.0	Lo-Fi	58.0	folk	43.0	noise	29.0	seen live	29.0
Drgn King	pop	100.0	rock	100.0	Philadelphia	100.0	indie rock	100.0	psychedelic	100.0
Dantalian's Chariot	psychedelic	100.0	Psychedelic Rock	84.0	60s	56.0	psychedelic pop	28.0	rock	17.0
Luv Machine	Progressive rock	100.0	psychedelic	100.0	classic rock	59.0	rock	59.0	Psychedelic Rock	50.0
Умка И Бр°	classic rock	100.0	reggae	100.0	country-rock	100.0	blues	100.0	psychedelic	100.0
C+C=Maxigross	folk	100.0	psychedelic	100.0	indie pop	67.0	seen live	34.0	alternative	34.0
DEAD HORSE ONE	shoegaze	100.0	psychedelic	100.0	Psychedelic Rock	60.0	indie rock	40.0	Neo-Psychedelia	40.0
Lazy Smoke	psychedelic	100.0	Psychedelic Rock	60.0	60s	47.0	garage	34.0	beyondwithin	20.0
J. Spaceman	psychedelic	100.0	experimental	86.0	ambient	58.0	noise	29.0	space rock	29.0
Tomutonttu	psychedelic	100.0	experimental	96.0	noise	87.0	ambient	78.0	seen live	69.0
GTO's	psychedelic	100.0	Psychedelic Rock	100.0	alternative	58.0	Zappa Related	58.0	rock	43.0
Arthur Lee & Love	psychedelic	100.0	60s	86.0	classic rock	15.0	pop	15.0	rock	15.0
Top Drawer	psychedelic	100.0	Psychedelic Rock	100.0	70s	58.0	rock	29.0	american	29.0
LA Vampires Goes Ital	psychedelic	100.0	electronic	63.0	not not fun	63.0	experimental	50.0	pop	25.0
Коллежский Асессор	psychedelic	100.0	experimental	97.0	avantgarde	89.0	Ukrainian	89.0	indie	38.0
The Lickets	psychedelic	100.0	space folk	100.0	instrumental	89.0	post-rock	67.0	folk	34.0
Rupert's People	psychedelic	100.0	60s	84.0	rock	72.0	british	68.0	Psychedelic Rock	32.0
Archie Powell & The Exports	alternative	100.0	rock	84.0	indie rock	84.0	college rock	84.0	chicago	67.0
Big If	alternative	100.0	pop punk	100.0	rock	84.0	alternative rock	34.0	Pop-punk	34.0
Hotels	indie	100.0	alternative	100.0	Synth-Rock	80.0	new wave	60.0	instrumental	40.0
Faithless feat. Cass Fox	electronic	100.0	alternative	100.0	trance	50.0	House	50.0	90s	50.0
Ангел Небес	alternative	100.0	rock	70.0	brainwashing	50.0	russian	30.0	russian rock	30.0
The Nadas	alternative	100.0	rock	80.0	seen live	60.0	iowa	40.0	alternative rock	20.0
Ztvörki	alternative	100.0	polish	100.0	rock	95.0	punk rock	45.0	polskie	39.0
明日、照らす	indie	100.0	rock	100.0	japanese	100.0	alternative	100.0	male vocalists	100.0
Lida Husik	alternative	100.0	indie	84.0	female vocalists	67.0	ethereal	67.0	90s	42.0
Martin Stephenson And The Daintees	alternative	100.0	folk	75.0	eighties	75.0	kitchenware records	75.0	North East	50.0
The VLA	alternative	100.0	rock	88.0	damages	50.0	indie	38.0	Soundtrack	25.0
Homosapiens	alternative	100.0	polish	100.0	alternative rock	94.0	rock	67.0	indie rock	60.0
Leski	alternative	100.0	folk	100.0	singer-songwriter	100.0	polish	100.0	\N	0.0
Maki I Chłopaki	seen live	100.0	alternative	100.0	polish	100.0	rock	50.0	indie	25.0
Megafone	alternative	100.0	experimental	100.0	portuguese	100.0	gospel	80.0	rock	60.0
Kistehén	alternative	100.0	hungarian	100.0	funny	50.0	seen live	25.0	pop	25.0
The Vips	alternative	100.0	alternative rock	85.0	rock	70.0	russian alternative	54.0	mod revival	54.0
Said	hip hop	100.0	rock	100.0	japanese	100.0	punk	100.0	alternative	100.0
geek sleep sheep	alternative	100.0	japanese	86.0	post-rock	72.0	J-rock	72.0	soft rock	58.0
Public Symphony	alternative	100.0	chillout	50.0	pop	50.0	downtempo	40.0	beautiful	40.0
Bill Pritchard	alternative	100.0	pop	84.0	indie	67.0	80s	67.0	singer-songwriter	67.0
Kiran Leonard	alternative	100.0	ambient	100.0	electronic	84.0	electronica	67.0	experimental	67.0
Cuckoo Chaos	alternative	100.0	seen live	75.0	indie	75.0	experimental	50.0	indie pop	50.0
Apshell	alternative	100.0	russian alternative	80.0	cybercore	70.0	emo	45.0	Nu Metal	45.0
Mike Massé	alternative	100.0	acoustic	100.0	\N	0.0	\N	0.0	\N	0.0
Paranoid Social Club	alternative	100.0	maine	100.0	seen live	90.0	indie	90.0	rock	80.0
Fm4	alternative	100.0	Austria	100.0	Radio	67.0	VA	67.0	FM4	34.0
Sense Of Touch	alternative	100.0	emocore	87.0	russian alternative	87.0	rock	47.0	metalcore	27.0
Greycoats	indie	100.0	alternative	100.0	rock	50.0	gossip girl	34.0	Minneapolis	34.0
100 múch	alternative	100.0	electronic	60.0	slovak	60.0	jazz	50.0	seen live	40.0
We Show Up On RadaR	alternative	100.0	indie	88.0	nottingham	75.0	experimental	50.0	singer-songwriter	50.0
Charlotte Gainsbourg & Beck	french	100.0	female vocalists	86.0	indie	53.0	singer-songwriter	48.0	pop	42.0
Dunaj	alternative	100.0	Progressive rock	95.0	Czech	62.0	Avant-Garde	56.0	alternative rock	50.0
Jenny Broke the Window	indie	100.0	alternative	100.0	rock	50.0	indie pop	50.0	All	50.0
Aemen	alternative	100.0	Gothic Metal	100.0	Progressive rock	94.0	indie	75.0	rock	57.0
Lilly Wood  The Prick	electronic	100.0	indie	100.0	alternative	100.0	\N	0.0	\N	0.0
MT WARNING	indie	100.0	alternative	100.0	australian	100.0	under 2000 listeners	100.0	\N	0.0
Wakal	alternative	100.0	latin	100.0	electronica	86.0	mexico	86.0	electronic	58.0
ドラマチックアラスカ	indie	100.0	japanese	100.0	alternative	100.0	J-rock	100.0	rock	50.0
Sen Zu	alternative	100.0	rock	70.0	seen live	50.0	female vocalists	50.0	alternative rock	40.0
Bender	alternative	100.0	alternative rock	88.0	rock	75.0	hard rock	75.0	punk rock	50.0
City Of Lions	indie	100.0	rock	100.0	alternative	100.0	alternative rock	100.0	power pop	100.0
Brat	alternative	100.0	mashup	100.0	mash-up	100.0	bastard pop	100.0	heavy metal	67.0
Scheer	alternative	100.0	rock	85.0	4ad	70.0	alternative rock	54.0	indie	47.0
Érico Junqueira	alternative	100.0	acoustic	100.0	\N	0.0	\N	0.0	\N	0.0
Disco-RD	alternative	100.0	rock	74.0	alternative rock	74.0	russian alternative	47.0	post-punk	40.0
Idlehands	alternative	100.0	indie rock	75.0	Progressive	75.0	post-hardcore	75.0	rock	50.0
Tornádo Lue	alternative	100.0	slovak	72.0	Czech	50.0	seen live	36.0	female vocalists	36.0
Pega Monstro	alternative	100.0	Lo-Fi	100.0	rock	67.0	punk	67.0	foda-se	67.0
Keinohrhasen Score	Soundtrack	100.0	alternative	100.0	rock	67.0	pop	34.0	instrumental	34.0
Plaid Dragon	indie	100.0	pop	100.0	alternative	100.0	folk	100.0	springfield mo	100.0
Versalle	indie	100.0	rock	100.0	alternative	100.0	brazil	50.0	brazilian	50.0
Michael Knott	alternative	100.0	indie	90.0	singer-songwriter	90.0	Acoustic Rock	60.0	seen live	50.0
Milcz Serce	alternative	100.0	indie rock	100.0	polish	100.0	indie	75.0	polskie teksty	50.0
nothingman	rock	100.0	japanese	100.0	alternative	100.0	indie	50.0	pop	50.0
The Age of Information	alternative	100.0	piano rock	100.0	rock	91.0	pop rock	82.0	electronic	37.0
Scang	alternative	100.0	Nu Metal	79.0	russian alternative	70.0	Nu-metal	55.0	russian	52.0
土井玄臣	electronic	100.0	indie	100.0	japanese	100.0	alternative	100.0	singer-songwriter	100.0
Little India	electronic	100.0	seen live	100.0	indie	100.0	pop	100.0	rock	100.0
The Redding Brothers	alternative	100.0	U2	100.0	Collective Soul	88.0	matchbox twenty	88.0	Switchfoot	88.0
Terrific Sunday	seen live	100.0	alternative	100.0	male vocalists	100.0	All	100.0	\N	0.0
Talk Show	rock	100.0	alternative	100.0	alternative rock	80.0	seen live	20.0	90s	20.0
Soysauce	electronic	100.0	indie	100.0	pop	100.0	alternative	100.0	dj	100.0
Becker	alternative	100.0	trip-hop	80.0	downtempo	80.0	electronic	60.0	rock	60.0
Dog Traders	electronic	100.0	indie	100.0	alternative	100.0	rock	50.0	hard rock	25.0
The Great Fiction	indie	100.0	alternative	100.0	indie rock	100.0	zexx	38.0	seen live	25.0
Waterbed	indie	100.0	alternative	100.0	experimental	100.0	psychedelic	100.0	eurodance	100.0
Roy English	alternative	100.0	under 2000 listeners	100.0	cinematic rock	100.0	indie	50.0	rock	50.0
The Gasoline Brothers	alternative	100.0	indie	67.0	dutch	67.0	seen live	50.0	indie rock	50.0
magic love	japanese	100.0	shoegaze	100.0	dream pop	100.0	Japanese Shoegaze	100.0	\N	0.0
brotherun	dream pop	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
RONiiA	rock	100.0	punk	100.0	alternative	100.0	acoustic	100.0	dream pop	100.0
T.O.Y.S	indie	100.0	post-punk	100.0	dream pop	100.0	synthpop	100.0	indie pop	50.0
The Mysterious Town Of Oak Hill	shoegaze	100.0	dream pop	60.0	Lo-Fi	40.0	russian	40.0	indie	20.0
Here	shoegaze	100.0	Czech	71.0	indie	45.0	experimental	33.0	female vocalists	33.0
Pale Blue	indie	100.0	shoegaze	100.0	alternative	34.0	dreampop	34.0	under 2000 listeners	34.0
Echodrone	shoegaze	100.0	indie	35.0	dream pop	25.0	rock	20.0	alternative	15.0
Power Of Dreams	shoegaze	100.0	indie	90.0	alternative	80.0	alternative rock	80.0	indie rock	60.0
Fonda	shoegaze	100.0	indie rock	74.0	indie pop	64.0	alternative	43.0	indie	22.0
Rat Columns	post-punk	100.0	shoegaze	100.0	indie	75.0	atmospheric	50.0	seen live	25.0
Sunsplit	shoegaze	100.0	psychedelic	66.0	space rock	48.0	Psychedelic Rock	40.0	Neo-Psychedelia	40.0
Suffering Astrid	shoegaze	100.0	drone	52.0	ambient	49.0	noise pop	40.0	noise	37.0
Half String	shoegaze	100.0	dream pop	60.0	indie	30.0	alternative rock	15.0	alternative	10.0
Ether Aura	shoegaze	100.0	dream pop	54.0	ethereal	38.0	alternative	16.0	female vocalists	16.0
Elemental Gaze	shoegaze	100.0	ambient	71.0	electronica	45.0	electronic	42.0	indie	33.0
Barlow	shoegaze	100.0	folk	58.0	Canadian	58.0	comedy	43.0	indie	29.0
All Saints Day	shoegaze	100.0	Lo-Fi	78.0	beachgaze	73.0	chillwave	50.0	indie	45.0
my violainé morning	shoegaze	100.0	post-rock	69.0	dream pop	53.0	indonesian	37.0	indonesia	16.0
The Stargazer Lilies	shoegaze	100.0	dream pop	67.0	ambient	45.0	psychedelic	39.0	drone	39.0
Sea Exchange	shoegaze	100.0	dream pop	67.0	chillwave	24.0	psychedelic	20.0	nostalgia	20.0
Infinity Girl	shoegaze	100.0	dream pop	58.0	rock	15.0	indie pop	15.0	indie rock	15.0
The Death of Pop	shoegaze	100.0	nu-gaze	60.0	seen live	40.0	indie	40.0	british	40.0
Thousand Yard Stare	shoegaze	100.0	indie	75.0	alternative rock	57.0	90s	57.0	alternative	44.0
Mean Red Spiders	shoegaze	100.0	dream pop	40.0	indie	14.0	punk	14.0	new york	10.0
my violent ego	shoegaze	100.0	dream pop	69.0	female vocalists	45.0	ethereal	37.0	indie	35.0
Manon Meurt	shoegaze	100.0	dream pop	55.0	seen live	50.0	Czech	38.0	female vocalists	21.0
Drowner	shoegaze	100.0	dream pop	84.0	indie	32.0	american	16.0	post-rock	12.0
blackstrap	shoegaze	100.0	rock	90.0	swedish	90.0	seen live	70.0	indie	70.0
Actors & Actresses	shoegaze	100.0	post-rock	83.0	ambient	31.0	experimental	14.0	american	14.0
Aerofall	shoegaze	100.0	dream pop	87.0	indie	53.0	noise rock	45.0	post-rock	37.0
Silvania	shoegaze	100.0	dream pop	53.0	slowcore	30.0	electropop	24.0	spanish	18.0
Gleemer	shoegaze	100.0	dream pop	100.0	alternative rock	34.0	under 2000 listeners	34.0	my bloody valentine	34.0
Algodón Egipcio	indie pop	100.0	shoegaze	100.0	electronic	50.0	seen live	50.0	ambient	50.0
gorduratrans	shoegaze	100.0	noise	47.0	noise rock	31.0	brazil	16.0	noise pop	16.0
Talk	shoegaze	100.0	indie	84.0	instrumental	67.0	post-rock	67.0	japanese	50.0
The Lucid Dream	shoegaze	100.0	psychedelic	80.0	experimental	30.0	Neo-Psychedelia	25.0	alternative	20.0
ALL THE BRIGHT LIGHTS	ambient	100.0	shoegaze	100.0	ambient rock	100.0	post-rock	50.0	american	50.0
Sciflyer	shoegaze	100.0	dream pop	50.0	space rock	44.0	newgaze	23.0	experimental	18.0
Lightfoils	shoegaze	100.0	dream pop	60.0	american	20.0	All	14.0	indie	7.0
Lipstik Lipsing	shoegaze	100.0	indie	64.0	indonesian	46.0	Semarang	46.0	pop	37.0
Seasurfer	shoegaze	100.0	dream pop	50.0	noise	25.0	seen live	25.0	alternativ	25.0
The Nightblooms	shoegaze	100.0	dream pop	36.0	indie	20.0	dutch	20.0	80s	16.0
The Best of Shoegaze & Dreampop	shoegaze	100.0	dream pop	80.0	alternative	40.0	electro	40.0	Post punk	40.0
Lily of the Valley	shoegaze	100.0	dream pop	78.0	japanese	60.0	darkwave	60.0	polish	37.0
Long Beard	folk	100.0	Lo-Fi	100.0	shoegaze	100.0	5432fun	100.0	Bandcamp	100.0
Seabright	shoegaze	100.0	Surf	70.0	ambient	70.0	chill	60.0	California	40.0
The Morning Paper	shoegaze	100.0	dream pop	74.0	ambient	44.0	swedish	34.0	Electro Pop	27.0
tennis system	shoegaze	100.0	psychedelic	45.0	noise	34.0	indie	23.0	noise rock	23.0
Motel Beds	shoegaze	100.0	pop	67.0	dayton	67.0	noise pop	34.0	beatles	34.0
Autodrone	shoegaze	100.0	post-punk	60.0	indie rock	52.0	noise pop	43.0	female vocalists	32.0
Voditel dlya Vera	shoegaze	100.0	Garage Rock	72.0	Garage Punk	72.0	indie	43.0	shitgaze	29.0
Asalto Al Parque Zoológico	shoegaze	100.0	dream pop	44.0	argentina	22.0	psychedelic	18.0	Buenos Aires	9.0
Arch M	noise	100.0	instrumental	100.0	Surf	100.0	ambient	100.0	post-rock	100.0
Shunkan	Lo-Fi	100.0	shoegaze	100.0	New Zealand	100.0	indie pop	50.0	indy	50.0
Tatuki Seksu	shoegaze	100.0	japanese	20.0	anime	20.0	Japanese Shoegaze	20.0	a-pop	20.0
Deaf Club	shoegaze	100.0	british	67.0	female vocalists	67.0	indie rock	34.0	2011	34.0
Gospel Gossip	shoegaze	100.0	alternative	63.0	indie rock	63.0	seen live	50.0	Minnesota	50.0
Shelling	shoegaze	100.0	dream pop	90.0	japanese	43.0	dreampop	27.0	electronic	22.0
Incan Abraham	indie	100.0	shoegaze	100.0	psychedelic	84.0	indie rock	67.0	indie pop	50.0
Averkiou	shoegaze	100.0	indie	47.0	dream pop	47.0	american	27.0	noise	14.0
Lucidvox	shoegaze	100.0	indie	90.0	psychedelic	90.0	russian	90.0	dream pop	80.0
Electro Group	shoegaze	100.0	dream pop	57.0	indie rock	31.0	noise pop	31.0	indie	9.0
Freedom Or Death	shoegaze	100.0	electronic	84.0	indie	84.0	seen live	67.0	electronica	50.0
Death In Plains	shoegaze	100.0	Lo-Fi	62.0	electronic	54.0	BIRP	47.0	dance	31.0
Hinterland	shoegaze	100.0	dream pop	46.0	ethereal	42.0	post-rock	34.0	dreampop	25.0
Relay	shoegaze	100.0	dreampop	56.0	psychedelic	50.0	indie	45.0	experimental	39.0
Danieto	idm	100.0	ambient	93.0	dub	65.0	electronic	43.0	u-cover	29.0
Pin Ups	shoegaze	100.0	indie	70.0	brazilian	70.0	indie rock	60.0	alternative	40.0
Weird.	shoegaze	100.0	psychedelic	40.0	experimental	33.0	noise	29.0	Psychedelic Rock	15.0
Insect Guide	shoegaze	100.0	indie	38.0	british	32.0	dream pop	32.0	shoegazing	25.0
Baby Birds Don't Drink Milk	indie	100.0	shoegaze	100.0	seen live	86.0	alternative	72.0	lawrence	58.0
Slowness	shoegaze	100.0	post-punk	50.0	indie rock	30.0	psychedelic	30.0	seen live	10.0
Kimberley	shoegaze	100.0	Ukrainian	100.0	alternative rock	75.0	prick records	75.0	indie	50.0
Venera 4	shoegaze	100.0	french	75.0	indie	25.0	dream pop	25.0	noise pop	17.0
Arc in Round	shoegaze	100.0	noise pop	56.0	indie rock	45.0	Noise-pop	45.0	seen live	34.0
She Sir	shoegaze	100.0	dream pop	34.0	dreampop	34.0	indie pop	23.0	indie	12.0
Hypatia Lake	shoegaze	100.0	post-rock	71.0	experimental	59.0	psychedelic	59.0	rock	18.0
Caucus	shoegaze	100.0	japanese	42.0	Japanese Shoegaze	34.0	indie	25.0	nugaze	17.0
Schonwald	post-punk	100.0	shoegaze	100.0	new wave	59.0	electronic	48.0	indie	42.0
Nights	shoegaze	100.0	indie rock	40.0	video games	40.0	Soundtrack	20.0	trip-hop	20.0
Chatham Rise	shoegaze	100.0	psychedelic	94.0	Neo-Psychedelia	67.0	dream pop	20.0	Minnesota	14.0
Astrolab	shoegaze	100.0	dream pop	92.0	indie pop	75.0	indonesian	67.0	post-rock	25.0
DATING	shoegaze	100.0	emo	73.0	indie	55.0	indie rock	46.0	hardcore	19.0
Monoland	shoegaze	100.0	post-rock	62.0	seen live	45.0	experimental	23.0	indie	17.0
Spirit Spine	ambient	100.0	shoegaze	100.0	BIRP	75.0	pop	50.0	experimental	50.0
Majesty Crush	shoegaze	100.0	dream pop	24.0	detroit	16.0	alternative	11.0	indie	8.0
Presents For Sally	shoegaze	100.0	dream pop	86.0	nu-gaze	24.0	british	20.0	indie rock	20.0
The Great Wilderness	shoegaze	100.0	dream rock	56.0	post-punk	50.0	female vocalists	39.0	costa rica	34.0
Blood Ruby	shoegaze	100.0	dream pop	87.0	ethereal	66.0	female vocalists	59.0	dreampop	35.0
The History Of Colour TV	shoegaze	100.0	dream pop	79.0	noise rock	29.0	seen live	22.0	noise	15.0
Star Horse	shoegaze	100.0	swedish	64.0	dream pop	55.0	indie	28.0	ethereal wave	19.0
Sail a Whale	swedish	100.0	shoegaze	100.0	ambient	77.0	indie	62.0	dream pop	47.0
Spirea X	shoegaze	100.0	4ad	55.0	indie	46.0	indie pop	32.0	noise pop	32.0
Fawn	shoegaze	100.0	indie pop	60.0	industrial	60.0	indie	40.0	indie rock	40.0
Indoor Voices	shoegaze	100.0	dream pop	50.0	Avant-Pop	50.0	post-rock	13.0	Canadian	13.0
Blacanova	shoegaze	100.0	spanish	36.0	ambient	29.0	experimental	29.0	sad	29.0
Los Mundos	shoegaze	100.0	noise	50.0	noise rock	50.0	monterrey	50.0	monclova	50.0
Snowpony	shoegaze	100.0	noise pop	67.0	indie	50.0	indie rock	25.0	seen live	17.0
Static Daydream	noise rock	100.0	shoegaze	100.0	indie	50.0	noisepop	50.0	\N	0.0
under electric light	shoegaze	100.0	dream pop	50.0	montreal	20.0	indie	10.0	pop	10.0
Montreal On Fire	shoegaze	100.0	post-rock	90.0	post-punk	50.0	french	40.0	indie	40.0
Ansaphone	shoegaze	100.0	post-rock	86.0	indonesian	48.0	ambient	43.0	experimental	29.0
Le corbeau	shoegaze	100.0	psychedelic	44.0	dream pop	40.0	noise rock	36.0	noise	20.0
Apollo Heights	shoegaze	100.0	indie	42.0	white music for black people	42.0	afrogaze	42.0	Manimal Vinyl Records	25.0
Moonbeams	shoegaze	100.0	dream pop	53.0	psychedelic	43.0	noise pop	29.0	Lo-Fi	24.0
Smashing Orange	shoegaze	100.0	noise pop	25.0	psychedelic	17.0	indie	12.0	Dreamy	9.0
Nanocycle	shoegaze	100.0	japanese	48.0	indie	27.0	rock	18.0	Japanese Shoegaze	18.0
Hot Zex	shoegaze	100.0	russian	71.0	indie rock	42.0	indie	39.0	seen live	36.0
Nightmare Air	shoegaze	100.0	seen live	84.0	indie rock	50.0	USA	50.0	film school	34.0
Heavïness	shoegaze	100.0	dream pop	50.0	swedish	39.0	noise pop	17.0	chillout	12.0
Spoonfed Hybrid	shoegaze	100.0	dream pop	59.0	british	50.0	indie	42.0	4ad	42.0
Wray	shoegaze	100.0	seen live	20.0	post-punk	20.0	Post punk	20.0	punk rock	20.0
Fall to November Sky...	shoegaze	100.0	post-rock	98.0	Post-Black Metal	75.0	ambient	58.0	Post-Metal	43.0
Highlands	shoegaze	100.0	folk	50.0	Psychedelic Rock	50.0	psychedelic	34.0	icelandic	34.0
7% Solution	shoegaze	100.0	space rock	69.0	dream pop	48.0	experimental	22.0	post-rock	11.0
Moscow Club	shoegaze	100.0	indie pop	75.0	guitar pop	75.0	j-pop	50.0	Japanese Shoegaze	50.0
Bertoia	shoegaze	100.0	post-rock	65.0	japanese	59.0	female vocalists	24.0	dream pop	24.0
Imandra Lake	shoegaze	100.0	seen live	80.0	dream pop	80.0	indie rock	60.0	estonian	60.0
The Arctic Flow	shoegaze	100.0	dream pop	75.0	indie	63.0	indie pop	63.0	Lo-Fi	50.0
Collider	shoegaze	100.0	dream pop	63.0	indie rock	38.0	sludge metal	38.0	alternative	25.0
Eins, Zwei Orchestra	shoegaze	100.0	seen live	73.0	indie	64.0	pop	37.0	dutch	37.0
honeydip	shoegaze	100.0	japanese	49.0	dream pop	42.0	Japanese Shoegaze	25.0	post-rock	14.0
The Cherry Wave	shoegaze	100.0	noise	28.0	noise rock	23.0	scotland	23.0	glasgow	19.0
Lunaire	shoegaze	100.0	post-rock	69.0	dream pop	43.0	post-punk	32.0	alternative rock	12.0
Wallflower	shoegaze	100.0	punk	56.0	indie pop	45.0	twee	45.0	indie	34.0
Oblisk	shoegaze	100.0	post-rock	66.0	psychedelic	58.0	experimental	35.0	post rock	20.0
Guilty Ghosts	ambient	100.0	shoegaze	100.0	drone	89.0	noise	56.0	experimental	34.0
Tex La Homa	post-rock	100.0	shoegaze	100.0	indie	86.0	ambient	72.0	dream pop	72.0
Jetman Jet Team	shoegaze	100.0	space rock	70.0	noise pop	62.0	indie	39.0	under 2000 listeners	39.0
The Emerald Down	shoegaze	100.0	ethereal	25.0	dream pop	22.0	indie	14.0	female vocalists	9.0
Morella's Forest	shoegaze	100.0	christian	92.0	indie	75.0	seen live	42.0	rock	42.0
Pastel Blue	shoegaze	100.0	Japanese Shoegaze	75.0	dream pop	67.0	indie	42.0	japanese	25.0
Seeland	electronic	100.0	indietronica	50.0	synthpop	50.0	electronica	40.0	post-rock	40.0
Aero Flynn	seen live	100.0	indie rock	50.0	indietronica	50.0	bon iver	50.0	wisconsin	50.0
Retro Remix Revue	video game remix	100.0	instrumental	50.0	indietronica	50.0	jazz fusion	50.0	video game	50.0
Broken Toy Airplanes	electronica	100.0	indie pop	100.0	indie	50.0	indietronica	50.0	my love	20.0
This Mess Is Mine	electronic	100.0	aerotone	100.0	german	80.0	netlabel	80.0	Indietronic	60.0
Neon Walrus	indie	100.0	spanish	50.0	indietronica	50.0	neon things	50.0	electro indierock	50.0
Telegrama	power pop	100.0	spanish pop	75.0	pop	50.0	new wave	50.0	indietronica	50.0
Over The Atlantic	seen live	100.0	electronic	67.0	New Zealand	67.0	indietronica	50.0	Kiwi	50.0
Squares On Both Sides	ambient	100.0	post-rock	70.0	indie folk	60.0	seen live	50.0	indietronica	50.0
Humpty Dumpty	italian	100.0	singer-songwriter	50.0	indietronica	50.0	synth pop	34.0	hardcore punk	34.0
Yumi And The Weather	indie	100.0	female vocalists	50.0	indietronica	50.0	\N	0.0	\N	0.0
Life Coach	UK	100.0	unsigned	100.0	krautrock	100.0	electronica	50.0	indie	50.0
Junco	electronic	100.0	Flamenco	100.0	Juncore	100.0	j u n c o	100.0	spanish	50.0
Roman Foot Soldiers	indie rock	100.0	proartbvoice	75.0	indietronica	50.0	under 2000 listeners	50.0	indonesia	50.0
ultra-lounge	lounge	100.0	Soundtrack	50.0	classic rock	50.0	metal	50.0	Hip-Hop	50.0
White Slaver	chillout	100.0	indie	100.0	ambient	100.0	downtempo	100.0	electronic	50.0
Pretty Boy Crossover	electronic	100.0	electronica	100.0	ambient	100.0	electronic dub	100.0	monotonik	100.0
Anja	electronic	100.0	Female fronted metal	50.0	metal	50.0	chillout	50.0	trip-hop	50.0
Lise	instrumental	100.0	french	50.0	indie	50.0	experimental	50.0	piano	50.0
AMOR ENTRAVE	indie	100.0	electronic	50.0	pop	50.0	indietronica	50.0	rock	20.0
Zigmat	indie	100.0	indie rock	75.0	electronic	50.0	indietronica	50.0	indie electrock	50.0
Electro-Z	Peru	100.0	indie	75.0	indie pop	50.0	indietronica	50.0	peruvian	50.0
The All-About	indie	100.0	electronic	50.0	electropop	50.0	indie pop	50.0	dance	50.0
.computer..	seen live	100.0	german	60.0	indietronica	50.0	electro	30.0	indie	20.0
K-Conjog	dirty demos	100.0	snowdonia	100.0	akoustic desease	100.0	k-conjog	100.0	sine3pm	100.0
Adventure Of	seen live	100.0	indie	100.0	indie pop	100.0	electropop	50.0	rock	50.0
Nubes en Mi Casa	seen live	100.0	indie	100.0	indie pop	100.0	twee pop	50.0	indietronica	50.0
EZamor	The Postal Service	100.0	nine inch nails	100.0	electronic	50.0	electronica	50.0	electropop	50.0
Lovelier Other	slowpop	100.0	electronic	50.0	electronica	50.0	indie	50.0	indie pop	50.0
Oh Boy Les Mecs	ambient	100.0	post-rock	100.0	trip-hop	50.0	indietronica	50.0	\N	0.0
Sky Rabbit	post-punk	100.0	electronic	75.0	indie	75.0	indian rock	75.0	indie rock	50.0
The Billie Burke Estate	indie	100.0	Canadian	75.0	soul	50.0	indietronica	50.0	lesser known yet streamable artists	25.0
mśm	mistagged artist	100.0	indietronica	50.0	mistagged	50.0	to discover	50.0	Múm	50.0
Gator	heavy metal	100.0	downtempo	100.0	acid jazz	100.0	lounge	100.0	Fox	100.0
Side Project	seen live	100.0	synth pop	100.0	Electro Pop	100.0	graveyard pop	100.0	electropop	50.0
Make Like a Tree	singer-songwriter	100.0	blues	67.0	indietronica	50.0	indie	34.0	Electroclash	34.0
8-Bit Ninjas	electropop	100.0	8-bit	100.0	synthpop	100.0	electronic	84.0	indie	50.0
Hypermagic	ambient	100.0	Hip-Hop	50.0	chillout	50.0	electronic	50.0	electronica	50.0
Occupanther	electronic	100.0	seen live	100.0	electronica	50.0	downtempo	50.0	House	50.0
Zero Call	electronic	100.0	electronica	50.0	british	50.0	alternative	50.0	UK	50.0
Copycats	electronic	100.0	indie	75.0	bizarre	75.0	indietronica	50.0	punk rock	50.0
Nuccini!	electronic	100.0	abstract	75.0	electronica	50.0	hip hop	50.0	indietronica	50.0
Friko	Norway	100.0	Friko	100.0	indietronica	50.0	\N	0.0	\N	0.0
Jack Fascinato	jazz	100.0	space age pop	100.0	Soundtrack	50.0	classic rock	50.0	metal	50.0
Jane Pow	indie pop	100.0	90s	100.0	slumberland	100.0	southampton	100.0	electronic	50.0
Echo Orbiter	indie	100.0	Philadelphia	100.0	New Weird America	100.0	Indietronic	100.0	electronic	50.0
kate in the box	electronic	100.0	experimental	100.0	Lo-Fi	100.0	synthpop	100.0	idm	84.0
Gender ID	electro	100.0	seen live	84.0	indie	59.0	alternative	50.0	indietronica	50.0
Sigur Rós	post-rock	100.0	ambient	74.0	icelandic	57.0	alternative	40.0	indie	37.0
Mogwai	post-rock	100.0	instrumental	48.0	seen live	28.0	indie	27.0	alternative	22.0
Explosions in the Sky	post-rock	100.0	instrumental	61.0	ambient	36.0	experimental	32.0	post rock	19.0
God Is An Astronaut	post-rock	100.0	instrumental	56.0	ambient	41.0	experimental	31.0	post rock	17.0
65daysofstatic	post-rock	100.0	instrumental	52.0	experimental	48.0	math rock	41.0	electronic	39.0
The Album Leaf	post-rock	100.0	ambient	80.0	instrumental	51.0	electronic	44.0	indie	42.0
Godspeed You! Black Emperor	post-rock	100.0	instrumental	46.0	experimental	41.0	ambient	35.0	post rock	18.0
Hammock	post-rock	100.0	ambient	95.0	instrumental	51.0	shoegaze	42.0	electronic	25.0
This Will Destroy You	post-rock	100.0	instrumental	54.0	ambient	39.0	experimental	29.0	post rock	16.0
Mono	post-rock	100.0	instrumental	50.0	japanese	34.0	ambient	32.0	seen live	23.0
Maybeshewill	post-rock	100.0	instrumental	49.0	experimental	45.0	math rock	37.0	electronic	27.0
Russian Circles	post-rock	100.0	Post-Metal	59.0	instrumental	58.0	experimental	30.0	math rock	24.0
Balmorhea	post-rock	100.0	instrumental	81.0	ambient	69.0	piano	46.0	acoustic	42.0
The American Dollar	post-rock	100.0	ambient	63.0	instrumental	53.0	electronic	33.0	experimental	28.0
Tortoise	post-rock	100.0	instrumental	50.0	experimental	44.0	indie	22.0	post rock	20.0
Caspian	post-rock	100.0	instrumental	52.0	experimental	29.0	post rock	17.0	indie	13.0
toe	post-rock	100.0	math rock	63.0	instrumental	60.0	japanese	51.0	post rock	19.0
Efterklang	post-rock	100.0	electronic	74.0	seen live	65.0	ambient	56.0	danish	48.0
The Appleseed Cast	post-rock	100.0	indie	96.0	indie rock	69.0	emo	69.0	seen live	39.0
A Silver Mt. Zion	post-rock	100.0	experimental	43.0	instrumental	33.0	ambient	26.0	post rock	18.0
Do Make Say Think	post-rock	100.0	instrumental	49.0	experimental	31.0	Canadian	25.0	post rock	18.0
And So I Watch You From Afar	post-rock	100.0	math rock	54.0	instrumental	52.0	experimental	33.0	seen live	25.0
Pelican	post-rock	100.0	Post-Metal	73.0	instrumental	70.0	Sludge	59.0	doom metal	28.0
If These Trees Could Talk	post-rock	100.0	instrumental	56.0	atmospheric	30.0	math rock	23.0	post rock	17.0
Red Sparowes	post-rock	100.0	instrumental	49.0	experimental	26.0	Progressive rock	20.0	post rock	16.0
Jesu	post-rock	100.0	drone	87.0	experimental	63.0	Sludge	57.0	doom metal	53.0
Crippled Black Phoenix	post-rock	100.0	experimental	52.0	Progressive rock	33.0	ambient	32.0	instrumental	22.0
Moving Mountains	post-rock	100.0	indie	43.0	experimental	35.0	alternative rock	24.0	post-hardcore	21.0
El Ten Eleven	post-rock	100.0	instrumental	64.0	electronic	39.0	indie	25.0	post rock	17.0
Slint	post-rock	100.0	math rock	66.0	indie rock	24.0	indie	24.0	experimental	20.0
World's End Girlfriend	post-rock	100.0	experimental	70.0	electronic	54.0	japanese	53.0	ambient	51.0
Grails	post-rock	100.0	instrumental	56.0	experimental	41.0	ambient	33.0	post rock	16.0
Dirty Three	post-rock	100.0	instrumental	65.0	australian	32.0	indie	24.0	seen live	23.0
pg.lost	post-rock	100.0	instrumental	49.0	shoegaze	28.0	swedish	27.0	post rock	15.0
Long Distance Calling	post-rock	100.0	instrumental	51.0	Progressive rock	40.0	seen live	26.0	german	22.0
Collapse Under the Empire	post-rock	100.0	instrumental	56.0	electronic	32.0	german	23.0	post rock	15.0
Lights Out Asia	post-rock	100.0	ambient	76.0	shoegaze	44.0	electronic	42.0	indie	20.0
EF	post-rock	100.0	instrumental	42.0	swedish	34.0	experimental	24.0	seen live	20.0
I Am Waiting for You Last Summer	post-rock	100.0	instrumental	81.0	experimental	75.0	electronic	75.0	russian	17.0
Tides From Nebula	post-rock	100.0	instrumental	58.0	Post-Metal	39.0	seen live	36.0	polish	33.0
Piano Magic	post-rock	100.0	indie	56.0	electronic	46.0	alternative	39.0	indie rock	33.0
Jakob	post-rock	100.0	instrumental	49.0	ambient	37.0	New Zealand	23.0	post rock	13.0
Aereogramme	post-rock	100.0	Progressive rock	62.0	alternative	34.0	indie	31.0	seen live	30.0
Rachel's	post-rock	100.0	instrumental	69.0	ambient	44.0	Classical	38.0	experimental	34.0
Exxasens	post-rock	100.0	Post-Metal	56.0	instrumental	47.0	space rock	44.0	spanish	18.0
Mice Parade	post-rock	100.0	electronic	58.0	experimental	58.0	indie	52.0	electronica	27.0
Gregor Samsa	post-rock	100.0	shoegaze	45.0	ambient	43.0	slowcore	29.0	instrumental	25.0
Faunts	post-rock	100.0	shoegaze	75.0	electronic	64.0	indie rock	43.0	indie	42.0
Epic45	post-rock	100.0	ambient	67.0	shoegaze	50.0	experimental	35.0	post rock	17.0
Saxon Shore	post-rock	100.0	instrumental	60.0	ambient	45.0	experimental	23.0	atmospheric	23.0
I LIKE TRAINS	post-rock	100.0	seen live	48.0	experimental	35.0	indie	33.0	british	30.0
Everything Is Made in China	post-rock	100.0	indie	59.0	russian	47.0	experimental	43.0	shoegaze	36.0
Kyte	post-rock	100.0	shoegaze	68.0	ambient	66.0	indie	40.0	electronic	24.0
Maserati	post-rock	100.0	instrumental	53.0	math rock	35.0	experimental	25.0	post rock	18.0
*shels	post-rock	100.0	Post-Metal	79.0	experimental	53.0	Sludge	39.0	Progressive	28.0
Gravenhurst	post-rock	100.0	indie	82.0	seen live	64.0	shoegaze	55.0	indie rock	51.0
Sleepmakeswaves	post-rock	100.0	instrumental	54.0	experimental	32.0	australian	25.0	post rock	13.0
Lite	post-rock	100.0	math rock	99.0	instrumental	65.0	japanese	53.0	post rock	18.0
Tristeza	post-rock	100.0	instrumental	62.0	ambient	35.0	post rock	22.0	indie	21.0
Junius	post-rock	100.0	Progressive rock	60.0	space rock	39.0	seen live	38.0	alternative rock	27.0
The Evpatoria Report	post-rock	100.0	instrumental	47.0	experimental	28.0	swiss	19.0	post rock	14.0
Yndi Halda	post-rock	100.0	instrumental	45.0	ambient	30.0	experimental	22.0	post rock	14.0
Jeniferever	post-rock	100.0	ambient	41.0	swedish	35.0	indie	35.0	seen live	24.0
Under Byen	post-rock	100.0	danish	77.0	alternative	55.0	indie	51.0	scandinavian	38.0
nobody.one	post-rock	100.0	instrumental	88.0	Specially Addictive Soundtrack	50.0	russian	44.0	indie	29.0
Set Fire to Flames	post-rock	100.0	experimental	53.0	ambient	44.0	instrumental	37.0	post rock	17.0
Logh	post-rock	100.0	indie	65.0	swedish	51.0	seen live	41.0	indie rock	39.0
Clann Zú	post-rock	100.0	experimental	74.0	Progressive rock	43.0	indie	40.0	alternative	31.0
Mooncake	post-rock	100.0	instrumental	45.0	russian	36.0	experimental	31.0	indie	20.0
Gifts from Enola	post-rock	100.0	instrumental	52.0	experimental	34.0	ambient	31.0	post rock	13.0
Immanu El	post-rock	100.0	shoegaze	40.0	swedish	35.0	experimental	27.0	indie	23.0
Lymbyc Systym	post-rock	100.0	instrumental	67.0	electronic	51.0	experimental	45.0	seen live	25.0
port-royal	post-rock	100.0	ambient	86.0	electronic	53.0	shoegaze	43.0	instrumental	35.0
Labradford	post-rock	100.0	ambient	77.0	instrumental	34.0	experimental	30.0	drone	17.0
Bark Psychosis	post-rock	100.0	ambient	50.0	experimental	46.0	shoegaze	37.0	post rock	18.0
The Samuel Jackson Five	post-rock	100.0	instrumental	48.0	experimental	27.0	norwegian	22.0	post rock	15.0
Hood	post-rock	100.0	electronic	50.0	indie	49.0	indie rock	32.0	indietronica	30.0
July Skies	post-rock	100.0	ambient	99.0	shoegaze	50.0	instrumental	40.0	dream pop	30.0
The Echelon Effect	post-rock	100.0	ambient	88.0	instrumental	57.0	experimental	37.0	electronic	34.0
Kwoon	post-rock	100.0	ambient	52.0	shoegaze	37.0	atmospheric	36.0	french	28.0
Laura	post-rock	100.0	instrumental	41.0	australian	24.0	experimental	24.0	post rock	14.0
Blueneck	post-rock	100.0	ambient	57.0	atmospheric	34.0	british	19.0	post rock	14.0
Raised By Swans	post-rock	100.0	indie rock	65.0	dream pop	59.0	indie	59.0	Canadian	40.0
Toundra	post-rock	100.0	Post-Metal	84.0	instrumental	60.0	Sludge	31.0	ambiental sludge	14.0
Joy Wants Eternity	post-rock	100.0	instrumental	50.0	ambient	35.0	experimental	29.0	shoegaze	26.0
Khoma	post-rock	100.0	Post-Metal	75.0	Sludge	55.0	swedish	31.0	rock	30.0
The Mercury Program	post-rock	100.0	instrumental	66.0	math rock	39.0	indie	23.0	post rock	21.0
Lights & Motion	post-rock	100.0	ambient	69.0	instrumental	47.0	electronic	25.0	experimental	25.0
Trans Am	post-rock	100.0	electronic	69.0	seen live	46.0	instrumental	40.0	experimental	38.0
The Best Pessimist	post-rock	100.0	ambient	87.0	experimental	74.0	electronic	71.0	piano	20.0
té	post-rock	100.0	instrumental	51.0	japanese	45.0	experimental	33.0	math rock	31.0
Clogs	post-rock	100.0	instrumental	88.0	experimental	71.0	contemporary classical	55.0	folk	48.0
Vessels	post-rock	100.0	math rock	61.0	experimental	43.0	seen live	38.0	electronic	16.0
The Six Parts Seven	post-rock	100.0	instrumental	62.0	ambient	33.0	post rock	25.0	indie	25.0
Audrey	post-rock	100.0	swedish	63.0	indie	54.0	female vocalists	44.0	slowcore	33.0
Lowercase Noises	post-rock	100.0	ambient	89.0	instrumental	62.0	experimental	46.0	electronic	33.0
Moonlit Sailor	post-rock	100.0	instrumental	53.0	swedish	33.0	ambient	23.0	indie	16.0
Austin TV	post-rock	100.0	instrumental	69.0	indie	46.0	indie rock	38.0	mexico	35.0
Hṛṣṭa	post-rock	100.0	experimental	44.0	Canadian	28.0	ambient	16.0	Experimental Rock	11.0
Talkdemonic	post-rock	100.0	instrumental	84.0	seen live	80.0	experimental	72.0	electronic	52.0
A Whisper in the Noise	post-rock	100.0	art rock	48.0	indie	37.0	alternative	28.0	indie rock	24.0
There Will Be Fireworks	post-rock	100.0	indie	64.0	shoegaze	51.0	experimental	48.0	Scottish	35.0
Explosions In The Sky & David Wingo	post-rock	100.0	ambient	60.0	instrumental	52.0	Soundtrack	26.0	piano	12.0
Fridge	post-rock	100.0	experimental	66.0	electronic	56.0	ambient	43.0	electronica	33.0
Anoice	post-rock	100.0	ambient	75.0	japanese	57.0	instrumental	54.0	experimental	36.0
Stafrænn Hákon	post-rock	100.0	icelandic	92.0	ambient	76.0	shoegaze	39.0	electronica	24.0
miaou	post-rock	100.0	instrumental	48.0	japanese	47.0	experimental	31.0	post rock	17.0
I Hear Sirens	post-rock	100.0	instrumental	49.0	ambient	34.0	atmospheric	25.0	post rock	13.0
Disco Inferno	post-rock	100.0	experimental	70.0	post-punk	61.0	shoegaze	44.0	Experimental Rock	15.0
sleepy.ab	post-rock	100.0	japanese	90.0	shoegaze	84.0	indie	57.0	rock	29.0
From Monument To Masses	post-rock	100.0	instrumental	46.0	Progressive	18.0	post rock	15.0	political	13.0
Her Name Is Calla	post-rock	100.0	shoegaze	41.0	ambient	32.0	alternative	19.0	seen live	15.0
The White Birch	post-rock	100.0	slowcore	86.0	norwegian	54.0	indie	37.0	Mellow	22.0
Giant Squid	post-rock	100.0	Sludge	89.0	Progressive metal	79.0	experimental	66.0	Post-Metal	55.0
downy	post-rock	100.0	shoegaze	61.0	japanese	56.0	alternative	33.0	indie	28.0
O'Brother	post-rock	100.0	Progressive rock	75.0	seen live	68.0	indie	65.0	ambient	43.0
Palms	post-rock	100.0	Post-Metal	54.0	experimental	53.0	indie	35.0	electronic	28.0
Белые Флаги Зажигайте Медленно	post-rock	100.0	instrumental	52.0	russian	37.0	experimental	37.0	indie	21.0
Codes In The Clouds	post-rock	100.0	instrumental	49.0	ambient	34.0	british	20.0	seen live	14.0
Tape	post-rock	100.0	ambient	94.0	experimental	65.0	electronic	53.0	seen live	34.0
Pram	post-rock	100.0	experimental	87.0	dream pop	75.0	electronic	55.0	indie	50.0
Bell Orchestre	post-rock	100.0	instrumental	70.0	experimental	50.0	Canadian	50.0	seen live	46.0
Esmerine	post-rock	100.0	instrumental	61.0	experimental	49.0	ambient	34.0	Canadian	24.0
Meanwhile, Back In Communist Russia...	post-rock	100.0	experimental	32.0	ambient	24.0	post rock	18.0	indie	18.0
Enemies	post-rock	100.0	math rock	90.0	instrumental	65.0	experimental	43.0	amazing	13.0
Beware of Safety	post-rock	100.0	instrumental	49.0	experimental	26.0	instrumental post-rock	13.0	rock	10.0
Unwed Sailor	post-rock	100.0	instrumental	67.0	seen live	44.0	indie	36.0	ambient	26.0
Upcdowncleftcrightcabc+Start	post-rock	100.0	instrumental	46.0	experimental	25.0	post rock	14.0	instrumental rock	14.0
Leech	post-rock	100.0	instrumental	57.0	black metal	36.0	swiss	21.0	seen live	18.0
September Malevolence	post-rock	100.0	instrumental	34.0	swedish	31.0	experimental	22.0	post rock	13.0
Verba	post-rock	100.0	russian	74.0	polish	51.0	Hip-Hop	40.0	polskie	33.0
Willow	post-rock	100.0	instrumental	57.0	pop	47.0	female vocalists	34.0	seen live	30.0
Sleep Dealer	post-rock	100.0	instrumental	60.0	ambient	60.0	russian	38.0	experimental	35.0
Giardini di Mirò	post-rock	100.0	italian	44.0	indie	28.0	shoegaze	28.0	seen live	19.0
George Dorn Screams	post-rock	100.0	polish	66.0	alternative	49.0	seen live	45.0	alternative rock	41.0
The Ascent Of Everest	post-rock	100.0	instrumental	40.0	ambient	33.0	experimental	16.0	post rock	14.0
French Teen Idol	post-rock	100.0	ambient	65.0	electronic	44.0	instrumental	37.0	italian	21.0
This is Your Captain Speaking	post-rock	100.0	instrumental	42.0	ambient	29.0	australian	18.0	post rock	14.0
RQTN	post-rock	100.0	ambient	80.0	instrumental	59.0	neoclassical	34.0	french	33.0
Massimo Volume	post-rock	100.0	italian	75.0	alternative rock	61.0	alternative	31.0	seen live	28.0
The Seven Mile Journey	post-rock	100.0	instrumental	53.0	danish	25.0	post rock	14.0	instrumental post-rock	11.0
Powder! Go Away	post-rock	100.0	instrumental	52.0	ambient	40.0	russian	38.0	sad-dog core	18.0
Te'	post-rock	100.0	japanese	43.0	instrumental	40.0	math rock	29.0	post rock	17.0
Sharks Keep Moving	post-rock	100.0	math rock	96.0	indie	75.0	indie rock	46.0	instrumental	45.0
Daturah	post-rock	100.0	instrumental	47.0	ambient	31.0	german	21.0	post rock	14.0
Followed by Ghosts	post-rock	100.0	instrumental	57.0	ambient	40.0	experimental	32.0	atmospheric	27.0
Iamthemorning	post-rock	100.0	acoustic	99.0	russian	78.0	chamber pop	76.0	marjanacore	37.0
jizue	post-rock	100.0	instrumental	74.0	nu jazz	68.0	japanese	60.0	piano	49.0
Kinski	post-rock	100.0	instrumental	49.0	experimental	37.0	indie	29.0	post rock	23.0
Gates	post-rock	100.0	ambient	66.0	indie	50.0	emo	22.0	indie rock	22.0
Magyar Posse	post-rock	100.0	instrumental	48.0	finnish	34.0	seen live	31.0	Progressive rock	26.0
We Made God	post-rock	100.0	Post-Metal	90.0	experimental	46.0	icelandic	34.0	post rock	13.0
Euphoria	post-rock	100.0	japanese	52.0	shoegaze	35.0	electronica	20.0	J-Indie	20.0
Tarentel	post-rock	100.0	ambient	53.0	experimental	51.0	instrumental	28.0	post rock	19.0
The Calm Blue Sea	post-rock	100.0	instrumental	51.0	ambient	40.0	experimental	32.0	post rock	14.0
Giants	post-rock	100.0	instrumental	49.0	american	16.0	post rock	15.0	instrumental rock	12.0
Gastr Del Sol	post-rock	100.0	experimental	71.0	indie	29.0	chicago	22.0	post rock	20.0
The Unwinding Hours	post-rock	100.0	indie	42.0	Scottish	32.0	alternative rock	26.0	seen live	25.0
I'm Not A Gun	post-rock	100.0	electronic	71.0	instrumental	54.0	ambient	53.0	idm	39.0
Marriages	post-rock	100.0	Psychedelic Rock	54.0	indie rock	45.0	shoegaze	42.0	ambient	31.0
You.May.Die.In.The.Desert	post-rock	100.0	instrumental	53.0	math rock	43.0	experimental	35.0	ambient	26.0
Mark Hollis	post-rock	100.0	singer-songwriter	75.0	experimental	73.0	minimal	45.0	jazz	44.0
Irepress	post-rock	100.0	Post-Metal	81.0	instrumental	53.0	Sludge	40.0	Progressive rock	34.0
Glowworm	post-rock	100.0	instrumental	52.0	ambient	45.0	shoegaze	35.0	electronic	21.0
Early Day Miners	post-rock	100.0	slowcore	87.0	indie rock	49.0	indie	41.0	post rock	16.0
For a Minor Reflection	post-rock	100.0	icelandic	63.0	seen live	55.0	instrumental	54.0	experimental	30.0
Fly Pan Am	post-rock	100.0	experimental	45.0	instrumental	39.0	Canadian	22.0	post rock	18.0
Windsor For The Derby	post-rock	100.0	indie	62.0	experimental	51.0	ambient	50.0	indie rock	29.0
Destroyalldreamers	post-rock	100.0	shoegaze	54.0	instrumental	41.0	Canadian	20.0	post rock	15.0
Aesthesys	post-rock	100.0	ambient	77.0	instrumental	55.0	neoclassical	47.0	russian	34.0
Brontide	post-rock	100.0	math rock	88.0	instrumental	84.0	seen live	33.0	Post-Metal	11.0
Mono & World's End Girlfriend	post-rock	100.0	instrumental	44.0	ambient	44.0	japanese	40.0	neoclassical	34.0
Friends of Dean Martinez	post-rock	100.0	instrumental	74.0	indie	32.0	americana	29.0	Alt-country	28.0
East Of The Wall	post-rock	100.0	Post-Metal	78.0	Progressive rock	61.0	instrumental	51.0	experimental	50.0
mudy on the 昨晩	post-rock	100.0	math rock	88.0	instrumental	80.0	japanese	63.0	indie	42.0
Our Ceasing Voice	post-rock	100.0	ambient	59.0	instrumental	44.0	atmospheric	29.0	acoustic	18.0
Signal Hill	post-rock	100.0	instrumental	50.0	shoegaze	39.0	dream pop	13.0	post rock	12.0
Pyramids	post-rock	100.0	experimental	92.0	shoegaze	89.0	screamo	66.0	ambient	56.0
Dorena	post-rock	100.0	instrumental	48.0	swedish	35.0	experimental	30.0	post rock	14.0
Cougar	post-rock	100.0	instrumental	53.0	seen live	34.0	indie	31.0	rock	25.0
K.C. Accidental	post-rock	100.0	instrumental	77.0	Canadian	64.0	indie	57.0	post rock	29.0
The End of the Ocean	post-rock	100.0	ambient	54.0	instrumental	50.0	instrumental post-rock	16.0	american	15.0
Tortoise & Bonnie 'Prince' Billy	post-rock	100.0	indie	70.0	folk	45.0	indie rock	31.0	american	23.0
Lampshade	post-rock	100.0	indie	87.0	danish	82.0	alternative	63.0	seen live	61.0
Random Forest	post-rock	100.0	ambient	77.0	instrumental	64.0	chillout	27.0	indie	17.0
Athletics	post-rock	100.0	ambient	48.0	indie rock	43.0	indie	35.0	emo	33.0
Scraps of Tape	post-rock	100.0	swedish	31.0	instrumental	30.0	experimental	22.0	seen live	18.0
Papa M	post-rock	100.0	folk	76.0	indie	74.0	seen live	64.0	singer-songwriter	60.0
Escape the Day	post-rock	100.0	ambient	53.0	slowcore	40.0	depressive	39.0	ethereal	23.0
Because of Ghosts	post-rock	100.0	instrumental	47.0	experimental	32.0	australian	29.0	shoegaze	24.0
Cul de Sac	post-rock	100.0	experimental	51.0	psychedelic	42.0	instrumental	34.0	Experimental Rock	16.0
The Black Heart Rebellion	post-rock	100.0	screamo	86.0	experimental	49.0	post-hardcore	46.0	seen live	38.0
Slon	post-rock	100.0	seen live	67.0	rap	60.0	instrumental	54.0	austrian	54.0
Youth Pictures of Florence Henderson	post-rock	100.0	norwegian	28.0	experimental	25.0	instrumental	21.0	indie	15.0
No Clear Mind	post-rock	100.0	ambient	65.0	shoegaze	62.0	experimental	50.0	melancholic	32.0
Cats And Cats And Cats	math rock	100.0	post-rock	100.0	indie rock	63.0	indie	46.0	experimental	40.0
Suffocate for Fuck Sake	post-rock	100.0	Post-Metal	64.0	post-hardcore	53.0	screamo	48.0	Sludge	27.0
School of Emotional Engineering	post-rock	100.0	ambient	91.0	experimental	60.0	atmospheric	44.0	melancholy	33.0
夢中夢	post-rock	100.0	experimental	68.0	Avant-Garde	61.0	japanese	50.0	Post-Metal	43.0
The For Carnation	post-rock	100.0	slowcore	60.0	experimental	31.0	indie	27.0	instrumental	22.0
Aucan	post-rock	100.0	electronic	80.0	experimental	76.0	math rock	75.0	dubstep	65.0
APSE	post-rock	100.0	experimental	52.0	ambient	38.0	seen live	33.0	atmospheric	18.0
Falloch	post-rock	100.0	Post-Black Metal	85.0	Atmospheric metal	58.0	folk	35.0	Dark metal	30.0
L'Altra	post-rock	100.0	slowcore	72.0	indie	64.0	indie rock	45.0	shoegaze	38.0
Hurtmold	post-rock	100.0	experimental	64.0	instrumental	54.0	brazilian	45.0	seen live	32.0
Supermachiner	post-rock	100.0	experimental	97.0	ambient	87.0	noise	54.0	Sludge	40.0
Migala	post-rock	100.0	spanish	43.0	indie rock	35.0	indie	31.0	slowcore	19.0
Mutyumu	post-rock	100.0	experimental	79.0	japanese	53.0	avantgarde	40.0	Classical	29.0
Roy Montgomery	post-rock	100.0	space rock	89.0	ambient	83.0	drone	56.0	atmospheric	35.0
Circadian Eyes	post-rock	100.0	ambient	90.0	piano	59.0	instrumental	55.0	modern classical	38.0
Dreamend	post-rock	100.0	shoegaze	61.0	experimental	41.0	instrumental	23.0	post rock	17.0
New Century Classics	post-rock	100.0	instrumental	60.0	polish	38.0	ambient	37.0	experimental	25.0
101A	post-rock	100.0	shoegaze	65.0	experimental	60.0	japanese	59.0	indie	34.0
U137	post-rock	100.0	ambient	67.0	swedish	62.0	instrumental	50.0	shoegaze	34.0
Kokomo	post-rock	100.0	Post-Metal	52.0	instrumental	46.0	seen live	21.0	german	15.0
Japancakes	post-rock	100.0	instrumental	49.0	shoegaze	22.0	indie rock	21.0	indie	15.0
sgt.	post-rock	100.0	instrumental	52.0	japanese	45.0	experimental	38.0	shoegaze	30.0
The Pirate Ship Quintet	post-rock	100.0	instrumental	43.0	experimental	30.0	british	19.0	instrumental post-rock	14.0
Deer Leap	post-rock	100.0	emo	90.0	indie	57.0	indie rock	34.0	indiemo	13.0
Tunturia	post-rock	100.0	instrumental	43.0	ambient	33.0	Canadian	21.0	post rock	10.0
Anatomy of the Bear	post-rock	100.0	ambient	98.0	experimental	68.0	shoegaze	44.0	minimal	26.0
Ljungblut	post-rock	100.0	melancholic	86.0	norwegian	62.0	industrial	34.0	rock	31.0
Lanterna	post-rock	100.0	instrumental	62.0	ambient	46.0	post rock	19.0	Dreamy	18.0
Break my fucking sky	post-rock	100.0	electronic	52.0	piano	47.0	experimental	35.0	new age	31.0
Frames	post-rock	100.0	Progressive rock	46.0	instrumental	45.0	Progressive	22.0	indie	18.0
A Dancing Beggar	post-rock	100.0	ambient	92.0	instrumental	83.0	atmospheric	78.0	experimental	68.0
The Pax Cecilia	post-rock	100.0	Post-Metal	95.0	experimental	69.0	ambient	56.0	screamo	55.0
The Low Frequency in Stereo	post-rock	100.0	seen live	80.0	norwegian	44.0	indie	30.0	instrumental	30.0
Something Like Elvis	post-rock	100.0	polish	66.0	seen live	56.0	noise rock	56.0	experimental	55.0
Landing	post-rock	100.0	ambient	87.0	shoegaze	79.0	instrumental	31.0	space rock	24.0
Hungry Ghosts	post-rock	100.0	instrumental	85.0	post rock	38.0	melancholy	30.0	slowcore	25.0
Hangedup	post-rock	100.0	instrumental	51.0	experimental	49.0	Canadian	31.0	post rock	17.0
Constants	post-rock	100.0	Progressive rock	51.0	post-hardcore	32.0	ambient	26.0	seen live	24.0
Worriedaboutsatan	post-rock	100.0	electronic	80.0	ambient	62.0	idm	43.0	electronica	32.0
Talons	post-rock	100.0	instrumental	50.0	math rock	47.0	Post-Metal	31.0	seen live	28.0
Au4	post-rock	100.0	shoegaze	98.0	electronic	72.0	ambient	62.0	ethereal	51.0
Isis + Aereogramme	post-rock	100.0	Post-Metal	51.0	experimental	48.0	ambient	39.0	Sludge	27.0
Enablers	post-rock	100.0	spoken word	67.0	noise rock	48.0	seen live	38.0	indie	21.0
Atlantis	post-rock	100.0	instrumental	48.0	Progressive rock	48.0	psychedelic	24.0	seen live	21.0
Goonies Never Say Die	post-rock	100.0	instrumental	53.0	experimental	44.0	ambient	35.0	rock	10.0
This Patch of Sky	post-rock	100.0	instrumental	62.0	ambient	58.0	experimental	37.0	art rock	17.0
We vs. Death	post-rock	100.0	instrumental	48.0	experimental	25.0	dutch	16.0	seen live	16.0
Meniscus	post-rock	100.0	Post-Metal	58.0	instrumental	48.0	Progressive rock	29.0	experimental	25.0
Microfilm	post-rock	100.0	instrumental	41.0	french	38.0	electronica	16.0	post rock	16.0
ハイスイノナサ	post-rock	100.0	japanese	82.0	math rock	76.0	indie	49.0	rock	38.0
The Soul's Release	post-rock	100.0	ambient	72.0	instrumental	47.0	icelandic	24.0	post rock	13.0
3nd	post-rock	100.0	japanese	50.0	instrumental	45.0	math rock	40.0	Progressive rock	27.0
Neil on Impression	post-rock	100.0	instrumental	48.0	italian	26.0	experimental	18.0	post rock	12.0
Slaraffenland	post-rock	100.0	experimental	96.0	danish	65.0	seen live	47.0	jazz	33.0
Сны Моего Неба	post-rock	100.0	instrumental	52.0	experimental	36.0	russian	33.0	post rock	16.0
Old Silver Key	post-rock	100.0	shoegaze	95.0	Post-Black Metal	64.0	black metal	33.0	Ukrainian	30.0
Teeth of the Sea	post-rock	100.0	psychedelic	90.0	ambient	75.0	drone	55.0	experimental	54.0
TotorRo	post-rock	100.0	Post-Metal	54.0	instrumental	48.0	ambient	23.0	post rock	14.0
1 Mile North	post-rock	100.0	ambient	79.0	instrumental	38.0	post rock	21.0	chillout	19.0
The Ember Days	post-rock	100.0	christian	84.0	worship	75.0	ambient	67.0	female vocalists	67.0
惘闻	post-rock	100.0	chinese	47.0	instrumental	39.0	indie	15.0	post rock	8.0
Tone	post-rock	100.0	rap	43.0	instrumental	41.0	Deutschrap	38.0	german	36.0
Líam	post-rock	100.0	shoegaze	80.0	Post-Black Metal	48.0	black metal	46.0	Post-Metal	32.0
Rothko	post-rock	100.0	ambient	71.0	instrumental	49.0	experimental	48.0	Avant-Garde	26.0
Midas Fall	post-rock	100.0	Progressive rock	63.0	female vocalists	47.0	indie rock	42.0	ambient	20.0
Einar Stray	post-rock	100.0	norwegian	87.0	acoustic	69.0	seen live	50.0	singer-songwriter	49.0
Parhelia	post-rock	100.0	instrumental	52.0	irish	22.0	Progressive rock	19.0	Progressive	19.0
Childs	post-rock	100.0	ambient	67.0	electronic	45.0	chillout	24.0	downtempo	21.0
Неботошнит	post-rock	100.0	instrumental	62.0	depressive	58.0	emocore	48.0	emo	34.0
The Drift	post-rock	100.0	instrumental	58.0	jazz	46.0	experimental	35.0	ambient	29.0
Shora	post-rock	100.0	instrumental	42.0	experimental	35.0	post-hardcore	28.0	mathcore	20.0
Cyann & Ben	post-rock	100.0	experimental	53.0	indie	50.0	french	40.0	folk	36.0
Loss of a Child	post-rock	100.0	instrumental	52.0	experimental	29.0	post rock	15.0	alternative	14.0
Cecilia::eyes	post-rock	100.0	instrumental	46.0	shoegaze	35.0	belgian	21.0	ambient	15.0
All Angels Gone	post-rock	100.0	ambient	46.0	instrumental	36.0	french	36.0	post rock	22.0
Youthmovies	post-rock	100.0	math rock	97.0	seen live	80.0	experimental	76.0	indie	60.0
3epkano	post-rock	100.0	instrumental	80.0	experimental	72.0	ambient	59.0	atmospheric	58.0
A Northern Chorus	post-rock	100.0	shoegaze	72.0	Canadian	43.0	dream pop	39.0	indie	31.0
My Education	post-rock	100.0	instrumental	48.0	shoegaze	34.0	experimental	26.0	post rock	14.0
Bossk	Post-Metal	100.0	post-rock	100.0	Sludge	75.0	instrumental	37.0	Progressive metal	29.0
Wixel	post-rock	100.0	ambient	71.0	electronic	59.0	indietronica	56.0	belgian	48.0
...Of Sinking Ships	post-rock	100.0	instrumental	50.0	atmospheric	25.0	ambient	17.0	post rock	15.0
Oh Hiroshima	post-rock	100.0	instrumental	41.0	experimental	39.0	indie	24.0	Sludge	23.0
Motek	post-rock	100.0	belgian	35.0	seen live	24.0	instrumental	20.0	Belgium	13.0
500won Project	post-rock	100.0	ambient	54.0	instrumental	43.0	electronic	33.0	post rock	17.0
B.M. Sharp	instrumental	100.0	post-rock	100.0	ambient	66.0	Progressive	25.0	post rock	7.0
Agora Fidelio	post-rock	100.0	alternative rock	57.0	french	51.0	post rock	16.0	rock francais	15.0
Valley of the Giants	post-rock	100.0	experimental	59.0	ambient	29.0	Canadian	28.0	post rock	16.0
Aerial	post-rock	100.0	swedish	33.0	experimental	23.0	seen live	22.0	shoegaze	17.0
Halves	post-rock	100.0	ambient	49.0	shoegaze	45.0	instrumental	38.0	electronic	26.0
Sunlight Ascending	post-rock	100.0	instrumental	48.0	ambient	47.0	shoegaze	37.0	american	15.0
Remember Remember	post-rock	100.0	instrumental	58.0	electronic	52.0	Scottish	37.0	seen live	33.0
April Rain	post-rock	100.0	instrumental	57.0	Ukrainian	54.0	ambient	44.0	The Countdown	10.0
Mamiffer	post-rock	100.0	experimental	87.0	ambient	81.0	instrumental	58.0	seen live	50.0
HalfNoise	post-rock	100.0	dream pop	50.0	post rock	50.0	seen live	34.0	indie	34.0
Kerretta	post-rock	100.0	Post-Metal	73.0	instrumental	57.0	New Zealand	37.0	seen live	20.0
Glorie	post-rock	100.0	instrumental	76.0	experimental	28.0	post rock	21.0	grails	19.0
Nordic Giants	post-rock	100.0	seen live	58.0	chill	27.0	post rock	27.0	piano	22.0
My Dad vs Yours	post-rock	100.0	instrumental	33.0	Canadian	26.0	indie	19.0	post rock	18.0
Couch	post-rock	100.0	instrumental	65.0	indie	27.0	math rock	20.0	post rock	20.0
Brokeback	post-rock	100.0	instrumental	55.0	indie	34.0	ambient	34.0	post rock	19.0
Lift to Experience	post-rock	100.0	indie	42.0	space rock	40.0	rock	31.0	experimental	25.0
Sweek	post-rock	100.0	instrumental	39.0	belgian	39.0	experimental	25.0	post rock	12.0
texas pandaa	post-rock	100.0	shoegaze	87.0	japanese	69.0	indie	51.0	ambient	40.0
As the Poets Affirm	post-rock	100.0	instrumental	36.0	Canadian	32.0	post rock	18.0	instrumental post-rock	9.0
Show Me A Dinosaur	post-rock	100.0	Post-Metal	68.0	instrumental	52.0	russian	44.0	shoegaze	37.0
Verticals	post-rock	100.0	instrumental	62.0	russian	47.0	indie	30.0	indie rock	27.0
Tides	post-rock	100.0	Sludge	95.0	Post-Metal	82.0	instrumental	57.0	doom metal	23.0
Lis Er Stille	post-rock	100.0	danish	54.0	instrumental	31.0	rock	21.0	seen live	20.0
Polmo Polpo	post-rock	100.0	ambient	75.0	experimental	67.0	electronic	50.0	Canadian	35.0
Seas of Years	post-rock	100.0	post rock	73.0	swedish	28.0	Sweden	28.0	instrumental	19.0
Braveyoung	post-rock	100.0	ambient	55.0	Post-Metal	43.0	Sludge	22.0	experimental	17.0
Sumner McKane	post-rock	100.0	ambient	71.0	instrumental	63.0	acoustic	38.0	post rock	14.0
Io	post-rock	100.0	alternative rock	80.0	rock	63.0	seen live	46.0	alternative	35.0
Vanessa Van Basten	post-rock	100.0	Post-Metal	73.0	experimental	44.0	Sludge	36.0	italian	25.0
We All Inherit The Moon	post-rock	100.0	ambient	75.0	instrumental	54.0	post rock	16.0	instrumental post-rock	16.0
Pivot	post-rock	100.0	seen live	75.0	instrumental	57.0	experimental	57.0	australian	47.0
What the Blood Revealed	post-rock	100.0	Post-Metal	71.0	instrumental	51.0	Progressive metal	24.0	experimental	15.0
Félperc	post-rock	100.0	instrumental	63.0	experimental	41.0	atmospheric	30.0	hungarian	29.0
Nice Nice	post-rock	100.0	experimental	97.0	electronic	79.0	indie	52.0	idm	52.0
Cerberus Shoal	post-rock	100.0	experimental	67.0	Avant-Garde	44.0	psychedelic	38.0	emo	26.0
eksperimentoj	post-rock	100.0	shoegaze	63.0	japanese	52.0	Progressive rock	49.0	psychedelic	39.0
[The] Slowest Runner [in all the world]	post-rock	100.0	instrumental	46.0	ambient	41.0	neoclassical	39.0	cello	23.0
Exhaust	post-rock	100.0	experimental	66.0	instrumental	54.0	Canadian	27.0	Constellation	20.0
Below the Sea	post-rock	100.0	ambient	43.0	instrumental	32.0	shoegaze	27.0	post rock	14.0
Audrey Fall	post-rock	100.0	Post-Metal	58.0	instrumental	47.0	latvian	29.0	post-hardcore	25.0
Yellow6	post-rock	100.0	ambient	95.0	shoegaze	51.0	experimental	47.0	post rock	21.0
L'Alphalpha	post-rock	100.0	indonesian	63.0	indie	59.0	ambient	52.0	shoegaze	45.0
Mar	post-rock	100.0	ambient	51.0	icelandic	51.0	experimental	29.0	slowcore	13.0
Moonshake	post-rock	100.0	shoegaze	60.0	indie	57.0	electronic	42.0	experimental	33.0
Kontakte	post-rock	100.0	shoegaze	63.0	ambient	51.0	instrumental	42.0	krautrock	19.0
Madensuyu	post-rock	100.0	seen live	93.0	belgian	84.0	indie	43.0	rock	43.0
Spokes	post-rock	100.0	shoegaze	53.0	ambient	35.0	folk	26.0	Neo-Psychedelia	16.0
Flies Are Spies From Hell	post-rock	100.0	instrumental	54.0	Progressive rock	26.0	instrumental post-rock	15.0	british	13.0
Cue	post-rock	100.0	instrumental	41.0	post rock	18.0	austin	14.0	pop	13.0
Yume Bitsu	post-rock	100.0	psychedelic	50.0	space rock	44.0	ambient	43.0	shoegaze	38.0
Képzelt Város	post-rock	100.0	hungarian	53.0	experimental	35.0	indie	23.0	post rock	14.0
Weaver At the Loom	post-rock	100.0	indie rock	94.0	indie	75.0	alternative	63.0	rock	25.0
Mimas	post-rock	100.0	indie	83.0	seen live	58.0	danish	54.0	alternative	33.0
C	post-rock	100.0	seen live	83.0	Czech	58.0	math rock	43.0	silver rocket	35.0
Shalabi Effect	post-rock	100.0	experimental	77.0	ambient	50.0	psychedelic	48.0	instrumental	46.0
Movietone	post-rock	100.0	slowcore	83.0	female vocalists	42.0	bristol	42.0	indie	13.0
Collections of Colonies of Bees	post-rock	100.0	experimental	59.0	instrumental	39.0	post rock	24.0	indie	15.0
Adolf Plays The Jazz	post-rock	100.0	experimental	54.0	instrumental	30.0	jazz	29.0	Greek	27.0
From The Sky	post-rock	100.0	instrumental	41.0	experimental	32.0	post rock	17.0	british	17.0
Mothlite	post-rock	100.0	experimental	84.0	Avant-Garde	44.0	drone	39.0	art rock	33.0
Riding Alone for Thousands of Miles	post-rock	100.0	ambient	52.0	instrumental	48.0	experimental	36.0	avantgarde	17.0
Jean-Pierre Taïeb	Soundtrack	100.0	post-rock	100.0	ambient	80.0	alternative	40.0	electronic	20.0
Wang Wen	post-rock	100.0	instrumental	50.0	chinese	35.0	experimental	20.0	post rock	13.0
Seven Saturdays	post-rock	100.0	ambient	88.0	atmospheric	47.0	electronic	33.0	experimental	33.0
Spaces	post-rock	100.0	instrumental	70.0	experimental	58.0	ambient	53.0	instrumental rock	20.0
Bachi Da Pietra	post-rock	100.0	experimental	83.0	italian	83.0	slowcore	68.0	doom blues	58.0
Eno	post-rock	100.0	instrumental	52.0	swiss	32.0	ambient	30.0	seen live	13.0
Klimt	post-rock	100.0	ambient	79.0	shoegaze	61.0	polish	35.0	electronic	31.0
Oak	post-rock	100.0	doom metal	76.0	Drum and bass	49.0	nsbm	36.0	experimental	30.0
In a Nutshell	post-rock	100.0	indie	59.0	indie rock	51.0	russian	46.0	post-punk	28.0
Blindfold	post-rock	100.0	icelandic	99.0	ambient	59.0	shoegaze	45.0	hardcore	42.0
Catacombe	post-rock	100.0	Post-Metal	69.0	instrumental	59.0	atmospheric	32.0	experimental	26.0
The Ghost Orchid	post-rock	100.0	ambient	67.0	instrumental	58.0	experimental	36.0	indie	20.0
Milhaven	post-rock	100.0	instrumental	36.0	ambient	22.0	post rock	19.0	atmospheric	15.0
Don't Look Back	post-rock	100.0	instrumental	23.0	french	20.0	experimental	19.0	post rock	12.0
Years Of Rice And Salt	post-rock	100.0	instrumental	39.0	post rock	21.0	violin	8.0	british	6.0
Metavari	post-rock	100.0	ambient	59.0	instrumental	46.0	electronic	34.0	american	12.0
Lisabö	post-rock	100.0	post-hardcore	98.0	experimental	40.0	seen live	25.0	basque	25.0
Soup	post-rock	100.0	indie	58.0	seen live	36.0	experimental	36.0	norwegian	36.0
1-Speed Bike	post-rock	100.0	experimental	81.0	electronic	62.0	Canadian	36.0	post rock	22.0
Foxhole	post-rock	100.0	instrumental	45.0	ambient	25.0	indie	15.0	post rock	15.0
To Destroy a City	post-rock	100.0	ambient	70.0	electronic	51.0	instrumental	42.0	shoegaze	38.0
Robin Foster	post-rock	100.0	instrumental	79.0	seen live	43.0	ambient	43.0	alternative	29.0
12Twelve	post-rock	100.0	jazz	66.0	experimental	43.0	instrumental	35.0	free jazz	31.0
Khuda	post-rock	100.0	instrumental	71.0	Post-Metal	61.0	seen live	51.0	experimental	49.0
Tracer AMC	post-rock	100.0	instrumental	38.0	post rock	20.0	experimental	16.0	northern irish	9.0
Final Days Society	post-rock	100.0	shoegaze	32.0	ambient	31.0	swedish	24.0	instrumental	16.0
Northern Faces	indie	100.0	post-rock	100.0	folk	67.0	american	67.0	seen live	34.0
Silence Kit	post-rock	100.0	russian	46.0	seen live	35.0	experimental	32.0	indie	26.0
Nevermind the Name	post-rock	100.0	instrumental	60.0	atmospheric	31.0	german	26.0	rock	10.0
As The Stars Fall	post-rock	100.0	ambient	56.0	electronic	32.0	instrumental	30.0	french	22.0
The Cancer Conspiracy	post-rock	100.0	instrumental	95.0	Progressive rock	91.0	math rock	57.0	Progressive	33.0
Eksi Ekso	post-rock	100.0	experimental	35.0	indie	28.0	instrumental	23.0	indie rock	15.0
Twiggy Frostbite	post-rock	100.0	swedish	73.0	female vocalists	59.0	indie	40.0	seen live	25.0
Long Fin Killie	post-rock	100.0	shoegaze	52.0	indie rock	47.0	experimental	31.0	Experimental Rock	28.0
Ulan Bator	post-rock	100.0	experimental	43.0	french	35.0	noise	25.0	post rock	19.0
Deadhorse	post-rock	100.0	instrumental	57.0	seen live	13.0	deadhorse	13.0	ambient	12.0
Seidenmatt	post-rock	100.0	seen live	63.0	instrumental	40.0	german	38.0	indie	33.0
Ovum	post-rock	100.0	instrumental	46.0	japanese	41.0	ambient	28.0	japan	12.0
Souvenir's Young America	post-rock	100.0	instrumental	54.0	Post-Metal	40.0	experimental	32.0	ambient	27.0
Lights at Sea	post-rock	100.0	instrumental	50.0	shoegaze	35.0	experimental	30.0	post rock	17.0
Sky Architects	post-rock	100.0	atmospheric	33.0	danish	33.0	alternative	30.0	Progressive	14.0
Manta Ray	post-rock	100.0	indie	74.0	experimental	70.0	spanish	53.0	spain	31.0
Electric Litany	post-rock	100.0	experimental	50.0	new wave	23.0	discovered at labtones	20.0	melancholic	17.0
Honey For Petzi	post-rock	100.0	math rock	80.0	swiss	56.0	seen live	39.0	switzerland	30.0
California Stories Uncovered	post-rock	100.0	polish	48.0	seen live	44.0	instrumental	40.0	alternative rock	24.0
Ambiente	post-rock	100.0	chillout	55.0	instrumental	46.0	lounge	28.0	mexico	19.0
Lost in Kiev	post-rock	100.0	instrumental	42.0	Post-Metal	41.0	french	30.0	seen live	9.0
잠비나이	post-rock	100.0	experimental	69.0	Post-Metal	62.0	Korean	49.0	traditional	26.0
Earworm	post-rock	100.0	experimental	59.0	indie	36.0	belarus	33.0	instrumental	29.0
Antennas to Heaven	post-rock	100.0	instrumental	30.0	british	21.0	post rock	18.0	indie	11.0
Tangled Thoughts of Leaving	post-rock	100.0	experimental	57.0	Progressive	39.0	jazz	37.0	australian	33.0
*Ancients	post-rock	100.0	ambient	84.0	atmospheric	44.0	post-hardcore	33.0	space rock	27.0
417.3	post-rock	100.0	instrumental	52.0	russian	48.0	experimental	41.0	post rock	15.0
Aphasia	post-rock	100.0	rock	69.0	heavy metal	64.0	black metal	48.0	metal	43.0
Pray for Sound	post-rock	100.0	instrumental	48.0	post rock	28.0	grey storia	23.0	indie	17.0
Homesick for Space	post-rock	100.0	indie	68.0	indie rock	42.0	emo	31.0	experimental	31.0
Over the Ocean	post-rock	100.0	shoegaze	66.0	sadcore	40.0	indie	33.0	indie rock	14.0
Molasses	post-rock	100.0	experimental	65.0	folk	44.0	instrumental	30.0	indie	27.0
Out of Sight	post-rock	100.0	pop punk	61.0	seen live	48.0	emo	27.0	shoegaze	27.0
Youthmovie Soundtrack Strategies	post-rock	100.0	math rock	64.0	seen live	44.0	indie	32.0	post rock	26.0
Ui	post-rock	100.0	experimental	74.0	math rock	44.0	instrumental	40.0	post rock	30.0
Slow Six	post-rock	100.0	ambient	93.0	instrumental	74.0	experimental	50.0	contemporary classical	40.0
Industries of the Blind	post-rock	100.0	instrumental	54.0	ambient	46.0	violin	19.0	american	13.0
The Declining Winter	post-rock	100.0	experimental	56.0	electronic	45.0	indie	35.0	british	27.0
NATSUMEN	post-rock	100.0	experimental	97.0	Progressive rock	82.0	japanese	73.0	jazz	64.0
Aural Method	post-rock	100.0	ambient	61.0	rock	18.0	instrumental post-rock	14.0	under 2000 listeners	9.0
Efrim Manuel Menuck	post-rock	100.0	experimental	78.0	ambient	58.0	singer-songwriter	44.0	instrumental	38.0
Condor44	post-rock	100.0	japanese	74.0	indie	57.0	shoegaze	50.0	rock	40.0
unkie	post-rock	100.0	instrumental	91.0	japanese	82.0	math rock	80.0	indie	40.0
Tuber	post-rock	100.0	instrumental	72.0	Stoner Rock	52.0	psychedelic	43.0	Post-Metal	40.0
VERSA	post-rock	100.0	experimental	60.0	rock	40.0	bass	34.0	post rock	34.0
This is a Process of a Still Life	post-rock	100.0	instrumental	46.0	experimental	27.0	ambient	23.0	post rock	13.0
The Burning Paris	post-rock	100.0	ambient	33.0	instrumental	21.0	indie rock	11.0	piano	11.0
Acetate Zero	post-rock	100.0	shoegaze	67.0	ambient	48.0	slowcore	46.0	post rock	23.0
The Allstar Project	post-rock	100.0	instrumental	49.0	portuguese	29.0	shoegaze	17.0	seen live	16.0
The Polar Dream	post-rock	100.0	ambient	61.0	instrumental	59.0	shoegaze	42.0	mexico	24.0
Tomàn	post-rock	100.0	seen live	96.0	belgian	39.0	duyster	33.0	Belgium	28.0
Constantina	post-rock	100.0	instrumental	55.0	experimental	34.0	ambient	27.0	brazilian	22.0
These Monsters	post-rock	100.0	instrumental	43.0	experimental	22.0	british	19.0	seen live	9.0
Scenic	Disco	100.0	post-rock	100.0	indie pop	94.0	downtempo	94.0	psychedelic	94.0
The Workhouse	post-rock	100.0	shoegaze	56.0	ambient	18.0	post rock	16.0	experimental	14.0
Strangers Die Every Day	post-rock	100.0	instrumental	48.0	ambient	25.0	experimental	15.0	post rock	13.0
Heirs	post-rock	100.0	Post-Metal	82.0	seen live	50.0	experimental	42.0	instrumental	33.0
甜梅號	post-rock	100.0	taiwan	42.0	indie	31.0	chinese	17.0	instrumental	13.0
the Picturesque Episodes	post-rock	100.0	ambient	98.0	experimental	51.0	cosmic-rock	41.0	lithuanian	31.0
Pawa Up First	post-rock	100.0	Hip-Hop	44.0	experimental	39.0	electronic	35.0	montreal	23.0
Labirinto	post-rock	100.0	ambient	52.0	experimental	52.0	instrumental	46.0	brazilian	27.0
Cory Johnson	post-rock	100.0	instrumental	59.0	video game music	24.0	alternative	12.0	alternative rock	12.0
Larsen	post-rock	100.0	experimental	68.0	ambient	38.0	punk	17.0	italian	17.0
Epigram	post-rock	100.0	instrumental	47.0	Canadian	20.0	post rock	14.0	rock	8.0
Animal Hospital	post-rock	100.0	experimental	85.0	ambient	72.0	electronic	54.0	seen live	47.0
I/O	post-rock	100.0	ambient	95.0	dark ambient	59.0	minimal	30.0	instrumental	24.0
Redjetson	post-rock	100.0	indie	34.0	seen live	26.0	post rock	22.0	british	19.0
Billions And Billions	post-rock	100.0	electronic	50.0	ambient	46.0	instrumental	38.0	Space Ambient	38.0
Revere	post-rock	100.0	seen live	67.0	rock	60.0	darker than the deepest sea	40.0	want to see live	34.0
On!Air!Library!	post-rock	100.0	shoegaze	96.0	indie	67.0	indie rock	46.0	Lo-Fi	41.0
Riding Pânico	post-rock	100.0	instrumental	47.0	portuguese	40.0	seen live	30.0	rock	9.0
Kafabindünya	post-rock	100.0	experimental	54.0	turkish	49.0	ambient	45.0	post rock	25.0
The Soldier Thread	post-rock	100.0	indie	95.0	alternative	56.0	ambient	39.0	female vocalists	39.0
Álfheimr	post-rock	100.0	ambient	88.0	instrumental	52.0	experimental	39.0	electronic	27.0
Neko	post-rock	100.0	instrumental	55.0	post rock	25.0	jamendo	20.0	japanese	15.0
Gordon's Tsunami Week	post-rock	100.0	instrumental	50.0	Post-Metal	47.0	ambient	34.0	post rock	11.0
A Red Season Shade	post-rock	100.0	indie	57.0	french	35.0	indie rock	29.0	post rock	18.0
Baltic Fleet	post-rock	100.0	seen live	90.0	ambient	90.0	krautrock	70.0	electronic	60.0
The Shaking Sensations	post-rock	100.0	instrumental	59.0	ambient	40.0	danish	35.0	seen live	25.0
Dinner	post-rock	100.0	math rock	96.0	japanese	72.0	instrumental	72.0	indie	34.0
eaststrikewest	post-rock	100.0	shoegaze	54.0	Progressive rock	42.0	ambient	31.0	indie	17.0
虚弱。	post-rock	100.0	japanese	78.0	instrumental	71.0	math rock	23.0	indie	15.0
Del Rey	post-rock	100.0	instrumental	46.0	math rock	28.0	brazilian	20.0	post rock	18.0
The Hylozoists	post-rock	100.0	instrumental	55.0	Canadian	32.0	indie	18.0	seen live	15.0
Magna	post-rock	100.0	Progressive rock	46.0	instrumental	37.0	electronic	28.0	rock	19.0
Aerial M	post-rock	100.0	instrumental	63.0	Lo-Fi	30.0	post rock	28.0	indie rock	25.0
Yamon Yamon	indie	100.0	post-rock	100.0	swedish	84.0	seen live	75.0	math rock	67.0
Paik	post-rock	100.0	shoegaze	91.0	space rock	70.0	psychedelic	44.0	instrumental	39.0
Klever	post-rock	100.0	russian	51.0	instrumental	50.0	psychedelic	40.0	Psychedelic Rock	39.0
Crombie	post-rock	100.0	instrumental	47.0	reggae	34.0	mpb	34.0	electronic	20.0
Ghastly City Sleep	post-rock	100.0	shoegaze	79.0	ambient	55.0	experimental	26.0	indie	22.0
zxyzxy	post-rock	100.0	ambient	83.0	experimental	70.0	idm	60.0	electronic	50.0
Don't Mess With Texas	post-rock	100.0	instrumental	37.0	croatian	24.0	post rock	16.0	seen live	12.0
Audiocæneat!	post-rock	100.0	shoegaze	70.0	ambient	43.0	indie	38.0	seen live	16.0
| Систра |	post-rock	100.0	indie	94.0	electronic	47.0	alternative rock	38.0	acoustic	29.0
The Union Trade	post-rock	100.0	shoegaze	70.0	indie	31.0	indie rock	25.0	post rock	6.0
Hologram	post-rock	100.0	japanese	53.0	ambient	37.0	instrumental	28.0	post rock	17.0
Euphone	post-rock	100.0	instrumental	92.0	indie	59.0	electronic	34.0	post rock	34.0
Tulsa Drone	post-rock	100.0	instrumental	28.0	experimental	16.0	post rock	15.0	indie	12.0
pegmap	post-rock	100.0	J-rock	100.0	indie	86.0	J-Indie	58.0	alternative rock	43.0
We're From Japan!	post-rock	100.0	instrumental	41.0	experimental	19.0	american	12.0	post rock	7.0
Ex Libras	post-rock	100.0	ambient	73.0	experimental	64.0	electronic	46.0	indie rock	37.0
Macha	post-rock	100.0	experimental	50.0	Neo-Psychedelia	44.0	indie rock	40.0	gamelan	37.0
Blood & Time	post-rock	100.0	acoustic	65.0	Post-Metal	45.0	melancholic	36.0	neurot	36.0
Cuchillo	post-rock	100.0	psychedelic	92.0	spanish	75.0	folk-rock	67.0	seen live	50.0
Bee and Flower	post-rock	100.0	indie	96.0	female vocalists	96.0	neurot	71.0	seen live	63.0
OnΣ sunny day in Syberia	post-rock	100.0	instrumental	80.0	atmospheric	80.0	emo	20.0	sadcore	20.0
Baulta	post-rock	100.0	Post-Metal	49.0	finnish	20.0	Sludge	18.0	finland	10.0
Pillow	post-rock	100.0	instrumental	36.0	ambient	30.0	post rock	21.0	electronic	19.0
I Am Above on the Left	post-rock	100.0	experimental	70.0	math rock	64.0	russian	48.0	instrumental	38.0
Inspirative	post-rock	100.0	instrumental	48.0	shoegaze	39.0	thai	35.0	ambient	34.0
Three Steps to the Ocean	post-rock	100.0	Post-Metal	64.0	instrumental	53.0	Sludge	30.0	italian	18.0
Hyakkei	post-rock	100.0	japanese	74.0	instrumental	49.0	japan	15.0	experimental	13.0
8mm Sky	post-rock	100.0	indie	36.0	taiwanese	30.0	taiwan	17.0	post rock	13.0
nihiling	post-rock	100.0	Progressive rock	47.0	seen live	42.0	alternative rock	22.0	Progressive	18.0
Lakes Of Russia	post-rock	100.0	ambient	49.0	instrumental	48.0	atmospheric	32.0	australian	13.0
Sickoakes	post-rock	100.0	instrumental	32.0	swedish	25.0	post rock	19.0	experimental	14.0
Charles Atlas	post-rock	100.0	ambient	86.0	instrumental	72.0	Mellow	36.0	post rock	15.0
Shadowcast Sun	post-rock	100.0	ambient	64.0	instrumental	56.0	depressive rock	45.0	depressive	28.0
Barrows	post-rock	100.0	instrumental	56.0	Post-Metal	50.0	atmospheric	18.0	space rock	14.0
Ronin	post-rock	100.0	deep house	75.0	folk	69.0	italian	63.0	breakcore	50.0
La Mar	post-rock	100.0	Post-Metal	86.0	instrumental	56.0	venezuela	56.0	dub	19.0
Lifestory:Monologue	experimental	100.0	post-rock	100.0	post-hardcore	91.0	indie	43.0	ambient	34.0
Windsor Airlift	post-rock	100.0	ambient	79.0	adam young	72.0	electronic	50.0	indie	36.0
Houston, we've got problems!	post-rock	100.0	instrumental	52.0	russian	48.0	ambient	32.0	rock	6.0
fago.sepia	post-rock	100.0	math rock	97.0	instrumental	63.0	french	37.0	experimental	26.0
Blurry Lights	post-rock	100.0	neoclassical	66.0	ambient	63.0	piano	46.0	instrumental	35.0
Chemtrail	post-rock	100.0	instrumental	61.0	shoegaze	50.0	experimental	28.0	post-alternative	17.0
Oneway	post-rock	100.0	instrumental	55.0	experimental	37.0	Hip-Hop	28.0	indie	28.0
Diabologum	post-rock	100.0	french	95.0	rock	70.0	experimental	70.0	indie rock	55.0
The Sleep Design	post-rock	100.0	instrumental	39.0	shoegaze	37.0	indie	28.0	atmospheric	21.0
Moulin Noir	synthpop	100.0	electronic	45.0	darkwave	45.0	industrial	39.0	80s	34.0
Celebrine	synthpop	100.0	electronic	54.0	female vocalists	54.0	russian	39.0	seen live	24.0
GL	synthpop	100.0	electronic	50.0	australian	50.0	new wave	50.0	remix	50.0
Unit Black Flight	synthpop	100.0	dark	60.0	electronic	40.0	synth	40.0	synthesizer	40.0
Ritmika	synthpop	100.0	electronic	92.0	indie	75.0	indietronica	75.0	electropop	59.0
Mirror Talk	synthpop	100.0	under 2000 listeners	100.0	minimal wave	100.0	sl	100.0	relevant magazine	100.0
College Feat. Electric Youth	synthpop	100.0	electronic	50.0	electropop	50.0	chill	50.0	electro	50.0
Neurobash	synthpop	100.0	electronic	56.0	swedish	56.0	experimental	56.0	pop	45.0
Dark Distant Spaces	synthpop	100.0	futurepop	50.0	electronic	37.0	synth pop	37.0	dark electro	37.0
Lyves	electronic	100.0	female vocalists	100.0	synthpop	100.0	british	67.0	electro	67.0
Kites With Lights	synthpop	100.0	electropop	40.0	new wave	40.0	dream pop	40.0	electronic	20.0
Curxes	synthpop	100.0	electronic	75.0	alternative	75.0	new wave	75.0	80s	50.0
New Concept	synthpop	100.0	electronic	28.0	octave base	28.0	pop	23.0	80s	23.0
Etiquette	experimental	100.0	synthpop	100.0	folk punk	100.0	female vocalists	50.0	post-rock	50.0
Say Y	synthpop	100.0	electronic	75.0	ebm	75.0	darkwave	63.0	futurepop	50.0
Brite Lite Brite	pop	100.0	Electroclash	100.0	synthpop	100.0	electronic	50.0	electronica	50.0
Analog Angel	synthpop	100.0	electronic	50.0	electronica	42.0	Scottish	42.0	glasgow	34.0
Blind Passenger	synthpop	100.0	synth pop	50.0	electronic	42.0	synth-pop	25.0	futurepop	17.0
Social Ambitions	synthpop	100.0	electronic	36.0	new wave	36.0	electronica	29.0	electropop	29.0
Настя Вакуум	synthpop	100.0	ambient	63.0	electronic	50.0	Electroclash	38.0	experimental	25.0
Little Blue Box	electronic	100.0	Electroclash	100.0	electro	100.0	synthpop	100.0	under 2000 listeners	100.0
Room8	electropop	100.0	synthpop	100.0	Disco	50.0	electronic	50.0	electronica	50.0
Avantgarde	synthpop	100.0	80s	80.0	indie rock	80.0	rap	40.0	synth pop	40.0
Television Keeps Us Apart	indie pop	100.0	synthpop	100.0	electronic	75.0	swedish	75.0	indie	50.0
Hot Hot Hawk	synthpop	100.0	Disco	67.0	dreamwave	56.0	russian	45.0	electronic	39.0
Liebe	synthpop	100.0	touhou	72.0	electronic	43.0	electropop	43.0	pop	43.0
Call Me	synthpop	100.0	electronic	50.0	pop	50.0	swedish	50.0	scandinavian	50.0
Þórunn Antonía	electropop	100.0	dance	100.0	synthpop	100.0	pop	75.0	icelandic	75.0
Moon.74	synthpop	100.0	electronic	89.0	darkwave	56.0	rock	34.0	futurepop	34.0
Brayton Bowman	electronic	100.0	electropop	100.0	indie pop	100.0	synthpop	100.0	\N	0.0
Christopher Anton	synthpop	100.0	darkwave	56.0	ebm	45.0	dark wave	23.0	Depeche Mode	23.0
Night Gallery	synthpop	100.0	electronic	86.0	80s	58.0	synth	43.0	All	43.0
Diskodiktator	synthpop	100.0	swedish	63.0	electronic	38.0	synth	38.0	electronica	25.0
The Revolution	electronica	100.0	dub	100.0	dance	100.0	latin	100.0	House	100.0
松岡英明	new wave	100.0	synthpop	100.0	pop	50.0	japanese	50.0	pop rock	25.0
Allison Harvard	synthpop	100.0	dark pop	100.0	antm	100.0	unique	50.0	under 2000 listeners	50.0
Natural Assembly	synthpop	100.0	darkwave	94.0	industrial	60.0	seen live	47.0	synthwave	27.0
Duett	electronic	100.0	instrumental	100.0	new wave	100.0	synthpop	100.0	chillwave	100.0
Dw	synthpop	100.0	space disco	100.0	Italo Disco	84.0	nu italo	84.0	swedish	67.0
Underwater Pilots	synthpop	100.0	ebm	36.0	futurepop	36.0	electronic	29.0	germany	15.0
Channel East	synthpop	100.0	electronic	20.0	seen live	14.0	catchy	14.0	germany	14.0
Royalty	synthpop	100.0	new wave	60.0	ILLogical	40.0	Disco	20.0	metalcore	20.0
The Future	synthpop	100.0	new wave	72.0	electronic	58.0	industrial	58.0	Human League	58.0
Bogart Co.	80s	100.0	synthpop	100.0	pop	80.0	finnish	80.0	finland	80.0
C.C.C.P.	synthpop	100.0	electronic	89.0	synth pop	89.0	punk	56.0	german	56.0
Nekrodamus	synthpop	100.0	darkwave	95.0	futurepop	95.0	argentina	48.0	seen live	30.0
Dreams Divide	synthpop	100.0	futurepop	50.0	industrial	38.0	ebm	38.0	goth	25.0
Bam Spacey	electronica	100.0	swedish	100.0	House	100.0	synthpop	100.0	bump foot	100.0
Коммутатор	synthpop	100.0	industrial	75.0	industrial rock	55.0	russian	45.0	ebm	20.0
Eлeven	synthpop	100.0	experimental	88.0	russian	50.0	trip-hop	38.0	indie	38.0
Black Canvas	synthpop	100.0	darkwave	62.0	death metal	39.0	polish	31.0	dark synth	31.0
Империя	synthpop	100.0	pop	90.0	russian	60.0	heavy metal	40.0	90s	20.0
Dark Voices	synthpop	100.0	industrial	67.0	synth pop	34.0	german	34.0	noise	25.0
FLXXDS	synthpop	100.0	contemporary rnb	100.0	electronic	50.0	electronica	50.0	male vocalists	50.0
The Northern Territories	synthpop	100.0	swedish	58.0	emo	29.0	seen live	15.0	electropop	15.0
Mechanical Apfelsine	synthpop	100.0	russian	29.0	futurepop	29.0	electronic	20.0	seen live	10.0
Mari Chrome	synthpop	100.0	electropop	48.0	ebm	48.0	electronic	36.0	female vocalists	36.0
Lydmor & Bon Homme	electronic	100.0	electropop	100.0	synthpop	100.0	\N	0.0	\N	0.0
Tristraum	synthpop	100.0	ebm	77.0	futurepop	54.0	electronic	16.0	niederrhein4-electrodarkwavemetal	16.0
Quelles Paroles	synthpop	100.0	electronic	42.0	synth pop	36.0	electropop	30.0	synth	24.0
Fotonovela	synthpop	100.0	electro	80.0	Greek	80.0	electropop	60.0	Disco	20.0
Lip Service	seen live	100.0	swedish	100.0	synthpop	100.0	electro	86.0	ebm	86.0
Hot Rain	synthpop	100.0	futurepop	89.0	electropop	53.0	electronic	36.0	polish	36.0
Beograd	synthpop	100.0	minimal synth	57.0	serbian	57.0	ex-yu	50.0	minimal wave	32.0
Monolithic	synthpop	100.0	seen live	71.0	electronic	65.0	experimental metal	42.0	industrial	36.0
Avarice in Audio	synthpop	100.0	ebm	89.0	industrial	56.0	dark electro	56.0	Harsh EBM	34.0
Max & Intro	synthpop	100.0	new wave	78.0	electronic	56.0	novi val	34.0	s-r-b-i-j-a	34.0
Inter-Connection	synthpop	100.0	electronic	15.0	female vocalists	15.0	synth pop	15.0	3	15.0
Concise	synthpop	100.0	ambient	78.0	electronica	56.0	electronic	45.0	electropop	23.0
Ostrich	synthpop	100.0	futurepop	50.0	electropop	40.0	indie pop	40.0	swedish	30.0
Space March	synthpop	100.0	electropop	72.0	electronic	58.0	indie	29.0	american	29.0
Design	synthpop	100.0	minimal synth	84.0	electro	67.0	new wave	50.0	sunshine pop	50.0
Another	new wave	100.0	dutch	100.0	mystery	50.0	anime	50.0	horror	50.0
Jo Lemaire + Flouze	new wave	100.0	synthpop	80.0	80s	40.0	Belgium	40.0	electronic	20.0
Mary & the Boy / Felizol	experimental	100.0	new wave	100.0	electronic	80.0	Avant-Garde	80.0	techno	20.0
Ana Curra	new wave	100.0	spanish	62.0	post-punk	62.0	synthpop	43.0	siniestro	35.0
Gleaming Spires	new wave	100.0	80s	34.0	power pop	28.0	electronic	6.0	post-punk	6.0
Dr. Reanimator	new wave	100.0	emocore	100.0	Hip-Hop	67.0	alternative	67.0	emo	67.0
Voice Farm	new wave	100.0	80s	50.0	synthpop	44.0	electro-pop	32.0	technopop	13.0
Cycle V	new wave	100.0	rock	80.0	Soundtrack	60.0	80s	60.0	USA	20.0
The Freshies	new wave	100.0	post-punk	70.0	indie	40.0	rock	40.0	80s	40.0
Neki To Vole Vruce	pop	100.0	rock	100.0	new wave	100.0	ex-yu rock	100.0	80s	50.0
Glutamato Ye-Ye	new wave	100.0	movida	75.0	spanish	50.0	80s	50.0	pop	38.0
Distractions	new wave	100.0	BIRP	58.0	indie	43.0	70s	43.0	psychedelic	43.0
Mobiles	new wave	100.0	80s	25.0	electronic	13.0	synthpop	13.0	new romantic	13.0
Panache	electronica	100.0	punk	100.0	new wave	100.0	Disco	50.0	french	50.0
The Distractions	power pop	100.0	new wave	100.0	80s	88.0	Manchester	75.0	factory records	75.0
Blue Zoo	new wave	100.0	80s	58.0	british	37.0	synth pop	32.0	post-punk	32.0
Thirteen Moons	new wave	100.0	swedish	75.0	dream pop	75.0	post-punk	50.0	indie	25.0
Skeleton Lipstick	electronic	100.0	new wave	100.0	Soundtrack	50.0	indie	50.0	ambient	50.0
Авиа	new wave	100.0	russian	87.0	Avant-Garde	35.0	russian rock	31.0	Soviet	27.0
Mummy Calls	new wave	100.0	post-punk	75.0	80s	38.0	punk rock	25.0	horror soundtrack	25.0
Gaznevada	new wave	100.0	post-punk	77.0	italian	54.0	punk	43.0	Italo Disco	27.0
Human Switchboard	new wave	100.0	post-punk	80.0	80s	60.0	breakcore	20.0	proto-punk	20.0
Sharpe & Numan	new wave	100.0	synthpop	82.0	electronic	37.0	80s	28.0	british	28.0
Alarma	new wave	100.0	spanish	84.0	trip horror	50.0	80s	34.0	electronic	17.0
The Rave-ups	new wave	100.0	rockabilly	58.0	80s	43.0	Soundtrack	15.0	metal	15.0
Неоретро	new wave	100.0	russian rock	60.0	indie	30.0	Soviet	30.0	post-punk	20.0
The Fibonaccis	new wave	100.0	cabaret	84.0	post-punk	67.0	experimental	50.0	Avant-Garde	50.0
Figures On A Beach	new wave	100.0	80s	91.0	alternative rock	46.0	alternative	19.0	detroit	19.0
M & H Band	new wave	100.0	electronic	50.0	80s	50.0	eurodance	50.0	1987	50.0
Blue Peter	new wave	100.0	Canadian	80.0	80s	50.0	synthpop	25.0	synth pop	10.0
Luc Van Acker	new wave	100.0	industrial	78.0	seen live	45.0	Minimal Electro	45.0	alternative	23.0
Shoc Corridor	new wave	100.0	minimal wave	93.0	synthpop	72.0	electronic	50.0	post-punk	36.0
Pia Burnette & Felix Kubin	new wave	100.0	electronic	72.0	electronica	58.0	experimental	58.0	Lo-Fi	43.0
The Room	new wave	100.0	80s	67.0	Progressive rock	67.0	indie	34.0	british	34.0
White Door	new wave	100.0	80s	85.0	synthpop	70.0	new romantic	62.0	synth pop	16.0
Lobão E Os Ronaldos	rock	100.0	new wave	100.0	rock nacional	100.0	brazilian rock	100.0	80s	67.0
Paparazzi	pop	100.0	new wave	100.0	synthpop	100.0	relaxing	80.0	funky	60.0
Friends Again	new wave	100.0	Scottish	50.0	80s	38.0	indie pop	38.0	scotland	25.0
U Škripcu	new wave	100.0	synthpop	72.0	80s	43.0	novi val	43.0	post-punk	29.0
Kan Kan	new wave	100.0	post-punk	80.0	Avant-Garde	38.0	avantgarde	17.0	electronic	9.0
Shox	new wave	100.0	4ad	80.0	minimal wave	80.0	electronic	40.0	psychedelic	40.0
Christiane F.	new wave	100.0	NDW	100.0	electronic	89.0	junkie	67.0	industrial	56.0
OK Band	new wave	100.0	synthpop	84.0	Czech	67.0	electronic	50.0	synth pop	17.0
Sal Solo	new wave	100.0	christian	77.0	synth pop	54.0	pop	47.0	Gothic Rock	47.0
The Drops	new wave	100.0	Greek	75.0	post-punk	50.0	ska	50.0	seen live	25.0
Slow Children	new wave	100.0	american	28.0	obscure 80s	28.0	80s	19.0	Soundtrack	10.0
Líbido	seen live	100.0	goth	100.0	new wave	100.0	Peru	100.0	rock peruano	100.0
Nuket	new wave	100.0	post-punk	100.0	finnish	100.0	rock	84.0	80s	84.0
The Judy's	new wave	100.0	texas	50.0	Houston	50.0	punk	38.0	seen live	25.0
The Tapes	new wave	100.0	industrial	75.0	noise	25.0	indie	25.0	dutch	25.0
Demon Cheeks	Disco	100.0	Hip-Hop	100.0	pop	100.0	rap	100.0	dance	100.0
Fricción	new wave	100.0	post-punk	100.0	80s	38.0	Post punk	38.0	Rock Argentino	25.0
November Group	new wave	100.0	synthpop	52.0	80s	41.0	synth pop	26.0	post-punk	26.0
Transmissions	electronic	100.0	indie	100.0	rock	100.0	female vocalists	100.0	hard rock	100.0
Percal	new wave	100.0	argentina	67.0	synthpop	67.0	All	67.0	electronic	34.0
Kids in the Kitchen	new wave	100.0	80s	56.0	pop	34.0	australian	34.0	Aussie	34.0
Astari Nite	new wave	100.0	post-punk	75.0	goth	50.0	indie rock	50.0	darkwave	50.0
Dalek I	new wave	100.0	synthpop	50.0	synth pop	43.0	post-punk	43.0	new romantic	36.0
Devo 2.0	pop	100.0	new wave	100.0	Disney	67.0	newwave	67.0	children	67.0
The Shapes	new wave	100.0	indie	67.0	rock	50.0	british	34.0	punk	34.0
NU SKOOL	new wave	100.0	electronic	90.0	Disco Pop	80.0	Electroclash	60.0	synthpop	60.0
Garçons	Disco	100.0	new wave	100.0	french	75.0	france	50.0	disco punk	50.0
Trem	new wave	100.0	Aussie Hip-Hop	67.0	Hip-Hop	50.0	australian	50.0	underground rap	34.0
The Sports	new wave	100.0	australian	75.0	80s	63.0	power pop	38.0	pop	25.0
Bar	new wave	100.0	shoegaze	100.0	lounge	100.0	dream pop	100.0	balearic	100.0
Birds Escape	electropop	100.0	new wave	100.0	dream pop	100.0	electronic	20.0	alternative	20.0
きどりっこ	new wave	100.0	japanese	46.0	80s	28.0	synthpop	28.0	technopop	28.0
The Fascination Movement	new wave	100.0	indie	80.0	Disco	60.0	electro	60.0	electronic	20.0
Vitor Hublot	new wave	100.0	synthpop	70.0	minimal synth	60.0	80s	50.0	french	40.0
The Armoury Show	new wave	100.0	post-punk	71.0	80s	42.0	indie	18.0	alternative	18.0
Elektrisk Regn	new wave	100.0	norwegian	100.0	punk	60.0	bergen	60.0	norwegian punk	40.0
MODA	new wave	100.0	italian	50.0	italian new wave	50.0	new-wave italiana	50.0	darkwave	25.0
IG	electronic	100.0	electronica	100.0	indie	100.0	Classical	100.0	hip hop	100.0
Commando M. Pigg	new wave	100.0	post-punk	80.0	swedish	67.0	seen live	27.0	stockholm	27.0
B2	pop	100.0	japanese	100.0	80s	100.0	dance	100.0	new wave	100.0
Fingerprintz	new wave	100.0	power pop	67.0	punk	34.0	post-punk	34.0	alternative	17.0
Sandii & The Sunsetz	new wave	100.0	female vocalists	59.0	japanese	42.0	pop	34.0	80s	25.0
SYOKO	new wave	100.0	japanese	70.0	darkwave	47.0	japanese goth	47.0	pop	31.0
Intelligence Dept.	new wave	100.0	minimal synth	100.0	minimal wave	70.0	synthpop	60.0	post-punk	20.0
Freeweights	pop	100.0	new wave	100.0	synthpop	100.0	seen live	50.0	indie	50.0
Elisa Waut	new wave	100.0	synth pop	88.0	belgian	63.0	pop	50.0	synthpop	38.0
The Wars	new wave	100.0	post-punk	94.0	alternative	34.0	Post punk	27.0	Berlin	27.0
A Popular History of Signs	new wave	100.0	synthpop	50.0	80s	34.0	post-punk	34.0	minimal wave	17.0
Cath Carroll	new wave	100.0	factory records	100.0	Manchester	67.0	alternative	50.0	indie	34.0
Roxy Epoxy And The Rebound	new wave	100.0	electronic	60.0	punk	60.0	electropunk	40.0	spotify	40.0
Lydia Lunch	no wave	100.0	post-punk	99.0	experimental	72.0	female vocalists	48.0	alternative	34.0
DNA	no wave	100.0	experimental	52.0	post-punk	52.0	psytrance	24.0	psychedelic	21.0
Lizzy Mercier Descloux	no wave	100.0	post-punk	89.0	french	47.0	female vocalists	39.0	new wave	36.0
Teenage Jesus and the Jerks	no wave	100.0	post-punk	63.0	noise rock	45.0	experimental	43.0	punk	22.0
James Chance & The Contortions	no wave	100.0	post-punk	62.0	experimental	41.0	funk	30.0	jazz	25.0
Mars	no wave	100.0	post-punk	57.0	experimental	42.0	noise rock	41.0	noise	26.0
Theoretical Girls	no wave	100.0	post-punk	68.0	noise rock	42.0	experimental	40.0	Experimental Rock	19.0
James White and The Blacks	no wave	100.0	post-punk	75.0	funk	29.0	experimental	26.0	Free Funk	24.0
Ike Yard	no wave	100.0	post-punk	95.0	experimental	60.0	minimal synth	43.0	industrial	22.0
AKA	no wave	100.0	indonesian	100.0	Psychedelic Rock	75.0	Progressive rock	63.0	rock	50.0
The World of Skin	no wave	100.0	industrial	95.0	michael gira	70.0	swans related	70.0	swans	64.0
Rosa Yemen	no wave	100.0	post-punk	83.0	french	46.0	experimental	31.0	female vocalists	26.0
UT	no wave	100.0	post-punk	95.0	experimental	46.0	no-wave	18.0	punk	13.0
James Chance	no wave	100.0	post-punk	65.0	jazz punk	50.0	jazz	32.0	Free Funk	27.0
Naked On The Vague	no wave	100.0	post-punk	95.0	experimental	88.0	noise rock	57.0	Avant-Garde	57.0
Priests	seen live	100.0	no wave	100.0	punk	75.0	Post punk	75.0	punk rock	75.0
Bubonic Plague	post-punk	100.0	no wave	100.0	Lo-Fi	90.0	experimental	72.0	noise pop	65.0
Uzi	post-punk	100.0	no wave	100.0	Hip-Hop	67.0	japanese	67.0	rap	67.0
Guerilla Toss	no wave	100.0	noise rock	87.0	female vocalists	34.0	Avant-Garde	20.0	noisecore	20.0
Y Pants	no wave	100.0	post-punk	80.0	noise rock	39.0	female vocalists	29.0	new york	25.0
8 Eyed Spy	no wave	100.0	post-punk	80.0	experimental	33.0	noise	30.0	80s	21.0
Spray Paint	punk	100.0	noise rock	100.0	post-punk	100.0	no wave	100.0	japanese	34.0
Big Sexy Noise	no wave	100.0	post-punk	80.0	psychedelic	67.0	Avant-Garde	50.0	jazz	46.0
Cindy Lee	no wave	100.0	experimental	67.0	post-punk	67.0	noise	34.0	pop	34.0
Icky Boyfriends	no wave	100.0	noise rock	50.0	goofy	50.0	avant-garage	50.0	Need to Rate	50.0
Judy Nylon	no wave	100.0	post-punk	82.0	new york	34.0	female vocalists	30.0	On-U Sound	23.0
Circle X	no wave	100.0	post-punk	83.0	noise rock	59.0	experimental	32.0	Experimental Rock	28.0
The Scissor Girls	no wave	100.0	noise rock	92.0	experimental	62.0	post-punk	50.0	noise	27.0
Night Wounds	no wave	100.0	noise rock	92.0	noise	63.0	art punk	25.0	zxzw	17.0
The Dance	no wave	100.0	funk	45.0	seen live	30.0	new wave	20.0	new york	15.0
Von Lmo	no wave	100.0	post-punk	63.0	new wave	34.0	nowave	17.0	I Like It	13.0
Starfuckers	no wave	100.0	experimental	84.0	Experimental Rock	84.0	italian	67.0	no-wave	67.0
Come On	no wave	100.0	post-punk	92.0	punk	42.0	art punk	25.0	Lo-Fi	17.0
ImpLOG	no wave	100.0	noise	34.0	new york	28.0	Post punk	28.0	post-punk	22.0
UN BLONDE	Lo-Fi	100.0	no wave	100.0	666	100.0	pop	50.0	canada	50.0
Beirut Slump	no wave	100.0	post-punk	49.0	Lydia Lunch	25.0	Avant-Garde	16.0	american	16.0
Mornings	experimental	100.0	noise rock	100.0	no wave	100.0	free rock	100.0	electronic	67.0
Plus Instruments	no wave	100.0	experimental	74.0	post-punk	74.0	minimal synth	47.0	80s underground	27.0
Harry Crews	no wave	100.0	post-punk	85.0	noise rock	70.0	noise	30.0	80s	30.0
Mr.Saturn	electronic	100.0	new wave	100.0	Avant-Garde	100.0	no wave	100.0	wac	100.0
Mofungo	no wave	100.0	post-punk	53.0	new york	34.0	USA	15.0	sst	15.0
Moms	Hip-Hop	100.0	pop	100.0	rock	100.0	country	100.0	punk	100.0
Inflatable Boy Clams	no wave	100.0	80s	50.0	female vocalists	38.0	feminist	32.0	ironic	32.0
James White	no wave	100.0	jazz punk	53.0	electro	16.0	no-dance	16.0	no dance	16.0
AIDS Wolf vs. Athletic Automaton	no wave	100.0	noise rock	88.0	brain jazz	50.0	noise	25.0	no canada	25.0
Bez	seen live	100.0	madchester	34.0	seen	34.0	soul	17.0	british	17.0
Show Me The Body	post-punk	100.0	punk rock	100.0	no wave	100.0	\N	0.0	\N	0.0
Jack Ruby	no wave	100.0	proto-punk	58.0	dub	29.0	noise rock	15.0	Drum and bass	15.0
The Stick Men	no wave	100.0	post-punk	84.0	zolo	50.0	experimental	17.0	Post punk	17.0
Ghostape	electronic	100.0	Lo-Fi	100.0	improvised	100.0	no wave	100.0	primitive	100.0
Kid Commando	no wave	100.0	noise rock	89.0	Ache Records	34.0	seen live	23.0	swedish	23.0
Notekillers	no wave	100.0	noise rock	60.0	psychedelic	60.0	experimental	50.0	post-rock	40.0
3 Teens Kill 4	no wave	100.0	post-punk	93.0	minimal synth	47.0	80s	31.0	new york	31.0
Fawn Spots	noise	100.0	seen live	100.0	noise rock	100.0	UK	100.0	noise pop	100.0
Karate Party	noise rock	100.0	no wave	100.0	Lo-Fi	67.0	garage	67.0	punk	34.0
Sister Iodine	noise rock	100.0	no wave	100.0	Experimental Rock	58.0	experimental	43.0	noise	29.0
Otori	punk	100.0	no wave	100.0	noise	50.0	seen live	50.0	noise rock	50.0
CAME	noise	100.0	hip hop	100.0	rap	100.0	noise rock	100.0	Sludge	100.0
Cellular Chaos	no wave	100.0	obsolete units	55.0	noise rock	46.0	noisecore	46.0	female vocalists	28.0
Don King	no wave	100.0	new york	67.0	post-punk	34.0	80s	17.0	USA	17.0
The Centimeters	art rock	100.0	no wave	100.0	rock	60.0	punk	40.0	experimental	40.0
Loto Ball Show	no wave	100.0	experimental	77.0	post-punk	54.0	psychedelic	54.0	electro punk	47.0
Karen Cooper Complex	Avant-Garde	100.0	no wave	100.0	experimental	75.0	electronic	50.0	rock	50.0
Red Transistor	no wave	100.0	noise rock	53.0	post-punk	40.0	new york	35.0	experimental	27.0
K.K. Rampage	no wave	100.0	3x56df4Fjjjjs6edf5r6G54sdf	100.0	noise rock	50.0	seen live but wasnt quite sober	50.0	\N	0.0
Bride of No No	no wave	100.0	experimental	56.0	Avant-Garde	56.0	noise rock	45.0	rock	34.0
But God Created Woman	no wave	100.0	noise rock	89.0	experimental	34.0	post-punk	34.0	noise	23.0
Mars & DNA	no wave	100.0	opera	40.0	experimental	40.0	post-punk	40.0	Avant-Garde	40.0
Jill Kroesen	no wave	100.0	post-punk	79.0	experimental	58.0	new york	29.0	female vocalist	29.0
Judy Nylon & Crucial	post-punk	100.0	no wave	100.0	rock	50.0	punk	50.0	Post punk	50.0
Lydia Lunch & Anubian Lights	noise	100.0	punk	100.0	post-punk	100.0	spoken word	100.0	no wave	100.0
New York Noise	experimental	100.0	post-punk	100.0	no wave	100.0	under 2000 listeners	67.0	madame b	67.0
The Sediment Club	no wave	100.0	noise rock	34.0	noise	17.0	seen live	17.0	\N	0.0
Ja Ja Ja	no wave	100.0	NDW	100.0	Neue Deutsche Welle	100.0	new wave	75.0	post-punk	50.0
Take Two	pop	100.0	rock	100.0	punk	100.0	pop rock	100.0	australian	100.0
Bisca	jazz	100.0	rock	100.0	dub	100.0	italian	100.0	no wave	100.0
The Miami Dolphins	noise	100.0	experimental	100.0	noise rock	100.0	avantgarde	100.0	fun	100.0
Radical Slave	no wave	100.0	noise rock	84.0	seen live	50.0	experimental	34.0	Belgium	17.0
Park Attack	no wave	100.0	tigersushi	80.0	noise rock	60.0	noise	20.0	seen live	20.0
Anarchist Republic of Bzzz	no wave	100.0	Hip-Hop	86.0	electronic	58.0	experimental	58.0	experimental hip-hop	43.0
Naked lights	experimental	100.0	noise rock	100.0	no wave	100.0	post-rock	50.0	Lo-Fi	50.0
Gruppe 80	punk	100.0	germany	100.0	no wave	100.0	\N	0.0	\N	0.0
Impractical Cockpit	no wave	100.0	noise rock	72.0	noise	43.0	Avant-Garde	43.0	avant-garage	43.0
Native Bells	new york	100.0	USA	100.0	weird	100.0	ethnic	100.0	Avant-Garde	100.0
Arto/Neto	no wave	100.0	spoken word	58.0	experimental	43.0	Garage Rock	29.0	2 stars	29.0
Dvouletá fáma	no wave	100.0	Experimental Rock	75.0	Avant-Garde	75.0	Avant-Prog	75.0	alternative	50.0
fragmenti	no wave	100.0	noise rock	95.0	Experimental Rock	95.0	industrial	90.0	noise	50.0
Danny and the dressmakers	no wave	100.0	art punk	67.0	diy	67.0	noise	34.0	indie	34.0
Toy Killers	no wave	100.0	Eargasm	50.0	John Zorn	50.0	free improvisation	50.0	arto lindsay	50.0
Glorious Strangers	no wave	100.0	new york	50.0	new york underground	34.0	USA	17.0	new wave	17.0
Boris Policeband	no wave	100.0	experimental	50.0	noise	40.0	USA	10.0	Avant-Garde	10.0
Перигелий на заре Корифеев	trance	100.0	indie	100.0	experimental	100.0	minimal	100.0	russian	100.0
No New York	no wave	100.0	experimental	67.0	post-punk	67.0	\N	0.0	\N	0.0
Zeek Sheck	no wave	100.0	experimental	67.0	noise	34.0	noise rock	34.0	ich hab jetzt auch ne to hear list	34.0
Bonzo Goes To Washington	beats	100.0	no wave	100.0	bootsy collins	100.0	\N	0.0	\N	0.0
Ivan Julian	no wave	100.0	funk punk	95.0	punk	77.0	proto punk	71.0	richard hell and the voidoids	59.0
umanzuki	noise	100.0	jazz	100.0	no wave	100.0	jazzcore	75.0	noise rock	50.0
The Static	no wave	100.0	post-punk	50.0	experimental	38.0	new york	13.0	noise rock	13.0
encintas	noise	100.0	no wave	100.0	rock	75.0	noise rock	75.0	Grunge	50.0
Dada Swing	no wave	100.0	experimental	72.0	noise rock	29.0	under 2000 listeners	29.0	seen live	15.0
Les Enfants Sales	no wave	100.0	french	84.0	post-punk	75.0	experimental	67.0	cold wave	59.0
The Ordinaires	post-punk	100.0	Avant-Garde	100.0	investigate	100.0	no wave	100.0	music	100.0
0theBand	pop	100.0	rock	100.0	experimental	100.0	power	100.0	new wave	100.0
IDF	post-punk	100.0	no wave	100.0	punk	50.0	industrial rock	50.0	swans	50.0
L.A. Drugs	seattle	100.0	noise rock	100.0	no wave	100.0	boss	100.0	now wave	100.0
Neg-Fi	noise	100.0	experimental	100.0	no wave	100.0	neg-wave	100.0	seen live	50.0
Prettiest Eyes	post-punk	100.0	no wave	100.0	los angeles	100.0	Garage-Rock	100.0	psych-punk	100.0
MOON RELAY	seen live	100.0	no wave	100.0	Norway	100.0	fysisk format	100.0	\N	0.0
w.t.f	noise	100.0	electronica	100.0	pop	100.0	rock	100.0	punk	100.0
Aerôflôt	Garage Rock	100.0	no wave	100.0	Disco	50.0	rock	50.0	alternative rock	50.0
Zorro Zensur	german	100.0	no wave	100.0	New Misanthropics	67.0	3rd Wave Feminism	67.0	keine welle	67.0
Girls Overcome By Satan	punk	100.0	post-punk	100.0	no wave	100.0	noise	50.0	indie	50.0
V-Effect	post-punk	100.0	no wave	100.0	hardcore	67.0	Gabber	67.0	NYC	34.0
Hominid	hardcore	100.0	noise rock	100.0	no wave	100.0	underrated	100.0	powerviolence	100.0
Lace Passione	post-punk	100.0	russian	100.0	no wave	100.0	leather	100.0	horror	100.0
John Gavanti	no wave	100.0	opera	34.0	no-wave	23.0	alternative	12.0	experimental	12.0
look!pond	Grunge	100.0	noise rock	100.0	no wave	100.0	Brisbane	100.0	\N	0.0
Calabi Yau	seen live	100.0	no wave	100.0	punk	50.0	noise rock	50.0	noise punk	50.0
The Lowdown	metal	100.0	seen live	100.0	rock	100.0	punk	100.0	alternative	100.0
Apart Aside	pop	100.0	Avant-Garde	100.0	contemporary classical	100.0	japan	100.0	no wave	100.0
Army of Infants	alternative	100.0	no wave	100.0	noise	50.0	seen live	50.0	indie	50.0
The Meta-matics	noise	100.0	electronic	100.0	punk	100.0	experimental	100.0	noise rock	100.0
Aunts	pop punk	100.0	no wave	100.0	bloomington	100.0	sadwave	100.0	DIY Punk	100.0
Whitney Houston's Crypt	noise rock	100.0	no wave	100.0	australia	17.0	post-hardcore	17.0	Newcastle	17.0
Jeri Rossi	no wave	100.0	post-punk	65.0	goth	29.0	female vocalists	22.0	spoken word	15.0
Die Integrationsklasse	seen live	100.0	jazz	100.0	alternative	100.0	alternative rock	100.0	experimental	100.0
Dave Kusworth & The Bounty Hunters	folk rock	100.0	no wave	100.0	british folk-rock	100.0	\N	0.0	\N	0.0
The Teenagers Responsible	noise rock	100.0	no wave	100.0	\N	0.0	\N	0.0	\N	0.0
Nocore	noise	100.0	rock	100.0	experimental	100.0	nintendo	100.0	experimental techno	100.0
Soft Shoulder	noise	100.0	no wave	100.0	seen live	50.0	noise rock	50.0	female vocalists	50.0
Egon's Unicat	seen live	100.0	Grunge	100.0	alternative	100.0	funk	100.0	no wave	100.0
curse of the birthmark	noise	100.0	noise rock	100.0	no wave	100.0	punk	50.0	heavy	50.0
Bohack	experimental	100.0	Lo-Fi	100.0	no wave	100.0	free folk	100.0	Avant-Garde	50.0
ЖелтыеЧулкиГрафаДзержинского	punk	100.0	no wave	100.0	noise	75.0	scary	50.0	noise-rock	50.0
The Folk Devils	seen live	100.0	80s	100.0	alternative	100.0	post-punk	100.0	Post punk	100.0
Fakir	Disco	100.0	seen live	100.0	alternative	100.0	New-Wave	100.0	shoegaze	100.0
New Fries	seen live	100.0	no wave	100.0	post-disco	100.0	\N	0.0	\N	0.0
Useless Keys	seen live	100.0	Post punk	100.0	post rock	100.0	no wave	100.0	alt rock	100.0
Noise Trade Company	electronic	100.0	dub	100.0	electro	100.0	industrial	100.0	post-punk	100.0
Duotron	noise rock	100.0	no wave	100.0	Experimental Rock	50.0	obscure	50.0	overlooked	50.0
Massicot	punk	100.0	math rock	100.0	swedish	100.0	noise rock	100.0	post-punk	100.0
The Secret Society of the Sonic Six	no wave	100.0	post-punk	67.0	synthpunk	67.0	experimental	34.0	electro	34.0
Crabe	seen live	100.0	punk	100.0	experimental	100.0	no wave	100.0	montreal	100.0
Jungle Nausea	dub	100.0	postpunk	100.0	no wave	100.0	\N	0.0	\N	0.0
Gilbert & Lewis	no wave	100.0	Avant-Garde	75.0	4ad	75.0	80s	50.0	experimental	50.0
Tic Code	instrumental	100.0	math rock	100.0	experimental	100.0	noise rock	100.0	Angular	100.0
Blast and the Detergents	punk	100.0	hardcore	100.0	noise rock	100.0	Post punk	100.0	minimalism	100.0
Under Schizoid Focus	experimental	100.0	Lo-Fi	100.0	psychedelic	100.0	no wave	100.0	diy	100.0
Dj Rick	punk	100.0	alternative	100.0	experimental	100.0	new wave	100.0	podcast	100.0
CORBAIN KILLS	no wave	100.0	Post-Industrial	67.0	indie	34.0	industrial	34.0	post-punk	34.0
Radio Shock	noise	100.0	no wave	100.0	noise rock	80.0	jank	80.0	experimental	40.0
volks	noise	100.0	favourite	100.0	fun	100.0	cool	100.0	good	100.0
Stick Against Stone	experimental	100.0	dub	100.0	post-punk	100.0	horns	100.0	art rock	100.0
Gregorio Fonten	experimental	100.0	beautiful	100.0	psychedelic	100.0	Avant-Garde	100.0	trippy	100.0
Mars-96	noise rock	100.0	no wave	100.0	Experimental Rock	67.0	post-punk	67.0	russian	67.0
Love Craft	indie	100.0	pop	100.0	dance	100.0	new wave	100.0	no wave	100.0
Catbag	rock	100.0	Lo-Fi	100.0	horns	100.0	improv	100.0	Avant-Garde	100.0
The Paranoid Critical Revolution	seen live	100.0	noise rock	100.0	no wave	100.0	noise	50.0	black metal	50.0
The Semis	punk	100.0	alternative	100.0	indie pop	100.0	indie rock	100.0	power pop	100.0
Germanotta Youth	noise	100.0	electronic	100.0	grindcore	100.0	noise rock	100.0	Avant-Garde	100.0
Cold Shoulders	indie	100.0	pop	100.0	alternative	100.0	indie pop	100.0	power pop	100.0
Lydia Lunch with Clint Ruin	noise	100.0	rock	100.0	punk	100.0	experimental	100.0	post-rock	100.0
Coming	seen live	100.0	no wave	100.0	rock	50.0	punk	50.0	post-punk	50.0
Kommunizm	russian	100.0	Avant-Garde	100.0	no wave	100.0	dainuojamoji poezija	100.0	letov	100.0
Berlinetta	Post punk	100.0	no wave	100.0	under 2000 listeners	100.0	post hardcore	100.0	All	100.0
los annovas	noise	100.0	punk	100.0	noise rock	100.0	post-punk	100.0	space rock	100.0
Mas Foice	indie	100.0	rock	100.0	punk	100.0	alternative	100.0	alternative rock	100.0
Quebexico	punk	100.0	alternative	100.0	Canadian	100.0	punk rock	100.0	no wave	100.0
Walter Steding & The Dragon People	80s	100.0	experimental	100.0	post-punk	100.0	no wave	100.0	check this out	100.0
Via Vagabond	experimental	100.0	no wave	100.0	new wave	50.0	Jazz Rock	50.0	music	50.0
Los Fusilados	post-punk	100.0	no wave	100.0	punk blues	100.0	experimental	50.0	blues	50.0
Oh Yeah This	no wave	100.0	never wave	67.0	experimental	34.0	noise rock	34.0	Lo-Fi	34.0
Bleak Silence	noise	100.0	classic rock	100.0	heavy metal	100.0	black metal	100.0	metalcore	100.0
The Mahonies	rock	100.0	detroit	100.0	no wave	100.0	\N	0.0	\N	0.0
Nochteff	post-punk	100.0	no wave	100.0	experimental	50.0	argentina	50.0	\N	0.0
Sort Sol and Lydia Lunch	no wave	100.0	post-punk	67.0	Post punk	34.0	american	34.0	dark wave	34.0
Medicine and Duty	noise	100.0	electronic	100.0	british	100.0	experimental	100.0	unclassifiable	100.0
María Bonita	electronic	100.0	no wave	100.0	minimal synth	100.0	México	100.0	ich hab jetzt auch ne to hear list	100.0
Michael Leonard Maiewski	metal	100.0	rock	100.0	Grunge	100.0	alternative	100.0	alternative rock	100.0
Collettivo Ginsberg	alternative rock	100.0	blues	100.0	no wave	100.0	under 2000 listeners	100.0	voodoo	100.0
Godse	noise	100.0	free jazz	100.0	no wave	100.0	under 2000 listeners	100.0	noisecore	100.0
Groep II	noise	100.0	industrial	100.0	post-punk	100.0	minimal	100.0	Avant-Garde	100.0
No Trend And Lydia Lunch	no wave	100.0	punk	50.0	Post punk	50.0	experimental	25.0	post-punk	25.0
Titmachine	seen live	100.0	no wave	100.0	\N	0.0	\N	0.0	\N	0.0
渡邉浩一郎	noise	100.0	punk	100.0	free	100.0	no wave	100.0	alchemy	100.0
Thrush & the Cunts	australian	100.0	no wave	100.0	\N	0.0	\N	0.0	\N	0.0
The Classical	art rock	100.0	avantgarde	100.0	no wave	100.0	\N	0.0	\N	0.0
Cop Warmth	noise	100.0	noise rock	100.0	no wave	100.0	Houston	100.0	rock	50.0
Акм Шалом	grindcore	100.0	post-punk	100.0	russian	100.0	Skinhead	100.0	punk rock	100.0
vampire9000	no wave	100.0	south africa indie experimental math rock	100.0	\N	0.0	\N	0.0	\N	0.0
The Sunset Strip	indie	100.0	Stoner Rock	100.0	australian	100.0	psychedelic	100.0	television	100.0
The Spook Lights	noise	100.0	rockabilly	100.0	punk	100.0	goth	100.0	Surf	100.0
Anarchestra	experimental	100.0	Avant-Garde	100.0	no wave	100.0	under 2000 listeners	100.0	\N	0.0
Big Sad	noise	100.0	experimental	100.0	no wave	100.0	5432fun	100.0	now wave	100.0
Illicitizen	Disco	100.0	indie	100.0	rock	100.0	soul	100.0	new york	100.0
Chat Logs	noise rock	100.0	no wave	100.0	under 2000 listeners	100.0	discover	100.0	\N	0.0
Die Haut and Lydia Lunch	post-punk	100.0	no wave	100.0	Post punk	20.0	american	20.0	german	20.0
The Postures	noise	100.0	Disco	100.0	seen live	100.0	punk	100.0	Doom	100.0
Low On High	no wave	100.0	noise	50.0	punk	50.0	Lo-Fi	50.0	punk rock	50.0
Arto / Neto	no wave	100.0	american	67.0	USA	34.0	\N	0.0	\N	0.0
Sunny Day	post-punk	100.0	no wave	100.0	live erlebt	100.0	\N	0.0	\N	0.0
To The Ansaphone	no wave	100.0	seen live	50.0	experimental	50.0	post-rock	50.0	Psychedelic Rock	50.0
Honk!	Soundtrack	100.0	viking metal	100.0	Soundtracks	100.0	lounge	100.0	musicals	100.0
Karma Connection	rock	100.0	Grunge	100.0	Fusion	100.0	melancholic	100.0	no wave	100.0
Deekay Jones	Disco	100.0	electronic	100.0	no wave	100.0	80s	50.0	electro	50.0
Radical Boy	indie	100.0	punk	100.0	alternative	100.0	Lo-Fi	100.0	Post punk	100.0
Stripminers	80s	100.0	punk	100.0	alternative rock	100.0	new york	100.0	indie rock	100.0
Frenetics	new wave	100.0	post-punk	100.0	no wave	100.0	80's	100.0	Roma	100.0
Vimmattu	finnish	100.0	no wave	100.0	All-time favourites	100.0	\N	0.0	\N	0.0
Vaginals	punk	100.0	experimental	100.0	no wave	100.0	underground	100.0	under 2000 listeners	100.0
Chinese Puzzle	no wave	100.0	punk	34.0	alternative	34.0	Post punk	34.0	80's	34.0
King Blank	twee	100.0	Post punk	100.0	no wave	100.0	psychedelic punk	100.0	North East	100.0
Jealousy Party	experimental	100.0	no wave	100.0	under 2000 listeners	100.0	GenteCheNonStaBene	100.0	italiani	100.0
Styrofoam Duck	noise	100.0	noise rock	100.0	shitgaze	100.0	no wave	100.0	experimental	50.0
Fred Maher & Robert Quine	electronic	100.0	instrumental	100.0	experimental	100.0	no wave	100.0	\N	0.0
Sarah Shapiro	Lo-Fi	100.0	no wave	100.0	97 percent pretty	100.0	\N	0.0	\N	0.0
Arklight	noise	100.0	folk	100.0	industrial	100.0	improvisation	100.0	Avant-Garde	100.0
Volti	new wave	100.0	choral	100.0	choir	100.0	mexico	100.0	no wave	100.0
Ixna	post-punk	100.0	avant garde	100.0	no wave	100.0	female vocal	100.0	minimal synth	100.0
Glassbox	noise	100.0	punk	100.0	shoegaze	100.0	Post punk	100.0	guitar	100.0
Dead Waves	rock	100.0	punk	100.0	alternative rock	100.0	experimental	100.0	noise rock	100.0
The Shipwreck Bag Show	experimental	100.0	noise rock	100.0	Experimental Rock	100.0	no wave	100.0	GenteCheNonStaBene	100.0
Too Fat To Fit Through The Door	post-punk	100.0	no wave	100.0	\N	0.0	\N	0.0	\N	0.0
The Furries	noise	100.0	classic rock	100.0	heavy metal	100.0	black metal	100.0	metalcore	100.0
Antonius Block	alternative	100.0	no wave	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Lydia Lunch & 13.13	no wave	100.0	Lydia Lunch	100.0	\N	0.0	\N	0.0	\N	0.0
Tr plus Tr	indie	100.0	electro	100.0	no wave	100.0	pop	67.0	synth	67.0
Stefan F	chillout	100.0	seen live	100.0	indie	100.0	alternative	100.0	experimental	100.0
Tentacle Lizardo	noise rock	100.0	no wave	100.0	american	50.0	\N	0.0	\N	0.0
Cut the navel string	noise	100.0	metal	100.0	noise rock	100.0	dark	100.0	no wave	100.0
Almandino Quite Deluxe	seen live	100.0	no wave	100.0	post-punk	67.0	noise	34.0	Lo-Fi	34.0
Originator	rock	100.0	Post punk	100.0	post rock	100.0	no wave	100.0	Sweden	100.0
A.S.T.	no wave	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Mazarine	grindcore	100.0	post-rock	100.0	loud	100.0	drone	100.0	space rock	100.0
HTRK	noise rock	100.0	no wave	97.0	electronic	82.0	shoegaze	80.0	noise	63.0
Glenn Branca	experimental	100.0	Avant-Garde	97.0	no wave	94.0	contemporary classical	58.0	post-punk	45.0
DRUNkEN C	Lo-Fi	100.0	no wave	93.0	post-punk	85.0	french	54.0	experimental	31.0
Константин Крестов	yes wave	100.0	post-pop	94.0	Avant-Garde	91.0	no wave	91.0	Pop In Opposition	91.0
Dark Day	minimal synth	100.0	no wave	89.0	post-punk	71.0	electronic	55.0	new wave	43.0
Daisuck & Prostitute	noise rock	100.0	post-punk	89.0	no wave	89.0	japanese	30.0	experimental	18.0
Chance Operation	post-punk	100.0	no wave	89.0	japanese	56.0	new wave	45.0	Avant-Garde	34.0
Scissor Shock	experimental	100.0	noise	94.0	no wave	88.0	progressive noise	64.0	Avant-Garde	58.0
Love Life	post-punk	100.0	no wave	88.0	noise rock	63.0	indie	50.0	rock	38.0
Live Skull	noise rock	100.0	post-punk	93.0	no wave	87.0	noise	32.0	new wave	14.0
Dimenticarmi non!	noise rock	100.0	no wave	87.0	post-punk	67.0	experimental	54.0	female vocalists	54.0
Monitor	post-punk	100.0	no wave	86.0	Post punk	65.0	dark wave	36.0	experimental	29.0
No Babies	noise rock	100.0	no wave	86.0	noise	43.0	punk	43.0	seen live	29.0
The Tards	post-punk	100.0	no wave	86.0	thrash	72.0	unpop	43.0	experimental	29.0
Madame B/Guilty Strangers	post-punk	100.0	no wave	86.0	diy	72.0	america	72.0	Bat Cave	72.0
The Dreams	alternative rock	100.0	post-punk	100.0	no wave	84.0	french	50.0	emo	50.0
The Del-Byzanteens	post-punk	100.0	no wave	84.0	new wave	48.0	new york	28.0	jim jarmusch	12.0
DUSTdevils	noise rock	100.0	no wave	84.0	post-punk	67.0	art punk	17.0	alternative	9.0
Rinf	post-punk	100.0	no wave	84.0	minimal wave	34.0	industrial	25.0	synth punk	25.0
Gunjogacrayon	noise rock	100.0	japanese	84.0	no wave	84.0	avant-jazz	84.0	Avant-Prog	67.0
Johanna Went	post-punk	100.0	no wave	84.0	art punk	50.0	noise	34.0	experimental	34.0
not even hope	drone	100.0	noise	84.0	no wave	84.0	native american	84.0	folk	67.0
Die Monitr Batss	post-punk	100.0	no wave	83.0	noise rock	77.0	noise punk	42.0	noise	12.0
Lydia Lunch & Rowland S. Howard	post-punk	100.0	no wave	82.0	female vocalists	36.0	experimental	34.0	Post punk	31.0
Lake of Dracula	noise rock	100.0	no wave	81.0	noise	42.0	post-punk	34.0	noise punk	30.0
Phantom Pregnancies	punk	100.0	no wave	80.0	noise rock	60.0	female vocalists	60.0	punk rock	40.0
Chrome Dome	synth punk	100.0	post-punk	80.0	no wave	80.0	coldwave	80.0	noise	40.0
Of Cabbages and Kings	noise rock	100.0	no wave	80.0	Experimental Rock	30.0	experimental	20.0	post-punk	20.0
Talk Normal	noise rock	100.0	experimental	79.0	no wave	79.0	seen live	69.0	noise	53.0
ESG	post-punk	100.0	funk	90.0	no wave	77.0	new york	38.0	Post punk	25.0
Liquid Liquid	post-punk	100.0	no wave	76.0	experimental	51.0	funk	43.0	electronic	26.0
Guilty Strangers	post-punk	100.0	no wave	75.0	goth	55.0	alternative	34.0	deathrock	34.0
Crab Smasher	noise	100.0	noise rock	75.0	drone	75.0	no wave	75.0	hardcore	50.0
X-X	punk	100.0	american	75.0	punk rock	75.0	art punk	75.0	no wave	75.0
Sleetmute Nightmute	noise rock	100.0	no wave	75.0	noise	25.0	seen live	25.0	experimental	25.0
Seahorse Battlefield	maine noise	100.0	metal	75.0	rock	75.0	Grunge	75.0	alternative	75.0
Thomas Hornauer	grindcore	100.0	Stoner Rock	100.0	emocore	100.0	classic rock	75.0	heavy metal	75.0
4 Dead Monks	electronic	100.0	ambient	100.0	indie	75.0	experimental	75.0	no wave	75.0
BUDDY GIRL and MECHANIC	japanese	100.0	experimental	100.0	no wave	75.0	electronic	50.0	rock	50.0
Devil Dinosaur	rock	100.0	american death metal	100.0	psychedelic alternative doom post-sludge metal	100.0	metal	75.0	noise rock	75.0
Waltz Bop Shop	math rock	100.0	indie	75.0	no wave	75.0	jazz	50.0	Fusion	50.0
Bush Tetras	post-punk	100.0	no wave	74.0	funk	36.0	new wave	32.0	punk	25.0
Konk	post-punk	100.0	funk	79.0	no wave	73.0	new york	30.0	80s	20.0
Death Comet Crew	Hip-Hop	100.0	no wave	72.0	electronic	29.0	instrumental hip-hop	29.0	noise	15.0
Intense Molecular Activity	experimental	100.0	no wave	72.0	psychedelic	29.0	noise	15.0	electronic	15.0
The Sick Lipstick	noise rock	100.0	no wave	69.0	indie	57.0	punk	38.0	dance	32.0
Non Band	post-punk	100.0	new wave	69.0	no wave	69.0	japanese	64.0	80s	11.0
Circus Mort	post-punk	100.0	no wave	67.0	industrial	25.0	Post punk	15.0	dark ambient	15.0
Chocolat Billy	noise	100.0	experimental	100.0	les potagers natures	100.0	seen live	67.0	math rock	67.0
Rat At Rat R	noise rock	100.0	post-punk	100.0	no wave	67.0	new york	28.0	noise	17.0
Munnen	seen live	100.0	post-punk	84.0	swedish	67.0	no wave	67.0	experimental	34.0
Shoes This High	post-punk	100.0	no wave	67.0	new wave	34.0	New Zealand	34.0	Kiwi	34.0
Useless Words of Sasha Grey	deathrock	100.0	post-punk	89.0	Post punk	67.0	no wave	67.0	punk rock	23.0
No wave	chillwave	100.0	synthpop	67.0	no wave	67.0	Witch Chill	34.0	newbreed	34.0
Logikparty	post-punk	100.0	no-wave	100.0	seen live	67.0	no wave	67.0	under 2000 listeners	34.0
Etai Keshiki	hardcore	100.0	no wave	67.0	noise	56.0	experimental	56.0	punk	34.0
Surprize	post-punk	100.0	no wave	67.0	hard rock	34.0	new wave	34.0	funk	34.0
MORE ZNAET	illwave	100.0	no wave	67.0	illgaze	67.0	seen live	34.0	experimental	34.0
African Greys	noise punk	100.0	no wave	67.0	batcave	67.0	under 2000 listeners	34.0	\N	0.0
James Chance & Pill Factory	no-wave	100.0	post-punk	67.0	no wave	67.0	\N	0.0	\N	0.0
Illogico	post-punk	100.0	no wave	67.0	Jazz Rock	50.0	art punk	50.0	new wave	17.0
Jackwacker	noise rock	100.0	experimental	67.0	no wave	67.0	noise	34.0	metal	34.0
Kokoro Mayikibo	indie	100.0	alternative	67.0	new wave	67.0	funk	67.0	no wave	67.0
Mutators	noise rock	100.0	no wave	66.0	punk	58.0	noise	39.0	noise punk	31.0
Swans	post-punk	100.0	industrial	89.0	experimental	87.0	noise rock	67.0	no wave	65.0
Bestial Mouths	post-punk	100.0	deathrock	77.0	no wave	65.0	tribal	36.0	industrial	30.0
Madame B	post-punk	100.0	experimental	87.0	no wave	64.0	french	60.0	cold wave	50.0
Model Citizens	post-punk	100.0	new wave	73.0	no wave	64.0	70s	28.0	female vocalists	28.0
Иванов Даун	noise rock	100.0	post-punk	78.0	no wave	63.0	experimental	49.0	Soviet	45.0
Lesbian Boy	noise rock	100.0	no wave	63.0	experimental	38.0	russian	38.0	noise punk	25.0
Dinosaur L	Disco	100.0	experimental	74.0	no wave	62.0	funk	45.0	Arthur Russell	24.0
Harry Pussy	noise rock	100.0	noise	75.0	experimental	63.0	no wave	61.0	noiscreamo	8.0
Angels in America	experimental	100.0	seen live	60.0	Lo-Fi	60.0	no wave	60.0	noise	40.0
Pink Section	post-punk	100.0	no wave	60.0	new wave	37.0	80s	28.0	Garage Punk	28.0
Real Fish	japanese	100.0	new wave	100.0	pop	60.0	alternative	60.0	no wave	60.0
Galen	skronk	100.0	noise rock	80.0	Michigan	80.0	noise	70.0	no wave	60.0
Rape Tape	post-punk	100.0	no wave	60.0	noise	40.0	noise rock	40.0	punk	20.0
Dog Faced Hermans	post-punk	100.0	no wave	59.0	punk	42.0	Avant-Garde	41.0	anarcho-punk	33.0
Mutter	noise rock	100.0	german	69.0	no wave	59.0	indie	42.0	noise-rock	32.0
Vex Ruffin	experimental	100.0	Stones throw	75.0	no wave	59.0	seen live	42.0	post-punk	42.0
Deity Guns	noise rock	100.0	no wave	57.0	noise	44.0	indie	25.0	Experimental Rock	25.0
Gay Beast	noise rock	100.0	math rock	70.0	no wave	56.0	noise	39.0	experimental	28.0
Death Sentence: Panda!	noise rock	100.0	experimental	75.0	no wave	56.0	seen live	49.0	noise	34.0
The Raybeats	Surf	100.0	no wave	56.0	surf rock	56.0	rockabilly	34.0	post-punk	34.0
Abe Vigoda	seen live	100.0	experimental	79.0	noise rock	68.0	no wave	55.0	punk	41.0
Magik Markers	noise rock	100.0	noise	82.0	experimental	64.0	no wave	55.0	seen live	48.0
TV Ghost	post-punk	100.0	noise rock	78.0	no wave	55.0	noise	30.0	punk	23.0
Faith No Man	alternative rock	100.0	post-punk	64.0	no wave	55.0	heavy metal	28.0	rock	19.0
Thank You	seen live	100.0	noise rock	93.0	post-rock	77.0	no wave	54.0	avant rock	47.0
Athletic Automaton	noise rock	100.0	experimental	68.0	noise	56.0	no wave	54.0	now wave	14.0
Tools You Can Trust	post-punk	100.0	industrial	80.0	no wave	54.0	british	20.0	Post-Industrial	20.0
Go Go Go Go!	Lo-Fi	100.0	noise punk	94.0	punk	80.0	noise rock	80.0	no wave	54.0
fydhws	drone	100.0	shoegaze	80.0	psychedelic	80.0	noise rock	64.0	Experimental Rock	60.0
Stasis	electronic	100.0	doom metal	100.0	Sludge	100.0	ambient	84.0	Doom	84.0
Piano Piano	jazz	100.0	Post punk	50.0	no wave	50.0	check later	50.0	under 2000 listeners	50.0
Moon Runners	Rack and Ruin records	100.0	olympia	50.0	no wave	50.0	people i know	50.0	ttly r00ling	50.0
EULA	indie pop	100.0	punk	50.0	indie rock	50.0	post-punk	50.0	ambient pop	50.0
Listen	xmas music	100.0	jazz	50.0	hip hop	50.0	punk	50.0	math rock	50.0
町田町蔵+北澤組	japanese	100.0	japanese punk	75.0	80s	50.0	no wave	50.0	noise	25.0
Transformer	funk	100.0	trance	50.0	seen live	50.0	new wave	50.0	no wave	50.0
Pulsallama	post-punk	100.0	new wave	67.0	no wave	50.0	female vocalists	45.0	new york	39.0
Nancy Regan	punk	100.0	warsaw hardcore	75.0	no wave	50.0	hardcore	25.0	female vocalists	25.0
Jenny Hoyston	seen live	100.0	pop	50.0	rock	50.0	indie rock	50.0	USA	50.0
The Coachmen	Garage Rock	100.0	art rock	50.0	no wave	50.0	thurston	50.0	indie	25.0
White Ninja	mexico	100.0	under 2000 listeners	100.0	electronic	50.0	indie	50.0	noise rock	50.0
Red Monkey	british	100.0	punk	100.0	noise rock	100.0	post-punk	100.0	slampt	100.0
The Beakers	pacific northwest	100.0	K Records and friends	100.0	post-punk	50.0	Post punk	50.0	no wave	50.0
Kerosene	electronic	100.0	new wave	100.0	post-punk	100.0	minimal synth	100.0	noise	50.0
Muridae	ambient	100.0	downtempo	100.0	electronic	50.0	experimental	50.0	abstract	50.0
Corpses As Bedmates	experimental	100.0	post-punk	100.0	Avant-Garde	75.0	batcave	75.0	no wave	50.0
Stickers	post-punk	100.0	seattle	75.0	no wave	50.0	5432fun	50.0	noise rock	25.0
Ventre de biche	french	100.0	Lo-Fi	100.0	post-punk	100.0	coldwave	100.0	minimal synth	100.0
Ranvir Bassi	experimental	100.0	under 2000 listeners	100.0	electronic	50.0	indie	50.0	pop	50.0
Bad Channels	Garage Rock	100.0	toronto	100.0	punk	50.0	Canadian	50.0	no wave	50.0
Ludwig	electronic	100.0	ludwig	100.0	noise	50.0	black metal	50.0	indie	50.0
Carpet Stains?	punk	100.0	Grunge	100.0	composer	100.0	band	100.0	white	100.0
Chin Yi	Post punk	100.0	psychedelic	100.0	cabaret	100.0	spanish	50.0	noise rock	50.0
Dennis Duck	experimental	100.0	plunderphonics	100.0	turntable music	100.0	lafms	100.0	electronic	50.0
Ultra Bide	japanese	100.0	noise rock	84.0	psychedelic	67.0	punk	50.0	no wave	50.0
This Is Radio Silence	rock	100.0	alternative	100.0	dubstep	100.0	industrial	100.0	acoustic	100.0
SuSu	seen live	100.0	noise rock	50.0	art punk	50.0	no wave	50.0	under 2000 listeners	50.0
Effect Defect	electronic	100.0	Grunge	50.0	noise rock	50.0	industrial	50.0	Post punk	50.0
502	dubstep	100.0	electronic	50.0	pop	50.0	USA	50.0	Post punk	50.0
フリクション	punk	100.0	alternative	50.0	new wave	50.0	Post punk	50.0	no wave	50.0
Olfa Meocorde	noise	100.0	punk	100.0	post-punk	100.0	black metal	50.0	seen live	50.0
Pusse	seen live	100.0	noise	50.0	french	50.0	rock	50.0	punk	50.0
Melopea	Progressive rock	100.0	true rock	100.0	trip-hop	50.0	folk	50.0	Surf	50.0
Whore Paint	seen live	100.0	noise rock	50.0	post-punk	50.0	no wave	50.0	seen live twice	25.0
Fontana	Garage Rock	100.0	pop	50.0	female vocalists	50.0	american	50.0	punk rock	50.0
New England Roses	electronic	100.0	indie rock	100.0	riot grrrl	100.0	seen live	50.0	no wave	50.0
UJ3Rk5	experimental	100.0	Canadian	100.0	punk	50.0	canada	50.0	post-punk	50.0
DUZHEKNEW	halifax	100.0	indie rock	50.0	new wave	50.0	post-punk	50.0	Post punk	50.0
Haki	alternative	100.0	electronic	50.0	electronica	50.0	seen live	50.0	experimental	50.0
The Infinite Three	noise	100.0	musical terrorrism	100.0	leisur hive	100.0	experimental	50.0	noise rock	50.0
Čao pičke	slovenian punk	100.0	punk	50.0	post-punk	50.0	no wave	50.0	yugoslav	50.0
Omon Ra	rock	100.0	experimental	100.0	psychedelic	100.0	Psychedelic Rock	100.0	weird canada	100.0
Des Airs	new wave	100.0	post-punk	100.0	80s	50.0	female vocalists	50.0	New-Wave	50.0
Silver Abuse	punk	100.0	rock	50.0	Lo-Fi	50.0	investigate	50.0	no wave	50.0
beauty pageant	emo	100.0	indie	50.0	noise rock	50.0	post-punk	50.0	no wave	50.0
The Rules	instrumental	100.0	indie pop	100.0	indie rock	100.0	polyvibe	100.0	seen live	50.0
Buck Gooter	noise rock	100.0	noise	75.0	punk	75.0	experimental	75.0	alternative	50.0
Vortex OST	funk	100.0	bone disco	100.0	Disco	50.0	electronic	50.0	experimental	50.0
Lustige Mutanten	new wave	100.0	minimal	50.0	no wave	50.0	minimal electronic	50.0	dada	50.0
Testicular Manslaughter	experimental	100.0	industrial	100.0	Ariel Pink	100.0	Rack and Ruin records	100.0	Black Dice	100.0
Mr. California and the State Police	noise rock	100.0	punk	50.0	no wave	50.0	the future	50.0	one man band	50.0
Fate vs Free Willy	seen live	100.0	noise rock	100.0	finnish	50.0	no wave	50.0	Lo-Fi	25.0
Die Hausfrauen	new wave	100.0	post-punk	100.0	minimal	50.0	no wave	50.0	Neue Deutsche Welle	50.0
Cowman	noise rock	100.0	industrial	100.0	Lo-Fi	100.0	garage	100.0	digital	50.0
She's Hit	post-punk	100.0	shoegaze	100.0	indie	50.0	Surf	50.0	experimental	50.0
Red Asphalt	synthpunk	100.0	indie	50.0	punk	50.0	no wave	50.0	\N	0.0
25 Suaves	seen live	100.0	experimental	100.0	noise rock	100.0	Post punk	100.0	noise	50.0
Colin Domigan	electronic	100.0	experimental	100.0	Electroclash	100.0	post-rock	100.0	dance	100.0
Free Clinic	Lo-Fi	100.0	noise	50.0	punk	50.0	alternative rock	50.0	indie rock	50.0
Camp Z + Madame B	experimental	100.0	post-punk	100.0	noise rock	88.0	french	75.0	alternative	50.0
Lovely Little Girls	experimental	100.0	chicago	75.0	american	50.0	art punk	50.0	no wave	50.0
Adam Beebe hates everyone	Avant-Garde	100.0	residents	100.0	experimental	50.0	strange	50.0	weird	50.0
Pechsaftha	noise	100.0	experimental	100.0	punk	50.0	spoken word	50.0	german	50.0
Manflu	london	100.0	seen live	50.0	experimental	50.0	post-punk	50.0	Post punk	50.0
町田町蔵 FROM 至福団	indie	100.0	industrial	100.0	noise	50.0	classic rock	50.0	electronic	50.0
Snake Jaw	tallahassee	100.0	Pokemon	100.0	not good	100.0	runescape	100.0	Soundtrack	50.0
S-S-S-Spectres	post-punk	100.0	new york	50.0	no wave	50.0	spotify	50.0	\N	0.0
Nastro	electronica	100.0	noise	75.0	no wave	50.0	funk punk	50.0	synth punk	50.0
Yeah Bears	hardcore	100.0	noisecore	100.0	punk	50.0	australian	50.0	avant garde	50.0
Antifilm	ambient	100.0	noise	50.0	chillout	50.0	electronic	50.0	electronica	50.0
Melk The G6-49	experimental	100.0	noise rock	100.0	no wave	50.0	Experimental Rock	34.0	Sludge	34.0
Tr + Tr	electropop	100.0	electronic	50.0	indie	50.0	pop	50.0	minimal techno	50.0
Pengvyashy	electronic	100.0	experimental	100.0	dark folk	100.0	Progressive Electronic	100.0	chillout	50.0
Acolytes	death metal	100.0	experimental	50.0	post-punk	50.0	Melodic Death Metal	50.0	no wave	50.0
Dritt Drittel	experimental	100.0	new wave	100.0	japanese	50.0	abstract	50.0	no wave	50.0
the Potion	rock	100.0	Grunge	100.0	alternative	100.0	alternative rock	100.0	experimental	100.0
Exacerbate	psychedelic	100.0	noise	75.0	electronic	75.0	industrial	75.0	avantgarde	75.0
Venus Handcuffs	post-punk	100.0	alternative	50.0	experimental	50.0	noise rock	50.0	female vocalists	50.0
Control Unit	noise	100.0	seen live	50.0	noise rock	50.0	no wave	50.0	Old school Hardcore	50.0
Stasi Utes	electronic	100.0	dub	100.0	dystopiaq	100.0	noise	50.0	Hip-Hop	50.0
R.N.A. Organism	ambient	100.0	experimental	100.0	noise	50.0	post-punk	50.0	synth	50.0
Blitzkriegbliss	rock	100.0	female	50.0	punk	50.0	heavy	50.0	hardcore	50.0
Petty Crime	slampt	100.0	punk	50.0	post-punk	50.0	no wave	50.0	Africa rap	50.0
Larsvember	ambient	100.0	black metal	50.0	piano	50.0	Awesome	50.0	Electro Acoustic	50.0
Martin Bisi	alternative	100.0	seen live	50.0	goth	50.0	indie rock	50.0	psychedelic	50.0
Bushpig	noise	100.0	Grunge	100.0	noise rock	100.0	post-punk	100.0	punk	50.0
シマシマエレクトリック	experimental	100.0	japanese	50.0	japan	50.0	no wave	50.0	Garage Punk	50.0
Cyril Mary & Madame B	alternative	100.0	experimental	100.0	dark	100.0	cold	100.0	madame b	100.0
Moira Scar	post-punk	100.0	deathrock	100.0	experimental	50.0	noise rock	50.0	Avant-Garde	50.0
Cool Moms	los angeles	100.0	punk	50.0	Post punk	50.0	no wave	50.0	girl band	50.0
Claudine Chirac	ambient	100.0	Avant-Garde	100.0	electronic	50.0	experimental	50.0	synth pop	50.0
Terminalpatienten	Swedish Punk	100.0	punk	50.0	swedish	50.0	no wave	50.0	\N	0.0
table.table	post-punk	100.0	noise	50.0	indie	50.0	pop	50.0	punk	50.0
Unknown Gender	post-punk	100.0	no wave	50.0	punkjazz	50.0	rockpalast	50.0	industrial-hippy	50.0
Bodycop	noise	100.0	noise rock	50.0	industrial	50.0	no wave	50.0	female fronted	50.0
Silent People	denmark	100.0	electronic	50.0	indie	50.0	jazz funk	50.0	art rock	50.0
FATANGRYMAN	indie	100.0	riot grrrl	100.0	screaming	100.0	fuck you	100.0	Riot Girl	100.0
Gecizők	punk	100.0	hungarian	100.0	seen live	50.0	no wave	50.0	Punk as Fuck	50.0
More Fiends	punk rock	100.0	hardcore	50.0	no wave	50.0	\N	0.0	\N	0.0
Monosodic	grindcore	100.0	experimental	100.0	mexico	100.0	noisecore	100.0	noise	50.0
天鼓	female vocalists	100.0	japan	100.0	Experimental Rock	50.0	no wave	50.0	asia	50.0
Slingshot Candy	Avant-Garde	100.0	noise	88.0	outsider music	88.0	noise rock	75.0	weird	75.0
sl-cisco	good shit	100.0	electronic	50.0	japanese	50.0	good	50.0	no wave	50.0
spotted pinto bean	not under 100 listeners	100.0	noise	50.0	indie	50.0	jazz	50.0	hip hop	50.0
SWFT WNGS	goth	100.0	post-punk	100.0	minimal	100.0	noise	50.0	indie	50.0
Alec Empire & Gary Burger	punk	100.0	Garage Rock	100.0	cyberpunk	100.0	proto-punk	100.0	Alec EMpire	100.0
Murmurists	noise	100.0	experimental	100.0	industrial	100.0	electronic	50.0	british	50.0
Mullet	melodic	100.0	punk rock	100.0	skatepunk	100.0	alternative rock	50.0	ambient	50.0
Mark Steiner & His Problems	post-punk	100.0	indie	50.0	blues	50.0	norwegian	50.0	no wave	50.0
mini drunfes	psychobilly	100.0	indie	50.0	rock	50.0	punk	50.0	alternative	50.0
Manalishi	Soundtrack	100.0	indie	100.0	Classical	100.0	rock	100.0	soul	100.0
Jody Harris & Robert Quine	experimental	100.0	electronic	50.0	jazz	50.0	instrumental	50.0	Experimental Rock	50.0
Red X Red M	noise rock	100.0	jazz	50.0	art rock	50.0	no wave	50.0	post-hardcore	50.0
Ethereal and the Queer Show	psychedelic	100.0	Lo-Fi	75.0	indie rock	50.0	Avant-Garde	50.0	no wave	50.0
Salacious	french	100.0	alternative	100.0	dark	100.0	post-punk	100.0	madame b	75.0
The Basement Sessions	noise	100.0	rock	100.0	alternative	100.0	experimental	100.0	blues	100.0
Hairy Back Mary	Avant-Garde	100.0	experimental	50.0	no wave	50.0	free downloads	50.0	under 2000 listeners	50.0
Mortimer Nova	indie	100.0	acoustic	100.0	under 2000 listeners	100.0	alternative	50.0	emo	50.0
AIDS Wolf	noise rock	100.0	experimental	63.0	noise	61.0	no wave	49.0	seen live	39.0
World Domination Enterprises	post-punk	100.0	noise rock	52.0	no wave	48.0	punk	32.0	experimental	28.0
PENTAGONIC	experimental	100.0	Avant-Garde	96.0	psychedelic	92.0	noise	74.0	noise rock	61.0
Made in Mexico	noise rock	100.0	experimental	64.0	no wave	47.0	female vocalists	28.0	noise-rock	15.0
7 Year Rabbit Cycle	noise rock	100.0	experimental	94.0	no wave	47.0	noise	37.0	indie	37.0
Blurt	post-punk	100.0	experimental	61.0	Avant-Garde	51.0	no wave	46.0	jazz-punk	43.0
Prostitutes	techno	100.0	electronic	82.0	experimental	73.0	minimal synth	73.0	no wave	46.0
The Residents & Renaldo and the Loaf	Avant-Garde	100.0	experimental	91.0	no wave	46.0	psychedelic	37.0	art rock	37.0
Bellmer Dolls	post-punk	100.0	deathrock	55.0	Garage Rock	46.0	no wave	46.0	seen live	37.0
Arthur Russell	Avant-Garde	100.0	experimental	96.0	Disco	55.0	electronic	48.0	no wave	45.0
Flux Information Sciences	industrial	100.0	experimental	63.0	noise rock	63.0	no wave	45.0	Experimental Rock	38.0
Arab on Radar	noise rock	100.0	noise	57.0	experimental	51.0	no wave	44.0	post-punk	39.0
Los Microwaves	post-punk	100.0	new wave	88.0	no wave	44.0	minimal synth	38.0	80s	32.0
Doomsday Student	noise rock	100.0	noise	53.0	no wave	43.0	Avant-Garde	29.0	noisecore	20.0
Seek Six Sick	noise rock	100.0	krautrock	100.0	alternative rock	43.0	indie pop	43.0	no wave	43.0
The Birthday Party & Lydia Lunch	post-punk	100.0	no wave	43.0	new wave	24.0	dark wave	24.0	Post punk	15.0
Gospoda Horoshie	Lo-Fi	100.0	post-hardcore	100.0	noise-rock	86.0	experimental	72.0	no wave	43.0
The Chadderandom Abyss	experimental	100.0	noise	72.0	folk	43.0	no wave	43.0	Lo-Fi	29.0
No Trend	noise rock	100.0	punk	63.0	post-punk	51.0	hardcore punk	50.0	no wave	42.0
Ilitch	experimental	100.0	industrial	75.0	minimal wave	59.0	minimalism	50.0	no wave	42.0
Silver Daggers	noise rock	100.0	experimental	71.0	noise	50.0	jazz punk	50.0	no wave	41.0
Horse Head	experimental	100.0	psychedelic	100.0	shoegaze	80.0	Lo-Fi	60.0	no wave	40.0
Divorce	seen live	100.0	noise	80.0	noise rock	80.0	heavy metal	40.0	Female fronted metal	40.0
XYX	punk	100.0	art-punk	100.0	post-punk	80.0	seen live	60.0	noise rock	40.0
Octavius	Progressive deathcore	100.0	Hip-Hop	80.0	electronica	60.0	idm	60.0	abstract hip-hop	60.0
The 1985	punk	100.0	math rock	60.0	hardcore	60.0	post-punk	60.0	indie	40.0
n0 things	noise rock	100.0	post-punk	100.0	no wave	40.0	alternative rock	20.0	sxsw 2006	20.0
RUINHORSE	post-punk	100.0	electronic	80.0	experimental punk	80.0	experimental	60.0	noise rock	60.0
Swine Flu	noise	100.0	noise rock	100.0	experimental	80.0	harsh noise	80.0	Grunge	40.0
Amorālā Psihoze	latvian	100.0	Experimental Rock	40.0	post-punk	40.0	90s	40.0	Avant-Garde	40.0
Detonazione	post-punk	100.0	new wave	39.0	no wave	39.0	italian	20.0	coldwave	20.0
Rhys Chatham	minimalism	100.0	drone	98.0	Avant-Garde	95.0	experimental	85.0	ambient	72.0
Band of Holy Joy	experimental	100.0	indie	88.0	pop	88.0	post-punk	88.0	melancholy pop	75.0
Shearing Pinx	noise rock	100.0	seen live	75.0	no wave	38.0	noise	32.0	garage	25.0
Wonder Wheel	Lo-Fi	100.0	experimental	50.0	outsider	50.0	no wave	38.0	los angeles	38.0
Business Lady	post-punk	100.0	noise rock	63.0	seen live	38.0	no wave	38.0	noise	25.0
State of Art	new wave	100.0	post-punk	88.0	funk	75.0	italian	63.0	no wave	38.0
Spotted Pinto Bean.	spooky	100.0	noise pop	100.0	top 40	100.0	underground	100.0	Extreme	100.0
Breakneck Static	noise rock	100.0	japanese	88.0	noise	50.0	hardcore	38.0	no wave	38.0
I.H.N.A.B.T.B.	experimental	100.0	seen live	60.0	noise rock	50.0	russian	50.0	psychedelic	46.0
Michael Gira	industrial	100.0	neofolk	99.0	folk	80.0	swans	53.0	michael gira	52.0
Electricity In Our Homes	post-punk	100.0	british	57.0	seen live	52.0	Garage Punk	44.0	no wave	36.0
Explode Into Colors	portland	100.0	indie	93.0	no-wave	93.0	seen live	65.0	dub	65.0
Die Haut	post-punk	100.0	german	55.0	alternative	44.0	no wave	35.0	Post punk	21.0
The Lounge Lizards	jazz	100.0	Avant-Garde	58.0	no wave	34.0	acid jazz	29.0	Fusion	29.0
Yvette	noise rock	100.0	experimental	67.0	Bossa Nova	50.0	USA	50.0	noise	34.0
Cap Pas Cap	indie	100.0	post-punk	100.0	synth	56.0	seen live	45.0	irish	45.0
Mutants	punk	100.0	art punk	100.0	sf	67.0	Punk77	67.0	seen live	34.0
Dilithium Tourdes	indie rop skop a giggle	100.0	skip bop	67.0	electropop	34.0	jazz	34.0	experimental	34.0
Reynols	noise	100.0	experimental	100.0	drone	100.0	Avant-Garde	75.0	psychedelic	67.0
Thee Ludds	Trash	100.0	punk	67.0	noise rock	67.0	UK	67.0	Lo-Fi	67.0
Campingsex	noise rock	100.0	post-punk	59.0	no wave	34.0	punk	25.0	german	25.0
Math	electronic	100.0	harmonicas or handclaps or cheering or whistling or ukuleles or banjos or accordians or xylophones	100.0	Lo-Fi	67.0	folktronica	67.0	noise	34.0
Mac Blackout	experimental	100.0	noise	84.0	Lo-Fi	84.0	electronic	67.0	Post punk	50.0
Girls Pissing on Girls Pissing	post-punk	100.0	seen live	34.0	experimental	34.0	industrial	34.0	Experimental Rock	34.0
Autechre	idm	100.0	electronic	80.0	experimental	58.0	ambient	58.0	electronica	35.0
Apparat	idm	100.0	electronic	93.0	ambient	65.0	experimental	54.0	electronica	36.0
The Flashbulb	idm	100.0	breakcore	65.0	electronic	61.0	experimental	54.0	electronica	23.0
Squarepusher	idm	100.0	electronic	97.0	experimental	66.0	electronica	44.0	Drum n Bass	43.0
Clark	idm	100.0	electronic	68.0	experimental	50.0	Warp	35.0	electronica	26.0
Plaid	idm	100.0	electronic	80.0	ambient	49.0	electronica	42.0	Warp	34.0
Telefon Tel Aviv	idm	100.0	electronic	83.0	ambient	67.0	chillout	42.0	electronica	39.0
Mujuice	idm	100.0	electronic	96.0	minimal	73.0	russian	61.0	glitch	48.0
AFX	idm	100.0	electronic	82.0	experimental	55.0	ambient	51.0	electronica	40.0
Machinedrum	idm	100.0	electronic	87.0	glitch	76.0	Hip-Hop	42.0	Juke	35.0
Lone	idm	100.0	electronic	87.0	ambient	60.0	Hip-Hop	47.0	instrumental	43.0
µ-Ziq	idm	100.0	electronic	64.0	experimental	42.0	ambient	38.0	electronica	34.0
Lorn	idm	100.0	electronic	82.0	dubstep	80.0	black metal	36.0	electro	27.0
Shigeto	idm	100.0	ambient	88.0	electronic	87.0	glitch	76.0	glitch-hop	71.0
Kettel	idm	100.0	ambient	67.0	electronic	54.0	experimental	31.0	electronica	31.0
Lusine	idm	100.0	electronic	68.0	ambient	58.0	minimal	47.0	electronica	33.0
The Black Dog	idm	100.0	electronic	64.0	ambient	60.0	techno	49.0	electronica	30.0
Arovane	idm	100.0	ambient	75.0	electronic	63.0	electronica	39.0	downtempo	37.0
Luke Vibert	idm	100.0	electronic	87.0	Acid	70.0	trip-hop	54.0	electronica	43.0
Proem	idm	100.0	ambient	60.0	electronic	46.0	glitch	38.0	electronica	28.0
Tipper	idm	100.0	electronic	90.0	breakbeat	81.0	downtempo	65.0	breaks	57.0
Chris Clark	idm	100.0	electronic	66.0	experimental	43.0	Warp	43.0	electronica	30.0
Hecq	idm	100.0	ambient	84.0	experimental	57.0	glitch	56.0	electronic	44.0
Isan	idm	100.0	electronic	72.0	ambient	71.0	electronica	50.0	experimental	43.0
Casino Versus Japan	idm	100.0	ambient	75.0	electronic	67.0	downtempo	39.0	electronica	32.0
Ochre	idm	100.0	ambient	55.0	electronic	53.0	experimental	33.0	electronica	28.0
Access to Arasaka	idm	100.0	ambient	78.0	glitch	68.0	experimental	48.0	industrial	33.0
Wisp	idm	100.0	electronic	53.0	ambient	52.0	experimental	34.0	electronica	21.0
Stendeck	idm	100.0	ambient	71.0	industrial	46.0	electronic	41.0	Rhythmic Noise	36.0
Bola	idm	100.0	ambient	61.0	electronic	59.0	electronica	37.0	downtempo	31.0
Vector Lovers	idm	100.0	electronic	68.0	ambient	55.0	electronica	30.0	electro	28.0
Secede	idm	100.0	ambient	90.0	electronic	49.0	chillout	38.0	electronica	22.0
Gridlock	idm	100.0	industrial	62.0	ambient	58.0	electronic	39.0	experimental	37.0
2H Company	idm	100.0	abstract hip-hop	97.0	Hip-Hop	88.0	experimental	78.0	russian	53.0
Two Lone Swordsmen	idm	100.0	electronic	86.0	electronica	51.0	Warp	41.0	experimental	38.0
Kid606	idm	100.0	breakcore	95.0	electronic	81.0	glitch	60.0	experimental	58.0
Architect	idm	100.0	industrial	64.0	experimental	53.0	mathcore	43.0	electronic	42.0
Kelpe	idm	100.0	electronic	58.0	downtempo	55.0	trip-hop	40.0	electronica	34.0
Luke Abbott	idm	100.0	minimal	92.0	electronic	78.0	Border Community	50.0	experimental electronic	46.0
Kodomo	idm	100.0	ambient	93.0	electronic	88.0	chillout	47.0	trance	34.0
Freescha	idm	100.0	ambient	76.0	electronic	52.0	atmospheric	37.0	electronica	34.0
Christ.	idm	100.0	electronic	62.0	ambient	52.0	electronica	38.0	downtempo	33.0
Near The Parenthesis	idm	100.0	ambient	93.0	electronic	58.0	experimental	46.0	electronica	25.0
Polygon Window	idm	100.0	electronic	76.0	ambient	60.0	techno	46.0	electronica	29.0
Melodium	idm	100.0	electronic	92.0	ambient	80.0	experimental	77.0	electronica	47.0
Deru	idm	100.0	ambient	65.0	electronic	48.0	glitch	48.0	electronica	22.0
Bitcrush	idm	100.0	ambient	97.0	post-rock	79.0	electronic	52.0	shoegaze	48.0
The Tuss	idm	100.0	electronic	67.0	Acid	65.0	experimental	49.0	electronica	33.0
Jackson and His Computer Band	idm	100.0	electronic	80.0	glitch	50.0	electronica	50.0	Warp	45.0
Boy Is Fiction	idm	100.0	ambient	82.0	electronic	58.0	downtempo	49.0	post-rock	34.0
Ed Harrison	idm	100.0	electronic	68.0	electronica	65.0	instrumental	54.0	NeoTokyo	50.0
Jimmy Edgar	idm	100.0	electronic	93.0	Warp	47.0	experimental	44.0	seen live	36.0
Lusine ICL	idm	100.0	ambient	59.0	electronic	42.0	glitch	40.0	minimal	34.0
Kattoo	idm	100.0	ambient	78.0	experimental	53.0	electronic	42.0	electronica	12.0
Maps and Diagrams	idm	100.0	ambient	65.0	glitch	45.0	electronic	41.0	electronica	23.0
Jega	idm	100.0	electronic	44.0	electronica	32.0	Drum and bass	27.0	ambient	26.0
Ilkae	idm	100.0	electronic	56.0	glitch	46.0	electronica	35.0	m3rck	16.0
Bogdan Raczynski	idm	100.0	breakcore	71.0	electronic	54.0	experimental	42.0	electronica	28.0
Gescom	idm	100.0	electronic	62.0	experimental	47.0	electronica	31.0	ambient	29.0
Rival Consoles	idm	100.0	electronic	74.0	ambient	56.0	experimental	52.0	electro	38.0
Caustic Window	idm	100.0	electronic	86.0	techno	57.0	experimental	56.0	electronica	36.0
Funkstörung	idm	100.0	electronic	70.0	electronica	35.0	glitch	32.0	electro	18.0
Vessel	idm	100.0	electronic	65.0	ambient	61.0	downtempo	38.0	electronica	29.0
Digitonal	idm	100.0	ambient	65.0	electronic	52.0	downtempo	38.0	modern classical	26.0
Lackluster	idm	100.0	electronic	57.0	ambient	49.0	electronica	30.0	finnish	22.0
Loess	idm	100.0	ambient	64.0	glitch	41.0	electronic	38.0	electronica	25.0
B12	idm	100.0	electronic	67.0	ambient	63.0	techno	62.0	Warp	38.0
Autoclav1.1	idm	100.0	ambient	55.0	industrial	49.0	Rhythmic Noise	49.0	noise	22.0
Cex	idm	100.0	electronic	64.0	glitch	41.0	electronica	32.0	Hip-Hop	23.0
Phon.o	idm	100.0	electro	60.0	glitch	46.0	shitkatapult	46.0	german	39.0
Funckarma	idm	100.0	glitch	41.0	electronic	36.0	ambient	28.0	dubstep	19.0
Ruxpin	idm	100.0	ambient	75.0	electronic	45.0	downtempo	41.0	icelandic	35.0
Depth Affect	idm	100.0	electronic	81.0	glitch	62.0	Hip-Hop	55.0	electronica	41.0
Richard Devine	idm	100.0	glitch	57.0	experimental	40.0	electronic	38.0	breakcore	30.0
Global Goon	idm	100.0	electronic	48.0	electronica	38.0	Rephlex	26.0	downtempo	21.0
Cybo	idm	100.0	ambient	79.0	downtempo	75.0	electronic	60.0	trip-hop	54.0
Gimmik	idm	100.0	electronic	45.0	ambient	39.0	experimental	28.0	electronica	25.0
VHS Head	idm	100.0	glitch	95.0	electronic	68.0	experimental	19.0	vhs	19.0
Cepia	idm	100.0	electronic	59.0	ambient	58.0	experimental	41.0	electronica	37.0
Pleq	idm	100.0	ambient	93.0	glitch	87.0	experimental	63.0	electronic	50.0
Kilowatts	idm	100.0	electronic	72.0	downtempo	62.0	ambient	55.0	chillout	37.0
Abfahrt Hinwil	idm	100.0	electronic	50.0	ambient	48.0	experimental	30.0	electronica	25.0
Frog Pocket	idm	100.0	glitch	56.0	experimental	49.0	electronic	49.0	ambient	36.0
r.roo	idm	100.0	ambient	83.0	downtempo	49.0	electronic	44.0	Ukrainian	30.0
Cylob	idm	100.0	electronic	72.0	electronica	38.0	ambient	35.0	Rephlex	29.0
Tim Exile	idm	100.0	breakcore	98.0	seen live	81.0	electronica	59.0	noise	54.0
Detritus	idm	100.0	breakcore	63.0	industrial	60.0	downtempo	44.0	Drum and bass	43.0
Ginormous	idm	100.0	ambient	62.0	experimental	59.0	electronic	45.0	hymen	22.0
Bochum Welt	idm	100.0	electronic	66.0	electro	39.0	electronica	37.0	experimental	34.0
Mira Calix	idm	100.0	electronic	65.0	experimental	59.0	Warp	51.0	electronica	39.0
Sleepy Town Manufacture	idm	100.0	ambient	67.0	electronic	49.0	russian	28.0	electronica	21.0
Kona Triangle	idm	100.0	ambient	98.0	glitch	72.0	electronic	60.0	beats	55.0
Mr. Projectile	idm	100.0	electronic	38.0	ambient	38.0	electronica	26.0	chill	14.0
Daisuke Tanabe	idm	100.0	electronic	77.0	ambient	69.0	downtempo	58.0	experimental	56.0
Totakeke	idm	100.0	Rhythmic Noise	65.0	industrial	58.0	ambient	45.0	electronic	34.0
Somatic Responses	idm	100.0	breakcore	83.0	industrial	69.0	Rhythmic Noise	56.0	noise	41.0
Displacer	idm	100.0	ambient	55.0	electronic	37.0	experimental	34.0	Post-Industrial	27.0
Brothomstates	idm	100.0	electronic	46.0	Warp	31.0	electronica	26.0	finnish	15.0
Melorman	idm	100.0	ambient	96.0	downtempo	74.0	electronic	53.0	chillout	47.0
Inf	idm	100.0	instrumental hip-hop	100.0	Hip-Hop	91.0	electronica	82.0	instrumental hip hop	82.0
Beefcake	idm	100.0	electronic	44.0	experimental	42.0	glitch	40.0	industrial	29.0
Rumpistol	idm	100.0	ambient	75.0	electronic	68.0	downtempo	53.0	seen live	33.0
Last Step	idm	100.0	Acid	65.0	electronic	61.0	planet mu	28.0	electronica	23.0
Plateau	electronic	100.0	experimental	100.0	idm	100.0	industrial	98.0	polish	60.0
Dryft	idm	100.0	electronic	49.0	Drum and bass	49.0	experimental	33.0	industrial	31.0
Go-qualia	idm	100.0	ambient	88.0	electronica	75.0	electronic	63.0	japanese	45.0
Siba	idm	100.0	electronic	74.0	pernambuco	74.0	mangue beat	60.0	electronica	57.0
Mike & Rich	idm	100.0	electronic	72.0	experimental	39.0	electronica	32.0	braindance	29.0
Nebulo	idm	100.0	ambient	78.0	glitch	66.0	experimental	53.0	hymen	22.0
Esem	idm	100.0	electronic	44.0	ambient	40.0	electronica	22.0	netlabel	15.0
Locust Toybox	idm	100.0	electronic	93.0	ambient	89.0	experimental	63.0	electronica	25.0
Infinite Scale	idm	100.0	ambient	75.0	electronic	53.0	downtempo	46.0	toytronic	25.0
Christian Kleine	idm	100.0	ambient	70.0	electronic	55.0	electronica	48.0	downtempo	38.0
subtractiveLAD	idm	100.0	ambient	68.0	electronic	42.0	n5MD	15.0	electronica	14.0
Tonikom	idm	100.0	experimental	51.0	Drum and bass	48.0	electronic	43.0	industrial	42.0
Blamstrain	idm	100.0	ambient	86.0	electronic	57.0	techno	42.0	electronica	32.0
Fieldtriqp	idm	100.0	ambient	94.0	electronic	74.0	electronica	47.0	pixies palace	27.0
Marumari	idm	100.0	electronic	63.0	electronica	54.0	ambient	48.0	experimental	34.0
Ab Ovo	idm	100.0	ambient	77.0	dark ambient	49.0	experimental	43.0	electronic	36.0
Principles of Geometry	electronic	100.0	idm	100.0	electronica	78.0	ambient	75.0	breakbeat	60.0
Tapage	idm	100.0	glitch	59.0	experimental	55.0	electronic	37.0	Darkcore	19.0
Obfusc	idm	100.0	ambient	91.0	electronic	58.0	instrumental	40.0	electronica	31.0
Aardvarck	idm	100.0	electronic	80.0	dubstep	67.0	techno	67.0	dutch	46.0
Proswell	idm	100.0	electronic	61.0	ambient	32.0	electronica	31.0	experimental	25.0
Captain Ahab	idm	100.0	electro	95.0	breakcore	93.0	electronic	90.0	Unimaginable Brilliance	87.0
Hrvatski	idm	100.0	breakcore	98.0	glitch	59.0	experimental	53.0	electronic	46.0
SE	idm	100.0	ambient	82.0	finnish	28.0	post-punk	26.0	electronic	23.0
Herrmann & Kleine	idm	100.0	electronic	62.0	ambient	52.0	electronica	44.0	morr music	30.0
Sense	idm	100.0	ambient	58.0	electronic	41.0	electronica	18.0	glitch	18.0
Ёлочные Игрушки	idm	100.0	experimental	62.0	electronic	50.0	russian	43.0	electronica	14.0
Nautilis	idm	100.0	electronic	41.0	ambient	34.0	glitch	33.0	abstract	20.0
Ocoeur	idm	100.0	glitch	68.0	ambient	65.0	dark ambient	52.0	melancholic idm	33.0
Dub Tractor	idm	100.0	electronic	83.0	ambient	83.0	downtempo	65.0	dub	62.0
Nikakoi	idm	100.0	electronic	55.0	electronica	38.0	glitch	32.0	trip-hop	30.0
The Gasman	idm	100.0	electronic	51.0	planet mu	33.0	ambient	30.0	electronica	25.0
Kid Spatula	idm	100.0	electronic	60.0	experimental	35.0	planet mu	35.0	electronica	30.0
Nitrada	idm	100.0	electronic	73.0	trip-hop	52.0	electronica	46.0	glitch	43.0
Yasume	idm	100.0	ambient	73.0	glitch	59.0	electronic	53.0	downtempo	34.0
Quench	idm	100.0	electronic	65.0	ambient	44.0	trance	35.0	experimental	15.0
Mint	idm	100.0	seen live	69.0	electronic	58.0	belgian	56.0	rock	39.0
Eu	idm	100.0	electronic	53.0	experimental	38.0	russian	25.0	electronica	19.0
Spoonbill	idm	100.0	electronic	91.0	ambient	67.0	glitch	67.0	australian	24.0
Näo	idm	100.0	post-rock	94.0	experimental	60.0	electronic	58.0	downtempo	36.0
Mrs Jynx	idm	100.0	electronic	49.0	electronica	29.0	ambient	29.0	experimental	24.0
Adam Johnson	idm	100.0	electronic	57.0	techno	36.0	minimal	34.0	electronica	28.0
Metamatics	idm	100.0	electronic	62.0	ambient	46.0	experimental	28.0	electronica	25.0
Flexe	idm	100.0	electronic	94.0	Acid	64.0	experimental	47.0	Benn Jordan	17.0
Jackson and his computerband	idm	100.0	electronic	67.0	electropop	50.0	glitch	34.0	electronica	17.0
Photophob	idm	100.0	ambient	64.0	electronic	44.0	breakcore	26.0	electronica	14.0
Joseph Nothing	idm	100.0	electronic	60.0	electronica	40.0	experimental	33.0	planet mu	31.0
Keef Baker	idm	100.0	experimental	44.0	electronic	40.0	breakcore	36.0	Post-Industrial	24.0
Landau	idm	100.0	electronic	64.0	downtempo	37.0	electronica	28.0	brazilian	17.0
Anenon	idm	100.0	electronic	74.0	beats	54.0	Hip-Hop	40.0	relax	27.0
Monokle	idm	100.0	electronic	74.0	ambient	65.0	russian	42.0	electrosound	27.0
Opiate	idm	100.0	electronic	71.0	ambient	69.0	glitch	52.0	electronica	47.0
Cheju	idm	100.0	electronic	53.0	glitch	44.0	downtempo	38.0	electronica	16.0
Tim Koch	idm	100.0	ambient	54.0	electronic	53.0	electronica	24.0	experimental	23.0
Multiplex	idm	100.0	ambient	41.0	electronic	39.0	grindcore	29.0	electronica	22.0
Undermathic	idm	100.0	ambient	78.0	electronic	53.0	downtempo	45.0	tympanik audio	31.0
Ten and Tracer	idm	100.0	electronic	44.0	ambient	35.0	electronica	28.0	chiptune	17.0
Tineidae	idm	100.0	ambient	79.0	glitch	69.0	electronic	21.0	tympanik audio	21.0
IJO	idm	100.0	ambient	60.0	electronic	58.0	downtempo	49.0	lithuanian	37.0
Arc Lab	idm	100.0	ambient	90.0	electronic	48.0	glitch	48.0	downtempo	39.0
Another Electronic Musician	idm	100.0	electronic	44.0	glitch	40.0	ambient	38.0	n5MD	19.0
Casey LaLonde	electronic	100.0	ambient	100.0	idm	100.0	trip-hop	59.0	indie	59.0
Aleksi Perälä	idm	100.0	Rephlex	46.0	ambient	39.0	electronic	26.0	Acid	26.0
D'Arcangelo	idm	100.0	electronic	45.0	electro	43.0	Rephlex	41.0	techno	31.0
Outputmessage	idm	100.0	electronic	76.0	ambient	48.0	breaks	36.0	electronica	28.0
CiM	idm	100.0	electronic	47.0	ambient	26.0	glitch	23.0	downtempo	16.0
Apparat & Raz Ohara	idm	100.0	electronic	65.0	experimental	50.0	glitch	30.0	minimal	27.0
Yimino	idm	100.0	ambient	58.0	electronic	40.0	downtempo	32.0	british	20.0
Monoceros	idm	100.0	ambient	41.0	downtempo	36.0	electronic	27.0	electronica	21.0
planet boelex	idm	100.0	ambient	87.0	electronic	50.0	electronica	39.0	finnish	30.0
aAirial	idm	100.0	ambient	91.0	downtempo	59.0	electronic	52.0	experimental	39.0
Slag Boom Van Loon	idm	100.0	electronic	85.0	ambient	52.0	downtempo	40.0	planet mu	19.0
Integral	idm	100.0	ambient	73.0	experimental	47.0	electronic	34.0	headphone music	20.0
Dirk Geiger	idm	100.0	ambient	77.0	glitch	56.0	experimental	44.0	tympanik audio	31.0
Dpat	electronic	100.0	idm	100.0	experimental	70.0	soul	50.0	instrumental	30.0
DoF	idm	100.0	electronic	93.0	ambient	89.0	electronica	85.0	downtempo	62.0
Mnemonic	idm	100.0	ambient	65.0	electronic	35.0	ebm	28.0	german	23.0
Phonem	idm	100.0	electronic	43.0	ambient	42.0	glitch	36.0	electronica	17.0
Freeform	idm	100.0	electronic	64.0	experimental	45.0	skam	25.0	electronica	20.0
Boy Robot	idm	100.0	electronic	52.0	ambient	34.0	electronica	25.0	City Centre Offices	13.0
GAK	idm	100.0	electronic	80.0	experimental	55.0	techno	53.0	Warp	40.0
Astrobotnia	idm	100.0	electronic	55.0	ambient	36.0	Rephlex	21.0	downtempo	19.0
Talvekoidik	idm	100.0	ambient	47.0	glitch	47.0	noise	35.0	electronic	28.0
user48736353001	idm	100.0	electronic	80.0	ambient	60.0	experimental	60.0	aphex twin	40.0
Team Doyobi	idm	100.0	experimental	66.0	electronic	52.0	electronica	47.0	skam	47.0
Phoenecia	idm	100.0	glitch	43.0	electronic	39.0	abstract	32.0	electronica	19.0
Delarosa & Asora	idm	100.0	electronic	78.0	ambient	78.0	glitch	72.0	electronica	40.0
am-boy	idm	100.0	electronic	68.0	downtempo	62.0	ambient	56.0	electronica	30.0
Capitol K	idm	100.0	electronic	79.0	electronica	27.0	indie	25.0	ambient	22.0
Emperor Peeter 1.	Disco	100.0	trance	100.0	metal	100.0	Hip-Hop	100.0	electronic	100.0
Anklebiter	idm	100.0	ambient	67.0	experimental	38.0	tympanik audio	25.0	emo	20.0
Larvae	idm	100.0	breakcore	88.0	experimental	58.0	ambient	47.0	electronic	36.0
NHK'Koyxeи	experimental	100.0	idm	100.0	electronic	70.0	dub	47.0	electronica	31.0
diaphane	idm	100.0	ambient	78.0	experimental	49.0	electronic	30.0	ant-zen	20.0
Scone	idm	100.0	glitch	58.0	minimal	46.0	ambient	43.0	electronic	34.0
Candle Nine	idm	100.0	glitch	69.0	industrial	62.0	experimental	54.0	asylum	25.0
Ambidextrous	idm	100.0	electronic	55.0	ambient	46.0	russian	37.0	seen live	17.0
Comaduster	idm	100.0	ambient	80.0	industrial	71.0	Drum and bass	62.0	trance	39.0
Verbose	idm	100.0	electronic	50.0	post-rock	48.0	emotional electronic	25.0	electronica	22.0
C.DB.SN	idm	100.0	ambient	57.0	experimental	47.0	electronic	33.0	tympanik audio	26.0
Recue	idm	100.0	ambient	98.0	experimental	46.0	electronica	36.0	electronic	21.0
Praveen	idm	100.0	ambient	59.0	glitch	46.0	electronica	31.0	electronic	25.0
Beaumont Hannant	idm	100.0	electronic	87.0	ambient	75.0	techno	42.0	electronica	35.0
Ovuca	idm	100.0	electronic	63.0	Rephlex	45.0	electro	33.0	braindance	24.0
Veell	idm	100.0	experimental	65.0	electronic	57.0	trip-hop	42.0	ambient	38.0
Himuro Yoshiteru	idm	100.0	electronic	55.0	Breakbeats	55.0	japanese	40.0	japan	40.0
Geskia	idm	100.0	ambient	56.0	electronic	47.0	downtempo	41.0	abstract	39.0
Syntaks	idm	100.0	ambient	67.0	electronic	40.0	electronica	40.0	atmospheric	37.0
Spark	idm	100.0	glitch	50.0	electronic	39.0	ambient	34.0	experimental	31.0
dDamage	idm	100.0	breakcore	80.0	electronic	75.0	french	49.0	electronica	43.0
Geskia!	idm	100.0	glitch	100.0	ambient	83.0	experimental	61.0	abstract	44.0
Harold van Lennep	chillout	100.0	House	100.0	idm	100.0	deep house	100.0	All	100.0
Marching Dynamics	idm	100.0	dubstep	63.0	industrial	50.0	electronic	47.0	experimental	43.0
Skytree	idm	100.0	ambient	61.0	electronic	58.0	electronica	40.0	trip-hop	36.0
Gladkill	dubstep	100.0	idm	100.0	glitch	100.0	electronic	50.0	mad-hop	38.0
Nuuro	idm	100.0	electronic	60.0	indietronica	54.0	electronica	47.0	pop	27.0
Bichi	idm	100.0	glitch	72.0	electronic	49.0	electronica	47.0	experimental	42.0
Bauri	idm	100.0	ambient	35.0	electronic	32.0	downtempo	30.0	electronica	23.0
Fur	idm	100.0	post-punk	62.0	chill	39.0	punk	39.0	ambient	39.0
MD	idm	100.0	electronic	87.0	techno	41.0	glitch	32.0	m3rck	28.0
Aspen	idm	100.0	electronic	76.0	electronica	68.0	minimal	63.0	New Zealand	57.0
MDK	idm	100.0	electronic	88.0	dubstep	63.0	Hip-Hop	38.0	punk	25.0
Lucidstatic	idm	100.0	breakcore	97.0	Rhythmic Noise	79.0	industrial	67.0	electronic	19.0
Karsten Pflum	idm	100.0	electronic	56.0	experimental	41.0	dubstep	30.0	electronica	15.0
JDSY	idm	100.0	electronic	71.0	experimental	65.0	glitch	59.0	electropop	36.0
Aerosol	idm	100.0	electronic	96.0	shoegaze	96.0	ambient	87.0	experimental	57.0
M.E.S.H.	idm	100.0	electronic	67.0	seen live	45.0	techno	45.0	Ambient Techno	45.0
Crunch	idm	100.0	glitch	52.0	electronic	37.0	industrial	32.0	hardcore	27.0
Alex Banks	electronic	100.0	techno	100.0	idm	100.0	experimental	88.0	electronica	63.0
Power-Pill	idm	100.0	electronic	72.0	techno	56.0	electronica	36.0	Richard D James	23.0
Memotone	idm	100.0	ambient	82.0	electronic	73.0	downtempo	64.0	beats	37.0
Riow Arai	electronic	100.0	idm	100.0	japanese	86.0	breakbeat	43.0	hip hop	36.0
Millipede	idm	100.0	ambient	73.0	industrial	66.0	experimental	38.0	dark ambient	38.0
Defrag	idm	100.0	dubstep	77.0	glitch	70.0	experimental	50.0	breakcore	48.0
Kidkanevil & Daisuke Tanabe	idm	100.0	glitch	56.0	glitch-hop	45.0	ambient	23.0	Tokyo Chill	23.0
Modul	idm	100.0	minimal	90.0	electronic	85.0	ambient	70.0	glitch	53.0
mujuice + dzhem	idm	100.0	experimental	62.0	minimal	62.0	ambient	59.0	acid jazz	39.0
Polinski	idm	100.0	electronic	96.0	glitch	73.0	noise	55.0	dance	41.0
30[eks]	idm	100.0	russian	43.0	ambient	41.0	electronic	36.0	acid jazz	21.0
Coax	idm	100.0	electronic	35.0	hardcore	27.0	abstract	27.0	monotonik	20.0
Offshore	idm	100.0	ninja tune	84.0	electronic	67.0	seen live	34.0	dubstep	34.0
Fractional	idm	100.0	breakcore	80.0	experimental	47.0	electronic	32.0	tympanik audio	19.0
Terminal Sound System	idm	100.0	electronic	71.0	glitch	69.0	experimental	65.0	ambient	63.0
Balil	idm	100.0	electronic	83.0	techno	68.0	ambient	65.0	electronica	42.0
Zunzagi	idm	100.0	electronic	60.0	experimental	50.0	russian	44.0	glitch	40.0
Benge	idm	100.0	ambient	91.0	electronic	63.0	experimental	38.0	electronica	29.0
Legiac	idm	100.0	ambient	64.0	experimental	34.0	downtempo	23.0	electronic	16.0
Vesna	idm	100.0	pagan metal	47.0	downtempo	38.0	folk metal	30.0	electronic	27.0
Flaque	idm	100.0	ambient	86.0	electronic	39.0	experimental	34.0	glitch	20.0
Kilowatts & Vanek	idm	100.0	electropop	59.0	glitch	53.0	electronica	48.0	downtempo	48.0
Asonat	idm	100.0	downtempo	86.0	ambient	62.0	electronic	43.0	icelandic	15.0
Mr. 76ix	idm	100.0	experimental	52.0	glitch	38.0	electronic	32.0	electronica	32.0
Run_Return	idm	100.0	ambient	58.0	electronic	40.0	instrumental	29.0	n5MD	25.0
Barry Lynn	idm	100.0	dubstep	71.0	dub	37.0	electronic	32.0	planet mu	23.0
Mendelayev	idm	100.0	Drum and bass	74.0	breakcore	53.0	experimental	47.0	russian	35.0
Badun	idm	100.0	electronic	71.0	glitch	59.0	future-jazz	42.0	jazz	26.0
Naono	idm	100.0	ambient	99.0	downtempo	69.0	electronica	53.0	chill out	36.0
Beak	idm	100.0	electronic	77.0	netlabel	48.0	ambient	39.0	electronica	29.0
Frank Riggio	idm	100.0	experimental	88.0	french	56.0	electronica	52.0	electronic	44.0
Oil 10	idm	100.0	ambient	91.0	electronic	82.0	electronica	46.0	minimal techno	40.0
Raoul Sinier	idm	100.0	glitch	68.0	experimental	64.0	Hip-Hop	28.0	electronic	22.0
Jackson	electronica	100.0	idm	100.0	electronic	43.0	Warp	43.0	punk rock	43.0
Roel Funcken	idm	100.0	dubstep	76.0	experimental	49.0	electronic	34.0	glitch	28.0
Aphorism	idm	100.0	industrial	60.0	ambient	48.0	electronic	40.0	dark ambient	36.0
Autopilot	idm	100.0	dubstep	82.0	ambient	54.0	electronic	47.0	chillout	44.0
Jello	idm	100.0	electronic	47.0	ambient	43.0	electronica	38.0	downtempo	25.0
Saje	chillout	100.0	electronic	100.0	idm	100.0	Decouverte	100.0	\N	0.0
Quinoline Yellow	idm	100.0	electronic	61.0	glitch	46.0	skam	42.0	electronica	36.0
Ultre	idm	100.0	experimental	79.0	glitch	79.0	electronic	69.0	abstract	27.0
Fugenn & The White Elephants	idm	100.0	electronic	53.0	experimental	44.0	japanese	27.0	glitch	27.0
Auditory Canvas	idm	100.0	downtempo	75.0	chillout	65.0	ambient	65.0	ambient downtempo	35.0
Novel 23	idm	100.0	electronic	34.0	ambient	29.0	russian	29.0	downtempo	25.0
Speelburg	electronic	100.0	electronica	100.0	electropop	100.0	downtempo	100.0	House	100.0
Future 3	idm	100.0	electronic	74.0	ambient	74.0	downtempo	64.0	danish	37.0
Kinesthesia	idm	100.0	electronic	63.0	ambient	63.0	industrial	54.0	techno	38.0
Amorph	idm	100.0	ambient	84.0	electronic	44.0	glitch	36.0	electronica	28.0
Bitstream	idm	100.0	electronic	69.0	electro	50.0	experimental	42.0	electronica	36.0
Fizzarum	idm	100.0	electronic	36.0	ambient	29.0	russian	24.0	electronica	21.0
Semiomime	idm	100.0	ambient	75.0	experimental	55.0	modern classical	33.0	merck	20.0
Point 7	idm	100.0	toytronic	39.0	electronic	37.0	glitch	35.0	ambient	29.0
Damiak	idm	100.0	post-rock	65.0	electronic	40.0	n5MD	30.0	ambient	20.0
Yvat	idm	100.0	glitch	71.0	electronic	41.0	experimental	39.0	minimal	25.0
Your Infamous Harp	idm	100.0	glitch hop	83.0	electronic	71.0	glitch	53.0	indietronica	42.0
Alka	idm	100.0	ambient	67.0	electronic	49.0	melodical ambient	34.0	melodical idm	34.0
Michael Fakesch	idm	100.0	electronic	77.0	funk	71.0	electronica	53.0	dance	36.0
Nego do Borel	nu jazz	100.0	soul	100.0	idm	100.0	Horrorcore	100.0	funk ostentação	100.0
Fusedmarc	idm	100.0	electronic	81.0	lithuanian	76.0	ambient	49.0	trip-hop	44.0
Eight Frozen Modules	idm	100.0	breakcore	68.0	glitch	61.0	experimental	50.0	electronic	37.0
ENV(itre)	idm	100.0	ambient	52.0	electronic	45.0	trip-hop	30.0	electronica	23.0
Apparent Symmetry	idm	100.0	ambient	84.0	Abstrakt Reflections	47.0	haunting	33.0	depressing	33.0
Alexandroid	idm	100.0	electronic	45.0	ambient	40.0	electronica	20.0	experimental	20.0
10-20	idm	100.0	electronic	66.0	ambient	66.0	dub	52.0	experimental	45.0
Lexaunculpt	idm	100.0	glitch	77.0	electronic	52.0	abstract	40.0	ambient	38.0
erast	idm	100.0	electronic	72.0	electronica	43.0	ambient	40.0	cyberpunk	32.0
Electronic Noise Controller	idm	100.0	ambient	92.0	experimental	62.0	electronic	41.0	avantgarde	18.0
Mindex	idm	100.0	electronic	75.0	ambient	75.0	downtempo	67.0	chillout	50.0
Plat	idm	100.0	electronic	60.0	ambient	55.0	experimental	41.0	downtempo	32.0
Dave Monolith	idm	100.0	Acid	100.0	braindance	88.0	electronic	75.0	seen live	13.0
Studio Pankow	idm	100.0	ambient	84.0	electronic	68.0	minimal	52.0	electronica	36.0
Exillon	idm	100.0	Acid	53.0	breakcore	53.0	electronic	28.0	ambient	22.0
Norken	idm	100.0	electronic	93.0	House	58.0	deep house	58.0	electronica	50.0
Electricwest	ambient	100.0	idm	100.0	electronic	60.0	instrumental	34.0	experimental	27.0
Jonson	downtempo	100.0	idm	100.0	chillout	86.0	ambient	86.0	electronic	43.0
Zeller	idm	100.0	industrial	68.0	experimental	67.0	breakcore	57.0	breakbeat	46.0
Syndrone	idm	100.0	glitch	40.0	electronic	34.0	m3rck	25.0	techno	22.0
A.CHAL	electronic	100.0	trip-hop	100.0	experimental	100.0	idm	100.0	abstract hip-hop	100.0
substanz-t	idm	100.0	ambient	91.0	downtempo	63.0	electronic	32.0	hymen	32.0
Mothboy	idm	100.0	breakcore	73.0	electronic	53.0	noise	44.0	trip-hop	41.0
Black Dog Productions	idm	100.0	electronica	78.0	techno	78.0	electronic	67.0	ambient	62.0
Seven Ark	idm	100.0	electronic	40.0	glitch	36.0	downtempo	33.0	ambient	25.0
duo505	idm	100.0	electronic	97.0	electronica	45.0	indietronica	45.0	morr music	34.0
DNN	idm	100.0	ambient	69.0	glitch	56.0	downtempo	49.0	electronic	43.0
K.G.Kid	electronic	100.0	idm	100.0	breakcore	91.0	post-rock	86.0	Drum and bass	67.0
Spyweirdos	idm	100.0	glitch	73.0	ambient	70.0	experimental	64.0	electronic	56.0
l'ombre	idm	100.0	industrial	63.0	ambient	60.0	experimental	38.0	ant-zen	30.0
Araya	idm	100.0	ambient	74.0	electronic	35.0	chill out	18.0	benbecula	18.0
Drøn	idm	100.0	ambient	81.0	downtempo	62.0	electronic	43.0	chillout	27.0
City Rain	idm	100.0	ambient	71.0	experimental	53.0	electro	53.0	downtempo	42.0
Tom Burbank	idm	100.0	glitch-hop	93.0	experimental	71.0	electronic	56.0	planet mu	49.0
0edit	ambient	100.0	idm	100.0	electronic	75.0	cyberpunk	75.0	downtempo	25.0
Bradley Strider	idm	100.0	electronic	72.0	techno	50.0	Rephlex	39.0	Richard D James	37.0
OOO	idm	100.0	industrial black metal	65.0	experimental	53.0	black metal	48.0	electronic	33.0
Skanfrom	idm	100.0	electronic	62.0	electronica	39.0	morr music	39.0	electro	34.0
Aligning Minds	idm	100.0	electronic	60.0	downtempo	60.0	ambient	55.0	chillout	20.0
Plaid & Bob Jaroc	idm	100.0	electronic	85.0	glitch	47.0	electronica	39.0	british	39.0
Huron	idm	100.0	ambient	96.0	electronic	50.0	glitch	30.0	electronica	25.0
hyi	idm	100.0	glitch	75.0	breakcore	38.0	furry	38.0	Renard	38.0
Secret Frequency Crew	idm	100.0	electronic	60.0	ambient	41.0	electro	19.0	glitch	19.0
Death by Panda	electronic	100.0	idm	100.0	post-rock	95.0	ambient	84.0	electronica	34.0
Affelaye	chillout	100.0	idm	100.0	bass	100.0	electronic	50.0	under 2000 listeners	50.0
Subplaid	electronic	100.0	idm	100.0	jungle	100.0	breakcore	100.0	under 2000 listeners	100.0
Accelera Deck	idm	100.0	ambient	63.0	glitch	63.0	shoegaze	30.0	morr music	19.0
Famine	idm	100.0	breakcore	70.0	hardcore	54.0	glitch	47.0	black metal	39.0
Tokee	idm	100.0	experimental	84.0	electronic	65.0	ambient	60.0	glitch	50.0
Damero	idm	100.0	minimal	67.0	electronica	62.0	indie	53.0	downtempo	53.0
Slidecamp	electronic	100.0	idm	100.0	downtempo	67.0	glitch	67.0	ambient	50.0
Pandora's Black Book	idm	100.0	dark ambient	54.0	ambient	43.0	experimental	40.0	Drum and bass	34.0
Freaky Chakra	idm	100.0	electronic	84.0	trance	67.0	ambient	67.0	earthshaking	50.0
Sincere Trade	idm	100.0	glitch	57.0	ambient	41.0	electronic	34.0	Canadian	18.0
Milinal	idm	100.0	glitch	57.0	experimental	50.0	electronic	38.0	downtempo	32.0
Ahnst Anders	idm	100.0	ambient	87.0	industrial	82.0	Rhythmic Noise	50.0	dark ambient	35.0
Com.a	idm	100.0	breakcore	75.0	electronic	72.0	glitch	46.0	japanese	29.0
Koordinate Of Wonders	idm	100.0	electronic	50.0	downtempo	48.0	belarus	46.0	electronica	26.0
Known Rebel	idm	100.0	ambient	66.0	dark ambient	48.0	tympanik audio	40.0	electronica	18.0
Zinovia	ambient	100.0	idm	100.0	downtempo	56.0	electronic	50.0	tympanik audio	39.0
Weave	idm	100.0	australian	80.0	electronic	50.0	indie pop	40.0	downtempo	40.0
Tstewart	idm	100.0	electronic	77.0	ambient	42.0	trip hop	42.0	electronica	36.0
3tronik	idm	100.0	electronic	54.0	ambient	44.0	glitch	44.0	electronica	34.0
Boc Scadet	idm	100.0	electronic	50.0	ambient	47.0	chillout	27.0	electronica	24.0
Electric Company	idm	100.0	electronic	82.0	ambient	50.0	experimental	32.0	electronica	19.0
Loden	idm	100.0	electronic	69.0	downtempo	50.0	experimental	46.0	glitch-hop	14.0
Manual & Syntaks	idm	100.0	ambient	71.0	electronica	30.0	drone	17.0	spacey	17.0
BUN	electronic	100.0	idm	100.0	japanese	50.0	instrumental hip-hop	25.0	beats	25.0
o9	idm	100.0	glitch	60.0	electronic	56.0	experimental	41.0	ambient	38.0
Miyuki	idm	100.0	future garage	100.0	ambient	88.0	electronic	75.0	glitch	63.0
Jérôme Chassagnard	idm	100.0	ambient	98.0	electronic	50.0	electro	25.0	down-tempo	20.0
i-fls	electronic	100.0	idm	100.0	under 2000 listeners	100.0	japanese	50.0	happy	50.0
Miles Tilmann	ambient	100.0	idm	100.0	electronic	63.0	electro	57.0	electronica	32.0
Chaos A.D.	idm	100.0	electronic	62.0	Acid	46.0	techno	37.0	Rephlex	21.0
Mad EP	idm	100.0	experimental	48.0	electronic	45.0	Hip-Hop	42.0	illbient	30.0
abyssal plains	idm	100.0	ambient	88.0	electronic	55.0	ambiOfusion	30.0	netaudio	17.0
OTX	idm	100.0	ambient	59.0	industrial	52.0	electronic	42.0	electro	24.0
Posthuman	idm	100.0	Melodic Death Metal	77.0	Modern Melodic Death Metal	62.0	death metal	47.0	groningen	47.0
Orange Dust	idm	100.0	Drill n Bass	65.0	electronic	42.0	breakcore	24.0	Drum n Bass	18.0
Tadd Mullinix	idm	100.0	experimental	87.0	electronic	74.0	ambient	54.0	Dabrye	34.0
Invisible Allies	idm	100.0	electronic	89.0	ambient	56.0	experimental	45.0	psychedelic	45.0
Enabl.ed	idm	100.0	glitch	69.0	ambient	28.0	experimental	28.0	abstract	7.0
Musicology	ambient	100.0	idm	100.0	electronic	84.0	techno	67.0	electronica	34.0
The Rip-Off Artist	idm	100.0	microhouse	84.0	electronic	50.0	House	34.0	glitch	34.0
Iqtu	idm	100.0	electronic	93.0	ambient	54.0	chillout	31.0	eerik inpuj sound	31.0
Galapagoose	idm	100.0	Mellow	75.0	electronic	50.0	dance	50.0	monome	50.0
Zegunder	idm	100.0	ambient	61.0	electronica	40.0	electronic	35.0	glitch	35.0
Jake Slazenger	idm	100.0	electronic	70.0	Warp	35.0	electro	30.0	downtempo	25.0
Metome	idm	100.0	japanese	80.0	electronic	60.0	Japanese Indie	60.0	J-Indie	40.0
Diagram of Suburban Chaos	idm	100.0	electronic	75.0	glitch	52.0	experimental	49.0	ambient	19.0
Atols	electronica	100.0	idm	100.0	electronic	75.0	japan	75.0	techno-pop	75.0
cubesato	electronic	100.0	idm	100.0	vWv	100.0	Cubesato	100.0	glitch	50.0
Orgatanatos	idm	100.0	glitch	67.0	ambient	34.0	glitchbient	34.0	post-digital music	34.0
Cathode	idm	100.0	ambient	68.0	electronic	56.0	electronica	32.0	Crust	24.0
Myrakaru	idm	100.0	electronic	45.0	ambient	34.0	electronica	28.0	estonian	23.0
The Great Mundane	idm	100.0	Hip-Hop	73.0	electronic	64.0	downtempo	55.0	electronica	46.0
HPC	idm	100.0	industrial	68.0	dark ambient	60.0	ambient	41.0	Rhythmic Noise	41.0
LAMBENT	idm	100.0	glitch	60.0	electronic	55.0	downtempo	25.0	beats	25.0
AZ-Rotator	idm	100.0	breakcore	77.0	electronic	33.0	industrial	27.0	glitch	27.0
Dwayne Sodahberk	idm	100.0	electronic	67.0	experimental	47.0	indie	34.0	swedish	34.0
Sektor	idm	100.0	h8000	71.0	metalcore	53.0	electronica	53.0	electronic	48.0
klyxn	idm	100.0	ambient	77.0	industrial	50.0	dark ambient	48.0	Made for Dark Souls	42.0
Atiq & Enk	idm	100.0	dubstep	72.0	breakcore	72.0	electronic	50.0	Raggacore	43.0
Celine	idm	100.0	trip-hop	65.0	electronic	48.0	electronica	36.0	french	30.0
The Seasons	electronic	100.0	idm	100.0	future jazz	100.0	experimental	60.0	metalcore	20.0
Tigrics	idm	100.0	electronic	47.0	glitch	39.0	minimal	35.0	ambient	31.0
Poordream	idm	100.0	downtempo	75.0	ambient	70.0	experimental	55.0	electronica	15.0
Sovacusa	idm	100.0	electronic	34.0	ambient	34.0	glitch	32.0	electronica	10.0
moderat feat paul st hilaire	idm	100.0	dub	59.0	electronica	34.0	ambient	34.0	glitch	34.0
with prison cell was embraced*	idm	100.0	new rave	76.0	breakcore	60.0	Drill n Bass	40.0	Emo Electronics	40.0
Team Shadetek	idm	100.0	Hip-Hop	65.0	Grime	60.0	electronic	55.0	hip hop	35.0
Mimetic	idm	100.0	seen live	78.0	noise	55.0	industrial	52.0	experimental	43.0
Meander	idm	100.0	experimental	75.0	breakcore	75.0	hardcore	57.0	industrial hardcore	50.0
Angina P	idm	100.0	ambient	40.0	Drum and bass	40.0	electronic	16.0	experimental	11.0
Soulsonic	idm	100.0	electronic	47.0	experimental	20.0	downtempo	20.0	big beat	14.0
.Tape.	idm	100.0	electronic	75.0	electronica	75.0	glitch	59.0	abstract	42.0
Bartel	ambient	100.0	idm	100.0	acid jazz	72.0	seen live	58.0	piano	43.0
Tapage & Meander	idm	100.0	experimental	50.0	breakcore	40.0	glitch	30.0	electronic	27.0
Fred Avril	idm	100.0	electronica	75.0	electropop	75.0	techno	50.0	electronic	25.0
Broken Fabiola	idm	100.0	Rhythmic Noise	75.0	dark electro	54.0	noise	50.0	minimal	47.0
Mus.hiba	electronic	100.0	idm	100.0	japanese	67.0	ambient	67.0	experimental	67.0
Koalips	idm	100.0	ambient	87.0	russian	63.0	electronic	32.0	electronica	32.0
Data Rebel	idm	100.0	electronic	80.0	kahvi	40.0	ambient	20.0	pretty	20.0
:10:	idm	100.0	haunting	58.0	depressing	53.0	industrial	50.0	electronic	37.0
Odori	idm	100.0	ambient	89.0	electronic	34.0	experimental	25.0	electronica	14.0
Yaporigami	idm	100.0	glitch	86.0	breakcore	58.0	8bit	29.0	abstract	29.0
mergrim	idm	100.0	electronic	74.0	glitch	60.0	japanese	47.0	electronica	40.0
Unit	idm	100.0	ambient	77.0	electronic	24.0	new wave	18.0	post-punk	18.0
Anshlavs	idm	100.0	ambient	75.0	glitch	50.0	industrial	43.0	electronic	25.0
Beneva vs. Clark Nova	idm	100.0	electronic	74.0	glitch	70.0	downtempo	27.0	experimental	14.0
Stud	idm	100.0	ambient	56.0	electronic	41.0	kahvi collective	26.0	Progressive rock	19.0
IG88	idm	100.0	downtempo	75.0	glitch	75.0	ambient	59.0	electronica	34.0
Dzhem	idm	100.0	russian	58.0	Hip-Hop	55.0	underground hip-hop	46.0	instrumental hip-hop	46.0
Xingu Hill	idm	100.0	experimental	81.0	ambient	64.0	electronic	59.0	dark ambient	57.0
Okamotonoriaki	idm	100.0	electronic	70.0	downtempo	50.0	electronica	40.0	japanese	30.0
Not Breathing	idm	100.0	electronic	87.0	industrial	79.0	noise	53.0	experimental	53.0
Avay	downtempo	100.0	idm	100.0	Eargasm	100.0	abstract hip-hop	100.0	\N	0.0
Unlockedoor	idm	100.0	russian	46.0	electronic	28.0	electronica	22.0	seen live	19.0
Vittoria Fleet	idm	100.0	trip-hop	84.0	downtempo	84.0	abstract	34.0	seen live	17.0
Mika Goedrijk	idm	100.0	experimental	59.0	ambient	40.0	electronic	37.0	ant-zen	22.0
Sofus Forsberg	idm	100.0	electronic	93.0	downtempo	47.0	electronica	39.0	seen live	16.0
Atmogat	idm	100.0	electronic	55.0	experimental	35.0	chillout	26.0	instrumental	18.0
Fisk Industries	idm	100.0	electronic	70.0	electronica	35.0	chillout	15.0	highpoint lowlife	10.0
Vaetxh	idm	100.0	glitch	86.0	experimental	79.0	dubstep	50.0	Sci-fluidy IDM	43.0
(ghost)	idm	100.0	ambient	90.0	electronic	40.0	instrumental	10.0	experimental	10.0
C.H. District	idm	100.0	experimental	60.0	electronic	41.0	seen live	23.0	ambient	23.0
Kimyan Law	electronic	100.0	idm	100.0	Drum and bass	100.0	dnb	100.0	Wicked	100.0
ML	idm	100.0	electronic	34.0	ambient	30.0	n5MD	27.0	sutemos	14.0
ISH	electronic	100.0	ambient	100.0	idm	100.0	Disco	75.0	swedish	75.0
Kero	idm	100.0	electronic	70.0	experimental	50.0	glitch	50.0	shitkatapult	20.0
Soehngen	downtempo	100.0	idm	100.0	ambient	50.0	glitch	50.0	chill out	50.0
Salfetky	idm	100.0	experimental	36.0	electronic	26.0	russian	18.0	russian idm	18.0
Dfalt	Hip-Hop	100.0	idm	100.0	electronic	34.0	electronica	34.0	trip-hop	34.0
bansheebeat	idm	100.0	electronic	60.0	electronica	60.0	sputnikcore	60.0	btbam suck	40.0
Cosmos70	electronic	100.0	idm	100.0	under 2000 listeners	34.0	bee record	34.0	trip-hop	17.0
Technicolor	electronica	100.0	idm	100.0	electronic	67.0	seen live	67.0	indie	67.0
Sine Weaver	idm	100.0	electronic	54.0	downtempo	47.0	ambient	39.0	experimental	16.0
EEDL	idm	100.0	electronic	42.0	experimental	35.0	electronica	21.0	glitch-hop	18.0
Sensiva	ambient	100.0	idm	100.0	electronic	61.0	electronica	40.0	downtempo	35.0
Steinvord	idm	100.0	Acid	100.0	braindance	86.0	electronic	79.0	breakcore	65.0
IP Neva	idm	100.0	ambient	73.0	experimental	67.0	glitch	63.0	darkside soundscapes	32.0
Dialect	idm	100.0	electronic	60.0	rock	40.0	ambient	40.0	experimental	40.0
Pix	idm	100.0	ambient	90.0	electronic	50.0	indie	40.0	electronica	30.0
Gouseion	idm	100.0	glitch	77.0	experimental	53.0	glitch-hop	36.0	experimental electronic	36.0
Phylum Sinter	idm	100.0	glitch	57.0	electronic	37.0	experimental	20.0	glitchtronica	14.0
Gareth Clarke	idm	100.0	breakcore	38.0	ambient	23.0	electronic	19.0	sublight records	15.0
Nonplace Urban Field	idm	100.0	ambient	92.0	experimental	84.0	electronic	75.0	dub	42.0
Tyme. × Tujiko	electronic	100.0	idm	100.0	female vocalists	60.0	japanese	40.0	experimental	40.0
Fujiyama	Hip-Hop	100.0	electronica	100.0	jazz	100.0	japanese	100.0	downtempo	100.0
Kritical Audio	idm	100.0	ambient	65.0	electronic	58.0	electronica	29.0	Lo-Fi	15.0
Lego Feet	idm	100.0	electronic	45.0	skam	42.0	techno	36.0	experimental	15.0
Jvox	idm	100.0	ambient	49.0	electronic	34.0	glitch	25.0	downtempo	19.0
The Fear Ratio	idm	100.0	techno	70.0	electronic	54.0	bass	24.0	Ambient Techno	16.0
Freeze Etch	idm	100.0	ambient	90.0	noise	56.0	experimental	52.0	technoid	32.0
Yujen	chillout	100.0	electronic	100.0	ambient	100.0	idm	100.0	\N	0.0
Wraetlic	electronic	100.0	idm	100.0	techno	50.0	experimental	25.0	minimal	25.0
Mr. Rogers	idm	100.0	breakbeat	100.0	singer-songwriter	67.0	oldies	67.0	kids	67.0
Multiple	idm	100.0	Soundtrack	50.0	\N	0.0	\N	0.0	\N	0.0
I Broke My Robot	idm	100.0	breakcore	100.0	glitch	74.0	electronic	43.0	experimental	43.0
dontleaveme	idm	100.0	electronic	67.0	sad	67.0	lovewave	67.0	remixes	50.0
medkit	idm	100.0	experimental	65.0	glitch	65.0	electronic	30.0	electronica	20.0
Synaecide	idm	100.0	breakcore	64.0	electronic	37.0	ambient	37.0	Drum and bass	23.0
Disjecta	idm	100.0	experimental	60.0	electronica	52.0	Warp	48.0	electronic	44.0
Robert Logan	idm	100.0	electronic	62.0	glitch	62.0	dark ambient	54.0	instrumental	39.0
King Britt & Tim Motzer	Soundtrack	100.0	chillout	100.0	electronic	100.0	idm	100.0	All	100.0
Nerve Filter	idm	100.0	industrial	64.0	ebm	64.0	electronic	60.0	experimental	32.0
Octogen	electronic	100.0	ambient	100.0	minimal	100.0	idm	100.0	electronica	72.0
Kingbastard	idm	100.0	electronic	82.0	experimental	73.0	chillout	55.0	alternative	28.0
Xhale	idm	100.0	electronic	71.0	ambient	42.0	experimental	24.0	netlabel	24.0
Springintgut	idm	100.0	electronica	58.0	electronic	43.0	ambient	43.0	happy	43.0
Intricate	idm	100.0	electronica	55.0	electronic	41.0	seen live	23.0	glitch	23.0
Sound Wave Pressure	idm	100.0	ambient	72.0	experimental	55.0	industrial	41.0	electronic	34.0
Preston	idm	100.0	ambient	65.0	experimental	36.0	glitch	36.0	pop punk	24.0
CH District	idm	100.0	industrial	76.0	seen live	48.0	experimental	44.0	electronic	32.0
Soul Center	idm	100.0	techno	80.0	minimal	80.0	electronic	60.0	downtempo	50.0
Flutterspot	idm	100.0	ambient	79.0	electronic	65.0	monotonik	36.0	experimental	15.0
The Marcia Blaine School For Girls	idm	100.0	electronic	24.0	ambient	22.0	highpoint lowlife	12.0	Scottish	8.0
Skrypnyk	electronic	100.0	idm	100.0	Canadian	60.0	OC ReMix	60.0	video game remixes	60.0
The_Empath	ambient	100.0	industrial	100.0	idm	100.0	noise	75.0	powernoise	44.0
Adapter	idm	100.0	chillout	53.0	ambient	48.0	electronic	43.0	m-tronic	22.0
adamned.age	idm	100.0	ambient	87.0	electronica	27.0	electronic	20.0	glitch	20.0
Dither	idm	100.0	experimental	50.0	noise	40.0	ambient	30.0	dark ambient	30.0
Low Profile Society	ambient	100.0	idm	100.0	electronic	50.0	electronica	25.0	toytronic	25.0
HOLOGRAM_	idm	100.0	industrial	78.0	electronic	45.0	dubstep	45.0	glitch	45.0
Arovane & Phonem	idm	100.0	electronic	45.0	ambient	39.0	chillout	17.0	electronica	17.0
Nonima	idm	100.0	glitch	83.0	experimental	59.0	electronic	49.0	ambient	42.0
Syl Kougaï	idm	100.0	experimental	64.0	electronic	60.0	electronica	50.0	dark	20.0
Waqs	idm	100.0	ambient	58.0	glitch	58.0	breakcore	58.0	lolicore	43.0
Mewark	idm	100.0	electronic	79.0	ambient	61.0	minimal	53.0	experimental	44.0
Nseven	idm	100.0	ambient	78.0	downtempo	32.0	electronic	23.0	calm	19.0
Utabi	idm	100.0	chiptune	84.0	electronic	42.0	glitch	42.0	experimental	25.0
Mystery Cave	trip-hop	100.0	soul	100.0	experimental	100.0	abstract	100.0	groove	100.0
Boy Scout	experimental	100.0	Lo-Fi	100.0	chillwave	100.0	Chillcore	100.0	Trashwave	100.0
Safar Barlik	lofi	100.0	chillwave	100.0	lebanese	100.0	Beirut	100.0	arabic	50.0
Mellor	chillout	100.0	electronica	100.0	indie	100.0	ambient	100.0	indie rock	100.0
Abstract Cannon	Hip-Hop	100.0	indie	100.0	soul	100.0	instrumental	100.0	rap	100.0
JUNIOR MUNGUS	trip-hop	100.0	experimental	100.0	instrumental hip-hop	100.0	chillwave	100.0	abstract hip-hop	100.0
Bordeaux	chillwave	100.0	electronic	50.0	dreampop	50.0	\N	0.0	\N	0.0
Св Хутор Vs Ёлочные Игрушки	electronic	100.0	chillwave	100.0	experimental	72.0	idm	58.0	psychedelic	43.0
Ambient Lounge All Stars	chillout	100.0	ambient	100.0	lounge	100.0	chillwave	100.0	Electro-ambient	100.0
Brother Mynor	Hip-Hop	100.0	chillout	100.0	electronic	100.0	electronica	100.0	chill	100.0
Earthquake Island	chillout	100.0	electronic	100.0	indie	100.0	downtempo	100.0	chillwave	100.0
BennCart	Hip-Hop	100.0	electronic	100.0	instrumental	100.0	beats	100.0	polish	100.0
ϺƵFVʞɅ	experimental	100.0	chillwave	100.0	witch house	100.0	\N	0.0	\N	0.0
Alper Atrek	chillwave	100.0	electronic	67.0	idm	34.0	glitch	34.0	glitch-hop	34.0
Sunny & Gabe	Lo-Fi	100.0	chillwave	100.0	\N	0.0	\N	0.0	\N	0.0
The Letter Box Project	chillwave	100.0	psych pop	100.0	glo-fi	100.0	psychedelic	80.0	ambient	60.0
Rolemodel	electronic	100.0	dream pop	100.0	chiptune	100.0	synthpop	100.0	chillwave	100.0
Kaili	downtempo	100.0	indietronica	100.0	chillwave	100.0	\N	0.0	\N	0.0
Alvin and Lyle	ambient	100.0	dreampop	100.0	under 2000 listeners	100.0	chillwave	100.0	\N	0.0
The Shout Aways	indie	100.0	Lo-Fi	100.0	chillwave	100.0	lesser known yet streamable artists	50.0	under 2000 listeners	25.0
Everglade	chillwave	100.0	alt rock	50.0	balearic	50.0	\N	0.0	\N	0.0
「サンセット Ｎｅｔｗｏｒｋ❾❶」	electronic	100.0	chill	100.0	ambient	100.0	experimental	100.0	chillwave	100.0
Nature's Kid	electronica	100.0	under 2000 listeners	100.0	chillwave	100.0	sample	100.0	glo-fi	100.0
Leavves	indie	100.0	grindcore	100.0	synthpop	100.0	chillwave	100.0	VW BUS rides down sunset Boulevard	100.0
Clockart	chillwave	100.0	indie pop	25.0	Lo-Fi	25.0	shoegaze	25.0	dreampop	25.0
Rod Ladgrove	chillwave	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Girl Milk	noise	100.0	electronic	100.0	ambient	100.0	experimental	100.0	Lo-Fi	100.0
Pro-Spec	ambient	100.0	lounge	100.0	under 2000 listeners	100.0	chillwave	100.0	elevator music	100.0
CHAZZZY	electronic	100.0	chill	100.0	chillwave	100.0	vaporwave	100.0	\N	0.0
WARMTHIGHS	experimental	100.0	Lo-Fi	100.0	instrumental hip-hop	100.0	chillwave	100.0	electronic	50.0
монах на спидах	chillwave	100.0	under 2000 listeners	34.0	trap	34.0	Ukrainian	34.0	under 1000 listeners	34.0
Emil Rottmayer	chillwave	100.0	vaporwave	100.0	\N	0.0	\N	0.0	\N	0.0
Wave Department	chillwave	100.0	electronic	63.0	nu disco	63.0	glo-fi	38.0	magicpop	25.0
Psittacines	chillwave	100.0	Lo-Fi	60.0	electronic	40.0	indietronica	20.0	under 2000 listeners	20.0
Maundrie Fox	electronic	100.0	beats	100.0	chillwave	100.0	\N	0.0	\N	0.0
Dessin Bizarre	instrumental	100.0	lounge	100.0	chillwave	100.0	electronica	50.0	jazz	50.0
ewonee .	Hip-Hop	100.0	hip hop	100.0	instrumental	100.0	Dope	100.0	NYC	100.0
XX△N△XX	chillout	100.0	chillwave	100.0	future chillout	100.0	\N	0.0	\N	0.0
Glass Random	alternative	100.0	Lo-Fi	100.0	shoegaze	100.0	chillwave	100.0	Winnipeg	100.0
nakayaan	indie	100.0	indie pop	100.0	indie rock	100.0	Lo-Fi	100.0	Japanese Indie	100.0
Abillion	chillout	100.0	electronic	100.0	chillwave	100.0	electronica	50.0	indie	50.0
Mkaio	ambient	100.0	downtempo	100.0	chillwave	100.0	chillout	50.0	electronic	50.0
I Va	chillwave	100.0	Lo-Fi	88.0	electronic	63.0	russian	50.0	hypnagogic pop	25.0
OnThe88	chillwave	100.0	California	34.0	los angeles	34.0	80s revival	34.0	electronic	17.0
Tapioca and The Flea	seen live	100.0	chillwave	100.0	\N	0.0	\N	0.0	\N	0.0
DVKID	chill	100.0	techno	100.0	bass	100.0	russian	100.0	instrumental hip-hop	100.0
Mr.Vtage	Disco	100.0	electronic	100.0	jazz	100.0	chill	100.0	lounge	100.0
Prismic Delight	chillwave	100.0	idm	50.0	ambiental	50.0	electronic	25.0	trip-hop	25.0
King Mob	electronic	100.0	indie	100.0	rock	100.0	punk	100.0	experimental	100.0
FISHDOCTOR	electropop	100.0	Surf	100.0	indiepop	100.0	under 2000 listeners	100.0	chillwave	100.0
Lazy Dre	experimental	100.0	trip hop	100.0	under 2000 listeners	100.0	chillwave	100.0	10s	100.0
Fragics	chillout	100.0	experimental	100.0	male vocalists	100.0	chillwave	100.0	try	100.0
Cedar Senior	chillwave	100.0	trance	50.0	electronic	50.0	dance	50.0	canada	50.0
Soop	electronic	100.0	electronica	100.0	electropop	100.0	indie	100.0	alternative	100.0
Backseat Dreamer	seen live	100.0	pop	100.0	ambient	100.0	experimental	100.0	under 2000 listeners	100.0
LESVILLES	chillwave	100.0	ambient	75.0	electronic	50.0	Lo-Fi	50.0	indie	25.0
Koyö	electronic	100.0	chillwave	100.0	ambient	50.0	atmospheric	50.0	newbreed	50.0
TapeHunter	Lo-Fi	100.0	chillwave	100.0	retrowave	100.0	vaporwave	100.0	electronic	50.0
Mvkxxx	electronic	100.0	chillwave	100.0	chillstep	100.0	\N	0.0	\N	0.0
Sun Glitters feat. Steffaloo	chillout	100.0	electronic	100.0	beautiful	100.0	chillwave	100.0	\N	0.0
Kodiak Fur	electronic	100.0	electropop	100.0	pop	100.0	Lo-Fi	100.0	dream pop	100.0
WORN PΔTH	electronic	100.0	pop	100.0	ambient	100.0	dance	100.0	free	100.0
Taught Abroad	chicago	100.0	chillwave	100.0	\N	0.0	\N	0.0	\N	0.0
eyeofzion	down tempo	100.0	trip hop	100.0	chillwave	100.0	blood ninjas	100.0	rather good stuff	100.0
Osc2x	synthpop	100.0	chillwave	100.0	\N	0.0	\N	0.0	\N	0.0
FLASH/LIGHTS	electronic	100.0	indie	100.0	pop	100.0	dance	100.0	Electro Pop	100.0
Zeph	idm	100.0	chillwave	100.0	witch house	100.0	escc9	100.0	emotronica	67.0
Flowers Or Razorwire	chillwave	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
MWTE	electronica	100.0	shoegaze	100.0	chillwave	100.0	\N	0.0	\N	0.0
Villa Kang	electronic	100.0	chillwave	100.0	discover	100.0	\N	0.0	\N	0.0
Youth Camp	Surf	100.0	jangle pop	100.0	shoegaze	100.0	dream pop	100.0	chillwave	100.0
Wayphaser	chillwave	100.0	electronic	34.0	indie	34.0	Electro Pop	34.0	male vocalist	34.0
Sexualobster	electronic	100.0	chill	100.0	classic	100.0	comedy	100.0	synthpop	100.0
EifiE	chillwave	100.0	electronic	67.0	ambient	67.0	hip hop	34.0	dream pop	34.0
fotosintez	chillwave	100.0	downtempo	50.0	Lo-Fi	50.0	vaporwave	50.0	\N	0.0
The Heather	indie pop	100.0	chillwave	100.0	glo-fi	100.0	dreamwave	67.0	pop	34.0
dreamcalls	chillwave	100.0	witch house	100.0	electronic	75.0	glow-fi	75.0	electronica	25.0
Round Away	chillwave	100.0	Memorygaze	100.0	summergaze	100.0	electronic	67.0	under 2000 listeners	67.0
Horse Head & Ghoste	Hip-Hop	100.0	electronic	100.0	chill	100.0	rap	100.0	experimental	100.0
Being Borings	electronica	100.0	chillwave	100.0	nu disco	100.0	electro boogie	100.0	crue-l records	100.0
Tangles	chillwave	100.0	seen live	50.0	ambient	50.0	Scottish	50.0	glasgow	50.0
safeinhouses	chillout	100.0	electronic	100.0	ambient	100.0	synth pop	100.0	chillwave	100.0
Lingerie	seen live	100.0	80s	100.0	hard rock	100.0	hair metal	100.0	Brooklyn	100.0
TEEN DRUGS	80's	100.0	90's	100.0	chillwave	100.0	drag	100.0	vaporwave	100.0
Cripsy ▶	chillwave	100.0	Dream	75.0	electronic	50.0	witch house	50.0	experimental	25.0
Under Two Palms	electronic	100.0	chill	100.0	funk	100.0	chillwave	100.0	vaporwave	100.0
Lo Fang	electronic	100.0	indie	85.0	soul	66.0	experimental	48.0	electronica	32.0
WINDOZE98	chillwave	100.0	All	50.0	vaporwave	50.0	\N	0.0	\N	0.0
Assembly Of Dog	under 2000 listeners	100.0	chillwave	100.0	BIRP	100.0	\N	0.0	\N	0.0
Hykuu	ambient	100.0	chillwave	100.0	glo-fi	100.0	landscape	100.0	\N	0.0
Kitten Berry Crunch	electronic	100.0	electropop	100.0	chill	100.0	80s	100.0	new york	100.0
Kohi	chillout	100.0	electronic	100.0	indie	100.0	pop	100.0	ambient	100.0
CU SOON	psychedelic	100.0	lofi	100.0	chillwave	100.0	chillout	67.0	indietronica	67.0
quality cinema	dream pop	100.0	chillwave	100.0	electronic	50.0	indie	50.0	alternative	50.0
Andy & Zeus	electronic	100.0	psychedelic	100.0	chillwave	100.0	kosmische	100.0	beyondwithin	100.0
Alpha Beta Gamma	electronic	100.0	downtempo	100.0	dance	100.0	under 2000 listeners	100.0	chillwave	100.0
DBGE	ambient	100.0	downtempo	100.0	Lo-Fi	100.0	minimal	100.0	beautiful	100.0
SBMRGE	electronic	100.0	instrumental hip-hop	100.0	chillwave	100.0	\N	0.0	\N	0.0
BEΔCH HEΔRT	Lo-Fi	100.0	dream pop	100.0	chillwave	100.0	electronica	84.0	shoegaze	84.0
Rollercoasterwater	psychedelic	100.0	dreampop	100.0	chillwave	100.0	\N	0.0	\N	0.0
NØQ 9	electronic	100.0	beats	100.0	trap	100.0	chillwave	100.0	seapunk	100.0
YOURFEETSTOOBIG	pop	100.0	Lo-Fi	100.0	dream pop	100.0	under 2000 listeners	100.0	chillwave	100.0
Blazestation	Disco	100.0	chillwave	100.0	synth-pop	100.0	synthwave	100.0	\N	0.0
sue clyde	80s	100.0	alternative	100.0	synth pop	100.0	dream pop	100.0	synthpop	100.0
bessedof	Hip-Hop	100.0	hip hop	100.0	instrumental	100.0	underground hip-hop	100.0	instrumental hip-hop	100.0
SOLBOI	electronic	100.0	under 2000 listeners	100.0	chillwave	100.0	Ambient Electronica	100.0	futurebeats	100.0
Simone De Nauw	under 2000 listeners	100.0	chillwave	100.0	lounge music	100.0	special	100.0	good ones	100.0
SposhRock	Disco	100.0	electronic	100.0	indie	100.0	electro	100.0	dance	100.0
harry enfield	comedy	100.0	killing floor	67.0	Harry Enfield	67.0	madchester	34.0	parody	34.0
Dannii Minogue & The Soul Seekerz	Disco	100.0	female vocalists	100.0	electronic	34.0	Classical	34.0	jazz	34.0
Los Elegantes	indie	100.0	Garage Rock	100.0	mod	100.0	spanish	67.0	mierda	67.0
The Aardvarks	60s garage	100.0	psychedelic	67.0	Psychedelic Rock	67.0	mod	67.0	UK	34.0
MC Tunes	UK	100.0	Hip-Hop	67.0	male	67.0	hip hop	67.0	rap	67.0
Улицы	russian	100.0	pop	67.0	alternative	67.0	90s	67.0	indie	34.0
LUCY'S DRIVE	shoegaze	100.0	Japanese Shoegaze	100.0	electronic	34.0	electro	34.0	madchester	34.0
Sandkings	indie	100.0	seen live	34.0	pop	34.0	alternative	34.0	britpop	34.0
Smalltown Parade	mod revival	100.0	british	34.0	britpop	34.0	90s	34.0	madchester	34.0
Britpop	britpop	100.0	alternative	34.0	madchester	34.0	brit pop	34.0	\N	0.0
Vincent Lillis	irish	100.0	Rack and Ruin records	100.0	electronic	34.0	seen live	34.0	alternative	34.0
Hope Factory	shoegaze	100.0	madchester	34.0	guitar pop	34.0	indie	17.0	rock	17.0
Daisyblue	shoegaze	100.0	A-Gaze	67.0	indie pop	34.0	indie rock	34.0	twee pop	34.0
Chantal Richard	pop	100.0	Disco	34.0	electronic	34.0	Classical	34.0	jazz	34.0
Frantic V	Garage Rock	100.0	garage revival	100.0	garage rock revival	34.0	garage	34.0	Greek	34.0
Juzhin	trip-hop	100.0	downtempo	99.0	post-rock	95.0	downbeat	94.0	Progressive rock	91.0
Azoora	psychedelic	100.0	indie	90.0	creative commons	83.0	23 seconds	72.0	acoustic	61.0
That Uncertain Feeling	shoegaze	100.0	alternative rock	38.0	baggy	38.0	british	25.0	alternative	25.0
Tomzen	chillout	100.0	downtempo	75.0	Soundtrack	25.0	classic rock	25.0	instrumental	25.0
Fadela	new wave	100.0	ethno	100.0	rai	50.0	indie	25.0	alternative	25.0
Calm Palm Vapor	chicago	100.0	rock	25.0	experimental	25.0	dance	25.0	indiepop	25.0
Goodbye Mr Mackenzie	Scottish	100.0	rock	93.0	alternative	79.0	new wave	72.0	80s	58.0
Audioweb	britpop	100.0	rapcore	65.0	ragga	59.0	electronica	53.0	seen live	48.0
Bangkutaman	psychedelic folk-rock	100.0	rock	60.0	indonesian	60.0	folk	54.0	psychedelic	40.0
Malarze i Żołnierze	polish	100.0	rock	80.0	80s	60.0	alternative	60.0	indie pop	60.0
Adrian Solo	swiss	100.0	new wave	86.0	alternative	81.0	basel	81.0	indie pop	67.0
The Secret Goldfish	indie pop	100.0	Scottish	100.0	indie	60.0	scotland	40.0	indie rock	20.0
Crystal Method & The Chemical Brothers	electronic	100.0	electronica	40.0	dance	40.0	classic rock	20.0	Hip-Hop	20.0
Nautical William	UK	100.0	indie	60.0	80s	60.0	Sound of Leamington Spa	40.0	pop	20.0
daydrop	shoegaze	100.0	Japanese Shoegaze	55.0	A-Gaze	46.0	japanese	28.0	nu-gaze	19.0
EMF	90s	100.0	pop	88.0	electronic	76.0	rock	71.0	alternative	67.0
The Times	mod revival	100.0	new wave	89.0	mod	77.0	80s	59.0	british	59.0
Los Burros	spanish	100.0	pop	67.0	spanish pop	50.0	movida	50.0	post-punk	34.0
The Womb	indie	100.0	indie pop	75.0	23 seconds	71.0	netlabel	67.0	creative commons	67.0
John Squire	indie	100.0	genius	67.0	singer-songwriters who cant sing	50.0	britpop	34.0	Manchester	34.0
Veneno	Flamenco rock	100.0	Flamenco	84.0	spanish	50.0	Spanish Rock	50.0	Nuevo Flamenco	50.0
Sir John Betjeman	poetry	100.0	70s	34.0	male vocalists	34.0	Disco	17.0	electronic	17.0
Death By Sadie	shoegaze	100.0	indie	67.0	alternative rock	67.0	london	67.0	indie rock	50.0
Lovebugs	swiss	100.0	alternative	80.0	rock	68.0	britpop	68.0	switzerland	55.0
Quando Quango	synthpop	100.0	factory records	52.0	post-punk	48.0	80s	44.0	Manchester	44.0
Paint in Watercolour	shoegaze	100.0	japanese	48.0	dream pop	36.0	Japanese Shoegaze	24.0	madchester	16.0
Mysterymen	electro	100.0	synthpop	72.0	Disko B	43.0	electronic	29.0	dark disco	29.0
52nd Street	new wave	100.0	soul	94.0	80s	80.0	Disco	67.0	factory records	54.0
Ian Brown	indie	100.0	britpop	94.0	alternative	69.0	british	65.0	seen live	49.0
Urban Soul	House	100.0	deep house	63.0	soul	50.0	urban soul	38.0	composers	25.0
Fuzz Townshend	electronic	100.0	Disco	38.0	90s	38.0	glam	38.0	electronica	25.0
The Rosemarys	shoegaze	100.0	dream pop	57.0	indie pop	32.0	psychedelic	25.0	indie	19.0
Kalima	jazz	100.0	new wave	57.0	lounge	50.0	cabaret	38.0	factory records	32.0
Penelope Trip	indie	100.0	shoegaze	88.0	indie rock	25.0	indietronica	25.0	90s	25.0
Sensitize	trance	100.0	progressive trance	50.0	chillout	25.0	electronic	25.0	electronica	25.0
808 State	electronic	100.0	acid house	85.0	techno	67.0	House	54.0	electronica	42.0
Sub Sub	ambient	100.0	electronic	83.0	electronica	48.0	british	42.0	acid house	42.0
Johnny Marr + The Healers	britpop	100.0	british	78.0	alternative	78.0	rock	56.0	johnny marr	56.0
Plagues	grindcore	100.0	experimental	78.0	metalcore	56.0	hardcore	56.0	Sludge	45.0
Portrait Painters	swedish	100.0	seen live	45.0	indie pop	23.0	göteborg	23.0	pop	12.0
Wouter Bruys	Melancholism	100.0	instrumental	89.0	beautiful	78.0	dutch	78.0	Soundtrack	67.0
James	britpop	100.0	indie	86.0	alternative	66.0	seen live	54.0	british	50.0
Aimee Blackschleger	Soundtrack	100.0	instrumental	50.0	american	50.0	anime	38.0	female vocalists	25.0
Steve Ellington Band	electronic	100.0	electronica	81.0	electro	79.0	dance	66.0	House	57.0
Exem	electronic	100.0	lithuanian	88.0	rock	38.0	folk	25.0	world	25.0
Faithless feat. Estelle	electronic	100.0	trip-hop	62.0	dance	57.0	House	42.0	electronica	35.0
Mystery Skulls	synthpop	100.0	electronic	89.0	electropop	78.0	pop	45.0	electro	39.0
Mr Twin Sister	dream pop	100.0	indie	83.0	indie pop	77.0	chillwave	71.0	lounge	53.0
The Soup Dragons	alternative	100.0	madchester	91.0	indie pop	70.0	indie	68.0	c86	66.0
Colourbox	new wave	100.0	4ad	94.0	electronic	76.0	80s	72.0	alternative	44.0
Candyland	dubstep	100.0	electro house	78.0	baggy	56.0	seen live	34.0	alternative	23.0
Evil Cowards	electronic	100.0	alternative rock	34.0	electric six	34.0	Tyler Spencer	34.0	alternative	23.0
Larse	deep house	100.0	House	78.0	tech house	45.0	nu disco	34.0	electronic	23.0
Aetherius	OC ReMix	100.0	video game music	78.0	electronic	67.0	industrial ambient	67.0	Soundtrack	56.0
John LaMonica	indie	100.0	Soundtrack	56.0	folk	45.0	seen live	34.0	electronic	23.0
Kawaii	electronic	100.0	twee	67.0	indie pop	45.0	french	34.0	experimental	34.0
Big Audio Dynamite	new wave	100.0	80s	76.0	alternative	76.0	british	57.0	rock	46.0
Paris Angels	madchester	100.0	indie	48.0	Manchester	32.0	baggy	22.0	electronic	16.0
Pink Floyd	Progressive rock	100.0	classic rock	79.0	Psychedelic Rock	72.0	rock	53.0	psychedelic	44.0
Snowblind Traveler	americana	100.0	folk rock	100.0	\N	0.0	\N	0.0	\N	0.0
Porcupine Tree	Progressive rock	100.0	Progressive metal	32.0	psychedelic	27.0	Progressive	25.0	rock	24.0
Rush	Progressive rock	100.0	classic rock	45.0	hard rock	35.0	rock	35.0	Progressive	20.0
The Mars Volta	Progressive rock	100.0	experimental	64.0	rock	36.0	alternative	33.0	seen live	33.0
Coheed and Cambria	Progressive rock	100.0	seen live	58.0	rock	56.0	alternative	42.0	emo	34.0
Genesis	Progressive rock	100.0	classic rock	51.0	rock	42.0	80s	28.0	Progressive	21.0
Frank Zappa	Progressive rock	100.0	experimental	89.0	rock	62.0	jazz	57.0	classic rock	45.0
Jethro Tull	Progressive rock	100.0	classic rock	63.0	folk rock	49.0	rock	38.0	Progressive	21.0
King Crimson	Progressive rock	100.0	experimental	36.0	classic rock	29.0	Progressive	25.0	rock	24.0
Peter Gabriel	Progressive rock	100.0	rock	67.0	singer-songwriter	52.0	classic rock	50.0	pop	40.0
dredg	Progressive rock	100.0	alternative rock	52.0	alternative	44.0	rock	35.0	seen live	31.0
Yes	Progressive rock	100.0	classic rock	45.0	rock	32.0	Progressive	22.0	british	20.0
Mike Oldfield	Progressive rock	100.0	new age	81.0	instrumental	77.0	electronic	59.0	ambient	54.0
Riverside	Progressive rock	100.0	Progressive metal	66.0	polish	32.0	Progressive	25.0	rock	20.0
Marillion	Progressive rock	100.0	rock	34.0	classic rock	25.0	Progressive	21.0	british	21.0
Blackfield	Progressive rock	100.0	melancholic	38.0	rock	37.0	alternative	27.0	Progressive	26.0
The Alan Parsons Project	Progressive rock	100.0	classic rock	55.0	rock	39.0	80s	33.0	electronic	28.0
Camel	Progressive rock	100.0	classic rock	30.0	art rock	26.0	Progressive	20.0	rock	19.0
David Gilmour	Progressive rock	100.0	classic rock	60.0	rock	52.0	Pink Floyd	43.0	singer-songwriter	34.0
Steven Wilson	Progressive rock	100.0	experimental	49.0	singer-songwriter	33.0	Progressive	27.0	steven wilson	17.0
The Dear Hunter	Progressive rock	100.0	experimental	54.0	indie	44.0	rock	31.0	alternative	30.0
Antimatter	dark ambient	100.0	Progressive rock	100.0	melancholic	83.0	ambient	63.0	darkwave	44.0
Emerson, Lake & Palmer	Progressive rock	100.0	classic rock	42.0	Symphonic Rock	27.0	rock	25.0	Progressive	21.0
Oceansize	Progressive rock	100.0	post-rock	56.0	alternative rock	39.0	seen live	31.0	alternative	22.0
Karnivool	Progressive rock	100.0	alternative rock	65.0	australian	44.0	seen live	42.0	rock	31.0
Roger Waters	Progressive rock	100.0	seen live	67.0	classic rock	59.0	rock	50.0	psychedelic	42.0
Fair to Midland	Progressive rock	100.0	alternative	42.0	alternative metal	41.0	rock	36.0	experimental	32.0
Asia	Progressive rock	100.0	classic rock	68.0	rock	52.0	80s	43.0	hard rock	31.0
Gentle Giant	Progressive rock	100.0	art rock	32.0	classic rock	22.0	Progressive	20.0	rock	20.0
Rishloo	Progressive rock	100.0	alternative rock	51.0	Progressive metal	49.0	Progressive	30.0	alternative	26.0
Ozric Tentacles	Progressive rock	100.0	space rock	97.0	Psychedelic Rock	77.0	psychedelic	76.0	instrumental	52.0
The Pineapple Thief	Progressive rock	100.0	art rock	36.0	Progressive	23.0	rock	22.0	british	20.0
Procol Harum	Progressive rock	100.0	classic rock	86.0	rock	55.0	60s	54.0	psychedelic	44.0
Pure Reason Revolution	Progressive rock	100.0	art rock	33.0	Progressive	25.0	british	23.0	rock	19.0
Spock's Beard	Progressive rock	100.0	Progressive	20.0	rock	19.0	Progressive metal	18.0	prog	10.0
Lunatic Soul	Progressive rock	100.0	ambient	62.0	atmospheric	49.0	experimental	43.0	psychedelic	37.0
Gazpacho	Progressive rock	100.0	post-rock	40.0	norwegian	28.0	neo progressive	25.0	Progressive	22.0
Van der Graaf Generator	Progressive rock	100.0	art rock	37.0	Progressive	22.0	classic rock	21.0	rock	18.0
Wishbone Ash	Progressive rock	100.0	classic rock	77.0	hard rock	49.0	rock	45.0	blues rock	37.0
Closure in Moscow	Progressive rock	100.0	post-hardcore	91.0	experimental	45.0	Progressive	39.0	australian	31.0
Soft Machine	Progressive rock	100.0	psychedelic	57.0	jazz	45.0	Canterbury	45.0	experimental	41.0
Amplifier	Progressive rock	100.0	alternative rock	52.0	space rock	35.0	seen live	31.0	rock	28.0
Kingston Wall	Progressive rock	100.0	Psychedelic Rock	73.0	finnish	49.0	psychedelic	33.0	rock	29.0
Focus	Progressive rock	100.0	classic rock	39.0	rock	32.0	dutch	27.0	Progressive	19.0
Gong	Progressive rock	100.0	Psychedelic Rock	60.0	psychedelic	60.0	space rock	55.0	Canterbury	30.0
Steve Hackett	Progressive rock	100.0	art rock	34.0	guitar	31.0	rock	22.0	Progressive	19.0
Caravan	Progressive rock	100.0	Canterbury Scene	39.0	Canterbury	34.0	rock	22.0	Progressive	21.0
Robert Wyatt	Progressive rock	100.0	singer-songwriter	64.0	experimental	59.0	Canterbury Scene	50.0	Canterbury	45.0
No-Man	Progressive rock	100.0	ambient	69.0	art rock	54.0	experimental	51.0	electronic	43.0
The Flower Kings	Progressive rock	100.0	symphonic prog	20.0	Progressive	18.0	swedish	18.0	rock	14.0
Transatlantic	Progressive rock	100.0	Progressive metal	27.0	Progressive	24.0	Supergroup	18.0	rock	17.0
Eloy	Progressive rock	100.0	space rock	53.0	krautrock	44.0	Psychedelic Rock	40.0	german	28.0
3	Progressive rock	100.0	alternative rock	39.0	rock	28.0	experimental	26.0	Progressive	23.0
Neal Morse	Progressive rock	100.0	christian	26.0	Progressive metal	24.0	Progressive	22.0	rock	19.0
Aphrodite's Child	Progressive rock	100.0	Psychedelic Rock	63.0	psychedelic	32.0	classic rock	29.0	rock	27.0
Barclay James Harvest	Progressive rock	100.0	classic rock	68.0	70s	43.0	rock	39.0	british	31.0
Goblin	Progressive rock	100.0	Soundtrack	71.0	experimental	44.0	italian	41.0	electronic	27.0
Tides of Man	Progressive rock	100.0	post-hardcore	56.0	alternative	46.0	Progressive	43.0	rock	33.0
Rick Wakeman	Progressive rock	100.0	instrumental	45.0	classic rock	30.0	rock	22.0	Progressive	22.0
Fish	Progressive rock	100.0	rock	36.0	Scottish	29.0	seen live	25.0	Progressive	22.0
Arena	Progressive rock	100.0	Progressive metal	34.0	Neo-prog	28.0	Progressive	21.0	rock	18.0
King's X	Progressive rock	100.0	hard rock	76.0	rock	61.0	Progressive metal	55.0	alternative rock	29.0
Saga	Progressive rock	100.0	rock	46.0	Canadian	32.0	RAC	30.0	80s	28.0
Renaissance	Progressive rock	100.0	classic rock	34.0	female vocalists	30.0	Progressive	22.0	rock	21.0
Phideaux	Progressive rock	100.0	art rock	45.0	Crossover Prog	23.0	Progressive	21.0	rock	16.0
Sylvan	Progressive rock	100.0	art rock	27.0	Progressive metal	23.0	neo progressive	18.0	german	17.0
Anekdoten	Progressive rock	100.0	art rock	29.0	swedish	27.0	psychedelic	21.0	Progressive	18.0
Ian Anderson	Progressive rock	100.0	flute	62.0	classic rock	58.0	folk	54.0	rock	37.0
Jordan Rudess	Progressive rock	100.0	Progressive metal	73.0	instrumental	70.0	keyboard virtuoso	55.0	Progressive	37.0
Peter Hammill	Progressive rock	100.0	singer-songwriter	48.0	art rock	46.0	experimental	35.0	Progressive	24.0
Airbag	Progressive rock	100.0	rock	32.0	norwegian	27.0	punk rock	26.0	punk	22.0
IQ	Progressive rock	100.0	Neo-prog	32.0	Progressive	18.0	neo progressive	17.0	neo prog	13.0
Beardfish	Progressive rock	100.0	art rock	22.0	swedish	20.0	Progressive	15.0	rock	11.0
The Mayan Factor	Progressive rock	100.0	alternative rock	67.0	alternative	41.0	rock	37.0	indie	35.0
Premiata Forneria Marconi	Progressive rock	100.0	italian progressive rock	40.0	italian	30.0	Progressive	19.0	italian prog	15.0
Cog	Progressive rock	100.0	seen live	83.0	australian	83.0	alternative rock	51.0	rock	50.0
Chroma Key	Progressive rock	100.0	ambient	72.0	electronic	54.0	atmospheric	39.0	Progressive	35.0
Atomic Rooster	Progressive rock	100.0	hard rock	55.0	classic rock	50.0	rock	34.0	70s	31.0
Pendragon	Progressive rock	100.0	Neo-prog	31.0	Neo Progressive Rock	23.0	Progressive	18.0	rock	17.0
Flying Colors	Progressive rock	100.0	hard rock	37.0	rock	34.0	Supergroup	28.0	mike portnoy	14.0
Pez	Progressive rock	100.0	experimental	86.0	argentina	80.0	rock	66.0	Rock Argentino	46.0
Nothing More	Progressive rock	100.0	alternative rock	81.0	alternative metal	48.0	rock	41.0	alternative	27.0
Devil Doll	Progressive rock	100.0	Avant-Garde	99.0	Gothic	81.0	Symphonic Rock	74.0	experimental	70.0
Jeff Wayne	Progressive rock	100.0	Soundtrack	49.0	rock	48.0	electronic	36.0	musical	35.0
The Mothers of Invention	Progressive rock	100.0	experimental	90.0	Avant-Garde	78.0	Experimental Rock	58.0	rock	41.0
Omega	Progressive rock	100.0	classic rock	75.0	hungarian	62.0	rock	52.0	hard rock	47.0
Mostly Autumn	Progressive rock	100.0	folk rock	50.0	celtic	26.0	folk	23.0	Progressive	16.0
Kevin Ayers	Progressive rock	100.0	psychedelic	81.0	Canterbury	60.0	singer-songwriter	59.0	Canterbury Scene	43.0
Klimt 1918	Progressive rock	100.0	alternative rock	71.0	italian	44.0	alternative	40.0	rock	36.0
Adrian Belew	Progressive rock	100.0	experimental	60.0	guitar	39.0	rock	33.0	Progressive	26.0
Demians	Progressive rock	100.0	Progressive metal	42.0	french	25.0	seen live	19.0	Progressive	18.0
RPWL	Progressive rock	100.0	german	19.0	Progressive	17.0	neo progressive	17.0	rock	14.0
Storm Corrosion	Progressive rock	100.0	experimental	54.0	ambient	50.0	Psychedelic Rock	36.0	psychedelic folk	31.0
Nosound	Progressive rock	100.0	ambient	68.0	Psychedelic Rock	45.0	experimental	42.0	psychedelic	24.0
Agent Fresco	Progressive rock	100.0	icelandic	94.0	math rock	62.0	seen live	41.0	rock	33.0
Gordian Knot	Progressive rock	100.0	Progressive metal	82.0	Fusion	55.0	instrumental	53.0	Progressive	29.0
Harvard	Progressive rock	100.0	experimental	91.0	indie	79.0	post-hardcore	74.0	indie rock	27.0
Strawbs	Progressive rock	100.0	folk rock	69.0	progressive folk	41.0	folk	38.0	rock	28.0
Cire	Progressive rock	100.0	alternative rock	59.0	alternative	31.0	Progressive	26.0	rock	25.0
Family	Progressive rock	100.0	rock	44.0	classic rock	39.0	Psychedelic Rock	27.0	spanish indie pop	25.0
Arjen Anthony Lucassen	Progressive rock	100.0	Progressive metal	81.0	Symphonic Rock	25.0	space rock	20.0	dutch	17.0
Kaddisfly	Progressive rock	100.0	indie	80.0	experimental	74.0	alternative	55.0	alternative rock	43.0
Captain Beyond	Progressive rock	100.0	hard rock	78.0	classic rock	55.0	rock	24.0	art rock	20.0
Los Jaivas	Progressive rock	100.0	chile	82.0	rock chileno	70.0	folk	61.0	rock	33.0
Nektar	Progressive rock	100.0	Psychedelic Rock	56.0	space rock	43.0	classic rock	25.0	psychedelic	24.0
A.C.T	Progressive rock	100.0	Progressive metal	41.0	art rock	25.0	Progressive	22.0	swedish	20.0
Paatos	Progressive rock	100.0	post-rock	46.0	atmospheric	29.0	swedish	28.0	Progressive	22.0
Bigelf	Progressive rock	100.0	seen live	56.0	Psychedelic Rock	54.0	Stoner Rock	53.0	hard rock	31.0
Il Volo	Progressive rock	100.0	italian	80.0	italian progressive rock	64.0	operatic pop	32.0	italian prog	21.0
Comus	Progressive rock	100.0	psychedelic folk	85.0	folk	79.0	psychedelic	73.0	experimental	49.0
Quidam	Progressive rock	100.0	polish	45.0	art rock	40.0	Progressive	18.0	rock	17.0
Alan Parsons	Progressive rock	100.0	rock	49.0	electronic	42.0	classic rock	41.0	art rock	36.0
John Petrucci & Jordan Rudess	Progressive rock	100.0	instrumental	95.0	guitar virtuoso	55.0	Progressive metal	49.0	Progressive	36.0
Rick Wright	Progressive rock	100.0	Psychedelic Rock	62.0	classic rock	46.0	Pink Floyd	44.0	keyboard	29.0
Banco del Mutuo Soccorso	Progressive rock	100.0	italian progressive rock	52.0	italian	32.0	italian symphonic prog	20.0	italian prog	20.0
Hatfield and the North	Progressive rock	100.0	Canterbury	54.0	Canterbury Scene	51.0	Jazz Rock	37.0	psychedelic	28.0
Henry Cow	Progressive rock	100.0	Avant-Garde	100.0	experimental	70.0	RIO	57.0	Canterbury	38.0
Colosseum	funeral doom metal	100.0	Progressive rock	100.0	Jazz Rock	75.0	funeral doom	67.0	doom metal	61.0
Damiera	Progressive rock	100.0	math rock	93.0	indie	63.0	Progressive	46.0	seen live	32.0
The Aristocrats	Progressive rock	100.0	Fusion	72.0	instrumental	53.0	Jazz Rock	48.0	funk	40.0
Zombi	Progressive rock	100.0	instrumental	77.0	electronic	77.0	space rock	47.0	Progressive	35.0
Frost*	Progressive rock	100.0	Neo Progressive Rock	26.0	Progressive	19.0	neo progressive	17.0	rock	16.0
Jon Anderson	Progressive rock	100.0	new age	48.0	art rock	47.0	classic rock	38.0	rock	32.0
Bo Hansson	Progressive rock	100.0	instrumental	59.0	swedish	36.0	experimental	35.0	psychedelic	33.0
Big Big Train	Progressive rock	100.0	art rock	29.0	rock	20.0	Progressive	18.0	british	18.0
The Silent Comedy	Progressive rock	100.0	folk	95.0	indie	78.0	art rock	67.0	rock	45.0
Änglagård	Progressive rock	100.0	symphonic prog	32.0	swedish	26.0	instrumental	21.0	Progressive	18.0
HRVRD	Progressive rock	100.0	indie	80.0	experimental	60.0	indie rock	44.0	alternative rock	30.0
Curved Air	Progressive rock	100.0	classic rock	28.0	70s	28.0	female vocalists	27.0	rock	20.0
Thomas Giles	Progressive rock	100.0	experimental	71.0	electronic	66.0	Progressive	29.0	rock	22.0
Le Orme	Progressive rock	100.0	italian progressive rock	54.0	italian	37.0	italian symphonic prog	22.0	Progressive	20.0
Wigwam	Progressive rock	100.0	finnish	49.0	Progressive	25.0	rock	24.0	classic rock	19.0
Greg Lake	Progressive rock	100.0	rock	42.0	guitar	42.0	classic rock	30.0	ELP	21.0
Area	Progressive rock	100.0	Fusion	53.0	Avant-Garde	50.0	italian	44.0	italian progressive rock	39.0
Siddhartha	Progressive rock	100.0	rock	55.0	krautrock	48.0	indie	46.0	reggae	35.0
No Name	Progressive rock	100.0	slovak	100.0	seen live	94.0	pop	83.0	j-pop	66.0
Gryphon	Progressive rock	100.0	folk rock	50.0	folk	35.0	progressive folk	34.0	Progressive	17.0
Kino	Progressive rock	100.0	russian rock	68.0	rock	58.0	russian	53.0	Kino	33.0
UK	Progressive rock	100.0	Fusion	29.0	symphonic prog	21.0	rock	20.0	Progressive	16.0
Aeon Spoke	Progressive rock	100.0	alternative rock	83.0	indie	44.0	rock	39.0	alternative	29.0
Enchant	Progressive rock	100.0	Progressive metal	45.0	Progressive	18.0	rock	11.0	prog	11.0
Harmonium	Progressive rock	100.0	folk rock	39.0	folk	35.0	quebecois	30.0	francophone	24.0
Argent	Progressive rock	100.0	classic rock	83.0	rock	51.0	70s	47.0	british	33.0
Invisible	Progressive rock	100.0	Rock Argentino	78.0	psychedelic	34.0	Spinetta	32.0	argentina	30.0
Dixie Dregs	Progressive rock	100.0	Fusion	65.0	Jazz Rock	54.0	instrumental	47.0	rock	31.0
Utopia	Progressive rock	100.0	Drum and bass	59.0	neurofunk	55.0	rock	43.0	punk	33.0
The Nice	Progressive rock	100.0	Psychedelic Rock	40.0	classic rock	34.0	psychedelic	34.0	rock	21.0
Granada	Progressive rock	100.0	hardcore	74.0	indie	71.0	brazilian	66.0	swedish	57.0
Anthony Phillips	Progressive rock	100.0	folk	38.0	british	27.0	art rock	27.0	classical guitar	26.0
SBB	Progressive rock	100.0	polish	53.0	Jazz Rock	46.0	blues rock	30.0	rock	25.0
Emptyself	Progressive rock	100.0	trip rock	59.0	ambient	42.0	alternative rock	41.0	art rock	39.0
The Tangent	Progressive rock	100.0	symphonic prog	24.0	Progressive	19.0	Neo-prog	16.0	rock	13.0
Roger Hodgson	Progressive rock	100.0	classic rock	95.0	rock	67.0	SuperTramp	56.0	british	42.0
Pavlov's Dog	Progressive rock	100.0	art rock	39.0	classic rock	38.0	rock	26.0	Progressive	14.0
Steve Howe	Progressive rock	100.0	guitar virtuoso	53.0	guitar	44.0	instrumental	38.0	rock	36.0
Steve Hillage	Progressive rock	100.0	space rock	68.0	Psychedelic Rock	55.0	psychedelic	52.0	Canterbury Scene	42.0
Abigail's Ghost	Progressive rock	100.0	Progressive metal	46.0	art rock	29.0	alternative rock	23.0	rock	16.0
Triumvirat	Progressive rock	100.0	symphonic prog	37.0	classic rock	29.0	german	28.0	rock	24.0
Pmtoday	Progressive rock	100.0	Progressive	88.0	rock	75.0	experimental	75.0	indie	59.0
Believe	Progressive rock	100.0	polish	59.0	art rock	45.0	neo progressive	26.0	Neo-prog	21.0
Slapp Happy	Progressive rock	100.0	Avant-Garde	92.0	art rock	67.0	Avant-Pop	66.0	Canterbury	52.0
John Wesley	Progressive rock	100.0	singer-songwriter	72.0	rock	67.0	emotional	21.0	male vocalists	21.0
Jane	Progressive rock	100.0	krautrock	96.0	rock	22.0	experimental	17.0	finnish	16.0
Atomship	Progressive rock	100.0	alternative rock	99.0	rock	94.0	alternative metal	65.0	alternative	56.0
echolyn	Progressive rock	100.0	symphonic prog	24.0	Neo-prog	18.0	Progressive	13.0	rock	11.0
Ankh	Progressive rock	100.0	polish	80.0	rock	49.0	experimental	47.0	alternative	44.0
Moon Safari	Progressive rock	100.0	symphonic prog	28.0	swedish	24.0	rock	15.0	Progressive	12.0
Rael	Progressive rock	100.0	Hip-Hop	84.0	Gay Metal	84.0	rich people	84.0	pedophile	67.0
Satellite	Progressive rock	100.0	polish	38.0	art rock	26.0	Neo-prog	25.0	rock	16.0
Solaris	Progressive rock	100.0	post-rock	78.0	instrumental	59.0	ambient	50.0	latvian	35.0
Kaipa	Progressive rock	100.0	swedish	28.0	symphonic prog	27.0	rock	13.0	Progressive	13.0
Smak	Progressive rock	100.0	seen live	94.0	rock	72.0	ex-yu rock	59.0	finnish	50.0
Be Bop Deluxe	Progressive rock	100.0	rock	75.0	art rock	68.0	classic rock	56.0	british	40.0
Children of Nova	Progressive rock	100.0	experimental	67.0	Progressive	33.0	rock	31.0	psychedelic	26.0
Kayak	Progressive rock	100.0	dutch	34.0	art rock	27.0	rock	23.0	Symphonic Rock	23.0
Triana	Progressive rock	100.0	rock andaluz	64.0	Flamenco rock	48.0	spanish	34.0	rock	30.0
Ivory	Progressive rock	100.0	seen live	82.0	metalcore	69.0	indie	69.0	rock	46.0
It Bites	Progressive rock	100.0	rock	32.0	Neo-prog	31.0	british	28.0	seen live	19.0
Magenta	Progressive rock	100.0	female vocalists	38.0	symphonic prog	26.0	Gothic Rock	20.0	neo-progressive rock	20.0
Richard Wright	Progressive rock	100.0	art rock	53.0	Pink Floyd	36.0	classic rock	33.0	Progressive	29.0
Sky	Progressive rock	100.0	instrumental	88.0	Drum and bass	58.0	rock	50.0	pop	33.0
Cressida	Progressive rock	100.0	trance	63.0	progressive trance	47.0	Progressive	25.0	rock	24.0
Univers Zero	Progressive rock	100.0	Avant-Garde	97.0	RIO	69.0	Rock In Opposition	65.0	experimental	58.0
Atlas	Progressive rock	100.0	melodic hardcore	93.0	swedish	58.0	hardcore	37.0	Hip-Hop	35.0
The Intersphere	alternative rock	100.0	Progressive rock	100.0	seen live	56.0	alternative	50.0	german	48.0
Jolly	Progressive rock	100.0	alternative rock	33.0	Progressive	24.0	ambient	22.0	seen live	18.0
Astra	Progressive rock	100.0	Psychedelic Rock	69.0	Progressive metal	28.0	psychedelic	23.0	Stoner Rock	22.0
Bill Bruford	Progressive rock	100.0	Fusion	82.0	jazz	60.0	jazz fusion	59.0	drums	54.0
Kuha.	Progressive rock	100.0	seen live	88.0	finnish	81.0	alternative	44.0	Progressive	41.0
Zechs Marquise	Progressive rock	100.0	psychedelic	91.0	instrumental	71.0	Progressive	53.0	experimental	50.0
Mars Volta	Progressive rock	100.0	seen live	78.0	alternative	55.0	rock	49.0	indie	43.0
Tony Banks	Progressive rock	100.0	instrumental	43.0	rock	38.0	Classical	30.0	Progressive	26.0
John Paul Jones	Progressive rock	100.0	classic rock	80.0	rock	66.0	bass	64.0	Led Zeppelin	46.0
Thank You Scientist	Progressive rock	100.0	jazz	45.0	rock	29.0	jazz fusion	24.0	Progressive	22.0
Karmakanic	Progressive rock	100.0	Progressive metal	27.0	symphonic prog	23.0	Progressive	15.0	rock	14.0
Gerard	Progressive rock	100.0	japanese	56.0	japanese prog	28.0	rap	21.0	german	18.0
Tony Levin	Progressive rock	100.0	bass	71.0	Fusion	60.0	instrumental	50.0	Progressive	31.0
Egg	Progressive rock	100.0	Canterbury Scene	54.0	Canterbury	37.0	psychedelic	31.0	art rock	27.0
Anderson Bruford Wakeman Howe	Progressive rock	100.0	rock	25.0	classic rock	17.0	Progressive	14.0	yes	12.0
Collage	Progressive rock	100.0	polish	51.0	art rock	42.0	Neo-prog	38.0	rock	20.0
Grobschnitt	Progressive rock	100.0	krautrock	96.0	german	32.0	psychedelic	28.0	Progressive	19.0
Black Widow	Progressive rock	100.0	hard rock	48.0	classic rock	36.0	occult	35.0	rock	22.0
Liquid Trio Experiment	Progressive rock	100.0	instrumental	80.0	Progressive metal	67.0	experimental	62.0	Fusion	50.0
Tune	Progressive rock	100.0	art rock	44.0	polish	44.0	ambient	22.0	Progressive	19.0
Giles, Giles & Fripp	Progressive rock	100.0	psychedelic	54.0	art rock	50.0	experimental	42.0	Psychedelic Rock	19.0
Matching Mole	Progressive rock	100.0	Canterbury	65.0	Canterbury Scene	52.0	psychedelic	40.0	Jazz Rock	39.0
David Sylvian & Robert Fripp	Progressive rock	100.0	ambient	60.0	experimental	60.0	art rock	41.0	psychedelic	31.0
Subsignal	Progressive rock	100.0	Progressive metal	64.0	german	23.0	Progressive	16.0	art rock	13.0
Nekropsi	Progressive rock	100.0	Psychedelic Rock	74.0	experimental	69.0	turkish	61.0	psychedelic	36.0
YAMANTAKA // SONIC TITAN	Progressive rock	100.0	experimental	86.0	noise pop	58.0	seen live	53.0	noh wave	48.0
Edgar Broughton Band	Progressive rock	100.0	psychedelic	65.0	hard rock	57.0	classic rock	54.0	Psychedelic Rock	44.0
Jon Lord	Progressive rock	100.0	classic rock	91.0	Classical	58.0	Deep Purple family	44.0	rock	39.0
Unitopia	Progressive rock	100.0	australian	17.0	rock	17.0	prog rock	12.0	Progressive	11.0
Pallas	Progressive rock	100.0	Neo-prog	31.0	neo progressive	19.0	neo-progressive rock	18.0	Progressive	14.0
ORBS	Progressive rock	100.0	experimental	81.0	Progressive	37.0	indie	28.0	post-hardcore	25.0
Earth and Fire	Progressive rock	100.0	dutch	55.0	70s	47.0	rock	30.0	pop	27.0
Pekka Pohjola	Progressive rock	100.0	Fusion	60.0	finnish	54.0	jazz	52.0	Progressive	27.0
Geddy Lee	Progressive rock	100.0	rock	46.0	hard rock	41.0	Canadian	37.0	bass	22.0
Tempest	Progressive rock	100.0	hardcore	98.0	Crust	77.0	folk rock	72.0	celtic	64.0
Lana Lane	Progressive rock	100.0	Progressive metal	67.0	symphonic metal	49.0	Female fronted metal	44.0	Symphonic Rock	42.0
Rare Bird	Progressive rock	100.0	classic rock	50.0	art rock	43.0	rock	29.0	Progressive	23.0
Samla Mammas Manna	Progressive rock	100.0	Avant-Garde	68.0	RIO	62.0	Rock In Opposition	49.0	swedish	36.0
Babe Ruth	Progressive rock	100.0	rock	54.0	funk	41.0	female vocalists	38.0	classic rock	33.0
Ekseption	Progressive rock	100.0	Symphonic Rock	49.0	classic rock	37.0	dutch	37.0	rock	22.0
Pekka Streng	Progressive rock	100.0	finnish	99.0	psychedelic	85.0	singer-songwriter	72.0	love records	45.0
Galahad	Progressive rock	100.0	Progressive metal	33.0	neo progressive	32.0	rock	18.0	neoprog	17.0
T2	Progressive rock	100.0	hard rock	49.0	bassline	44.0	UK Garage	32.0	dance	24.0
Glass Hammer	Progressive rock	100.0	symphonic prog	37.0	Progressive	22.0	rock	12.0	prog rock	8.0
Millenium	Progressive rock	100.0	heavy metal	79.0	melodic metal	56.0	hard rock	47.0	Power metal	33.0
Bozzio Levin Stevens	Progressive rock	100.0	instrumental	61.0	Fusion	57.0	Progressive	34.0	rock	18.0
Bacamarte	Progressive rock	100.0	brazilian	40.0	symphonic prog	31.0	Symphonic Rock	22.0	brazilian progressive rock	21.0
Casa das Máquinas	Progressive rock	100.0	brazilian	54.0	classic rock	40.0	brasil	34.0	Progressive	31.0
Prisma	Progressive rock	100.0	Progressive metal	86.0	alternative	29.0	Progressive	18.0	jazzy hip-hop	13.0
Kopecky	Progressive rock	100.0	Progressive metal	74.0	instrumental	48.0	Fusion	44.0	instrumental rock	18.0
Klaatu	Progressive rock	100.0	rock	51.0	Symphonic Rock	41.0	classic rock	37.0	pop rock	29.0
Opus Däi	Progressive rock	100.0	Progressive	59.0	alternative rock	52.0	alternative	39.0	rock	34.0
Nemo	Progressive rock	100.0	seen live	85.0	french	31.0	electronic	25.0	rock	22.0
Elfonía	Progressive rock	100.0	Female fronted metal	53.0	Progressive metal	50.0	Gothic Metal	35.0	female vocalists	28.0
Trey Gunn	Progressive rock	100.0	instrumental	54.0	Fusion	54.0	experimental	54.0	king crimson members	29.0
Shamall	Progressive rock	100.0	Psychedelic Rock	87.0	space rock	87.0	art rock	82.0	german	80.0
Keith Emerson	Progressive rock	100.0	classic rock	46.0	Soundtrack	26.0	Progressive	26.0	Fusion	25.0
Khan	Progressive rock	100.0	Canterbury Scene	56.0	Canterbury	36.0	space rock	35.0	electronic	21.0
Home	Progressive rock	100.0	classic rock	40.0	indie	34.0	chillwave	34.0	Progressive	27.0
T	Progressive rock	100.0	Hip-Hop	96.0	Korean	62.0	german	34.0	Kpop	34.0
Mick Karn	experimental	100.0	Progressive rock	100.0	bass	59.0	Fusion	55.0	fretless bass	50.0
New Trolls	Progressive rock	100.0	italian progressive rock	65.0	italian	41.0	rock	24.0	symphonic prog	18.0
Blue Effect	Progressive rock	100.0	Czech	69.0	seen live	64.0	art rock	44.0	Psychedelic Rock	39.0
Singularity	Progressive rock	100.0	dubstep	70.0	electronic	45.0	Technical Death Metal	30.0	trance	25.0
Mike Keneally	Progressive rock	100.0	Avant-Garde	67.0	zappa	47.0	Progressive	36.0	seen live	29.0
Abraxas	Progressive rock	100.0	polish	50.0	neo progressive	33.0	rock	29.0	death metal	29.0
La Máquina de Hacer Pájaros	Progressive rock	100.0	Rock Argentino	58.0	argentina	46.0	rock	29.0	Progressive	29.0
Sinew	Progressive rock	100.0	alternative rock	63.0	rock	21.0	Progressive	21.0	german	16.0
Magic Pie	Progressive rock	100.0	symphonic prog	27.0	rock	15.0	Progressive	10.0	prog	9.0
Syd Arthur	Progressive rock	100.0	psychedelic	100.0	Canterbury	82.0	rock	64.0	british	55.0
Yellow Matter Custard	Progressive rock	100.0	cover	59.0	classic rock	57.0	rock	49.0	pop	34.0
Ange	Progressive rock	100.0	french	46.0	rock	23.0	70s	23.0	Progressive	22.0
O Terço	Progressive rock	100.0	brazilian	49.0	rock	25.0	brasil	25.0	Progressive	22.0
High Tide	Progressive rock	100.0	Psychedelic Rock	90.0	hard rock	60.0	psychedelic	39.0	Progressive	19.0
The Reasoning	Progressive rock	100.0	art rock	25.0	Neo-prog	20.0	Symphonic Rock	17.0	british	12.0
Nil	Progressive rock	100.0	J-rock	86.0	rock	68.0	japanese	68.0	seen live	61.0
Cosmos	Progressive rock	100.0	latvian	75.0	a capella	47.0	House	43.0	electronic	40.0
Phil Manzanera	Progressive rock	100.0	rock	46.0	british	34.0	ambient	31.0	english	22.0
Trettioåriga Kriget	Progressive rock	100.0	swedish	35.0	art rock	22.0	rock	16.0	progg	16.0
The Savage Rose	Progressive rock	100.0	danish	100.0	rock	87.0	Psychedelic Rock	87.0	psychedelic	64.0
Everon	Progressive rock	100.0	Progressive metal	63.0	metal	17.0	Progressive	17.0	german	12.0
Shabutie	Progressive rock	100.0	indie	49.0	experimental	46.0	post-hardcore	44.0	Progressive	36.0
Black Bonzo	Progressive rock	100.0	swedish	34.0	hard rock	28.0	retro rock	18.0	Sweden	16.0
Mystery	Progressive rock	100.0	neo progressive	15.0	black metal	13.0	Neo Progressive Rock	11.0	Progressive	9.0
White Willow	Progressive rock	100.0	art rock	29.0	female vocalists	25.0	Norway	20.0	Progressive	16.0
Kevin Gilbert	Progressive rock	100.0	rock	27.0	genius	21.0	Progressive	18.0	alternative rock	15.0
November	Progressive rock	100.0	swedish	65.0	Psychedelic Rock	60.0	rock	43.0	hard rock	43.0
Titanic	Progressive rock	100.0	heavy metal	75.0	classic rock	41.0	hard rock	41.0	Soundtrack	32.0
Manic Bloom	alternative rock	100.0	Progressive rock	100.0	rock	69.0	electronic	41.0	indie	32.0
Beggars Opera	Progressive rock	100.0	art rock	36.0	symphonic prog	29.0	70s	21.0	rock	14.0
Indexi	Progressive rock	100.0	Bosnian	55.0	ex-yu	52.0	ex-yu rock	52.0	rock	49.0
Knight Area	Progressive rock	100.0	neo progressive	26.0	Progressive	15.0	rock	13.0	Neo-prog	11.0
Cervello	Progressive rock	100.0	italian progressive rock	59.0	modern rock	53.0	alternative rock	42.0	italian	31.0
Panic Room	Progressive rock	100.0	female vocalists	29.0	hard rock	25.0	alternative rock	24.0	rock	22.0
Greenslade	Progressive rock	100.0	Symphonic Rock	34.0	art rock	30.0	Progressive	16.0	symphonic prog	11.0
Celelalte Cuvinte	Progressive rock	100.0	Romanian	92.0	rock	65.0	hard rock	65.0	seen live	62.0
Sound of Contact	Progressive rock	100.0	art rock	15.0	space rock	15.0	seen live	12.0	UK	9.0
Galleon	Progressive rock	100.0	dance	69.0	House	60.0	electronic	43.0	Progressive	38.0
Lebowski	Progressive rock	100.0	art rock	47.0	polish	32.0	instrumental	23.0	seen live	20.0
Supersister	Progressive rock	100.0	dutch	50.0	Canterbury	36.0	rock	29.0	Progressive	25.0
Three	Progressive rock	100.0	punk	41.0	rock	32.0	metal	25.0	seen live	22.0
The Black Noodle Project	Progressive rock	100.0	atmospheric	29.0	french	25.0	alternative rock	25.0	melancholic	15.0
John Wetton	Progressive rock	100.0	rock	46.0	classic rock	43.0	melodic rock	30.0	john wetton	24.0
Fantasy	Progressive rock	100.0	Psychedelic Rock	18.0	symphonic prog	18.0	symphonic progressive	18.0	classic rock	9.0
Man	Progressive rock	100.0	Psychedelic Rock	40.0	rock	38.0	pub rock	24.0	experimental	20.0
Museo Rosenbach	Progressive rock	100.0	italian progressive rock	55.0	italian	23.0	italian prog	22.0	italian symphonic prog	17.0
Syqem	Progressive rock	100.0	alternative metal	97.0	electronic	62.0	german	49.0	Progressive	46.0
After Crying	Progressive rock	100.0	symphonic prog	34.0	hungarian	26.0	hungary	20.0	rock	17.0
Nova	Progressive rock	100.0	rock	54.0	Gothic	36.0	progressive trance	36.0	italian progressive rock	33.0
Spiral	Progressive rock	100.0	art rock	78.0	polish	69.0	post-rock	49.0	rock	38.0
Som Imaginário	Progressive rock	100.0	psychedelic	72.0	brazilian	69.0	brasil	38.0	jazz	36.0
Kebnekajse	Progressive rock	100.0	swedish	57.0	folk	48.0	progg	48.0	seen live	46.0
Jade Warrior	Progressive rock	100.0	Psychedelic Rock	40.0	psychedelic	38.0	70s	24.0	rock	23.0
Magellan	Progressive rock	100.0	Progressive metal	49.0	art rock	19.0	Progressive	18.0	prog	15.0
Bruce Soord with Jonas Renkse	Progressive rock	100.0	electronic	56.0	ambient	27.0	alternative	21.0	Progressive	18.0
GTR	Progressive rock	100.0	classic rock	42.0	trance	36.0	rock	36.0	80s	31.0
Karnataka	Progressive rock	100.0	female vocalists	36.0	folk rock	31.0	progressive folk	17.0	chillout	11.0
IZZ	Progressive rock	100.0	symphonic prog	27.0	Progressive	11.0	rock	9.0	american	8.0
Cartoon	Progressive rock	100.0	Avant-Prog	53.0	Avant-Garde	48.0	rock	24.0	Progressive	20.0
Motorpsycho and Ståle Storløkken	Progressive rock	100.0	experimental	50.0	jazz	46.0	Psychedelic Rock	38.0	psychedelic	25.0
Sleeping Pulse	Progressive rock	100.0	atmospheric rock	60.0	atmospheric	19.0	art rock	19.0	melancholy	19.0
Ray Wilson & Stiltskin	Progressive rock	100.0	rock	82.0	seen live	72.0	alternative rock	57.0	hard rock	29.0
National Health	Progressive rock	100.0	Canterbury	64.0	Canterbury Scene	56.0	Jazz Rock	36.0	rock	17.0
Wobbler	Progressive rock	100.0	symphonic prog	24.0	norwegian	19.0	Norway	16.0	Norwegian Progressive Rock	6.0
Carmen	Progressive rock	100.0	Flamenco rock	47.0	Flamenco	34.0	classic rock	18.0	funk	16.0
Headspace	Progressive metal	100.0	Progressive rock	100.0	indie	18.0	alternative	18.0	rock	15.0
Gravy Train	Progressive rock	100.0	70s	42.0	rock	32.0	hard rock	32.0	electronic	27.0
Us	Progressive rock	100.0	funk	75.0	heavy metal	25.0	pop	25.0	emo	25.0
The Jelly Jam	Progressive rock	100.0	Progressive metal	43.0	rock	31.0	hard rock	27.0	Progressive	21.0
Chris Squire	Progressive rock	100.0	bass	42.0	symphonic prog	31.0	art rock	30.0	yes	19.0
The Enid	Progressive rock	100.0	symphonic prog	33.0	instrumental	30.0	symphonic	26.0	art rock	21.0
Jadis	Progressive rock	100.0	Neo-prog	29.0	Progressive	18.0	Neo Progressive Rock	15.0	rock	12.0
Tabula Rasa	Progressive rock	100.0	finnish	52.0	math rock	25.0	love records	23.0	reggae	21.0
四人囃子	Progressive rock	100.0	japanese	81.0	Psychedelic Rock	50.0	psychedelic	29.0	rock	20.0
Eatliz	Progressive rock	100.0	alternative	71.0	israeli	71.0	indie	50.0	alternative rock	38.0
Sydonia	Progressive rock	100.0	alternative rock	80.0	alternative metal	65.0	Progressive metal	63.0	australian	60.0
Metropolis	Progressive rock	100.0	rock	74.0	slovak	64.0	turkish	53.0	turkish rock	43.0
Vox Dei	Progressive rock	100.0	Rock Argentino	79.0	argentina	66.0	rock	47.0	Rock en Espanol	35.0
déjà vu	Progressive rock	100.0	female vocalists	67.0	female	34.0	japanese	34.0	other	34.0
Yezda Urfa	Progressive rock	100.0	art rock	34.0	Progressive	28.0	symphonic prog	25.0	rock	19.0
Novalis	Progressive rock	100.0	krautrock	87.0	neofolk	37.0	german	21.0	rock	19.0
For All We Know	Progressive rock	100.0	Progressive metal	84.0	post-hardcore	67.0	christian	30.0	metalcore	20.0
Daevid Allen	Progressive rock	100.0	psychedelic	87.0	Canterbury Scene	64.0	Canterbury	46.0	jazz	39.0
Planet P Project	Progressive rock	100.0	80s	74.0	rock	54.0	new wave	31.0	melodic rock	24.0
Lazuli	Progressive rock	100.0	french	31.0	seen live	27.0	rock	16.0	france	14.0
Affinity	Progressive rock	100.0	Jazz Rock	68.0	breakbeat	33.0	breaks	22.0	female vocalists	19.0
Alternative 4	Progressive rock	100.0	atmospheric rock	67.0	Doom Rock	49.0	melancholic	36.0	psychedelic	29.0
Heldon	Progressive rock	100.0	electronic	71.0	Avant-Garde	57.0	psychedelic	50.0	french	32.0
Tasavallan Presidentti	Progressive rock	100.0	finnish	56.0	rock	27.0	Progressive	21.0	finland	20.0
Retrospective	Progressive rock	100.0	polish	45.0	art rock	32.0	Progressive	25.0	rock	21.0
Il Balletto di Bronzo	Progressive rock	100.0	italian progressive rock	56.0	italian	31.0	Progressive	19.0	italian symphonic prog	19.0
Boil	Progressive rock	100.0	Progressive metal	78.0	alternative rock	55.0	hard rock	23.0	alternative metal	23.0
Ars Nova	Progressive rock	100.0	symphonic prog	37.0	japanese	33.0	instrumental	33.0	Symphonic Rock	13.0
Vennart	seen live	100.0	rock	100.0	experimental	100.0	Progressive rock	100.0	electronic	34.0
Memories of Machines	Progressive rock	100.0	art rock	49.0	ambient	34.0	atmospheric	29.0	british	9.0
Audience	Progressive rock	100.0	art rock	62.0	rock	35.0	experimental	35.0	Psychedelic Rock	20.0
Violeta de Outono	Progressive rock	100.0	post-punk	67.0	psychedelic	64.0	rock	39.0	Progressive	37.0
Albion	Progressive rock	100.0	trance	62.0	polish	41.0	art rock	37.0	electronic	19.0
Ephrat	Progressive rock	100.0	Progressive metal	61.0	Progressive	28.0	israeli	25.0	steven wilson	18.0
Quella Vecchia Locanda	Progressive rock	100.0	italian progressive rock	50.0	italian	30.0	italian prog	24.0	Progressive	18.0
Trace	Progressive rock	100.0	Drum and bass	44.0	symphonic prog	37.0	netherlands	32.0	Drum n Bass	21.0
Touchstone	Progressive rock	100.0	Progressive metal	42.0	female vocalists	22.0	celtic	20.0	irish	17.0
Sans Seraph	Progressive rock	100.0	alternative rock	87.0	alcoholic melancholic	35.0	ambient	32.0	Progressive	21.0
Morte Macabre	Progressive rock	100.0	instrumental	35.0	experimental	26.0	swedish	22.0	Progressive	17.0
Kan Wakan	indie pop	100.0	Progressive rock	100.0	alternative rock	67.0	indie	34.0	pop	34.0
Peter Pan	Progressive rock	100.0	polish	48.0	Progressive	21.0	rock	18.0	Disney	18.0
Out of Focus	Progressive rock	100.0	krautrock	99.0	Psychedelic Rock	50.0	Fusion	43.0	Jazz Rock	40.0
Floating Me	Progressive rock	100.0	australian	67.0	alternative rock	48.0	psychedelic	34.0	Progressive	34.0
Osanna	Progressive rock	100.0	italian progressive rock	51.0	italian	23.0	italian prog	19.0	Progressive	17.0
Aoria	Progressive rock	100.0	Progressive metal	62.0	post-rock	59.0	melancholic	37.0	swedish	30.0
Kenso	Progressive rock	100.0	Fusion	59.0	japanese	48.0	instrumental	30.0	Jazz Rock	16.0
Casino	Progressive rock	100.0	rock chileno	84.0	rock	73.0	mathcore	50.0	chile	45.0
Tiles	Progressive rock	100.0	Progressive metal	44.0	art rock	21.0	Progressive	20.0	american	13.0
Locanda delle Fate	Progressive rock	100.0	italian progressive rock	57.0	italian	36.0	italian symphonic prog	27.0	italian prog	21.0
McDonald and Giles	Progressive rock	100.0	art rock	46.0	Psychedelic Rock	40.0	Crossover Prog	23.0	Progressive	18.0
East of Eden	Progressive rock	100.0	rock	40.0	folk rock	40.0	british	33.0	classic rock	19.0
Lingua	Progressive rock	100.0	Progressive metal	99.0	alternative metal	52.0	alternative rock	45.0	rock	27.0
Roine Stolt	Progressive rock	100.0	symphonic prog	24.0	rock	20.0	swedish	20.0	prog	9.0
Landberk	Progressive rock	100.0	swedish	28.0	Progressive	13.0	Sweden	13.0	rock	12.0
Anubis	Progressive rock	100.0	thrash metal	50.0	visual kei	40.0	J-rock	24.0	Neo-prog	24.0
Exsimio	Progressive rock	100.0	art rock	50.0	avant prog	42.0	Progressive	34.0	rock	17.0
Robert Fripp & the League of Crafty Guitarists	Progressive rock	100.0	guitar	62.0	acoustic	54.0	rock	41.0	instrumental	39.0
Pan	Progressive rock	100.0	post-rock	59.0	rock	34.0	denmark	34.0	electronic	25.0
Carptree	Progressive rock	100.0	neo-progressive rock	20.0	neo progressive	17.0	swedish	15.0	rock	12.0
Happy the Man	Progressive rock	100.0	art rock	33.0	instrumental	24.0	Progressive	18.0	rock	10.0
Simon Says	Progressive rock	100.0	Nu Metal	39.0	rock	29.0	hard rock	27.0	alternative metal	21.0
Platypus	Progressive rock	100.0	Progressive metal	53.0	rock	22.0	Progressive	18.0	Supergroup	15.0
Amarok	Progressive rock	100.0	black metal	92.0	polish	35.0	Progressive	29.0	raw black metal	27.0
Gösta Berlings Saga	Progressive rock	100.0	instrumental	46.0	seen live	29.0	swedish	29.0	Sweden	16.0
Island	Progressive rock	100.0	Progressive metal	66.0	death metal	34.0	progressive death metal	32.0	Atmospheric metal	25.0
The Gourishankar	Progressive rock	100.0	art rock	40.0	experimental	32.0	russian	21.0	Progressive	20.0
The Wishing Tree	Progressive rock	100.0	folk	57.0	progressive folk	41.0	female vocalist	38.0	celtic	32.0
Birds and Buildings	Progressive rock	100.0	jazz fusion	44.0	Avant-Garde	31.0	jazz	24.0	Fusion	22.0
FSB	Progressive rock	100.0	bulgarian	65.0	bulgarian rock	65.0	rock	59.0	Fusion	18.0
Thinking Plague	Progressive rock	100.0	Avant-Prog	75.0	Avant-Garde	73.0	experimental	61.0	RIO	52.0
Flagship	Progressive rock	100.0	rock	34.0	seen live	25.0	piano	17.0	christian rock	17.0
Gilgamesh	Progressive rock	100.0	Canterbury Scene	66.0	Jazz Rock	59.0	Canterbury	50.0	rock	23.0
Let Me Introduce You to the End	Progressive rock	100.0	ambient	84.0	alternative rock	59.0	alternative	52.0	seen live	46.0
Andy Summers & Robert Fripp	Progressive rock	100.0	experimental	48.0	instrumental	45.0	guitar	43.0	ambient	18.0
Emerson, Lake & Powell	Progressive rock	100.0	classic rock	33.0	rock	22.0	Progressive	20.0	british	19.0
Bruford	Progressive rock	100.0	Fusion	69.0	jazz	48.0	jazz fusion	39.0	Jazz Rock	32.0
The Watch	Progressive rock	100.0	symphonic prog	30.0	Neo-prog	26.0	italian	14.0	italian progressive rock	11.0
Sleep Parade	Progressive rock	100.0	seen live	80.0	alternative rock	56.0	Progressive	42.0	rock	39.0
Fruupp	Progressive rock	100.0	psychedelic	26.0	70s	25.0	irish Symphonic Prog	21.0	70s progressive rock	16.0
Overhead	Progressive rock	100.0	seen live	36.0	rock	27.0	french	21.0	alternative	21.0
Gavin Harrison & 05Ric	Progressive rock	100.0	Fusion	83.0	experimental	75.0	Progressive	26.0	Blues Jazz Rock Fusion	18.0
Fred	Progressive rock	100.0	irish	91.0	Psychedelic Rock	91.0	seen live	55.0	french	46.0
Toehider	Progressive rock	100.0	australian	70.0	seen live	20.0	Progressive metal	20.0	metal	10.0
Elephant9	Progressive rock	100.0	Fusion	72.0	jazz	63.0	jazz fusion	57.0	instrumental	38.0
Anywhere	Progressive rock	100.0	Psychedelic Rock	100.0	experimental	66.0	psychedelic	58.0	Progressive	35.0
FreddeGredde	Progressive rock	100.0	acoustic	60.0	swedish	50.0	video game	50.0	rock	40.0
Incura	Progressive rock	100.0	alternative rock	81.0	Progressive	35.0	rock	24.0	emo	20.0
Sensations' Fix	Progressive rock	100.0	space rock	80.0	italian	47.0	synth	34.0	electronic	20.0
Klan	Progressive rock	100.0	polish	72.0	Psychedelic Rock	46.0	Jazz Rock	34.0	polish rock	22.0
H	Progressive rock	100.0	seen live	27.0	Incredible voice	27.0	noise	22.0	this is not progressive rock you retards	22.0
Gnidrolog	Progressive rock	100.0	art rock	36.0	folk rock	18.0	Progressive	16.0	rock	12.0
Isildurs Bane	Progressive rock	100.0	art rock	31.0	symphonic prog	23.0	swedish	20.0	jazz	14.0
Suns of the Tundra	Progressive rock	100.0	Progressive metal	76.0	Progressive	44.0	alternative rock	41.0	rock	28.0
Æon Spoke	Progressive rock	100.0	alternative rock	46.0	rock	41.0	indie	31.0	Mellow	24.0
Orne	Progressive rock	100.0	doom metal	36.0	finnish	33.0	dark progressive rock	29.0	Progressive	15.0
José Cid	Progressive rock	100.0	portuguese	54.0	Portugal	39.0	seen live	26.0	pop	21.0
Far East Family Band	Progressive rock	100.0	space rock	84.0	Psychedelic Rock	66.0	japanese	55.0	psychedelic	35.0
Edison's Children	Progressive rock	100.0	Psychedelic Rock	19.0	pallas	14.0	H Band	14.0	classic rock	10.0
801	Progressive rock	100.0	art rock	60.0	rock	41.0	experimental	38.0	Eno and Friends	19.0
A Barca do Sol	Progressive rock	100.0	psychedelic	45.0	brazilian progressive rock	45.0	brazilian	38.0	brasil	34.0
Lucifer Was	Progressive rock	100.0	hard rock	51.0	norwegian	29.0	Stoner Rock	27.0	rock	12.0
Mercer	Progressive rock	100.0	drumfunk	100.0	chillout	50.0	electronic	50.0	electronica	50.0
Alan Sorrenti	Progressive rock	100.0	italian	100.0	italian progressive rock	80.0	70s	59.0	italia	50.0
Spring	Progressive rock	100.0	classic rock	29.0	british	19.0	rock	14.0	art rock	14.0
Patrick Moraz	Progressive rock	100.0	keyboard virtuoso	52.0	keyboards	45.0	art rock	39.0	piano	34.0
Elohim	Progressive rock	100.0	black metal	75.0	Melodic Death Metal	63.0	death metal	38.0	french	25.0
Ragnarök	Progressive rock	100.0	swedish	55.0	progressive folk	38.0	folk	30.0	folk rock	21.0
Jukka Tolonen	Progressive rock	100.0	Fusion	62.0	finnish	54.0	jazz	45.0	jazz fusion	25.0
Breaking Orbit	Progressive rock	100.0	alternative rock	64.0	australian	53.0	Progressive	48.0	seen live	22.0
Fuzzy Duck	Progressive rock	100.0	Psychedelic Rock	64.0	hard rock	48.0	classic rock	31.0	rock	24.0
Patto	Progressive rock	100.0	Jazz Rock	63.0	Psychedelic Rock	42.0	classic rock	35.0	rock	32.0
Piirpauke	Progressive rock	100.0	folk	87.0	finnish	85.0	jazz fusion	78.0	jazz	69.0
Jacula	Progressive rock	100.0	occult rock	41.0	occult	40.0	Gothic	35.0	italian	34.0
Metamorfosi	Progressive rock	100.0	italian progressive rock	78.0	italian	35.0	italian symphonic prog	35.0	symphonic prog	33.0
Agents of Mercy	Progressive rock	100.0	swedish	28.0	Progressive	14.0	rock	10.0	prog rock	10.0
Jakszyk, Fripp and Collins	Progressive rock	100.0	art rock	45.0	ambient	33.0	jazz	27.0	soundscapes	20.0
Sorne	Progressive rock	100.0	tribal	73.0	experimental	64.0	Progressive	46.0	ethereal	46.0
Djam Karet	Progressive rock	100.0	instrumental	36.0	Psychedelic Rock	36.0	space rock	29.0	art rock	20.0
Alpha Male Tea Party	Progressive rock	100.0	math rock	86.0	experimental	43.0	seen live	29.0	post-rock	29.0
Moongarden	Progressive rock	100.0	Neo-prog	37.0	italian	28.0	Progressive	19.0	rock	13.0
Ikarus	Progressive rock	100.0	chillout	70.0	krautrock	66.0	ambient	53.0	electronic	40.0
Il Rovescio Della Medaglia	Progressive rock	100.0	italian progressive rock	61.0	italian	34.0	Progressive	24.0	italian prog	24.0
Lars Hollmer	Progressive rock	100.0	accordion	96.0	folk	83.0	experimental	83.0	world	40.0
Sky Architect	Progressive rock	100.0	symphonic prog	25.0	heavy prog	24.0	dutch	18.0	netherland	13.0
Port Noir	Progressive rock	100.0	experimental	50.0	post rock	50.0	alternative	38.0	swedish	38.0
Ongkara	Progressive rock	100.0	acoustic	52.0	russian	47.0	alternative rock	24.0	folk	24.0
Czar	Progressive rock	100.0	psychedelic	40.0	art rock	22.0	mathcore	22.0	Progressive metal	20.0
Day without Dawn	Progressive rock	100.0	Progressive metal	84.0	experimental	52.0	Progressive	33.0	new progressive	23.0
Sahara	Progressive rock	100.0	krautrock	44.0	german	38.0	Pop-Rock	32.0	heavy metal	25.0
Clepsydra	Progressive rock	100.0	neo-progressive rock	40.0	neo progressive	35.0	swiss	31.0	Neo-prog	30.0
Kaura	Progressive rock	100.0	alternative rock	60.0	modern rock	26.0	alternative progressive rock	23.0	rock	12.0
Flash	Progressive rock	100.0	hard rock	28.0	Glam Metal	25.0	classic rock	19.0	art rock	19.0
Brave	Progressive rock	100.0	Progressive metal	86.0	female vocalists	30.0	Gothic Metal	26.0	Female fronted metal	23.0
Asia Minor	Progressive rock	100.0	turkish	23.0	Turkish progressive	17.0	Progressive	14.0	symphonic prog	14.0
Starcastle	Progressive rock	100.0	70s	24.0	symphonic progressive	23.0	symphonic prog	21.0	70s progressive rock	12.0
Cos	Progressive rock	100.0	Canterbury Scene	65.0	Zeuhl	53.0	belgian	41.0	Avant-Garde	24.0
Atlanter	Progressive rock	100.0	norwegian	100.0	krautrock	84.0	seen live	50.0	Desert	50.0
Zior	Progressive rock	100.0	hard rock	83.0	Psychedelic Rock	71.0	classic rock	43.0	rock	30.0
Christian Älvestam	Progressive rock	100.0	swedish	77.0	electronic	65.0	Progressive metal	65.0	god	48.0
Collegium Musicum	Progressive rock	100.0	art rock	79.0	slovak	60.0	Psychedelic Rock	31.0	seen live	27.0
Ioearth	Progressive rock	100.0	female vocalists	25.0	Progressive	21.0	rock	13.0	prog	13.0
Climax	Progressive rock	100.0	bolivia	37.0	pop	28.0	soft rock	28.0	hardcore punk	28.0
Ty Tabor	Progressive rock	100.0	rock	69.0	guitar virtuoso	50.0	Progressive metal	32.0	hard rock	25.0
Anyone's Daughter	Progressive rock	100.0	krautrock	39.0	german	33.0	Symphonic Rock	27.0	symphonic prog	11.0
Tako	Progressive rock	100.0	rock	95.0	spanish	40.0	Spanish Rock	40.0	Aragon	30.0
Eric Woolfson	Progressive rock	100.0	rock	34.0	pop	24.0	art rock	14.0	avant garde rock	14.0
Höyry-kone	Progressive rock	100.0	Avant-Garde	83.0	Avant-Prog	58.0	experimental	54.0	finnish	47.0
Firehorse	alternative	100.0	Progressive rock	100.0	seen live	67.0	indie	67.0	female vocalists	67.0
Shun	Progressive rock	100.0	alternative rock	53.0	rock	27.0	japanese	18.0	melancholic	14.0
Crack the Sky	Progressive rock	100.0	classic rock	25.0	rock	25.0	70s progressive rock	21.0	Progressive	17.0
K Será	Progressive rock	100.0	indie	91.0	indie rock	55.0	Progressive	37.0	rock	19.0
Crystals	Progressive rock	100.0	rock	56.0	soul	45.0	jazz	34.0	indie	23.0
Comedy of Errors	Progressive rock	100.0	Neo-prog	39.0	neo-progressive rock	20.0	prog rock	12.0	neo progressive	12.0
Flamengo	Progressive rock	100.0	Czech	71.0	art rock	50.0	big beat	48.0	Jazz Rock	36.0
Kalevala	Progressive rock	100.0	folk metal	97.0	finnish	54.0	Finnish prog	29.0	russian	25.0
Flyte	Progressive rock	100.0	symphonic prog	58.0	seen live	29.0	NWOBHM	29.0	Female fronted metal	15.0
Cabezas de Cera	Progressive rock	100.0	mexico	52.0	instrumental	46.0	experimental	40.0	Avant-Garde	35.0
Ayurveda	Progressive rock	100.0	chillout	60.0	ethnic	60.0	Progressive	60.0	rock	40.0
Fläsket brinner	Progressive rock	100.0	progg	38.0	Sweden	33.0	jazz	20.0	swedish prog	20.0
Eureka	Progressive rock	100.0	alternative	22.0	art rock	16.0	folk rock	16.0	german	16.0
Stick Men	Progressive rock	100.0	seen live	66.0	experimental	53.0	funk	32.0	Fusion	19.0
Anima Morte	Progressive rock	100.0	horror	38.0	Soundtrack	31.0	instrumental	26.0	swedish	24.0
Tinyfish	Progressive rock	100.0	rock	19.0	Progressive	14.0	Crossover Prog	12.0	british	7.0
Your Best Friend	Progressive rock	100.0	Progressive	67.0	indie	50.0	math rock	50.0	indie rock	50.0
Yossi Sassi	Progressive rock	100.0	Progressive metal	78.0	oriental metal	52.0	oriental rock	45.0	israeli	30.0
Aunt Mary	Progressive rock	100.0	hard rock	54.0	Norway	49.0	classic rock	29.0	noisecore	29.0
Erik Norlander	Progressive rock	100.0	Progressive metal	43.0	keyboard virtuoso	23.0	instrumental	18.0	rock	13.0
Birdsongs of the Mesozoic	Progressive rock	100.0	Avant-Garde	67.0	Avant-Prog	65.0	RIO	55.0	contemporary jazz	29.0
Solution	Progressive rock	100.0	jazz-rock	100.0	seen live	82.0	netherlands	64.0	rock	55.0
Caamora	Progressive rock	100.0	rock opera	44.0	Neo-prog	25.0	art rock	19.0	Progressive	17.0
After...	Progressive rock	100.0	polish	34.0	art rock	30.0	seen live	26.0	Progressive	15.0
Tauk	seen live	100.0	post-rock	100.0	Progressive rock	100.0	Fusion	100.0	Jazz Rock	100.0
The Yellow Moon Band	Progressive rock	100.0	Psychedelic Rock	85.0	psychedelic	62.0	instrumental	54.0	rock	24.0
Wind	Progressive rock	100.0	krautrock	87.0	Schlager	50.0	wind	46.0	germany	41.0
Deus Ex Machina	Progressive rock	100.0	Avant-Garde	50.0	italian progressive rock	49.0	Fusion	32.0	italian	23.0
William D. Drake	Progressive rock	100.0	folk	75.0	pastoral pop	63.0	pronk	50.0	psychedelic	38.0
District 97	Progressive rock	100.0	Progressive metal	37.0	Crossover Prog	13.0	Female fronted metal	10.0	female vocalists	10.0
Gordon Giltrap	Progressive rock	100.0	folk	73.0	guitar	55.0	rock	46.0	acoustic	46.0
Aquelarre	Progressive rock	100.0	Rock Argentino	49.0	argentina	37.0	70s	35.0	argentinian rock	25.0
Colosseum II	Progressive rock	100.0	Jazz Rock	65.0	Fusion	60.0	rock	19.0	hard rock	17.0
Frequency Drift	Progressive rock	100.0	female vocalists	27.0	german	24.0	Crossover Prog	20.0	rock	10.0
Circus	Progressive rock	100.0	Jazz Rock	35.0	glam rock	25.0	french	15.0	swiss	15.0
Cosmograf	Progressive rock	100.0	neo-progressive rock	15.0	under 2000 listeners	10.0	Neo-prog	10.0	english	5.0
Dream the Electric Sleep	Progressive rock	100.0	rock	22.0	Symphonic Rock	22.0	tm: godsend	15.0	under 10 000 listeners	15.0
Stomacher	experimental	100.0	Progressive rock	100.0	indie	86.0	pop	58.0	Mellow	43.0
Albatross	Progressive rock	100.0	heavy metal	58.0	blues	58.0	indie	43.0	70s	43.0
Progres 2	Progressive rock	100.0	Czech	57.0	art rock	41.0	rock	19.0	Progressive	19.0
Jim Capaldi	Progressive rock	100.0	rock	75.0	british	50.0	AOR	50.0	80s	25.0
Cairo	Progressive rock	100.0	symphonic prog	23.0	Progressive	16.0	Progressive metal	15.0	rock	11.0
Hidden Hospitals	Progressive rock	100.0	alternative rock	75.0	math rock	63.0	emo	50.0	Progressive	50.0
Forma	Progressive rock	100.0	seen live	91.0	ambient	64.0	electronic	55.0	alternative	55.0
Jim Pembroke	Progressive rock	100.0	art rock	50.0	finnish	38.0	rock	25.0	finland	25.0
Slugbug	new wave	100.0	techno	100.0	electronic white nerd funk	100.0	indie	50.0	rock	50.0
Orchestre Tout Puissant Marcel Duchamp	seen live	100.0	Avant-Garde	100.0	krautrock	75.0	Jazz Rock	75.0	jazz	50.0
SoftSpot	Brooklyn	100.0	electronic	50.0	seen live	50.0	indie	50.0	rock	50.0
Impress	biesiada	100.0	rock	50.0	Progressive rock	50.0	art rock	50.0	Psychedelic Rock	50.0
Naing Naing	experimental	100.0	Avant-Garde	89.0	musique concrete	52.0	Concrete pop	45.0	avantgardener	38.0
Dubach Deut	poetry	100.0	german	78.0	post-revolutionary pop song	78.0	math rock	67.0	clinically romantic	56.0
Do Amor	brazilian	100.0	alternative	95.0	brasil	74.0	seen live	69.0	experimental	69.0
Laura Barrett	seen live	100.0	Canadian	79.0	indie folk	79.0	female vocalists	69.0	singer-songwriter	58.0
Nobuko Hori	experimental	100.0	noise	95.0	japanese	64.0	electronic	58.0	psychedelic	53.0
Tim Easton	seen live	100.0	singer-songwriter	100.0	Alt-country	100.0	americana	58.0	folk	50.0
Lars Eriksson	singer-songwriter	100.0	swedish	77.0	indie	47.0	acoustic	47.0	folk	31.0
Soan	singer-songwriter	100.0	folk	94.0	folk noir	88.0	folk rock	88.0	neofolk	88.0
Doug Burr	singer-songwriter	100.0	folk	93.0	seen live	47.0	indie	39.0	Alt-country	31.0
Willie Nile	singer-songwriter	100.0	rock	87.0	classic rock	73.0	new york	46.0	folk rock	46.0
Lily Kershaw	folk	100.0	singer-songwriter	100.0	female vocalists	80.0	Soundtrack	40.0	folk pop	40.0
TransViolet	indie	100.0	pop	100.0	alternative	100.0	singer-songwriter	100.0	\N	0.0
John Stewart	singer-songwriter	100.0	folk rock	65.0	70s	50.0	classic rock	43.0	folk	43.0
Hoss Curtis	country	100.0	singer-songwriter	100.0	Willie Nelson	100.0	Johnny Cash	100.0	Hank Williams	100.0
Jeff Buckley & Gary Lucas	singer-songwriter	100.0	alternative	67.0	rock	64.0	indie	61.0	alternative rock	40.0
Binocular	singer-songwriter	100.0	indie	82.0	acoustic	82.0	alternative	64.0	90s	46.0
Carlos Ann	singer-songwriter	100.0	spanish	90.0	spanish indie pop	80.0	Rock en Espanol	50.0	Rock Espanol	50.0
Søren Huss	folk	100.0	singer-songwriter	100.0	dansk	100.0	seen live	67.0	alternative	67.0
Dayna Kurtz	singer-songwriter	100.0	jazz	75.0	female vocalists	71.0	alternative	30.0	USA	25.0
Ben Weaver	singer-songwriter	100.0	folk	96.0	americana	70.0	Alt-country	70.0	seen live	61.0
長澤知之	singer-songwriter	100.0	japanese	75.0	checklist	50.0	acid-voice	50.0	seen live	25.0
Taylor Henderson	pop	100.0	folk	100.0	singer-songwriter	100.0	australian	100.0	country	50.0
Alin Coen	singer-songwriter	100.0	seen live	62.0	german	56.0	female singer-songwriter	45.0	female vocalists	30.0
Aaron Thomas	singer-songwriter	100.0	indie	71.0	folk	48.0	australia	42.0	indie rock	18.0
Daniel Cirera	singer-songwriter	100.0	seen live	89.0	swedish	83.0	singer songwriter	71.0	pop	48.0
Shannon Saunders	indie	100.0	female vocalists	100.0	singer-songwriter	100.0	indie pop	60.0	seen live	40.0
At Swim Two Birds	singer-songwriter	100.0	dream pop	80.0	indie	67.0	slowcore	67.0	indie pop	59.0
Sofi De la Torre	folk	100.0	singer-songwriter	100.0	pop	75.0	spanish	25.0	spain	25.0
Bill Ricchini	singer-songwriter	100.0	Mellow	55.0	folk	45.0	pop	35.0	Pennsylvania	30.0
Noe Venable	singer-songwriter	100.0	female vocalists	88.0	indie	85.0	folk	70.0	alternative	55.0
Wolf Maahn	singer-songwriter	100.0	Deutschrock	100.0	german	96.0	deutsch rock	86.0	rock	77.0
Sean Fournier	singer-songwriter	100.0	romantic	62.0	pop	47.0	easy listening	47.0	indie	39.0
Peggy Honeywell	singer-songwriter	100.0	folk	92.0	female vocalists	70.0	acousticindiefolk	44.0	indie folk	35.0
Josh Kumra	seen live	100.0	british	100.0	singer-songwriter	100.0	acoustic	75.0	New band of the day	50.0
Jason Manns	singer-songwriter	100.0	acoustic	75.0	folk rock	75.0	jason manns	42.0	love songs	34.0
David Berkeley	singer-songwriter	100.0	acoustic	63.0	seen live	50.0	folk	44.0	folk-rock	25.0
WTF!	female vocalists	100.0	singer-songwriter	100.0	jazz	50.0	instrumental	50.0	ambient	50.0
Weberty Moreira	rock	100.0	singer-songwriter	100.0	alternative	93.0	alternative rock	85.0	indie rock	70.0
Marian Call	singer-songwriter	100.0	folk	75.0	female vocalists	50.0	seen live	25.0	Firefly	25.0
Syd	singer-songwriter	100.0	seen live	67.0	indie	45.0	pop	12.0	rock	12.0
Susan Enan	female vocalists	100.0	singer-songwriter	100.0	folk	83.0	acoustic	83.0	pop	53.0
Claudia Koreck	singer-songwriter	100.0	german	87.0	bayrisch	87.0	bavarian	60.0	female vocalists	41.0
Paul Thorn	singer-songwriter	100.0	americana	90.0	Southern Rock	70.0	seen live	60.0	rock	30.0
Alistair Griffin	pop	100.0	british	100.0	singer-songwriter	100.0	britpop	63.0	pop rock	25.0
Zach Sobiech	singer-songwriter	100.0	acoustic	100.0	indie	50.0	pop	50.0	american	50.0
Adalita	singer-songwriter	100.0	australian	90.0	seen live	70.0	female vocalists	70.0	indie rock	60.0
Tim Bowness	singer-songwriter	100.0	ambient	83.0	Progressive rock	53.0	electronic	48.0	electronica	30.0
En espíritu y en verdad	spanish	100.0	female vocalists	100.0	singer-songwriter	100.0	christian rock	100.0	worship	100.0
Tricarico	singer-songwriter	100.0	pop	94.0	italian	94.0	alternative	44.0	Cantautore	44.0
Steve Adey	singer-songwriter	100.0	indie	57.0	folk	57.0	singer songwriter	32.0	Mark Hollis	32.0
Geron Hoy	indie	100.0	folk	100.0	singer-songwriter	100.0	rock	40.0	alternative	40.0
Big Fox	indie	100.0	swedish	100.0	singer-songwriter	100.0	seen live	50.0	indie pop	50.0
Levi Kreis	singer-songwriter	100.0	pop	77.0	alternative	47.0	gay	47.0	strong sensitive singer	24.0
The Boy Who Trapped The Sun	singer-songwriter	100.0	folk	75.0	indie folk	75.0	seen live	57.0	indie	57.0
Juan Perro	singer-songwriter	100.0	Spanish Rock	100.0	rock	89.0	Latin Rock	89.0	spanish	67.0
Mara Carlyle	singer-songwriter	100.0	female vocalists	74.0	folk	67.0	seen live	34.0	female	27.0
André Herman Düne	singer-songwriter	100.0	anti-folk	100.0	folk	77.0	Herman Dune	62.0	seen live	39.0
Nick Urb	indie	100.0	singer-songwriter	100.0	acoustic	100.0	male vocalists	100.0	2014	100.0
Robyn Hitchcock & the Venus 3	singer-songwriter	100.0	alternative	95.0	seen live	83.0	psychedelic	71.0	indie	48.0
Benton Paul	singer-songwriter	100.0	acoustic	50.0	band of horses	25.0	United States	25.0	LDS	25.0
Jess Penner	singer-songwriter	100.0	female vocalists	72.0	indie pop	65.0	indie	36.0	rock	36.0
Refree	indie	100.0	singer-songwriter	100.0	seen live	65.0	folk	65.0	catalan	50.0
Chocolate Genius	rock	100.0	soul	100.0	singer-songwriter	100.0	indie	85.0	alternative rock	62.0
Isak strand	seen live	100.0	singer-songwriter	100.0	Sweden	100.0	stockholm	34.0	strand	34.0
Aroah	female vocalists	100.0	singer-songwriter	100.0	indie	58.0	folk	50.0	spanish indie pop	43.0
John Paul White	indie	100.0	singer-songwriter	100.0	seen live	60.0	alternative	60.0	indie rock	50.0
Dan Arborise	singer-songwriter	100.0	acoustic	91.0	seen live	46.0	folk	46.0	chillout	10.0
Robert Post	singer-songwriter	100.0	norwegian	95.0	seen live	73.0	indie	45.0	pop	45.0
Kenta Gustafsson	singer-songwriter	100.0	swedish	60.0	seen live	40.0	All	40.0	pop	20.0
Святослав Свидригайлов	singer-songwriter	100.0	russian	75.0	acoustic	50.0	indie	25.0	bard	25.0
Eddi Front	singer-songwriter	100.0	piano	100.0	freak folk	100.0	alternative	75.0	female vocalists	50.0
Cary Pierce	singer-songwriter	100.0	acoustic pop	50.0	innerearmedia	50.0	awesome love them	50.0	\N	0.0
Dana Falconberry	singer-songwriter	100.0	female vocalists	64.0	seen live	55.0	Alt-country	55.0	folk	46.0
Adam Arcuragi	singer-songwriter	100.0	indie	75.0	folk	59.0	acoustic	34.0	seen live	25.0
Sjofn	singer-songwriter	100.0	indie folk	85.0	acousticindiefolk	73.0	folk	65.0	F O L K	44.0
Landon Austin	singer-songwriter	100.0	indie	67.0	pop	34.0	country	34.0	Mellow	34.0
Chad Perrone	singer-songwriter	100.0	Discoverockult	50.0	seen live	17.0	pop rock	17.0	amazing	17.0
B.C. Camplight	singer-songwriter	100.0	indie	88.0	indie rock	88.0	seen live	75.0	electronic	50.0
Chris Zabriskie	singer-songwriter	100.0	ambient	72.0	acoustic	72.0	indie	58.0	Lo-Fi	58.0
Rachel Taylor	electronic	100.0	female vocalists	100.0	singer-songwriter	100.0	USA	100.0	under 2000 listeners	100.0
Norman Wall	singer-songwriter	100.0	Andre Wall	100.0	fingerpicking guitar	86.0	chanson	80.0	Norman Wall	79.0
sara hartman	seen live	100.0	singer-songwriter	100.0	indie	50.0	pop	50.0	indie pop	50.0
Nedelle	singer-songwriter	100.0	female vocalists	83.0	indie pop	59.0	seen live	48.0	indie	48.0
Todd Carey	singer-songwriter	100.0	alternative pop	50.0	indie	36.0	seen live	29.0	feelgood	29.0
To Have Heroes	singer-songwriter	100.0	acoustic	92.0	rock	84.0	alternative	67.0	alternative rock	59.0
The Late Call	singer-songwriter	100.0	seen live	80.0	swedish	60.0	indie	50.0	indie pop	30.0
Grant McLennan	singer-songwriter	100.0	australia	89.0	indie pop	59.0	australian	42.0	seen live	36.0
Crybaby	pop	100.0	folk	100.0	singer-songwriter	100.0	two sheds	50.0	Soundtrack	25.0
Katie Gray	folk	100.0	singer-songwriter	100.0	acoustic	100.0	indie	63.0	female vocalists	63.0
Adrianne	female vocalists	100.0	singer-songwriter	100.0	folk	62.0	seen live	31.0	indie	16.0
MikelWJ	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Rap-A-Lot Presents Devin	hip hop	100.0	rap	100.0	genius	100.0	Dirty South	100.0	Indie Hip Hop	100.0
Hellfyre Club	Hip-Hop	100.0	hip hop	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
J.S.	electronic	100.0	instrumental	100.0	Indie Hip Hop	100.0	independent	100.0	demoscene	100.0
Aesop Rock feat. El-P	Hip-Hop	100.0	hip hop	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0
Aesop Rock feat. Rob Sonic	Hip-Hop	100.0	hip hop	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0
Old Scratch	black metal	100.0	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Horrorcore	100.0
Denmark	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	under 2000 listeners	100.0	indie hop	100.0
Peanut Butter Wolf's Jukebox 45's	Indie Hip Hop	100.0	music for a pack of wolves	100.0	\N	0.0	\N	0.0	\N	0.0
Hassan Chop	hip hop	100.0	underground rap	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0	Jazz Hop	100.0
Mandeep Sethi	Indie Hip Hop	100.0	Bay Area	100.0	\N	0.0	\N	0.0	\N	0.0
Gallery Drive	hip hop	100.0	hiphop	100.0	Indie Hip Hop	100.0	west coast	100.0	super group	100.0
Mr. Long	hip hop	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0	german	100.0	Deutschrap	100.0
CL Sosa	Indie Hip Hop	100.0	chillwave	100.0	experimental hip-hop	100.0	Lo-Fi	50.0	diy	50.0
T-Man	Hip-Hop	100.0	hip hop	100.0	emo	100.0	rap	100.0	underground rap	100.0
Idiotsavant	hip hop	100.0	experimental hip hop	100.0	instrumental hip hop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
Spy F & The Zakulas	Indie Hip Hop	100.0	indie	50.0	Greek	50.0	pop art records	50.0	vinyl microstore	50.0
Nite Owl	hip hop	100.0	Indie Hip Hop	100.0	real hip hop	100.0	undergound hip hop	100.0	hip hop band	100.0
Liberty Gigoloz	Indie Hip Hop	100.0	Hip-Hop	29.0	hip hop	29.0	rap	29.0	old school	29.0
Cage Kennylz	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Egod	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Nerdcore hip-hop	100.0	geeksta	100.0
Arch Druids	Hip-Hop	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0
Bango Collective feat. Kemo & Dennis Jones	Hip-Hop	100.0	electronic	100.0	seen live	100.0	indie	100.0	hip hop	100.0
Cheap Science	electronica	100.0	hip hop	100.0	alternative	100.0	experimental	100.0	Indie Hip Hop	100.0
Sir Menelik aka Cyclops 4000	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
MC Jeff Z	glitch-hop	100.0	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Nerdcore hip-hop	100.0
ZeroBitRate	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Nerdcore hip-hop	100.0	geeksta	100.0
Outcast Youth	Indie Hip Hop	100.0	hipster hop	100.0	soft hip hop	100.0	emo hip hop	100.0	\N	0.0
spamtec feat. dj int	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Nerdcore hip-hop	100.0	geeksta	100.0
Kolyric	experimental	100.0	spoken word	100.0	Indie Hip Hop	100.0	emotional	100.0	alternative hip hop	100.0
Diskette	glitch-hop	100.0	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Nerdcore hip-hop	100.0
Bango Collective ft. Kemo and Dennis Jones	Hip-Hop	100.0	electronic	100.0	seen live	100.0	indie	100.0	hip hop	100.0
Sick Lyrical Damager	underground rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	\N	0.0	\N	0.0
Moose Children	hip hop	100.0	rap	100.0	experimental	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0
Sir Up	glitch-hop	100.0	Indie Hip Hop	100.0	alternative hip-hop	100.0	nerdcore	100.0	Nerdcore hip-hop	100.0
p.WRECKS & Xrin Arms	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	grindcore karaoke	100.0
Beasthead	electronic	100.0	ambient	100.0	indie rock	100.0	synth pop	100.0	Indie Hip Hop	100.0
HappyFace(해피페이스)	indie	100.0	alternative	100.0	alternative rock	100.0	Indie Hip Hop	100.0	Asian	100.0
Kenneth Masters	underground hip-hop	100.0	Indie Hip Hop	100.0	localsupport	100.0	hip hop : underground	100.0	\N	0.0
Imperfekt	hip hop	100.0	instrumental	100.0	emo	100.0	rap	100.0	underground rap	100.0
Living Stereo	Indie Hip Hop	100.0	Garage Rock	100.0	alternative rap	100.0	indie rap	100.0	alternative hip hop	100.0
J. Marcus	Hip-Hop	100.0	chillout	100.0	electronic	100.0	electronica	100.0	trip-hop	100.0
Noyeek the Grizzly Bear	hip hop	100.0	rap	100.0	funk	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
DJ Risky Bizness	Hip-Hop	100.0	Indie Hip Hop	100.0	Real hip-hop	100.0	\N	0.0	\N	0.0
Animalia	indie	100.0	Classical	100.0	jazz	100.0	rock	100.0	Grunge	100.0
J-Live, R.A. The Rugged Man & Think Differently Music	classic	100.0	favorites	100.0	underground rap	100.0	Indie Hip Hop	100.0	Favorite	100.0
Emarcinati	Hip-Hop	100.0	hip hop	100.0	rap	100.0	underground rap	100.0	Indie Hip Hop	100.0
Literati	Indie Hip Hop	100.0	alternative hip hop	100.0	Fill In The Breaks	100.0	\N	0.0	\N	0.0
Alpha Prhyme	hip hop	100.0	ninja tune	100.0	Indie Hip Hop	100.0	big dada	100.0	luke vibert	100.0
Ben.E.Factor	Hip-Hop	100.0	rap	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0	Canadian Hip-Hop	100.0
Bottled Water	hip hop	100.0	experimental hip hop	100.0	Indie Hip Hop	100.0	under 2000 listeners	100.0	abstract hip-hop	100.0
Quiz 10 & Tahkid	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	grindcore karaoke	100.0
Phil Moore Browne	hip hop	100.0	rock	100.0	Indie Hip Hop	100.0	Black Rock	100.0	\N	0.0
Notebook.	electronic	100.0	indie	100.0	hip hop	100.0	rap	100.0	experimental	100.0
Silent Sabotuers	Hip-Hop	100.0	Minnesota	100.0	rap	100.0	Indie Hip Hop	100.0	montana	100.0
Phreeze Phrame	Hip-Hop	100.0	indie	100.0	hip hop	100.0	soul	100.0	rap	100.0
Finless Brown	Hip-Hop	100.0	electronic	100.0	trip-hop	100.0	indie	100.0	jazz	100.0
Edan Feat. Insight	hip hop	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0
Apathy, M. Shinoda, and Tak of S.O.B.	Hip-Hop	100.0	Indie Hip Hop	100.0	Real hip-hop	100.0	\N	0.0	\N	0.0
Think Differently Music & C.C.F. Division	classic	100.0	favorites	100.0	underground rap	100.0	Indie Hip Hop	100.0	wu-tang	100.0
Part 2 & Juice Aleem	hip hop	100.0	Indie Hip Hop	100.0	UK hip hop	100.0	\N	0.0	\N	0.0
Greg Albrecht	noise	100.0	electronic	100.0	electronica	100.0	indie	100.0	hip hop	100.0
Hickford Botsman	Indie Hip Hop	100.0	Minneapolis	100.0	\N	0.0	\N	0.0	\N	0.0
Absent Acclaim & Matt Ants	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	collaboration	100.0	underground hip hop	100.0
Tarica June	hip hop	100.0	spoken word	100.0	Indie Hip Hop	100.0	female vocalist	100.0	Conscious Hip Hop	100.0
Fort Minor, Styles of Beyond, & Celph Titled	Hip-Hop	100.0	Indie Hip Hop	100.0	Real hip-hop	100.0	Wick	100.0	\N	0.0
Sensitivity Boosters	chill	100.0	comedy	100.0	Indie Hip Hop	100.0	nerdcore	100.0	under 2000 listeners	100.0
Toastie Tailor	hip hop	100.0	Indie Hip Hop	100.0	UK hip hop	100.0	\N	0.0	\N	0.0
Matt Ants and Will Spliff	Hip-Hop	100.0	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	collaboration	100.0
Murs Feat. Shock G. & Humpty Hump	hip hop	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0
A-DUBS The Architect	Hip-Hop	100.0	hip hop	100.0	hiphop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
Deaddolphin and Graciellita	Hip-Hop	100.0	chillout	100.0	electronic	100.0	electronica	100.0	trip-hop	100.0
Arhythmatik	hip hop	100.0	Indie Hip Hop	100.0	LDS	100.0	deepsoul	100.0	Cocaineblunts	100.0
Besatree & Kserious	indie	100.0	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
Auddio Draggon	Hip-Hop	100.0	twin cities	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
Architects of Intellect	Indie Hip Hop	100.0	underground hip hop	100.0	boston hip hop	100.0	\N	0.0	\N	0.0
C-Plex / Boxguts	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	grindcore karaoke	100.0
GZA/Genius, LA the Darkman, Ras Kass, Scarmanga, Shallah & Think Differently Music	classic	100.0	favorites	100.0	underground rap	100.0	Indie Hip Hop	100.0	Favorite	100.0
Goldz Field	Hip-Hop	100.0	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
Transcribe	hip hop	100.0	Indie Hip Hop	100.0	Orlando	100.0	dj chi	100.0	holotech	100.0
Chaotic Ko	Hip-Hop	100.0	electronic	100.0	hip hop	100.0	pop	100.0	rap	100.0
Mycullbeatz	heavy metal	100.0	hip hop	100.0	rock	100.0	alternative	100.0	rap	100.0
Kaino!	Hip-Hop	100.0	indie	100.0	hip hop	100.0	alternative	100.0	rap	100.0
LIQDZUNSHINE	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Ifiok and Davy	hip hop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	under 2000 listeners	100.0	indie rap	100.0
Anatoly Ice & Jim Dunloop	Hip-Hop	100.0	soul	100.0	funk	100.0	Indie Hip Hop	100.0	rhythm and blues	100.0
B'tol & Jagos	hip hop	100.0	rap	100.0	UK	100.0	bristol	100.0	Indie Hip Hop	100.0
Axis Intact	Hip-Hop	100.0	electronic	100.0	hip hop	100.0	rap	100.0	experimental	100.0
SalleZ STIMA	Indie Hip Hop	100.0	underground hip hop	100.0	alternative hip hop	100.0	rap brasil	100.0	rap brazil	100.0
qcut	nu jazz	100.0	Hip-Hop	100.0	chillout	100.0	electronic	100.0	electronica	100.0
Lo-Fi Vocab	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	collaboration	100.0	underground hip hop	100.0
Jus Frais	Disco	100.0	hip hop	100.0	soul	100.0	classic	100.0	80s	100.0
TooTone Taurus	indie	100.0	hip hop	100.0	rap	100.0	experimental	100.0	underground rap	100.0
Tenacity and S.A	Hip-Hop	100.0	rap	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0
Kidd the Captain	experimental hip hop	100.0	Indie Hip Hop	100.0	Samplecore	100.0	nerd hop	100.0	\N	0.0
vulgo Lester	indie	100.0	hip hop	100.0	alternative	100.0	rap	100.0	other	100.0
Homegrownn	hip hop	100.0	Indie Hip Hop	100.0	Colorado	100.0	colorado hip hop	100.0	HomeGrownn	100.0
Imperiul Liric	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	Moldova	100.0	knowledge	100.0
-Unsystematic-	Hip-Hop	100.0	hip hop	100.0	UK	100.0	underground hip-hop	100.0	spoken word	100.0
AV15	beats	100.0	Indie Hip Hop	100.0	East Coast	100.0	life	100.0	rhymes	100.0
Ladyblazer	indie	100.0	hip hop	100.0	alternative	100.0	rap	100.0	Indie Hip Hop	100.0
Kneal	Hip-Hop	100.0	hip hop	100.0	New Orleans	100.0	Dirty South	100.0	Indie Hip Hop	100.0
Boxguts / Blunted Sultan	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	grindcore karaoke	100.0
L Gunnz	hip hop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	virginia	100.0	\N	0.0
Trop Montune	hip hop	100.0	rap	100.0	new york	100.0	latin	100.0	Indie Hip Hop	100.0
Ale From SummerClub	hip hop	100.0	chill	100.0	Indie Hip Hop	100.0	deep house	100.0	soundcloud	100.0
ARC the Messenger	Indie Hip Hop	100.0	underground hip hop	100.0	lyricist	100.0	PV	100.0	Arc	100.0
Common feat. Y-Not	Hip-Hop	100.0	Indie Hip Hop	100.0	Real hip-hop	100.0	\N	0.0	\N	0.0
Matt Voscinar	Hip-Hop	100.0	hip hop	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0
Vg Skillz aka V Zilla	Hip-Hop	100.0	hip hop	100.0	rap	100.0	underground hip-hop	100.0	Indie Hip Hop	100.0
Drunken Immortals, New Flesh For Old & Roots Manuva	hip hop	100.0	Indie Hip Hop	100.0	\N	0.0	\N	0.0	\N	0.0
anemus	hip hop	100.0	instrumental	100.0	Indie Hip Hop	100.0	anemus	100.0	\N	0.0
poetic sages illuminated	Hip-Hop	100.0	electronic	100.0	hip hop	100.0	rap	100.0	underground rap	100.0
JayDYungFly	chillout	100.0	indie	100.0	hip hop	100.0	chill	100.0	alternative	100.0
Eleperez	spanish	100.0	indie	100.0	hip hop	100.0	rap	100.0	Indie Hip Hop	100.0
DeShanko Pigpen	hip hop	100.0	Indie Hip Hop	100.0	acid rap	100.0	cloud rap	100.0	ali3n squad	100.0
N8 Ball	hip hop	100.0	Indie Hip Hop	100.0	underground hip hop	100.0	carnivore	100.0	kfc core	100.0
suspence diamond boy wonder	Indie Hip Hop	100.0	indie hip hop hotjewlz	100.0	indie hip hop hotjewlz hot jewlz	100.0	indie hip hop hotjewlz hot jewlz suspence	100.0	indie hip hop hotjewlz hot jewlz suspence suspense	100.0
The Urban Minstrel	Hip-Hop	100.0	indie	100.0	hip hop	100.0	pop	100.0	underground hip-hop	100.0
P.O.S. x Astronautalis	hip hop	100.0	Indie Hip Hop	100.0	collaboration	100.0	underground hip hop	100.0	emo rap	100.0
MF Doom	Hip-Hop	100.0	underground hip-hop	56.0	rap	41.0	hip hop	35.0	mf doom	22.0
Alias the @ikt	Hip-Hop	100.0	hip hop	100.0	rap	100.0	hiphop	100.0	Indie Hip Hop	100.0
Casual, Rock Marciano, Think Differently Music & Vordul Mega	Hip-Hop	100.0	hip hop	67.0	rap	34.0	\N	0.0	\N	0.0
Ninja Highschool	Hip-Hop	100.0	Canadian	94.0	indie	82.0	hip hop	38.0	seen live	32.0
Dr Oop	hip hop	100.0	Hip-Hop	80.0	underground hip-hop	60.0	LA	60.0	alternative rap	40.0
This, That, & the 3rd	underground hip-hop	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Mac Lethal & DJ Sku	Hip-Hop	100.0	underground hip-hop	87.0	rhymesayers	48.0	rap	45.0	seen live	33.0
The Bombdogs	House	100.0	electronic	34.0	breakcore	34.0	drum & bass	34.0	electronic house	34.0
Boom Bip and DoseOne	Hip-Hop	100.0	experimental	66.0	anticon	56.0	electronic	45.0	abstract hip-hop	37.0
IndieFeed Hip-Hop	Discovery	100.0	Indie Hip Hop	100.0	podcast	100.0	underground	100.0	\N	0.0
Oh No!	Hip-Hop	100.0	underground hip-hop	68.0	Stones throw	60.0	hip hop	44.0	rap	38.0
Kevin Abstract	Hip-Hop	100.0	Indie Hip Hop	75.0	experimental hip-hop	75.0	under 2000 listeners	50.0	hip hop	25.0
Intermet	Hip-Hop	100.0	hip hop	100.0	UK	75.0	Indie Hip Hop	75.0	independent hip-hop	75.0
Small Town Zeros	tripstep	100.0	indie	67.0	hip hop	67.0	dubstep	67.0	beats	67.0
The Visionaries	Hip-Hop	100.0	underground hip-hop	73.0	hip hop	52.0	Progressive deathcore	32.0	rap	30.0
Euphrates	Hip-Hop	100.0	political hiphop	84.0	underground hip-hop	50.0	Indie Hip Hop	50.0	rap	34.0
Jetpack Jones	Hip-Hop	100.0	hip hop	50.0	rap	50.0	experimental hip hop	50.0	Indie Hip Hop	50.0
My Parents Favorite Music	Hip-Hop	100.0	rap	100.0	nerdcore	100.0	seen live	50.0	hip hop	50.0
Dunson	hip hop	100.0	Better Than Your Favorite Rapper	100.0	indie	50.0	rap	50.0	Indie Hip Hop	50.0
Andreas Saag	chillout	100.0	lounge	100.0	nu jazz	50.0	Hip-Hop	50.0	electronic	50.0
Sole & Dj Pain 1	hip hop	100.0	rap	100.0	political	50.0	Indie Hip Hop	50.0	collaboration	50.0
Isosceles	seen live	100.0	Canadian Hip-Hop	100.0	Hip-Hop	50.0	indie	50.0	hip hop	50.0
Isaiah & Hovey	Hip-Hop	100.0	rap	100.0	electronic	50.0	electronica	50.0	indie	50.0
Phase 2	Def Jux	100.0	Hip-Hop	50.0	hip hop	50.0	liquid funk	50.0	Indie Hip Hop	50.0
Storm Davis	underground hip-hop	100.0	hip hop	50.0	Indie Hip Hop	50.0	underground hip hop	50.0	under 2000 listeners	50.0
Radioinactive And Antimc	Hip-Hop	100.0	underground hip-hop	100.0	abstract hip-hop	100.0	hip hop	50.0	experimental hip hop	50.0
Muskabeatz	Hip-Hop	100.0	Indie Hip Hop	50.0	underground rap	34.0	turntablism	34.0	Chad Muska	34.0
Tha Pantz	nerdcore	100.0	laptop rap	100.0	Hip-Hop	50.0	alternative	50.0	experimental	50.0
Nicholas Wonder	underground hip-hop	100.0	jazz	50.0	hip hop	50.0	mos def	50.0	Indie Hip Hop	50.0
Black Opz	Hip-Hop	100.0	rap	50.0	underground rap	50.0	NYC	50.0	Indie Hip Hop	50.0
Rae & Christian feat. Kate Rogers	nu jazz	100.0	Hip-Hop	50.0	chillout	50.0	electronic	50.0	jazz	50.0
Abadawn	underground	100.0	Hip-Hop	50.0	Indie Hip Hop	50.0	under 2000 listeners	50.0	independent	50.0
the Spooj	rap	100.0	weird	100.0	nerdcore	100.0	james call	100.0	Hip-Hop	50.0
Boxguts	rap	100.0	grindcore karaoke	100.0	Hip-Hop	50.0	hip hop	50.0	underground hip-hop	50.0
Mickey Napalm	rap	100.0	hip hop	75.0	Indie Hip Hop	50.0	raw	50.0	underground hip hop	50.0
1865	1865	100.0	Hip-Hop	50.0	indie	50.0	hip hop	50.0	Indie Hip Hop	50.0
Apache Chief	Garage Punk	100.0	Trash	100.0	tacoma	100.0	seen live	50.0	hip hop	50.0
Sky 7th	rap	100.0	Hip-Hop	50.0	hip hop	50.0	underground hip-hop	50.0	Indie Hip Hop	50.0
Dj Ryuman	hip hop	100.0	Jazz Hop	100.0	instrumental hip hop	50.0	beats	50.0	Indie Hip Hop	50.0
Gif	rap	100.0	spoken word	100.0	Hip-Hop	50.0	hip hop	50.0	underground hip-hop	50.0
Head-Roc	hip hop	100.0	underground hip hop	100.0	washington dc	100.0	Indie Hip Hop	50.0	under 2000 listeners	50.0
The Cornel West Theory	alternative hip hop	100.0	Conscious Hip Hop	100.0	hip hop	50.0	rap	50.0	experimental	50.0
Protoman	Hip-Hop	100.0	hip hop	50.0	rap	50.0	Madlib	50.0	mf doom	50.0
The Volunteerz	Hip-Hop	100.0	rap	100.0	hip hop	50.0	canada	50.0	Canadian	50.0
Rosaly Pfeffer	hip hop	100.0	electronic	50.0	electronica	50.0	rap	50.0	Indie Hip Hop	50.0
Hollywood Kill Krew	tyler the creator	100.0	Hip-Hop	50.0	hip hop	50.0	chill	50.0	olympia	50.0
Nitty Gritty Radio	hip hop	100.0	chill out	100.0	classic hip-hop	100.0	Old School Hip Hip	100.0	Hip-Hop	50.0
ZETfree	Denver Hip Hop	100.0	Colorado Springs Hip Hop	100.0	Made Up Mind	100.0	indie	50.0	hip hop	50.0
Gentle Jones	Hip-Hop	100.0	american	100.0	indie	50.0	chill	50.0	punk	50.0
The Brown James	indie	100.0	hip hop	100.0	rap	100.0	experimental	100.0	rock	50.0
J Gutta and TremorsAudio	Hip-Hop	100.0	rap	100.0	indie	50.0	vocal	50.0	hip hop	50.0
matt ants	hip hop	100.0	rap	100.0	underground hip hop	100.0	Indie Hip Hop	50.0	Laugh Now	50.0
Queen Bitch	Hip-Hop	100.0	hip hop	100.0	rap	100.0	heavy metal	50.0	hard rock	50.0
Think Differently Music & Gza & Ras Kass	wu-tang	100.0	Hip-Hop	50.0	hip hop	50.0	classic	50.0	rap	50.0
saintcat_breaks	downtempo	100.0	underground hip-hop	50.0	breaks	50.0	instrumental hip-hop	50.0	Indie Hip Hop	50.0
Happyflies	hip hop	100.0	experimental	100.0	experimental hip hop	100.0	abstract	100.0	California	100.0
Public Defendaz	rap	100.0	Hip-Hop	50.0	Indie Hip Hop	50.0	underground hip hop	50.0	under 2000 listeners	50.0
duke23	Hip-Hop	100.0	experimental	100.0	duke23	100.0	earthdirt	100.0	trip-hop	50.0
Espi Twelve	idm	100.0	instrumental hip-hop	100.0	experimental hip-hop	100.0	Hip-Hop	50.0	hip hop	50.0
Freddy B Official	hip hop	100.0	rock	100.0	Awesome	100.0	music	100.0	Jackson	100.0
Dussel Has Friends	Hip-Hop	100.0	indie	100.0	rock	100.0	rap	100.0	american	100.0
StillCatchinWreck	hip hop	100.0	independent hip hop	100.0	garage hop	100.0	indie	50.0	rap	50.0
T Web	philippines	100.0	nu jazz	50.0	Hip-Hop	50.0	chillout	50.0	electronic	50.0
Bear the Astronot	arizona	100.0	Hip-Hop	50.0	indie	50.0	jazz	50.0	hip hop	50.0
Aaron Elite	Aaron Elite	100.0	hip hop	50.0	rap	50.0	Indie Hip Hop	50.0	under 2000 listeners	50.0
MC White Noise	underground rap	100.0	hardcore rap	100.0	abstract rap	100.0	acid rap	100.0	Hip-Hop	50.0
Мне Холодно Мыться	abstract hip-hop	100.0	experimental	50.0	underground hip-hop	50.0	instrumental hip hop	50.0	Gangsta Rap	50.0
Maciej Magiera	Polak potrafi	100.0	libushash	100.0	zodiak na melanzu	100.0	rap	50.0	comedy	50.0
technique, smeshnoy, кастроман, кещит	underground hip-hop	100.0	Indie Hip Hop	50.0	russian hip-hop	50.0	russian abstract hh	50.0	\N	0.0
P-Y-N	electro	100.0	techno	100.0	blog	100.0	Beubeu	100.0	Sw1n	100.0
John Robinson (Lil' Sci)	Hip-Hop	100.0	hip hop	49.0	underground hip-hop	49.0	rap	39.0	Hyper Techno	30.0
Atmoshpere	Hip-Hop	100.0	underground hip-hop	47.0	rap	46.0	hip hop	39.0	seen live	28.0
Far-East Movement	Hip-Hop	100.0	electronic	88.0	electro hop	57.0	rap	47.0	hip hop	36.0
Prolyphic and Reanimator	Hip-Hop	100.0	underground hip-hop	87.0	underground rap	40.0	hip hop	27.0	alternative hip-hop	27.0
O.U.O.	yes	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
illone	electronic	100.0	hip hop	100.0	minimal	80.0	pataphysique	80.0	abstract hip-hop	60.0
Ham-STAR	nerdcore	100.0	Indie Hip Hop	40.0	rap	20.0	Raucous	20.0	funny	20.0
Gym Class Heros	Hip-Hop	100.0	indie	59.0	alternative	53.0	seen live	47.0	rap	46.0
DJ Muggs Vs. GZA The Genius	Hip-Hop	100.0	rap	46.0	Indie Hip Hop	37.0	wu-tang	28.0	Real hip-hop	28.0
Shadowrunners	Hip-Hop	100.0	rap	100.0	underground hip-hop	67.0	hip hop	34.0	Indie Hip Hop	34.0
Rodes	hip hop	100.0	Greek	100.0	greek hip hop	84.0	seen live	67.0	Hip-Hop	34.0
Thesis Sahib	Hip-Hop	100.0	abstract hip-hop	67.0	experimental hip-hop	67.0	hip hop	34.0	rap	34.0
Phatchance	Hip-Hop	100.0	hip hop	67.0	australia	67.0	australian hip hop	67.0	emo	34.0
Kublakai	underground hip-hop	100.0	underground rap	67.0	jazz	34.0	seattle	34.0	rap	34.0
Four Fists	rap	100.0	Doomtree	67.0	Hip-Hop	34.0	indie	34.0	hip hop	34.0
Raziel Nisroc	rap	100.0	indie hip-hop	100.0	experimental hip hop	67.0	Turkish Rap	67.0	alternative hip hop	67.0
the rap shrew	nerdcore	100.0	glitch-hop	67.0	Nerdcore hip-hop	67.0	Indie Hip Hop	34.0	alternative hip-hop	34.0
Prayers For Atheists	punk	100.0	political hip-hop	100.0	indie	67.0	alternative	67.0	activist	67.0
Black Knights of the North Star	Hip-Hop	100.0	wu-tang	67.0	rap	34.0	new york	34.0	Indie Hip Hop	34.0
Lane Shuler	rap	100.0	LANE SHULER	100.0	indie	67.0	anticon	67.0	wu tang clan	67.0
Lord Runningclam	downtempo	100.0	lounge	100.0	electronic	67.0	Broken Beat	67.0	breakbeat	67.0
Beyond There	turntablism	100.0	Hip-Hop	67.0	hip hop	34.0	instrumental hip hop	34.0	Indie Hip Hop	34.0
Disflex.6	Hip-Hop	100.0	underground hip-hop	100.0	Indie Hip Hop	34.0	HipHopStrumentals	34.0	\N	0.0
Jay-Z vs. Madvillain	hip hop	100.0	Hip-Hop	67.0	mash up	67.0	indie	34.0	alternative	34.0
Abbeye & SirOJ	nederhop	100.0	Hip-Hop	84.0	rap	84.0	dutch rap	84.0	independant	50.0
McDj	nerdcore	100.0	glitch-hop	67.0	noise	34.0	black metal	34.0	club	34.0
PC Speaker	nerdcore	100.0	nerdcore hiphop	67.0	american	34.0	Indie Hip Hop	34.0	drugs	34.0
Paulie Rhyme	rap	100.0	Hip-Hop	67.0	hip hop	67.0	electronic	34.0	trip-hop	34.0
Jazzonia	electronic	100.0	bill laswell	100.0	Hip-Hop	67.0	jazz	67.0	House	67.0
GuessWho	Hip-Hop	100.0	rap	86.0	Romanian Hip-Hop	58.0	Guess Who	58.0	Romanian	48.0
Sleep of Oldominion	underground hip-hop	100.0	oldominion	62.0	Hip-Hop	47.0	hip hop	39.0	strange famous	24.0
RO	Hip-Hop	100.0	instrumental	75.0	electronic	50.0	japanese	50.0	rap	50.0
The Aztext	Hip-Hop	100.0	hip hop	100.0	rap	100.0	underground rap	100.0	underground	75.0
LMNO & Kev Brown	Hip-Hop	100.0	rap	50.0	underground hip-hop	50.0	Indie Hip Hop	25.0	chicago	25.0
Prolyphic & Buddy Peace	strange famous	100.0	rap	50.0	underground hip-hop	50.0	Hip-Hop	25.0	underground rap	25.0
Cold Duck Complex	hip hop	100.0	seen live	50.0	funk	50.0	Hip-Hop	25.0	indie	25.0
Game Rebellion	rock	100.0	punk	100.0	rap	50.0	rapcore	50.0	rap rock	50.0
Willy Sunshine	downtempo	100.0	jazzy	100.0	chillout	75.0	jazz	75.0	hip hop	50.0
p.WRECKS	rap	100.0	Hip-Hop	75.0	hip hop	75.0	underground hip-hop	50.0	hiphop	25.0
meter versus yard	nerdcore	100.0	glitch-hop	50.0	Indie Hip Hop	25.0	alternative hip-hop	25.0	Nerdcore hip-hop	25.0
Lynx feat. Kemo	Drum and bass	100.0	electronic	75.0	seen live	50.0	underground	50.0	Hip-Hop	25.0
Corey Red	Christian Rap	100.0	East Coast	75.0	hip hop	50.0	new york	50.0	hiphop	50.0
Ушат Грязи	underground hip-hop	100.0	Hip-Hop	75.0	experimental hip-hop	75.0	russian	50.0	under 2000 listeners	50.0
Brent Lee Regan	experimental	100.0	hip hop	75.0	the music maker society	75.0	lesser known yet streamable artists	50.0	artists who are lastfm users 2	50.0
Deaddolphin	folk-hop	100.0	Hip-Hop	75.0	indie	75.0	experimental	75.0	experimental hip-hop	50.0
Made Up Minds	Colorado	100.0	underground hip hop	100.0	Found*ded Records	100.0	hip hop	75.0	1984	75.0
The Verbal Remedy	hip hop	100.0	underground	100.0	ZET	100.0	Found*ded Records	100.0	indie	75.0
Reaching Quiet	Hip-Hop	100.0	anticon	100.0	experimental	98.0	underground hip-hop	42.0	Indie Hip Hop	24.0
Jump Smokers	Hip-Hop	100.0	electronic	80.0	electro	60.0	House	60.0	electronica	40.0
SteleVerzi	alternative	100.0	Hip-Hop	80.0	experimental	80.0	indie	60.0	Romanian	60.0
Vitor Brauer	Lo-Fi	100.0	spoken word	100.0	experimental	80.0	ambient	60.0	Hip-Hop	40.0
Freddie Bruno	Hip-Hop	100.0	christian	80.0	hip hop	40.0	hiphop	40.0	texas	40.0
Philadelphia Slick	Hip-Hop	100.0	Jazz Hop	80.0	Philadelphia	60.0	rap	60.0	seen live	20.0
Kemo	Hip-Hop	100.0	alternative	80.0	slam	40.0	spoof	40.0	alternative hip hop	40.0
A-List	dubstep	100.0	electronic	40.0	Columbus	40.0	rappers	40.0	jazzy hip hop	40.0
dr. Oop	hip hop	100.0	Hip-Hop	80.0	underground hip-hop	60.0	LA	60.0	alternative rap	40.0
That's Adultery	hip hop	100.0	experimental	40.0	Hip-Hop	20.0	indie	20.0	rap	20.0
Birdapres	Hip-Hop	100.0	Canadian	100.0	Canadian Hip-Hop	100.0	rap	60.0	underground hip-hop	60.0
Ace Deuce	rap	100.0	indie	40.0	texas	40.0	southern rap	40.0	Hip-Hop	20.0
Lynx ft. Kemo	Drum and bass	100.0	liquid funk	40.0	Hip-Hop	20.0	electronic	20.0	seen live	20.0
Suzuki Kaioh	hip hop	100.0	boom bap	80.0	underground hip hop	60.0	undergroundhiphop	60.0	Suzuki Kaioh	60.0
Obscure Disorder	Hip-Hop	100.0	hip hop	80.0	rap	40.0	nu jazz	20.0	chillout	20.0
MECHP	nerdcore	100.0	Hip-Hop	20.0	rap	20.0	american	20.0	glitch-hop	20.0
Shadow People	experimental	100.0	hip hop	80.0	rap	80.0	underground rap	80.0	Hip-Hop	60.0
Audio Input	ZET	100.0	hip hop	80.0	Colorado	80.0	Found*ded Records	80.0	Dope	60.0
Rizzle Kicks	hip hop	100.0	british	100.0	rap	84.0	Hip-Hop	72.0	indie	72.0
Number 9	Hip-Hop	100.0	hip hop	100.0	dutch	82.0	rap	73.0	chill	55.0
J-Zone	Hip-Hop	100.0	hip hop	52.0	rap	46.0	underground hip-hop	46.0	new york	23.0
Jez Dior	rap	100.0	Hip-Hop	34.0	rock	34.0	los angeles	34.0	All	34.0
Sojourn	Hip-Hop	100.0	christian	67.0	AOR	50.0	underground hip hop	50.0	jazz rap	50.0
Cleo	Hip-Hop	100.0	ye-ye	100.0	french	84.0	seen live	84.0	rap	84.0
One Two	pop	100.0	indie	84.0	seen live	67.0	dance	67.0	Hip-Hop	17.0
cumicu	Cumicu	100.0	Romanian	84.0	Hip-Hop	67.0	rap	67.0	hip hop	17.0
dead prez & DJ Green Lantern	Hip-Hop	100.0	rap	34.0	dead prez	34.0	political	17.0	Indie Hip Hop	17.0
Verses	hip hop	100.0	underground hip-hop	100.0	Hip-Hop	84.0	rock	67.0	rap	67.0
Third Sight	Hip-Hop	100.0	turntablism	67.0	scratch	67.0	hip hop	50.0	underground hip-hop	50.0
DJ Quietstorm	hip hop	100.0	electronic	34.0	jazz	34.0	instrumental hip hop	34.0	nu jazz	17.0
Praverb the Wyse	Hip-Hop	100.0	underground hip-hop	84.0	rap	50.0	hip hop	34.0	underground rap	34.0
4th Pyramid	Hip-Hop	100.0	Definitive Jux	67.0	underground hip-hop	34.0	neo jazz	34.0	Indie Hip Hop	17.0
Ayro	Broken Beat	100.0	nu jazz	34.0	electronic	34.0	soul	34.0	chillout	17.0
Slim & Kraan	Hip-Hop	100.0	Dutch Hip-Hop	84.0	rap	67.0	hip hop	50.0	netherlands	50.0
Vers2	rap	100.0	Hip-Hop	67.0	hip hop	67.0	beats	67.0	dutch	67.0
[Blank]	avanthop	100.0	Albuquerque	67.0	Stanford House Records	67.0	electro	50.0	hip hop	34.0
Иезекииль 25-17	russian rap	100.0	Hip-Hop	92.0	underground hip-hop	76.0	rap	74.0	russian hip-hop	48.0
The Strange Fruit Project	Hip-Hop	100.0	underground hip-hop	80.0	rap	48.0	hip hop	40.0	underground rap	28.0
Asamov	Hip-Hop	100.0	underground hip-hop	77.0	hip hop	70.0	rap	31.0	underground rap	31.0
Paradise	uk Hardcore	100.0	hard rock	72.0	dance	72.0	rock	58.0	trance	43.0
Specii	Hip-Hop	100.0	seen live	100.0	rap	58.0	Romanian	58.0	under 2000 listeners	29.0
Almighty	hard rock	100.0	underground rap	72.0	Hip-Hop	43.0	rock	43.0	hiphop	43.0
Parallax	Drum and bass	100.0	atmospheric drum and bass	100.0	electronic	58.0	metalcore	29.0	metal	29.0
Spamtec	nerdcore	100.0	nerd rap	86.0	rap	58.0	geek	58.0	Hip-Hop	29.0
Hu Vibrational	nu jazz	100.0	jazz	100.0	nu-jazz	100.0	lesser known yet streamable artists	58.0	electronic	43.0
Waiwan	nu-jazz	100.0	chillout	72.0	electronica	72.0	acid jazz	72.0	nu jazz	29.0
Look Daggers	Hip-Hop	100.0	abstract hip-hop	43.0	electronica	29.0	indie	29.0	jazz	29.0
Man'sbestfriend	anticon	100.0	abstract hip-hop	72.0	Hip-Hop	58.0	experimental	15.0	USA	15.0
Papervehicle	Hip-Hop	100.0	underground hip-hop	72.0	abstract hip-hop	72.0	experimental hip-hop	72.0	experimental	43.0
New Flesh For Old	Hip-Hop	100.0	chillout	15.0	hip hop	15.0	british	15.0	underground rap	15.0
Coldcut and Steinski	Hip-Hop	100.0	ninja tune	100.0	turntablism	72.0	chillout	43.0	hip hop	29.0
Тени Улиц	russian rap	100.0	underground hip-hop	72.0	russian hip-hop	72.0	Hip-Hop	15.0	rap	15.0
Earatik Statik	Hip-Hop	100.0	underground hip hop	86.0	rap	72.0	chicago	72.0	underground rap	58.0
Hyder Ali	Hip-Hop	100.0	abstract hip-hop	72.0	trip-hop	15.0	ambient	15.0	downtempo	15.0
Urban Atmosphere	trance	100.0	uk Hardcore	100.0	hard techno	86.0	hardstyle	86.0	hardcore	58.0
Factual	new wave	100.0	synthpop	43.0	seen live	15.0	indie	15.0	80s	15.0
Dan le Sac v. Scroobius pip	underground hip-hop	100.0	abstract hip-hop	100.0	Hip-Hop	86.0	alternative hip-hop	86.0	indie hip-hop	86.0
Passage	anticon	100.0	experimental	83.0	doom metal	80.0	Hip-Hop	59.0	electronic	36.0
Soulcrate Music	Hip-Hop	100.0	Black Clover Records	50.0	seen live	38.0	underground hip-hop	38.0	Midwest	38.0
Prolyphic	underground hip-hop	100.0	Hip-Hop	63.0	rap	50.0	galapagos4	38.0	seen live	25.0
DJ Snyder	nerdcore	100.0	turntablism	63.0	Hip-Hop	50.0	electronic	38.0	dub	25.0
Scientific Fly	Avant-Garde	100.0	experimental	63.0	wow	63.0	philosophy	63.0	MMS	63.0
Labtekwon	Hip-Hop	100.0	underground hip-hop	75.0	rap	50.0	hip hop	38.0	Baltimore	38.0
SuperSoul	Hip-Hop	100.0	dub	75.0	ninja tune	75.0	electronica	50.0	trip-hop	50.0
Inna-Truth & Number 9	Hip-Hop	100.0	dutch	100.0	hip hop	88.0	male vocalists	63.0	rap	50.0
IttifaQ	tatar	100.0	hip hop	38.0	Hip-Hop	13.0	indie	13.0	rap	13.0
McEnroe	indie	100.0	spanish indie pop	84.0	indie pop	78.0	spanish	73.0	Hip-Hop	50.0
No Bird Sing	Hip-Hop	100.0	abstract hip-hop	100.0	alternative hip-hop	56.0	rap	44.0	underground hip-hop	44.0
New Kingdom	Hip-Hop	100.0	trip-hop	67.0	psychedelic	63.0	dub	41.0	hip hop	26.0
Grasu XXL	Romanian Hip-Hop	100.0	Romanian	89.0	hip hop	67.0	grasu xxl	67.0	Hip-Hop	56.0
Hopsin & SwizZz	Hip-Hop	100.0	rap	89.0	underground hip-hop	89.0	underground rap	78.0	funk volume	67.0
Neon Phusion	nu jazz	100.0	Broken Beat	89.0	electronic	78.0	acid jazz	67.0	jazz	56.0
Mumble Mumble Mumble	noise rock	100.0	math rock	89.0	Experimental Rock	67.0	italian	56.0	ambient	34.0
scraps, e-flat	under 2000 listeners	100.0	trip-hop	50.0	indie	50.0	female	50.0	rock	50.0
aa tigre	psychedelic folk	100.0	Spanish Ambient Pop	100.0	spanish	50.0	indie	50.0	acoustic	50.0
David Gamboa	slow-acoustic	100.0	indie	50.0	rock	50.0	country	50.0	alternative	50.0
Folkidelia	folk	100.0	Pagan	100.0	freak folk	50.0	free folk	50.0	celtic	50.0
The Tremula	experimental	100.0	indie rock	100.0	post-punk	100.0	noise pop	100.0	art punk	100.0
Navio Noche	dark cabaret	100.0	dark	50.0	freak folk	50.0	cumbia	50.0	bolero	50.0
The Book of AM	Pagan	100.0	folk	50.0	freak folk	50.0	acid folk	50.0	terrascopic	50.0
Albuquerque Boys Choir	folk	100.0	seen live	50.0	indie	50.0	vocal	50.0	acoustic	50.0
Zac Vann	folk	100.0	experimental	100.0	Lo-Fi	100.0	diy	100.0	singer-songwriter	75.0
Michael Tarbox	blues	100.0	dark	50.0	Lo-Fi	50.0	americana	50.0	minimal	50.0
The Three Doctors Band	experimental	100.0	Avant-Garde	100.0	post-rock	50.0	american	50.0	freak folk	50.0
Young Margo	Lo-Fi	100.0	noise	50.0	folk	50.0	experimental	50.0	shoegaze	50.0
Cassie Morgan and the Lonely Pine	folk	100.0	alternative	50.0	singer-songwriter	50.0	USA	50.0	freak folk	50.0
Silencio Oso	seen live	100.0	spain	100.0	noise	50.0	indie	50.0	folk	50.0
Golden Ball	pop	100.0	folk	100.0	experimental	100.0	psychedelic	100.0	Philadelphia	50.0
Kiwako Kaneda	japanese	100.0	indie pop	100.0	singer-songwriter	100.0	Avant Pop	100.0	alternative	50.0
The Hoborchestra	under 2000 listeners	100.0	daydream generation	100.0	indie	50.0	freak folk	50.0	b3nson records	50.0
Wares	finnish	100.0	indie	50.0	experimental	50.0	avantgarde	50.0	freak folk	50.0
z.s.l.o.	noise	100.0	taiwanese	100.0	electronic	50.0	experimental	50.0	Avant-Garde	50.0
Annabeth McNamara	under 2000 listeners	100.0	seen live	50.0	banjo	50.0	freak folk	50.0	New Weird America	50.0
bobalouie	experimental	100.0	freak folk	50.0	New Weird America	50.0	free folk	50.0	under 2000 listeners	50.0
Valley of Ashes	experimental	100.0	alternative	50.0	drone	50.0	freak folk	50.0	00s	50.0
Millior	pop	100.0	folk	100.0	experimental	100.0	seen live	50.0	swedish	50.0
Tears of the Moosechaser	american	100.0	alternative rock	50.0	Hard	50.0	folk	50.0	experimental	50.0
Edmund Oak	folk	100.0	seen live	50.0	alternative	50.0	freak folk	50.0	danish	50.0
Sunny Ram Booze	instrumental	100.0	ambient	100.0	experimental	100.0	Dreamy	100.0	outsider	100.0
Everyone Involved	psychedelic	100.0	psych-folk	100.0	acid folk	100.0	folk	50.0	freak folk	50.0
major Keez and Her Highness	netlabel	100.0	birdsong	100.0	indie	50.0	female	50.0	female vocalists	50.0
Wooden Wand, Hush Arbors, Satya Sai	New Weird America	100.0	freak folk	50.0	psychedelic folk	50.0	free folk	50.0	psych-folk	50.0
Simon Joint	alternative cocksucker	100.0	freak folk	50.0	emo	25.0	under 2000 listeners	25.0	Boooooruuuuch	25.0
Shwizz	funk	100.0	Psychedelic Rock	100.0	indie	50.0	jazz	50.0	rock	50.0
amphibious gestures	electronic	100.0	experimental	100.0	Avant-Garde	100.0	noise	50.0	freak folk	50.0
Leanne P	Great Lyricists	100.0	flower punk	100.0	fucking brilliant	100.0	truro	100.0	folk	50.0
Margarita	post-punk	100.0	punk	86.0	indie	58.0	tropical	43.0	dance	29.0
Big In Japan	post-punk	100.0	punk	61.0	new wave	43.0	alternative	32.0	british	16.0
Матросская Тишина	post-punk	100.0	new wave	50.0	russian	44.0	punk	22.0	indie	20.0
Bogshed	post-punk	100.0	c86	47.0	indie	39.0	c-86	20.0	seen live	12.0
Consonant	post-punk	100.0	indie rock	93.0	indie	50.0	rock	43.0	boston	36.0
Элен	post-punk	100.0	new wave	66.0	indie	44.0	russian	44.0	indie rock	35.0
The Pin Group	post-punk	100.0	New Zealand	34.0	80s	20.0	roy montgomery	20.0	NZ Music	15.0
Ataque de caspa	post-punk	100.0	indie pop	72.0	spanish	58.0	80's	58.0	seen live	15.0
The Sun and The Moon	post-punk	100.0	new wave	68.0	british	27.0	indie	21.0	rock	18.0
VEX	post-punk	100.0	anarcho-punk	80.0	Gothic Rock	46.0	grindcore	35.0	goth	23.0
JAD WIO	post-punk	100.0	new wave	81.0	coldwave	75.0	batcave	42.0	glam rock	39.0
Medium Medium	post-punk	100.0	new wave	48.0	funk	22.0	Post punk	22.0	80s	20.0
The Sunday Reeds	post-punk	100.0	shoegaze	97.0	noise pop	58.0	noise	50.0	australian	47.0
Glorious Din	post-punk	100.0	Gothic Rock	37.0	Gothic	22.0	darkwave	10.0	goth	8.0
The Three Johns	post-punk	100.0	80s	36.0	new wave	33.0	seen live	15.0	indie	15.0
Criminal Code	post-punk	100.0	punk	91.0	seen live	37.0	Garage Punk	37.0	hardcore	19.0
APB	post-punk	100.0	80s	43.0	Scottish	39.0	alternative	24.0	electronic	20.0
Nervous Gender	post-punk	100.0	synth punk	95.0	synthpunk	50.0	electronic	31.0	punk	31.0
Evil Eyes	indie rock	100.0	post-punk	100.0	rock	60.0	shoegaze	60.0	psychedelic	40.0
South Of No North	post-punk	100.0	darkwave	50.0	new wave	47.0	Greek	29.0	greek postpunk new wave	19.0
Witch Hats	seen live	100.0	post-punk	100.0	australian	50.0	Psychedelic Rock	50.0	Garage Rock	38.0
Kitchen and the Plastic Spoons	post-punk	100.0	deathrock	58.0	swedish	54.0	experimental	54.0	new wave	50.0
Rivalries	post-punk	100.0	screamo	70.0	shoegaze	62.0	emo	39.0	real screamo	31.0
Five Or Six	post-punk	100.0	experimental	46.0	new wave	42.0	coldwave	39.0	british	10.0
Monozid	post-punk	100.0	seen live	74.0	german	48.0	shoegaze	30.0	Post punk	21.0
Howard Devoto	post-punk	100.0	new wave	82.0	synthpop	52.0	british	41.0	punk	30.0
The Exploding Boy	post-punk	100.0	indie	54.0	new wave	48.0	swedish	42.0	indie rock	32.0
O Children	post-punk	100.0	new wave	53.0	seen live	31.0	cold wave	29.0	Post-punk revival	24.0
El Capitan	americana	100.0	House	100.0	under 2000 listeners	100.0	bookmarks	100.0	\N	0.0
James Crase	americana	100.0	All	100.0	Blue Grass	100.0	line dancing	100.0	\N	0.0
Zora Neale Hurston	folk	100.0	americana	100.0	country	25.0	female vocalist	25.0	Female Voices	25.0
M. Lockwood Porter	americana	100.0	folk rock	100.0	\N	0.0	\N	0.0	\N	0.0
Pulpit Supply	rock	100.0	americana	100.0	Alt-country	100.0	alt country	100.0	country rock	100.0
Roger Hoover & The Whiskeyhounds	americana	100.0	roots rock	100.0	new alternative country and western folk rock swing	100.0	folk	67.0	alt country	34.0
GUITARS	indie	100.0	country	100.0	experimental	100.0	americana	100.0	minimal	100.0
Aj Downing	country	100.0	americana	100.0	Honky Tonk	100.0	under 2000 listeners	100.0	Texas music	100.0
The Lusitania	seen live	100.0	country	100.0	acoustic	100.0	americana	100.0	Rock and Roll	100.0
This Way	indie	100.0	americana	100.0	rock	50.0	folk	50.0	Alt-country	50.0
White Sands	americana	100.0	seen live	50.0	indie	50.0	indie rock	50.0	singer-songwriter	50.0
Willie Chapman	country	100.0	americana	100.0	\N	0.0	\N	0.0	\N	0.0
Amy Farris	americana	100.0	Alt-country	100.0	seen live	50.0	cowhat fav	50.0	\N	0.0
The Instruments Band	folk	100.0	acoustic	100.0	americana	100.0	The Instruments Band	100.0	\N	0.0
Andy Wagner	americana	100.0	guitar	67.0	folk	34.0	singer-songwriter	34.0	soft	34.0
Marlento	new wave	100.0	americana	100.0	Post punk	100.0	under 2000 listeners	100.0	\N	0.0
Colleen Rennison	americana	100.0	blues	100.0	\N	0.0	\N	0.0	\N	0.0
Danger & The Steel Cut Oats	country	100.0	americana	100.0	bluegrass	100.0	Nashville	100.0	Tennessee	100.0
Bourgeois Gypsies	americana	100.0	folk	67.0	roots	67.0	acoustic	34.0	blues	34.0
Fellow Travellers	indie	100.0	americana	100.0	seen live	50.0	dub	50.0	Alt-country	50.0
Lloyd Cheechoo	rock	100.0	americana	100.0	soft rock	100.0	native american	100.0	\N	0.0
Blue Mother Tupelo	americana	100.0	soul	50.0	blues	50.0	funky	50.0	roots	50.0
Trailer Park Troubadours	americana	100.0	Alt-country	100.0	comedy	100.0	\N	0.0	\N	0.0
Runaway Planet	Alt-country	100.0	bluegrass	100.0	country	50.0	\N	0.0	\N	0.0
Charlie Faye	Alt-country	100.0	seen live	50.0	texas	50.0	austin	50.0	under 2000 listeners	50.0
Ken Will Morton	Alt-country	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Leaving, TX	Alt-country	100.0	new alternative country and western folk rock swing	60.0	country	40.0	americana	20.0	alt country	20.0
Dub Miller	seen live	100.0	country	100.0	singer-songwriter	100.0	Alt-country	100.0	alt. country	100.0
Miss Leslie	country	100.0	americana	100.0	Alt-country	100.0	texas	100.0	cowhat fav	100.0
Burrito Deluxe	Alt-country	100.0	americana	34.0	country rock	34.0	sxsw2006	34.0	cosmic American music	34.0
Farrar,Johnson,Parker,Yames	americana	100.0	Alt-country	100.0	i am witness	100.0	\N	0.0	\N	0.0
Quiet Loner	country	100.0	Alt-country	100.0	Played a WagonWheel show at The Grapes	100.0	down the road tonight	100.0	the new heartworn highways	100.0
Rob Jungklas	Alt-country	100.0	folk	67.0	singer-songwriter	67.0	americana	67.0	under 2000 listeners	67.0
Jonathan Burks	indie	100.0	alternative	100.0	folk	100.0	introspective	100.0	Alt-country	100.0
The Small Cities	indie	100.0	Alt-country	100.0	Minnesota	67.0	indie rock	67.0	under 2000 listeners	67.0
The Damnations TX	americana	100.0	Alt-country	100.0	alternative country	100.0	\N	0.0	\N	0.0
Darren Smith	Alt-country	100.0	singer-songwriter	67.0	americana	67.0	Idaho	34.0	Male Singer-Songwriter	34.0
Tom Heyman	Alt-country	100.0	americana	67.0	rock	34.0	alternative	34.0	singer-songwriter	34.0
Mark Abis	Soundtrack	100.0	classic rock	100.0	metal	100.0	chillout	100.0	electronic	100.0
Bull City	alternative	100.0	americana	100.0	guitar	100.0	triangle	100.0	Southern Rock	100.0
Oso Rey	rock	100.0	folk	100.0	acoustic	100.0	blues	100.0	bluegrass	100.0
theSoundBytes	Southern Rock	100.0	blues rock	50.0	under 2000 listeners	50.0	headphones	50.0	\N	0.0
Gator Park	rock	100.0	country	100.0	american	100.0	Southern Rock	100.0	group	100.0
Brandon Bush Band	country	100.0	Southern Rock	100.0	texas country	100.0	\N	0.0	\N	0.0
Still Water	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Trawler	seen live	100.0	Stoner Rock	100.0	russian	100.0	stoner metal	100.0	Southern Rock	100.0
Scania	metal	100.0	Southern Rock	100.0	Trash	100.0	trash metal	100.0	sounds	100.0
Sonset Down	hardcore	100.0	Southern Rock	100.0	metalcore	50.0	christian	50.0	Christian Hardcore	50.0
REDWEST	Southern Rock	100.0	Southern metal	100.0	western metal	100.0	folk metal	67.0	heavy metal	34.0
Peek	Disco	100.0	Hip-Hop	100.0	electronic	100.0	indie	100.0	rock	100.0
Truckers	Rock and Roll	100.0	Southern Rock	100.0	country rock	100.0	\N	0.0	\N	0.0
Dan Rio	classic rock	100.0	instrumental	100.0	indie rock	100.0	singer-songwriter	100.0	favorites	100.0
Stevie Hawkins	blues	100.0	blues rock	100.0	Southern Rock	100.0	under 2000 listeners	67.0	blues-rock	34.0
The Elect	House	100.0	Southern Rock	100.0	roots rock	100.0	Jam Rock	100.0	spotify	100.0
Dickey Betts & Warren Haynes	blues rock	100.0	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0
Jay Johnson	americana	100.0	Southern Rock	100.0	Acoustic Rock	100.0	jack johnson	100.0	under 2000 listeners	100.0
Black Dutch Sioux	hard rock	100.0	blues rock	100.0	Southern Rock	100.0	under 2000 listeners	100.0	\N	0.0
Far From Gone	hard rock	100.0	Southern Rock	100.0	american rock	100.0	\N	0.0	\N	0.0
Duane & Gregg Allman	soul	100.0	blues	100.0	blues rock	100.0	Southern Rock	100.0	\N	0.0
Shanytown	Southern Rock	100.0	lynyrd skynyrd	50.0	38 Special	50.0	freebird75	50.0	shanytown	50.0
Bobby Notkoff	classic rock	100.0	metal	100.0	spanish	100.0	electronic	100.0	electronica	100.0
Dirt Cannon	rock	100.0	punk	100.0	hardcore	100.0	Stoner Rock	100.0	punk rock	100.0
No Mute	alternative rock	100.0	stoner metal	100.0	Southern Rock	100.0	Southern metal	100.0	\N	0.0
George Hatcher Band	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Manny Charlton Band	seen live	100.0	rock	100.0	Southern Rock	100.0	classic rock	50.0	female vocalists	50.0
Highway Ryders	Southern Rock	100.0	rock	34.0	under 2000 listeners	34.0	\N	0.0	\N	0.0
A Day As Wolves	soul	100.0	hard rock	100.0	Psychedelic Rock	100.0	blues rock	100.0	Southern Rock	100.0
Haven Hill	alternative rock	100.0	modern rock	100.0	Southern Rock	100.0	classic rock	50.0	rock	50.0
Snakebite Sermon	rock	100.0	hard rock	100.0	Stoner Rock	100.0	blues rock	100.0	stoner metal	100.0
Carl Dixon	seen live	100.0	hard rock	100.0	Canadian	100.0	AOR	100.0	Southern Rock	100.0
Starroy	Southern Rock	100.0	Jam	100.0	rock	50.0	\N	0.0	\N	0.0
american Buffalo	rock	100.0	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0
Diesel Dust	Southern Rock	100.0	french	50.0	rock	50.0	lesser known yet streamable artists	50.0	spotify	50.0
Billy Crain	Southern Rock	100.0	The Outlaws	50.0	\N	0.0	\N	0.0	\N	0.0
Shady Deal	Southern Rock	100.0	UK	50.0	All	50.0	midlands uk	50.0	\N	0.0
Trendkill Cowboys Rebellion	rock	100.0	Southern Rock	100.0	heavy metal	50.0	indonesia	50.0	Southern metal	50.0
Snowball Chance	rock	100.0	jam band	100.0	Southern Rock	100.0	space	75.0	space rock	75.0
Steve Haggerty & The Wanted	seen live	100.0	Southern Rock	100.0	country rock	100.0	modern country	100.0	\N	0.0
Eat A Peach	classic rock	100.0	rock	100.0	Southern Rock	100.0	spotify	100.0	\N	0.0
Descending New Angels	alternative rock	100.0	americana	100.0	Passionate	100.0	A Perfect Circle	100.0	Favorite Artists	100.0
Jimmy Cornett & The Deadmen	soul	100.0	country	100.0	singer-songwriter	100.0	blues	100.0	blues rock	100.0
Simple Southern Boys	Southern Rock	100.0	hard rock	34.0	blues	34.0	Rock n' Roll	34.0	under 2000 listeners	34.0
Gator Country	folk punk	100.0	Southern Rock	100.0	folk-punk	100.0	\N	0.0	\N	0.0
State line Mob	Southern Rock	100.0	rock	34.0	under 2000 listeners	34.0	ourstage	34.0	\N	0.0
The Viking Truckers	Southern Rock	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
The Watts Brothers Band	rockabilly	100.0	folk	100.0	singer-songwriter	100.0	americana	100.0	blues	100.0
Refluxed	metal	100.0	rock	100.0	punk	100.0	Southern Rock	100.0	\N	0.0
John Hermann	blues rock	100.0	jam band	100.0	Southern Rock	100.0	jamband	100.0	Jam	100.0
Phillip Fox Band	country	100.0	USA	100.0	americana	100.0	Southern Rock	100.0	heartland rock	100.0
The Unsinkable Molly Brown	noise	100.0	heavy metal	100.0	metal	100.0	indie	100.0	pop	100.0
3 Mile Stone	blues-rock	100.0	Southern Rock	100.0	hard-n-blues	100.0	\N	0.0	\N	0.0
Kristen Kelly & The Modern Day Drifters	rock	100.0	country	100.0	americana	100.0	Alt-country	100.0	Southern Rock	100.0
The Fraternity	alternative rock	100.0	Southern Rock	100.0	hip hop	50.0	rock	50.0	under 2000 listeners	50.0
The Goddamns	Stoner Rock	100.0	blues	100.0	Southern Rock	100.0	\N	0.0	\N	0.0
The Boom Band	country	100.0	blues	100.0	Southern Rock	100.0	\N	0.0	\N	0.0
Crossfyre	finnish	100.0	Southern Rock	100.0	finnish rock	100.0	amazingly good	100.0	Founded by an accident	100.0
The Shaved	Southern Rock	100.0	rock'n'roll	100.0	Hessen	100.0	\N	0.0	\N	0.0
Dark Valley Harvesters	rock	100.0	hard rock	100.0	stoner doom	100.0	stoner	100.0	Southern Rock	100.0
The Cotton Soeterboek Band	Southern Rock	100.0	hard rock	75.0	rock	50.0	classic rock	25.0	piano	25.0
Dayton Hicks	rock	100.0	country	100.0	singer-songwriter	100.0	americana	100.0	blues	100.0
Winter of Summer	hardcore	100.0	screamo	100.0	Southern Rock	100.0	chaotic	50.0	\N	0.0
Milfist Kadawa	Southern Rock	100.0	metal	50.0	Grunge	50.0	alternative	50.0	experimental	50.0
The Oxford Street Montage	Canadian	100.0	Southern Rock	100.0	metalcore	50.0	metal	50.0	indie	50.0
Silent Are The Dead	Minnesota	100.0	Southern Rock	100.0	Whiskey	100.0	party metal	100.0	american	50.0
Badge & Company	Southern Rock	100.0	rock	34.0	blues	34.0	blues rock	34.0	southern blues	34.0
Tony Stevens SLOW RiDE	blues	100.0	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0
Thunderfoot	hard rock	100.0	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0
cheley tackett	rock	100.0	country	100.0	folk	100.0	americana	100.0	alt country	100.0
Jose Luis Manzanero	pop	100.0	rock	100.0	Spanish Rock	100.0	Southern Rock	100.0	spanish pop	100.0
dora maar	rock	100.0	Southern Rock	100.0	metal	50.0	indie	50.0	Grunge	50.0
Four Barrel	Southern Rock	100.0	country	20.0	blues	20.0	\N	0.0	\N	0.0
Timothy Scott	indie	100.0	Southern Rock	100.0	\N	0.0	\N	0.0	\N	0.0
Mason Dixon Disaster	Alt-country	100.0	Southern Rock	100.0	spotify	100.0	\N	0.0	\N	0.0
Stone Senate	Southern Rock	100.0	american	34.0	\N	0.0	\N	0.0	\N	0.0
Jeff Beck; Rod Stewart	classic rock	100.0	metal	100.0	spanish	100.0	electronic	100.0	electronica	100.0
Mike & The Mellotones	rock	100.0	Southern Rock	100.0	blues	75.0	classic rock	50.0	Texas Blues	50.0
Dege Legg	singer-songwriter	100.0	Southern Rock	100.0	Psychedelic Rock	50.0	blues rock	50.0	athens	50.0
Wongraven	ambient	100.0	dark ambient	98.0	folk	55.0	medieval ambient	53.0	norwegian	40.0
L. Pierre	ambient	100.0	electronic	64.0	Scottish	27.0	music to chase squirrels by	27.0	collage	22.0
Klaus Wiese	ambient	100.0	meditative	70.0	drone	60.0	dark ambient	39.0	deep ambient	22.0
OST Tension	ambient	100.0	dark ambient	78.0	psychedelic	63.0	electronic	60.0	Soundtrack	52.0
Café Chillout Music Club	chillout	100.0	electronic	100.0	instrumental	100.0	ambient	100.0	new age	100.0
Planet Bliss	ambient	100.0	electronic	81.0	chillout	62.0	downtempo	48.0	idm	29.0
Rameses III	ambient	100.0	drone	74.0	experimental	48.0	post-rock	30.0	psych-folk	27.0
The Revolutionary Hydra	indie	100.0	indie pop	100.0	Lo-Fi	100.0	indie rock	75.0	Library	50.0
Happy New Year	noise	100.0	electronic	100.0	new york	100.0	experimental	100.0	Lo-Fi	100.0
20 Years of Dishord	indie	100.0	hardcore	100.0	indie pop	100.0	indie rock	100.0	industrial	100.0
Sweet Bulbs	Lo-Fi	100.0	female vocalists	50.0	under 2000 listeners	50.0	discover	50.0	take a look at	50.0
Shana Cleveland & the Sandcastles	\N	0.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Virgin Insanity	folk	100.0	Lo-Fi	100.0	70s	50.0	psych folk	50.0	beautiful	25.0
Lou Breed	indie rock	100.0	Lo-Fi	100.0	electronic	50.0	chillwave	50.0	5432fun	50.0
SF Perkele	Hip-Hop	100.0	chillout	100.0	electronic	100.0	electronica	100.0	trip-hop	100.0
Gunns	Lo-Fi	100.0	australian	34.0	Experimental Rock	34.0	under 100 listeners	34.0	fuzz pop	34.0
Beach Moon/Peach Moon	Lo-Fi	100.0	under 2000 listeners	50.0	5432fun	50.0	Practice Room Records	50.0	\N	0.0
Exmagician	electronic	100.0	electronica	100.0	pop	100.0	rock	100.0	folk	100.0
adult books	indie	100.0	punk	100.0	Surf	100.0	Lo-Fi	100.0	shoegaze	100.0
acab rocky	Lo-Fi	100.0	folk	75.0	noise rock	75.0	emo	50.0	indie rock	50.0
Frederik Schikowski	Lo-Fi	100.0	breakcore	100.0	8bit	75.0	idm	75.0	experimental	50.0
Danilo Venturi	Lo-Fi	100.0	lounge	75.0	House	63.0	luxury manager	63.0	rambling records	50.0
tajima hal	hip hop	100.0	instrumental	100.0	Lo-Fi	100.0	beats	100.0	chillwave	100.0
Cloudy Busey	Lo-Fi	100.0	chillwave	75.0	BIRP	75.0	electronic	25.0	House	25.0
The Marquis de Tren and Bonny Billy	folk	100.0	Lo-Fi	100.0	singer-songwriter	80.0	pop	40.0	rock	40.0
Dublin Duck Dispensary	Lo-Fi	100.0	Rack and Ruin records	100.0	seen live	67.0	duck	67.0	noise pop	34.0
PSYCHODELIC FARM	chillout	100.0	Lo-Fi	100.0	brazilian	100.0	instrumental	50.0	relaxing	50.0
Los Waldners	Lo-Fi	100.0	costa rica	100.0	\N	0.0	\N	0.0	\N	0.0
Velvet Breasts	Lo-Fi	100.0	psychedelic	100.0	russian	62.0	New Weird Russia	28.0	noise	23.0
Un Planeta	indie	100.0	Lo-Fi	100.0	dream pop	100.0	shoegaze	50.0	Rock Argentino	50.0
Michael Feuerstack	indie	100.0	folk	100.0	canada	100.0	Lo-Fi	100.0	Canadian	100.0
RTFO Bandwagon	Lo-Fi	100.0	folk	80.0	psychedelic	60.0	proto-punk	60.0	indie	40.0
Axemen	Lo-Fi	100.0	rock	60.0	garage	50.0	punk	30.0	noise rock	20.0
Grand Resort	indie	100.0	new york	100.0	Lo-Fi	100.0	shoegaze	100.0	Brooklyn	100.0
Xaxakes	Greek	100.0	pop	78.0	casanova	45.0	lesser known yet streamable artists	34.0	greek psych	34.0
Music For Headphones	krautrock	100.0	experimental	67.0	psychedelic	67.0	Psychedelic Rock	67.0	electronic	56.0
The Wagner logic	shoegaze	100.0	Lo-Fi	89.0	alternative	67.0	alternative rock	67.0	indie	56.0
These Crimson Dreams	alternative	100.0	under 2000 listeners	89.0	Dreamy	78.0	indie	56.0	shoegaze	56.0
Who Ate David?	noise	100.0	experimental	100.0	weird	100.0	oklahoma	100.0	oklahoma city	89.0
Pink Mountaintops	psychedelic	100.0	seen live	90.0	indie rock	85.0	indie	79.0	Canadian	53.0
Beaches	psychedelic	100.0	post-punk	95.0	shoegaze	95.0	australian	79.0	seen live	64.0
The Warlocks	psychedelic	100.0	shoegaze	78.0	indie rock	46.0	Psychedelic Rock	38.0	indie	37.0
Desert Mountain Tribe	Psychedelic Rock	100.0	seen live	67.0	psychedelic	67.0	UK	34.0	shoegaze	34.0
USA Out Of Vietnam	Psychedelic Rock	100.0	shoegaze	74.0	doom metal	67.0	experimental	60.0	drone	60.0
Strangers Family Band	Psychedelic Rock	100.0	psychedelic	75.0	Neo-Psychedelia	42.0	art-rock	42.0	rock	25.0
Ulaan Markhor	psychedelic	100.0	Psychedelic Rock	100.0	post rock	80.0	experimental	60.0	steven r smith	40.0
Carmen Maki & Blues Creation	Psychedelic Rock	100.0	Progressive rock	77.0	hard rock	70.0	blues rock	62.0	japanese	54.0
Zakarrias	Psychedelic Rock	100.0	Progressive rock	80.0	psychedelic	35.0	classic rock	30.0	Crossover Prog	20.0
Wata	Psychedelic Rock	100.0	psychedelic	69.0	japanese	64.0	post-rock	46.0	post rock	32.0
Velvet Illusions	Garage Rock	100.0	Psychedelic Rock	100.0	psychedelic	89.0	rock	45.0	60s	34.0
The Five Day Week Straw People	Psychedelic Rock	100.0	60s	50.0	psychedelic	42.0	rock	25.0	british	17.0
Temple of the Smoke	Psychedelic Rock	100.0	Stoner Rock	82.0	space rock	75.0	seen live	38.0	dub	38.0
Paul Kantner, Grace Slick & David Freiberg	Psychedelic Rock	100.0	classic rock	20.0	rock	20.0	70s	20.0	C	20.0
Harley-Davidson	classic rock	100.0	rock	100.0	alternative rock	100.0	Progressive rock	100.0	Psychedelic Rock	100.0
Black Sun Ensemble	rock	100.0	Psychedelic Rock	100.0	psychedelic	72.0	80s	29.0	90s	29.0
Killer Moon	Psychedelic Rock	100.0	psychedelic	62.0	stoner	47.0	stoner doom	31.0	Stoner Rock	24.0
Heavy Water Experiments	psychedelic	100.0	Psychedelic Rock	100.0	stoner	34.0	Neo-Psychedelia	34.0	hardrock	34.0
White Witch	Psychedelic Rock	100.0	hard rock	89.0	heavy metal	56.0	70s	56.0	glam rock	56.0
Waterfalls	shoegaze	100.0	Psychedelic Rock	100.0	post-punk	75.0	rock	50.0	psychedelic	50.0
Orient Express	Psychedelic Rock	100.0	turkish psychedelic rock	60.0	psychedelic	40.0	dark psychedelia	40.0	ethno jazz	40.0
The Shiver	Progressive rock	100.0	Psychedelic Rock	100.0	psychedelic	64.0	swiss	64.0	rock	53.0
The Zoo	Psychedelic Rock	100.0	psychedelic	40.0	seen live	30.0	swedish	30.0	pop	20.0
DE UNDERJORDISKE	seen live	100.0	Psychedelic Rock	100.0	danish	100.0	Neo-Psychedelia	100.0	danish artist	100.0
Sendelica	Psychedelic Rock	100.0	instrumental	74.0	space rock	47.0	Progressive rock	40.0	psychedelic	34.0
El Ritual	Psychedelic Rock	100.0	Progressive rock	62.0	psychedelic	62.0	hard rock	50.0	occult rock	39.0
The Fox	psychedelic	100.0	Psychedelic Rock	100.0	japanese	50.0	psychedelic pop	50.0	rock	25.0
Pageants	seen live	100.0	indie	100.0	rock	100.0	Garage Rock	100.0	Psychedelic Rock	100.0
Luziluzia	alternative	100.0	alternative rock	100.0	indie rock	100.0	Lo-Fi	100.0	shoegaze	100.0
Churchill's	Psychedelic Rock	100.0	Israel	100.0	Progressive rock	75.0	psychedelic	75.0	rock	50.0
Serpentina Satélite	Psychedelic Rock	100.0	space rock	94.0	instrumental	80.0	psychedelic	80.0	krautrock	74.0
Ill Wind	Psychedelic Rock	100.0	psychedelic	50.0	rock	34.0	country	34.0	60s	34.0
The Web	Psychedelic Rock	100.0	didgeridoo	100.0	Progressive rock	80.0	psychedelic	80.0	deathrock	80.0
Far Out	Psychedelic Rock	100.0	japanese	48.0	Progressive rock	40.0	psychedelic	40.0	rock	31.0
The Saint James Society	Psychedelic Rock	100.0	Psychedelia	34.0	under 2000 listeners	34.0	\N	0.0	\N	0.0
Saturnalia	Psychedelic Rock	100.0	psychedelic	72.0	rock	58.0	psych	58.0	hippie	36.0
Alex Bollard Assembly	Psychedelic Rock	100.0	Pink Floyd	67.0	classic rock	50.0	Progressive rock	17.0	\N	0.0
Telestrion	Psychedelic Rock	100.0	Stoner Rock	92.0	space rock	50.0	psychedelic	25.0	metal	9.0
The Lay Llamas	Psychedelic Rock	100.0	psychedelic	60.0	italian	60.0	electronic	20.0	seen live	20.0
Strawberry Path	hard rock	100.0	Psychedelic Rock	100.0	Progressive rock	62.0	japanese	54.0	psychedelic	39.0
Taman Shud	classic rock	100.0	seen live	100.0	rock	100.0	60s	100.0	70s	100.0
Overhang Party	Psychedelic Rock	100.0	noise rock	53.0	psychedelic	42.0	japanese	24.0	experimental	12.0
The Kitchen Cinq	pop	100.0	psychedelic	100.0	Garage Rock	100.0	Psychedelic Rock	100.0	garage	100.0
Harsh Toke	Psychedelic Rock	100.0	heavy psych	42.0	seen live	34.0	psychedelic	34.0	jam band	25.0
Hljómar	Psychedelic Rock	100.0	pop	50.0	Garage Rock	50.0	icelandic	50.0	All	50.0
The Druids Of Stonehenge	Psychedelic Rock	100.0	60s	75.0	Garage Rock	75.0	psychedelic	50.0	american	25.0
Black Fiction	Psychedelic Rock	100.0	san francisco	100.0	daytrotter	100.0	California	50.0	geohash:9q8yyq4zugv0	50.0
Fapardokly	60s	100.0	Psychedelic Rock	100.0	psychedelic	84.0	rock	34.0	Psychedelia	34.0
Whistler	rock	100.0	Psychedelic Rock	100.0	indie rock	67.0	noise	34.0	indie	34.0
Mantra Machine	Psychedelic Rock	100.0	Stoner Rock	50.0	space rock	50.0	stoner	50.0	rock	25.0
Brujas del Sol	Psychedelic Rock	100.0	Stoner Rock	60.0	space rock	47.0	psychedelic	20.0	stoner	14.0
π	blues	100.0	psychedelic	100.0	Psychedelic Rock	100.0	Soundtrack	67.0	chillout	67.0
The Citradels	Psychedelic Rock	100.0	australia	25.0	beyondwithin	25.0	\N	0.0	\N	0.0
Fogg	Psychedelic Rock	100.0	black metal	88.0	Stoner Rock	38.0	depressive black metal	38.0	rock	25.0
Casuals	Psychedelic Rock	100.0	mod	100.0	mods	100.0	\N	0.0	\N	0.0
Roger Bunn	jazz	100.0	Fusion	100.0	psychedelic	100.0	Psychedelic Rock	100.0	psychedelic pop	67.0
Los Ovnis	Psychedelic Rock	100.0	rockabilly	50.0	rock	50.0	psychedelic	34.0	mexico	34.0
Cosmic Trip Machine	Psychedelic Rock	100.0	psychedelic	73.0	space rock	73.0	psychedelic folk	55.0	Progressive rock	28.0
The Human Beast	Progressive rock	100.0	Psychedelic Rock	100.0	psychedelic	78.0	heavy psych	78.0	psych	45.0
The Freeks	Psychedelic Rock	100.0	Stoner Rock	50.0	seen live	34.0	stoner	34.0	hard rock	17.0
Ame Son	Psychedelic Rock	100.0	Progressive rock	88.0	experimental	63.0	french-psychedelic-70s	63.0	french	50.0
The Heavy Co.	Psychedelic Rock	100.0	Stoner Rock	67.0	psychedelic	50.0	blues	42.0	blues rock	34.0
The Head Shop	Psychedelic Rock	100.0	psychedelic	67.0	experimental	27.0	rock	20.0	USA	14.0
It's Not Night: It's Space	space rock	100.0	Psychedelic Rock	100.0	instrumental	86.0	psychedelic	86.0	stoner	72.0
Thee Dang Dangs	Psychedelic Rock	100.0	surf rock	100.0	indie	75.0	rock	50.0	Garage Rock	50.0
Keep Razors Sharp	alternative	100.0	Psychedelic Rock	100.0	rock	67.0	shoegaze	67.0	psychedelic	67.0
Great Society	Psychedelic Rock	100.0	psychedelic	75.0	60s	63.0	favorites	25.0	singers	25.0
Eire Apparent	Psychedelic Rock	100.0	rock	72.0	psychedelic	58.0	60s	43.0	oldies	15.0
Purple Rhinestone Eagle	Stoner Rock	100.0	Psychedelic Rock	100.0	psychedelic	84.0	stoner	84.0	Garage Rock	59.0
Giant Crab	Psychedelic Rock	100.0	60s	34.0	sample	34.0	iron leg	34.0	60s garage psych pebbles	34.0
Kimono Kult	Progressive rock	100.0	Psychedelic Rock	100.0	experimental	80.0	indie rock	60.0	indietronica	60.0
Tarkus	70s	100.0	Psychedelic Rock	100.0	Peru	100.0	hard rock	75.0	Progressive rock	75.0
Tracy Bryant	alternative	100.0	indie rock	100.0	Psychedelic Rock	100.0	\N	0.0	\N	0.0
Lady June	Psychedelic Rock	100.0	psychedelic	72.0	weirdomusic	43.0	weirdo	43.0	rock	29.0
Weltraum	Psychedelic Rock	100.0	space rock	80.0	psychedelic	70.0	instrumental	40.0	chillout	30.0
Rhyton	Psychedelic Rock	100.0	psychedelic	72.0	instrumental	43.0	space rock	29.0	beyondwithin	29.0
Pan & Regaliz	Psychedelic Rock	100.0	Progressive rock	46.0	Spanish Rock	46.0	spanish	19.0	spain	19.0
Jesus Sons	hard rock	100.0	blues	100.0	psychedelic	100.0	Retro	100.0	Garage Rock	100.0
The Barron Knights	psychedelic	100.0	comedy	100.0	Psychedelic Rock	100.0	british humor	100.0	\N	0.0
The Main Street Gospel	Psychedelic Rock	100.0	blues	75.0	garage	50.0	country	25.0	singer-songwriter	25.0
Juan De La Cruz Band	blues	100.0	psychedelic	100.0	Psychedelic Rock	100.0	classic rock	67.0	hard rock	67.0
El Plan De la Mariposa	Psychedelic Rock	100.0	reggae	50.0	funk	50.0	argentina	50.0	art rock	50.0
The Flaming Lips with Stardeath and White Dwarfs	psychedelic	100.0	Psychedelic Rock	100.0	alternative	67.0	covers	67.0	space rock	67.0
LOS DOLTONS	Psychedelic Rock	100.0	spanish	50.0	60's	50.0	All	50.0	rock peruano	50.0
The Invisible Hands	rock	100.0	psychedelic	100.0	Psychedelic Rock	100.0	psychedelic folk	100.0	folk	67.0
Wucan	Psychedelic Rock	100.0	german	72.0	blues rock	72.0	rock	29.0	Stoner Rock	29.0
Floating Bridge	Psychedelic Rock	100.0	60s psychedelic and garage	54.0	psychedelic	39.0	60s	31.0	blues rock	31.0
Tiga Lilly	Psychedelic Rock	100.0	indie rock	67.0	psychedelic	67.0	tame impala	67.0	british	34.0
Okko	Psychedelic Rock	100.0	jazz	56.0	psychedelic	56.0	ethnic	23.0	raga rock	23.0
The Aggregation	60s	100.0	Psychedelic Rock	100.0	USA	50.0	psychedelic	50.0	beyondwithin	50.0
Shuttah	Progressive rock	100.0	Psychedelic Rock	100.0	70s	29.0	psychedelic	29.0	classic rock	15.0
Eureka The Butcher	experimental	100.0	psychedelic	100.0	Psychedelic Rock	100.0	electronic	50.0	\N	0.0
Nudity	psychedelic	100.0	Psychedelic Rock	100.0	beyondwithin	50.0	newbreed	50.0	electronica	25.0
Acid Mothers Gong	Psychedelic Rock	100.0	psychedelic	95.0	experimental	90.0	space rock	69.0	Avant-Garde	53.0
Grand Union	vocal	100.0	chill	100.0	downtempo	100.0	choir	100.0	Psychedelic Rock	100.0
KILL WEST	indie	100.0	argentina	100.0	Psychedelic Rock	100.0	under 2000 listeners	100.0	LSD	100.0
Rip KC	Psychedelic Rock	100.0	rock	56.0	alternative	56.0	under 2000 listeners	34.0	punk	23.0
The Transpersonals	Psychedelic Rock	100.0	psychedelic	75.0	rock	50.0	Mondiovision	50.0	seen live	25.0
Bartłomiej Wołyniec	Psychedelic Rock	100.0	alternative	80.0	polish	80.0	23 seconds	80.0	singer-songwriter	60.0
Dirty Streets	rock	100.0	blues	100.0	psychedelic	100.0	Psychedelic Rock	100.0	blues rock	100.0
Neon Pearl	Psychedelic Rock	100.0	psychedelic	82.0	60s	55.0	UK	37.0	70s	19.0
The Orient Express	Psychedelic Rock	100.0	psychedelic	50.0	raga rock	50.0	rock	17.0	new york	17.0
Magic Mushroom Band	Psychedelic Rock	100.0	Progressive rock	70.0	space rock	70.0	psychedelic	60.0	seen live	10.0
Galliard	Progressive rock	100.0	Psychedelic Rock	100.0	psychedelic	50.0	under 2000 listeners	38.0	british	13.0
Sapphire Thinkers	Psychedelic Rock	100.0	psychedelic	93.0	60s	72.0	70s	29.0	obscure sky psych	22.0
Space Lime Peacock	space rock	100.0	Psychedelic Rock	100.0	psychedelic	60.0	funk	40.0	retro rock	20.0
Prisma Circus	Psychedelic Rock	100.0	blues rock	100.0	heavy psych	72.0	psychedelic	58.0	seen live	43.0
Clap	psychedelic	100.0	Psychedelic Rock	100.0	proto-punk	100.0	rock	50.0	japanese	25.0
Ariesta Birawa Group	Psychedelic Rock	100.0	indonesian	67.0	70s	50.0	psychedelic	34.0	pop rock	17.0
Lord Newborn & the Magic Skulls	funk	100.0	jazz-funk	100.0	downbeat	100.0	acid jazz	100.0	Psychedelic Rock	100.0
Sensational Saints	Psychedelic Rock	100.0	psychedelic	60.0	rock	40.0	terrascopic	40.0	beyondwithin	20.0
The Steppes	Psychedelic Rock	100.0	psychedelic	67.0	classic rock	34.0	indie	34.0	pop	34.0
Wolfman Jack	classic rock	100.0	seen live	100.0	USA	100.0	Psychedelic Soul	100.0	blues	100.0
500 kg lihaa	seen live	100.0	Psychedelic Rock	100.0	finnish	80.0	rock	60.0	Experimental Rock	60.0
Ides	sadcore	100.0	Lo-Fi	100.0	london	100.0	Psychedelic Rock	100.0	hardcore punk	100.0
Terence	trance	100.0	electronic	100.0	60s	100.0	alternative	100.0	funk	100.0
The Exploding Eyes Orchestra	Psychedelic Rock	100.0	occult rock	86.0	classic rock	43.0	folk	29.0	avantgarde rock	29.0
Bipolaroid	psychedelic	100.0	Psychedelic Rock	100.0	psych pop	75.0	New Orleans	50.0	seen live	25.0
Bunalımlar	Psychedelic Rock	100.0	turkish	50.0	turkish psych	40.0	anadolu rock	30.0	turkish psychedelic	30.0
St. Mikael	swedish	100.0	psychedelic	100.0	Psychedelic Rock	100.0	sitar	100.0	cult	50.0
B.A.L.L.	psychedelic	100.0	Psychedelic Rock	100.0	shimmy disc	100.0	indie	67.0	alternative	67.0
Mount Rushmore	Psychedelic Rock	100.0	60s	60.0	psychedelic	40.0	blues rock	40.0	obscure sky psych	40.0
The Mystic Tide	Psychedelic Rock	100.0	Garage Rock	46.0	psychedelic	19.0	american	19.0	Psychedelia	10.0
Front Page Review	Psychedelic Rock	100.0	psychedelic	67.0	bosstown sound	60.0	boston	40.0	60s	27.0
Sweat Lodge	hard rock	100.0	Psychedelic Rock	100.0	rock	50.0	punk	50.0	Stoner Rock	50.0
The Third Eye	Progressive rock	100.0	Psychedelic Rock	100.0	chill	34.0	rock	34.0	60s	34.0
cosmic letdown	Psychedelic Rock	100.0	psychedelic	60.0	russian	40.0	rock	20.0	space rock	20.0
tess parks & anton newcombe	seen live	100.0	indie	100.0	folk	100.0	indie rock	100.0	psychedelic	100.0
Camel Heads	Psychedelic Rock	100.0	psychedelic	80.0	drone	80.0	rock	40.0	experimental	40.0
Psicomagia	Psychedelic Rock	100.0	Progressive rock	88.0	jazz	38.0	Canterbury Scene	38.0	jazz fusion	25.0
Strangeloves	Psychedelic Rock	100.0	garage	100.0	i want candy	100.0	60s garage	100.0	\N	0.0
The Legend	Psychedelic Rock	100.0	rock	40.0	psychedelic pop	20.0	Korean	20.0	k-pop	20.0
花電車	Psychedelic Rock	100.0	psychedelic	72.0	japanese	43.0	Stoner Rock	43.0	noise rock	29.0
Michael Yonkers with The Blind Shake	Psychedelic Rock	100.0	rock	50.0	punk	50.0	psychedelic	50.0	punk rock	50.0
3/3	Psychedelic Rock	100.0	japanese	47.0	psychedelic	47.0	Garage Rock	47.0	proto-punk	31.0
Punk Covers	punk	100.0	punk rock	87.0	punk covers	67.0	rock	30.0	covers	20.0
Karcer	punk	100.0	punk rock	88.0	polish	56.0	polish punk	56.0	Polski Punk	23.0
D.I.	punk	100.0	hardcore punk	75.0	punk rock	53.0	hardcore	36.0	seen live	21.0
Darkbuster	punk	100.0	punk rock	86.0	boston	44.0	ska punk	40.0	OI Punk	36.0
Tagada Jones	punk	100.0	hardcore punk	80.0	hardcore	64.0	french	56.0	seen live	50.0
The Measure [sa]	punk	100.0	seen live	79.0	pop punk	79.0	punk rock	65.0	new jersey	58.0
The Restarts	punk	100.0	street punk	93.0	punk rock	59.0	hardcore	38.0	seen live	37.0
Jello Biafra	punk	100.0	spoken word	94.0	political	71.0	seen live	35.0	anarchist	35.0
Toxoplasma	punk	100.0	deutschpunk	92.0	punk rock	52.0	german	40.0	political	29.0
Brutal Knights	punk	100.0	Garage Punk	87.0	seen live	78.0	hardcore punk	60.0	hardcore	50.0
Dayglo Abortions	punk	100.0	hardcore punk	70.0	hardcore	48.0	Canadian	41.0	punk rock	40.0
Coca Carola	punk	100.0	Trallpunk	83.0	swedish	66.0	seen live	52.0	Swedish Punk	37.0
Riddlin' Kids	punk	100.0	punk rock	80.0	pop punk	75.0	alternative	65.0	rock	58.0
Mikrokosmos23	punk	100.0	emo	100.0	post-hardcore	100.0	punk rock	82.0	seen live	75.0
Guerilla Poubelle	punk	100.0	punk rock	74.0	french	47.0	seen live	32.0	french punk	26.0
Summer Vacation	punk	100.0	jortscore	70.0	punk rock	60.0	alternative rock	30.0	alternative	20.0
Jello Biafra and the Guantanamo School of Medicine	punk	100.0	seen live	84.0	punk rock	71.0	hardcore punk	51.0	political	29.0
Hard Girls	punk	100.0	indie rock	64.0	seen live	55.0	jortscore	46.0	punk rock	37.0
98 Mute	punk	100.0	punk rock	72.0	skate punk	50.0	hardcore punk	50.0	hardcore	21.0
Konflikt	punk	100.0	seen live	88.0	punk rock	63.0	slovak	57.0	Slovak Punk	17.0
Disorder	punk	100.0	hardcore punk	84.0	hardcore	44.0	crust punk	41.0	d-beat	37.0
Terrible Feelings	punk	100.0	Garage Rock	95.0	punk rock	90.0	seen live	80.0	swedish	65.0
Goblini	punk	100.0	punk rock	85.0	serbian	48.0	serbian punk	40.0	seen live	33.0
Black Lungs	punk	100.0	indie	83.0	alternative rock	71.0	Canadian	59.0	rock	36.0
Fifteen	punk	100.0	pop punk	46.0	punk rock	34.0	political	33.0	seen live	16.0
Ratsia	punk	100.0	finnish	72.0	finnish punk	58.0	punk rock	45.0	new wave	29.0
English Dogs	punk	100.0	crossover	76.0	heavy metal	58.0	street punk	53.0	punk rock	46.0
Spermbirds	punk	100.0	hardcore	95.0	hardcore punk	67.0	seen live	58.0	punk rock	40.0
Schleimkeim	punk	100.0	deutschpunk	94.0	punk rock	45.0	ddr-punk	41.0	german	32.0
Jah Khalib	punk	100.0	emo	100.0	shoegaze	100.0	Garage Rock	100.0	not not fun	100.0
Sloppy Seconds	punk	100.0	punk rock	61.0	pop punk	24.0	hardcore punk	24.0	junk rock	19.0
Alice Donut	punk	100.0	alternative	65.0	seen live	36.0	Alternative Tentacles	36.0	alternative rock	34.0
Chelsea	punk	100.0	punk rock	65.0	Oi	30.0	british	27.0	street punk	24.0
The Kids	punk	100.0	seen live	98.0	punk rock	77.0	belgian	62.0	Belgium	46.0
The Arrivals	punk	100.0	punk rock	61.0	seen live	57.0	chicago	53.0	rock	31.0
Crazy Spirit	punk	100.0	hardcore punk	100.0	hardcore	59.0	seen live	50.0	punk rock	25.0
Punk Floid	punk	100.0	punk rock	86.0	Czech	65.0	seen live	56.0	czech punk	30.0
Envidia Kotxina	punk	100.0	punk rock	66.0	anarcho-punk	42.0	Spanish punk	32.0	punk espanol	20.0
The Ducky Boys	punk	100.0	punk rock	64.0	street punk	61.0	boston	31.0	streetpunk	16.0
Houba	punk	100.0	punk rock	80.0	Czech	65.0	seen live	48.0	czech punk	23.0
Penetration	punk	100.0	punk rock	58.0	female vocalists	39.0	british	30.0	British Punk	29.0
Strebers	punk	100.0	swedish	58.0	Trallpunk	52.0	Swedish Punk	30.0	seen live	26.0
Audacity	seen live	100.0	punk	100.0	Lo-Fi	70.0	Garage Punk	70.0	Garage Rock	47.0
idobi Radio	rock	100.0	punk	100.0	emo	50.0	pop punk	50.0	Pop-punk	50.0
Ульи	punk	100.0	punk rock	91.0	indie	68.0	alternative	58.0	russian	58.0
Piperrak	punk	100.0	punk rock	68.0	ska	35.0	basque	35.0	spanish	25.0
Eater	punk	100.0	punk rock	62.0	British Punk	35.0	77 style punk	25.0	77 punk	21.0
Alternative TV	punk	100.0	post-punk	80.0	new wave	39.0	experimental	38.0	british	34.0
Big Kids	punk	100.0	punk rock	87.0	pop punk	35.0	Rad	35.0	seen live	22.0
第二文芸部	punk	100.0	female vocalist	72.0	japanese	58.0	game	58.0	J-rock	43.0
The Members	punk	100.0	new wave	71.0	punk rock	64.0	british	35.0	ska	27.0
The Bananas	punk	100.0	plan-it-x	62.0	pop punk	53.0	folk punk	29.0	seen live	20.0
The Weirdos	punk	100.0	punk rock	61.0	la punk	15.0	77 style punk	15.0	American Punk	12.0
Punk Goes...	rock	100.0	punk	100.0	hardcore	100.0	metalcore	75.0	metal	75.0
Ne Luumäet	punk	100.0	finnish	98.0	punk rock	70.0	ramopunk	60.0	seen live	55.0
Harley Poe	punk	100.0	folk punk	89.0	folk	83.0	acoustic punk	53.0	seen live	42.0
Wakefield	punk	100.0	punk rock	87.0	rock	77.0	pop punk	73.0	alternative	63.0
Kaos	punk	100.0	rap	96.0	electronic	86.0	hip hop	72.0	thrash metal	72.0
TZN Xenna	punk	100.0	punk rock	74.0	polish punk	53.0	polish	48.0	Polski Punk	28.0
Boxhamsters	punk	100.0	deutschpunk	72.0	german	55.0	seen live	45.0	punk rock	36.0
Shorebirds	punk	100.0	punk rock	93.0	pop punk	93.0	orgcore	62.0	Pop-punk	39.0
The Jim Carroll Band	punk	100.0	new wave	56.0	rock	24.0	punk rock	24.0	New York Punk	24.0
Abstürzende Brieftauben	punk	100.0	deutschpunk	65.0	punk rock	53.0	funpunk	36.0	german	30.0
One Way System	punk	100.0	street punk	72.0	Oi	68.0	punk rock	48.0	uk82	41.0
Funeral Dress	punk	100.0	street punk	79.0	Oi	76.0	seen live	48.0	punk rock	40.0
Clorox Girls	punk	100.0	punk rock	91.0	power pop	42.0	seen live	39.0	portland	36.0
The Heartbreakers	punk	100.0	punk rock	70.0	70s	39.0	rock	36.0	proto-punk	34.0
The Crucifucks	punk	100.0	hardcore punk	66.0	punk rock	47.0	hardcore	33.0	anarcho-punk	13.0
The Black Pacific	punk	100.0	punk rock	100.0	seen live	85.0	skate punk	44.0	hardcore punk	25.0
One Pleasant Moment	punk	100.0	emo	88.0	russian alternative	73.0	rock	68.0	hard rock	58.0
Carbonas	punk	100.0	Garage Punk	100.0	Garage Rock	67.0	punk rock	48.0	seen live	34.0
The Macc Lads	punk	100.0	comedy	50.0	punk rock	47.0	rock	44.0	UK	20.0
Justin Sane	punk	100.0	acoustic	71.0	political	60.0	acoustic punk	50.0	folk punk	43.0
Die Lokalmatadore	punk	100.0	seen live	97.0	punk rock	83.0	deutschpunk	59.0	german	49.0
Red Dons	punk	100.0	punk rock	85.0	post-punk	54.0	seen live	43.0	portland	39.0
Radioaktiva räker	punk	100.0	Trallpunk	75.0	swedish	66.0	Swedish Punk	44.0	seen live	37.0
Pegboy	punk	100.0	punk rock	40.0	chicago	40.0	seen live	20.0	hardcore	20.0
Negu Gorriak	punk	100.0	basque	100.0	ska	79.0	reggae	60.0	euskal herria	50.0
Big Eyes	punk	100.0	seen live	89.0	indie rock	89.0	rock	67.0	female vocalists	45.0
E!E	punk	100.0	Czech	65.0	seen live	59.0	punk rock	50.0	czech punk	26.0
LOW IQ 01	punk	100.0	japanese	89.0	alternative	53.0	emo	42.0	electronic	30.0
The Goodwill	seen live	100.0	punk	100.0	emo	100.0	pop punk	100.0	Pop-punk	67.0
Diffuser	punk	100.0	punk rock	63.0	rock	57.0	pop punk	55.0	indie rock	28.0
Nine Pound Hammer	punk	100.0	cowpunk	95.0	Garage Rock	92.0	Garage Punk	59.0	rock n roll	50.0
Stiv Bators	punk	100.0	punk rock	60.0	power pop	58.0	Garage Rock	57.0	rock	34.0
Duesenjaeger	punk	100.0	seen live	96.0	punk rock	53.0	deutschpunk	48.0	german	27.0
あぶらだこ	punk	100.0	japanese	88.0	hardcore	81.0	hardcore punk	57.0	japanese punk	52.0
The Real Kids	punk	100.0	power pop	84.0	Garage Rock	76.0	punk rock	68.0	garage	41.0
Monster	punk	100.0	ska	100.0	swedish	70.0	seen live	54.0	ska punk	54.0
Đubrivo	punk	100.0	seen live	95.0	punk rock	74.0	croatian	69.0	croatian punk	43.0
Rattus	punk	100.0	hardcore punk	97.0	hardcore	87.0	seen live	64.0	finnish	55.0
Nauka o gównie	punk	100.0	punk rock	80.0	polish	54.0	polish punk	54.0	anarcho-punk	47.0
Hass	punk	100.0	deutschpunk	93.0	punk rock	50.0	german	41.0	German Punk	25.0
Volant	punk	100.0	punk rock	65.0	Czech	63.0	seen live	57.0	czech punk	30.0
Uncommonmenfrommars	seen live	100.0	punk	100.0	punk rock	98.0	melodic punk	50.0	french	42.0
F.Y.P	punk	100.0	punk rock	60.0	pop punk	45.0	Garage Rock	25.0	seen live	20.0
Die Skeptiker	punk	100.0	seen live	70.0	deutschpunk	67.0	german	47.0	punk rock	42.0
The Eyeliners	punk	100.0	female vocalists	80.0	punk rock	74.0	pop punk	67.0	girl punk	48.0
SS-Kaliert	punk	100.0	street punk	90.0	hardcore punk	85.0	deutschpunk	50.0	seen live	37.0
Nü Sensae	punk	100.0	noise rock	82.0	hardcore	57.0	seen live	38.0	noise	32.0
Armchair Martian	punk	100.0	Alt-country	72.0	punk rock	53.0	rock	48.0	indie	29.0
Parabellum	punk	100.0	black metal	97.0	death metal	43.0	punk rock	38.0	french	36.0
Classics of Love	punk	100.0	punk rock	85.0	pop punk	70.0	seen live	31.0	american	31.0
Crimpshrine	punk	100.0	punk rock	58.0	pop punk	49.0	Bay Area	18.0	political	12.0
Orange	punk	100.0	punk rock	76.0	seen live	72.0	pop punk	64.0	goa	32.0
Inner Terrestrials	punk	100.0	anarcho-punk	98.0	ska	68.0	ska punk	68.0	seen live	56.0
Scum	punk	100.0	Horrorcore	76.0	black metal	68.0	metal	60.0	Punk Metal	39.0
Abrasive Wheels	punk	100.0	street punk	67.0	punk rock	52.0	Oi	47.0	hardcore punk	32.0
Kryzys	punk	100.0	punk rock	86.0	polish	62.0	polish punk	53.0	seen live	35.0
Get Bent	punk	100.0	pop punk	87.0	punk rock	49.0	orgcore	32.0	new york	28.0
SPS	punk	100.0	seen live	77.0	punk rock	46.0	Czech	36.0	czech punk	22.0
INU	punk	100.0	japanese	79.0	japanese punk	42.0	new wave	37.0	post-punk	25.0
Fabulous Disaster	punk	100.0	punk rock	96.0	female vocalists	66.0	riot grrrl	64.0	seen live	26.0
Potty Mouth	punk	100.0	riot grrrl	58.0	punk rock	37.0	queer	32.0	seen live	22.0
Zero Down	punk	100.0	punk rock	93.0	skate punk	49.0	melodic hardcore	38.0	metal	15.0
Crime	punk	100.0	Garage Punk	63.0	punk rock	56.0	rock	24.0	san francisco	21.0
Union 13	punk	100.0	punk rock	74.0	hardcore punk	56.0	hardcore	43.0	street punk	29.0
Billie Joe Armstrong	punk	100.0	punk rock	94.0	rock	75.0	Great Lyricist	44.0	amazing guitarist	38.0
The Vindictives	punk	100.0	punk rock	63.0	pop punk	63.0	USA	13.0	chicago	13.0
Los Nikis	punk	100.0	80s	88.0	movida	80.0	punk rock	42.0	rock	34.0
Chaos Z	punk	100.0	deutschpunk	84.0	hardcore punk	58.0	Depro Punk	50.0	german	34.0
Oma Hans	punk	100.0	seen live	68.0	deutschpunk	68.0	punk rock	50.0	german	33.0
Blanks 77	punk	100.0	street punk	72.0	Oi	57.0	punk rock	47.0	77 punk	25.0
Tenpole Tudor	punk	100.0	new wave	92.0	punk rock	73.0	pub rock	62.0	british	56.0
GrimSkunk	punk	100.0	seen live	67.0	quebec	55.0	Canadian	50.0	Progressive	34.0
Marathon	punk	100.0	seen live	85.0	hardcore	74.0	melodic hardcore	74.0	punk rock	53.0
Cemiyette Pişiyorum	punk	100.0	turkish	50.0	turkce punk	42.0	turk punk	42.0	punk rock	25.0
Thought Riot	punk	100.0	punk rock	66.0	melodic hardcore	66.0	hardcore	40.0	hardcore punk	31.0
Avengers	punk	100.0	punk rock	57.0	female vocalists	31.0	American Punk	19.0	seen live	18.0
The Meatmen	punk	100.0	hardcore punk	75.0	hardcore	33.0	punk rock	31.0	Michigan	26.0
Kalashnikov	punk	100.0	punk rock	57.0	wartime rock n roll	53.0	italian	44.0	seen live	34.0
Dimple Minds	punk	100.0	punk rock	100.0	seen live	72.0	german	62.0	deutschpunk	53.0
Kommando Sonne-Nmilch	punk	100.0	deutschpunk	66.0	seen live	48.0	punk rock	44.0	german	40.0
Pat The Bunny	punk	100.0	folk	67.0	punk rock	67.0	folk punk	67.0	singer-songwriter	34.0
Chron Gen	punk	100.0	punk rock	61.0	Oi	35.0	Old School Punk	33.0	77 punk	29.0
Snatch	punk	100.0	new wave	79.0	rock	69.0	70s	64.0	Soundtrack	37.0
Les Sales Majestés	punk	100.0	punk rock	68.0	french	58.0	anarchist	36.0	punk francais	33.0
Jughead's Revenge	punk	100.0	punk rock	77.0	pop punk	38.0	rock	14.0	Surf	12.0
Scared Of Chaka	punk	100.0	punk rock	50.0	Garage Rock	46.0	Garage Punk	42.0	pop punk	30.0
Plebania	punk	100.0	indian punk	87.0	polish	82.0	ska	71.0	punk rock	71.0
Antiseen	punk	100.0	punk rock	76.0	Scum Punk	68.0	hardcore punk	49.0	Destructo Rock	33.0
Ноги Винни-Пуха	punk	100.0	punk rock	82.0	russian	49.0	anarcho-punk	44.0	hardcore	32.0
River City Rebels	punk	100.0	seen live	86.0	punk rock	48.0	ska	36.0	ska punk	33.0
Rashit	punk	100.0	punk rock	83.0	turkish	72.0	turkish rock	65.0	turkish punk	50.0
Limp	punk	100.0	pop punk	71.0	electronica	42.0	post-rock	38.0	morr music	30.0
Fuckin' Faces	punk	100.0	deutschpunk	100.0	punk rock	64.0	seen live	60.0	Deutsch Punk	27.0
The Flesh Eaters	punk	100.0	deathrock	89.0	post-punk	70.0	punk rock	64.0	Garage Rock	50.0
The Avengers	punk	100.0	punk rock	78.0	Garage Rock	59.0	Garage Punk	42.0	psychedelic	26.0
Ritam Nereda	punk	100.0	Oi	96.0	serbian	96.0	seen live	84.0	punk rock	80.0
Razzia	punk	100.0	deutschpunk	81.0	hardcore punk	44.0	german	38.0	punk rock	26.0
Kaput Krauts	punk	100.0	seen live	88.0	punk rock	63.0	hardcore	50.0	hardcore punk	46.0
Heiter bis Wolkig	punk	100.0	deutschpunk	69.0	punk rock	50.0	german	36.0	cabaret	24.0
The Farben Lehre	rock	100.0	punk	100.0	punk rock	100.0	polish	100.0	polish punk	100.0
GLORY HILL	punk	100.0	japanese	94.0	J-rock	94.0	punk rock	67.0	J-Punk	60.0
Lude Krawe	punk	100.0	punk rock	92.0	seen live	84.0	serbian punk	67.0	melodic punk	50.0
Plow United	punk	100.0	pop punk	100.0	punk rock	78.0	Pop-punk	67.0	seen live	56.0
Die Hunns	punk	100.0	punk rock	76.0	street punk	46.0	skate punk	33.0	seen live	14.0
HétköznaPI CSalódások	punk	100.0	hungarian punk	60.0	hungarian	47.0	seen live	34.0	magyar	27.0
The Fight	punk	100.0	hardcore punk	75.0	seen live	55.0	hardcore	55.0	female vocalists	48.0
Ghoti Hook	punk	100.0	christian	84.0	seen live	65.0	rock	65.0	pop punk	65.0
6 Voltios	punk	100.0	rock	70.0	Peru	70.0	punk rock	50.0	emo	20.0
Sheer Mag	punk	100.0	power pop	100.0	Garage Rock	100.0	garage	80.0	seen live	40.0
Olho Seco	punk	100.0	hardcore punk	78.0	hardcore	74.0	punk rock	68.0	brazilian	50.0
Le Shok	punk	100.0	indie	54.0	noise rock	44.0	synthpunk	35.0	Lo-Fi	29.0
Kollaa Kestää	punk	100.0	finnish	90.0	finnish punk	50.0	post-punk	37.0	punk rock	37.0
Les Thugs	punk	100.0	french	72.0	punk rock	47.0	alternative	43.0	seen live	40.0
Rozbujane Betoniary	punk	100.0	punk rock	80.0	polish punk	64.0	polish	52.0	Polski Punk	28.0
Rich Kids	punk	100.0	new wave	91.0	punk rock	60.0	power pop	46.0	british	23.0
Juanita y los Feos	punk	100.0	new wave	50.0	post-punk	50.0	Garage Rock	50.0	punk rock	38.0
Mono für Alle!	punk	100.0	german	68.0	gesellschaftskritisch	68.0	political	49.0	subversiv	40.0
Psychoterror	punk	100.0	seen live	84.0	eesti punk	64.0	estonian	54.0	punk rock	47.0
Junk	punk	100.0	trance	93.0	japanese	65.0	anarcho-punk	58.0	Grunge	43.0
Victims Family	punk	100.0	jazzcore	95.0	hardcore	58.0	seen live	55.0	punk rock	33.0
Feeling B	punk	100.0	german	66.0	punk rock	56.0	DDR Punk	50.0	deutschpunk	43.0
Onkel Kånkel	punk	100.0	könsrock	91.0	swedish	73.0	konsrock	55.0	rock	46.0
KNOTLAMP	japanese	100.0	punk	100.0	pop punk	93.0	jrock	54.0	rock	47.0
Manolo Kabezabolo	punk	100.0	Spanish punk	35.0	punk rock	32.0	spanish	28.0	punk iberico	28.0
The Zeros	punk	100.0	punk rock	92.0	power pop	59.0	70s	37.0	California	34.0
Budzy i Trupia Czaszka	punk	100.0	hardcore punk	83.0	polish	77.0	punk rock	60.0	christian	35.0
Pagans	punk	100.0	punk rock	72.0	Garage Punk	48.0	Cleveland	28.0	77 punk	28.0
Pekinška patka	punk	100.0	punk rock	100.0	post-punk	68.0	serbian	68.0	seen live	61.0
GG Allin & The Jabbers	punk	100.0	punk rock	100.0	hardcore punk	47.0	Scum Punk	43.0	GG Allin	39.0
Las Ultrasónicas	rock	100.0	punk	100.0	Garage Rock	100.0	mexico	70.0	latin	50.0
Les Betteraves	punk	100.0	ska punk	77.0	french	62.0	ska	56.0	skacore	30.0
Tant Strul	punk	100.0	new wave	82.0	swedish	60.0	Swedish Punk	46.0	seen live	37.0
Brain Failure	punk	100.0	punk rock	56.0	seen live	46.0	chinese	46.0	ska punk	38.0
NEIN NEIN NEIN	punk	100.0	seen live	63.0	punk rock	49.0	hardcore	42.0	hardcore punk	42.0
Nina Hagen Band	punk	100.0	punk rock	61.0	german	60.0	rock	47.0	alternative	35.0
The Faction	punk	100.0	skate punk	87.0	hardcore punk	71.0	hardcore	38.0	skatepunk	30.0
Dukla Vozovna	punk	100.0	seen live	90.0	Czech	74.0	punk rock	53.0	czech punk	32.0
Autistic Youth	punk	100.0	hardcore punk	72.0	punk rock	56.0	seen live	48.0	hardcore	48.0
The Brokedowns	punk	100.0	punk rock	78.0	american	45.0	chicago	45.0	Illinois	45.0
Geeks	japanese	100.0	punk	100.0	rock	50.0	punk rock	50.0	japan	50.0
Homostupids	punk	100.0	noise rock	83.0	noise punk	57.0	Garage Punk	40.0	noise	35.0
Criminal Damage	punk	100.0	Oi	89.0	punk rock	62.0	street punk	62.0	seen live	16.0
Kasa	punk	100.0	deutschpunk	96.0	seen live	58.0	punk rock	48.0	political	48.0
Gas Huffer	punk	100.0	Garage Punk	87.0	Grunge	77.0	punk rock	67.0	rockabilly	44.0
Teenage Head	punk	100.0	punk rock	79.0	Canadian	75.0	power pop	58.0	canada	18.0
HT	punk	100.0	seen live	96.0	punk rock	86.0	slovak	81.0	alternative	29.0
Apocalypse Hoboken	punk	100.0	punk rock	57.0	chicago	27.0	seen live	24.0	melodic punk	10.0
Baxter Dury	seen live	100.0	singer-songwriter	75.0	indie rock	69.0	indie	59.0	alternative	53.0
Rubik	seen live	100.0	finnish	31.0	indie	29.0	indie rock	19.0	alternative	15.0
Marika Hackman	seen live	100.0	british	49.0	indie	45.0	pop	41.0	singer-songwriter	41.0
The Disco Biscuits	seen live	100.0	Jam	100.0	jam band	92.0	electronic	69.0	rock	50.0
Colour Revolt	seen live	100.0	indie	84.0	indie rock	66.0	experimental	55.0	folk	37.0
My Riot	seen live	100.0	alternative	100.0	polish	97.0	rock	90.0	rapcore	83.0
Di-rect	seen live	100.0	rock	47.0	dutch	31.0	pop	22.0	pop rock	21.0
Ace Enders and a Million Different People	seen live	100.0	indie	75.0	alternative	60.0	indie rock	60.0	rock	53.0
Liam Finn	seen live	100.0	New Zealand	65.0	indie	61.0	singer-songwriter	60.0	Kiwi	21.0
The Range	seen live	100.0	electronic	66.0	experimental	44.0	soul	35.0	indie	32.0
French Films	seen live	100.0	indie pop	45.0	finnish	44.0	indie	42.0	new wave	28.0
Go Back to the Zoo	seen live	100.0	indie	43.0	dutch	39.0	rock	31.0	indie rock	31.0
The Drones	seen live	100.0	Garage Rock	61.0	punk	60.0	australian	60.0	rock	36.0
The Graduate	seen live	100.0	alternative	74.0	indie rock	61.0	pop punk	61.0	emo	54.0
The Strypes	seen live	100.0	indie rock	77.0	irish	71.0	blues	51.0	rock	44.0
L.O.C.	seen live	100.0	danish	91.0	Hip-Hop	82.0	rap	76.0	danish rap	52.0
Regurgitator	seen live	100.0	australian	87.0	alternative	56.0	rock	53.0	electronic	31.0
Bokka	seen live	100.0	polish	87.0	electronic	82.0	downtempo	52.0	indie	49.0
22-Pistepirkko	seen live	100.0	finnish	57.0	rock	32.0	indie	30.0	alternative	26.0
Mariachi El Bronx	seen live	100.0	mariachi	84.0	folk	56.0	rock	28.0	punk rock	28.0
Dick4Dick	seen live	100.0	electronic	73.0	polish	62.0	Electroclash	43.0	electro	36.0
Sunshine	seen live	100.0	Czech	75.0	post-punk	70.0	indie	58.0	indie rock	47.0
Diamond Rings	seen live	100.0	electronic	99.0	indie	89.0	Canadian	60.0	dance	54.0
De Dijk	seen live	100.0	dutch	60.0	Nederlandstalig	54.0	Nederpop	39.0	rock	32.0
Ja, Panik	seen live	100.0	indie	72.0	austrian	66.0	alternative	35.0	deutsch	29.0
Thao & The Get Down Stay Down	seen live	100.0	indie	80.0	female vocalist	50.0	indie pop	40.0	folk	30.0
Das Pop	seen live	100.0	belgian	52.0	indie pop	40.0	indie	34.0	Belgium	27.0
Marit Bergman	seen live	100.0	swedish	69.0	pop	54.0	female vocalists	43.0	singer-songwriter	31.0
Eefje de Visser	seen live	100.0	dutch	73.0	singer-songwriter	66.0	indie	59.0	female vocalists	56.0
Limbeck	seen live	100.0	Alt-country	50.0	indie	47.0	indie rock	31.0	rock	16.0
The Eighties Matchbox B-Line Disaster	seen live	100.0	psychobilly	98.0	rock	62.0	Garage Rock	58.0	alternative	35.0
Kisschasy	seen live	100.0	australian	84.0	rock	77.0	alternative	36.0	indie	30.0
Herrenmagazin	seen live	100.0	indie	73.0	german	67.0	hamburg	44.0	indie pop	38.0
Tiktak	seen live	100.0	finnish	44.0	pop	23.0	rock	22.0	female vocalists	18.0
Washington	seen live	100.0	indie	96.0	australian	69.0	female vocalists	64.0	norwegian	38.0
The Death Set	seen live	100.0	dance punk	80.0	electronic	69.0	punk	51.0	ninja tune	35.0
JVG	seen live	100.0	finnish	50.0	Hip-Hop	30.0	rap	30.0	All	13.0
Ruger Hauer	seen live	100.0	Hip-Hop	64.0	rap	45.0	finnish	40.0	Suomirap	22.0
Coppelius	seen live	100.0	german	77.0	kammercore	70.0	Gothic	67.0	kammermetal	50.0
The Kristet Utseende	seen live	100.0	punk	64.0	narcotic gay metal	55.0	swedish	44.0	metal	32.0
Chikinki	seen live	100.0	indie	71.0	electronic	53.0	indie rock	44.0	british	37.0
The Black Atlantic	seen live	100.0	indie	61.0	acoustic	53.0	dutch	44.0	folk	42.0
Wanda	seen live	100.0	austrian	79.0	indie rock	74.0	austropop	58.0	indie	48.0
LaBrassBanda	seen live	100.0	brass	87.0	balkan	48.0	bavarian	42.0	reggae	39.0
Matthew E. White	seen live	100.0	folk	97.0	singer-songwriter	82.0	Mellow	45.0	indie	26.0
Irina	seen live	100.0	finnish	100.0	pop	63.0	female vocalists	52.0	rock	44.0
Monsters of Liedermaching	seen live	100.0	liedermacher	71.0	german	43.0	Liedermaching	43.0	singer-songwriter	34.0
Ismo Alanko	seen live	100.0	finnish	51.0	rock	43.0	singer-songwriter	28.0	pop	15.0
Mighty Oaks	seen live	100.0	folk	52.0	indie	22.0	singer-songwriter	22.0	german	18.0
Fun	seen live	100.0	noise rock	69.0	indie	41.0	finnish	31.0	post-punk	28.0
Mediengruppe Telekommander	seen live	100.0	electropunk	68.0	electronic	64.0	german	53.0	Electroclash	36.0
Sanni	seen live	100.0	finnish	84.0	pop	60.0	electronic	36.0	female vocalists	28.0
FFS	seen live	100.0	indie rock	44.0	rock	35.0	electronic	19.0	indie	16.0
Attack! Attack!	seen live	100.0	post-hardcore	70.0	rock	56.0	new wave	31.0	welsh	31.0
Joel Alme	seen live	100.0	swedish	75.0	indie	52.0	singer-songwriter	45.0	indie pop	37.0
You Am I	seen live	100.0	australian	91.0	rock	61.0	alternative	28.0	Aussie	28.0
Neljä Ruusua	seen live	100.0	finnish	85.0	rock	57.0	pop	33.0	alternative	19.0
Goldie Lookin' Chain	seen live	100.0	Hip-Hop	62.0	rap	49.0	comedy	45.0	welsh	40.0
Soak	seen live	100.0	indie	64.0	female vocalists	43.0	punk	37.0	singer-songwriter	32.0
Fismoll	seen live	100.0	acoustic	97.0	indie	76.0	alternative	63.0	polish	52.0
Skambankt	seen live	100.0	norwegian	96.0	hard rock	68.0	rock	66.0	punk	65.0
The Films	seen live	100.0	indie	58.0	indie rock	56.0	alternative	35.0	rock	32.0
Amason	seen live	100.0	swedish	82.0	indie pop	50.0	indie	44.0	alternative	38.0
Don Huonot	seen live	100.0	finnish	79.0	rock	60.0	suomirock	18.0	alternative rock	16.0
Lars Vaular	seen live	100.0	norwegian	58.0	Hip-Hop	48.0	rap	32.0	bergen	22.0
Weatherbox	seen live	100.0	indie	54.0	indie rock	38.0	emo	34.0	rock	24.0
Zita Swoon	seen live	100.0	belgian	53.0	alternative	44.0	Belgium	31.0	indie	28.0
Domowe Melodie	seen live	100.0	acoustic	60.0	polish	60.0	female vocalists	41.0	piano	41.0
Dave Hause	seen live	100.0	singer-songwriter	39.0	folk punk	27.0	folk	25.0	rock	14.0
Dia Psalma	seen live	100.0	punk	95.0	swedish	66.0	Swedish Punk	37.0	Trallpunk	36.0
Doktor Kosmos	seen live	100.0	swedish	63.0	pop	52.0	political	39.0	humouristic	18.0
Ex Hex	seen live	100.0	punk rock	74.0	female vocalists	66.0	indie	57.0	rock	53.0
Heideroosjes	seen live	100.0	punk	56.0	punk rock	40.0	dutch	28.0	rock	11.0
Figurines	seen live	100.0	indie rock	96.0	danish	90.0	indie	77.0	rock	36.0
Sara	seen live	100.0	finnish	45.0	alternative rock	27.0	alternative metal	20.0	metal	19.0
Bilderbuch	seen live	100.0	indie	44.0	austrian	44.0	german	18.0	rock	17.0
C-Mon & Kypski	seen live	100.0	electronic	59.0	turntablism	56.0	dutch	40.0	Hip-Hop	39.0
Dear Reader	seen live	100.0	indie	66.0	folk	54.0	south african	52.0	indie folk	41.0
Bettie Serveert	seen live	100.0	dutch	90.0	indie	72.0	female vocalists	67.0	indie rock	59.0
Montreal	seen live	100.0	punk rock	59.0	punk	39.0	german	35.0	deutschpunk	26.0
Gyroscope	seen live	100.0	australian	70.0	rock	62.0	alternative rock	37.0	alternative	33.0
I Heart Sharks	seen live	100.0	indie	77.0	electronic	73.0	Indietronic	70.0	german	52.0
Attack In Black	seen live	100.0	Canadian	74.0	indie	65.0	indie rock	58.0	punk	43.0
Don Johnson Big Band	seen live	100.0	finnish	37.0	Hip-Hop	33.0	jazz	18.0	electronic	15.0
Peter Pan Speedrock	seen live	100.0	speedrock	58.0	hard rock	51.0	rock	31.0	rock n roll	29.0
Twerps	seen live	100.0	Lo-Fi	95.0	indie	90.0	australian	79.0	indie rock	69.0
Admiral Freebee	seen live	100.0	belgian	51.0	rock	51.0	Belgium	34.0	singer-songwriter	33.0
Christian Kjellvander	seen live	100.0	singer-songwriter	73.0	swedish	64.0	Alt-country	36.0	americana	17.0
Mini Mansions	seen live	100.0	psychedelic	49.0	indie	44.0	indie rock	36.0	Stoner Rock	30.0
Lillasyster	seen live	100.0	hard rock	61.0	swedish	53.0	rock	40.0	hardcore	35.0
Breed77	seen live	100.0	metal	90.0	flamenco metal	87.0	Nu Metal	65.0	rock	47.0
Moto boy	seen live	100.0	swedish	62.0	indie	40.0	indie pop	30.0	alternative	27.0
Kristian Anttila	seen live	100.0	swedish	54.0	indie pop	32.0	indie	26.0	pop	24.0
Rhodes	seen live	100.0	indie	91.0	singer-songwriter	73.0	alternative	64.0	folk	28.0
Skubas	seen live	100.0	alternative	69.0	polish	63.0	acoustic	50.0	rock	44.0
1990s	seen live	100.0	indie rock	73.0	indie	69.0	british	41.0	Scottish	40.0
Adam Tensta	seen live	100.0	Hip-Hop	73.0	swedish	58.0	rap	48.0	electronic	46.0
Kråkesølv	seen live	100.0	norwegian	86.0	indie	56.0	indie pop	48.0	post-rock	34.0
Jim James	seen live	100.0	folk	96.0	indie	66.0	New Weird America	44.0	dream pop	35.0
Anna Järvinen	seen live	100.0	swedish	71.0	singer-songwriter	54.0	female vocalists	45.0	indie	33.0
Arsenal	seen live	100.0	belgian	55.0	electronic	46.0	Belgium	45.0	dance	26.0
Deap Vally	seen live	100.0	blues rock	79.0	Garage Rock	73.0	rock	71.0	alternative	35.0
Jeremy Jay	seen live	100.0	indie	93.0	indie pop	60.0	suicide twee-pop	51.0	twee	50.0
Crooked Fingers	seen live	100.0	indie	93.0	indie rock	74.0	folk	60.0	Alt-country	60.0
Shihad	seen live	100.0	New Zealand	59.0	rock	58.0	hard rock	35.0	Kiwi	30.0
Intergalactic Lovers	seen live	100.0	belgian	56.0	indie	52.0	indie rock	45.0	alternative	29.0
Ruudolf	seen live	100.0	Hip-Hop	48.0	finnish	38.0	rap	27.0	suomihoppi	17.0
Florence Valentin	seen live	100.0	swedish	49.0	pop	28.0	indie	25.0	indie pop	22.0
Johnathan Rice	seen live	100.0	singer-songwriter	66.0	folk	52.0	indie	51.0	acoustic	33.0
Sydän, sydän	seen live	100.0	Progressive rock	40.0	finnish	39.0	alternative	27.0	art rock	27.0
Cut Off Your Hands	seen live	100.0	indie	86.0	indie rock	70.0	New Zealand	68.0	alternative	37.0
Viva Voce	seen live	100.0	indie	57.0	indie pop	38.0	indie rock	31.0	female vocalists	25.0
Randy	seen live	100.0	punk rock	73.0	punk	64.0	swedish	38.0	rock	18.0
Nathaniel Rateliff	seen live	100.0	folk	88.0	singer-songwriter	80.0	indie	38.0	acoustic	34.0
Laineen Kasperi	seen live	100.0	Hip-Hop	42.0	rap	35.0	experimental	27.0	Suomirap	19.0
Daniel Norgren	seen live	100.0	blues	53.0	rock	16.0	swedish	16.0	folk	16.0
OK KID	seen live	100.0	electronic	77.0	rap	58.0	Hip-Hop	48.0	german	34.0
Bombino	seen live	100.0	african	81.0	tuareg	81.0	folk	69.0	psychedelic	62.0
deLillos	seen live	100.0	norwegian	87.0	rock	49.0	norsk	45.0	pop	38.0
Voicst	seen live	100.0	indie	46.0	dutch	44.0	rock	31.0	indie rock	29.0
The Whigs	seen live	100.0	indie rock	57.0	indie	36.0	rock	27.0	athens	25.0
John Olav Nilsen & Gjengen	seen live	100.0	norwegian	43.0	indie pop	27.0	rock	25.0	bergen	20.0
The Blue Van	seen live	100.0	Garage Rock	61.0	rock	52.0	danish	50.0	indie rock	46.0
Redrama	seen live	100.0	rap	75.0	Hip-Hop	69.0	finnish	69.0	hip hop	24.0
Stepa	seen live	100.0	Hip-Hop	44.0	Nu Metal	34.0	rap	32.0	finnish	31.0
Tankcsapda	seen live	100.0	hungarian	93.0	rock	92.0	hard rock	60.0	magyar	41.0
Risto	seen live	100.0	finnish	31.0	indie	22.0	indie rock	13.0	rock	11.0
Ezra Furman	seen live	100.0	folk	100.0	indie	50.0	indie rock	30.0	singer-songwriter	30.0
Vapnet	seen live	100.0	swedish	84.0	indie	46.0	indie pop	46.0	pop	35.0
Alamo Race Track	seen live	100.0	indie	45.0	dutch	40.0	indie rock	27.0	alternative	26.0
Eugene Mirman	seen live	100.0	comedy	96.0	stand-up comedy	46.0	stand-up	41.0	Stand Up	21.0
Roosbeef	seen live	100.0	dutch	76.0	singer-songwriter	64.0	female vocalists	63.0	alternative	37.0
All Sons & Daughters	folk	100.0	acoustic	94.0	christian	82.0	worship	82.0	pop rock	38.0
Saintseneca	folk	100.0	seen live	69.0	indie	38.0	acoustic	38.0	indie-folk	25.0
Violeta Parra	folk	100.0	chile	100.0	female vocalists	57.0	singer-songwriter	48.0	nueva cancion	47.0
Tom Rosenthal	indie	100.0	folk	100.0	singer-songwriter	59.0	british	53.0	chamber pop	24.0
The Lone Bellow	folk	100.0	seen live	60.0	americana	55.0	Brooklyn	25.0	harmony	20.0
Ola Podrida	folk	100.0	singer-songwriter	73.0	indie folk	51.0	indie	47.0	acoustic	29.0
Peggy Sue	folk	100.0	indie	93.0	female vocalists	78.0	blues	60.0	seen live	58.0
Valravn	folk	100.0	Scandinavian folk	53.0	nordic folk	44.0	danish	42.0	denmark	20.0
17 Hippies	folk	100.0	Gypsy	63.0	german	61.0	klezmer	53.0	World Music	46.0
Bodies of Water	folk	100.0	indie	88.0	indie pop	68.0	freak folk	62.0	alternative	42.0
Megapuss	folk	100.0	freak folk	95.0	New Weird America	64.0	free folk	36.0	male vocalists	29.0
Frontier Ruckus	folk	100.0	seen live	89.0	Alt-country	73.0	Michigan	37.0	americana	34.0
Jandek	folk	100.0	experimental	83.0	outsider	64.0	singer-songwriter	53.0	people who are freakier and folkier than motherfucking devendra banhart	37.0
Rio En Medio	folk	100.0	freak folk	83.0	female vocalists	78.0	New Weird America	59.0	indie folk	42.0
Árstíðir	folk	100.0	icelandic	91.0	acoustic	72.0	neofolk	67.0	seen live	30.0
The Kingston Trio	folk	100.0	60s	49.0	country	32.0	oldies	26.0	acoustic	20.0
Пелагея	folk	100.0	russian	74.0	female vocalists	64.0	folk rock	53.0	Russian Folk	47.0
Lily & Madeleine	folk	100.0	indie	91.0	female vocalists	78.0	indie folk	60.0	pop	46.0
Delta Rae	folk	100.0	folk rock	78.0	soul	64.0	blues	64.0	southern gothic	23.0
Bob Dylan & Johnny Cash	folk	100.0	country	90.0	blues	41.0	singer-songwriter	39.0	classic rock	33.0
Ben Sollee	folk	100.0	cello	66.0	acoustic	55.0	singer-songwriter	52.0	indie	43.0
Chris Bathgate	folk	100.0	singer-songwriter	70.0	acoustic	36.0	seen live	34.0	indie	31.0
Richard & Linda Thompson	folk	100.0	folk rock	68.0	singer-songwriter	66.0	british folk	48.0	folk-rock	30.0
Julie Fowlis	folk	100.0	Scottish	75.0	celtic	72.0	gaelic	60.0	female vocalists	49.0
Tiny Vipers	folk	100.0	singer-songwriter	86.0	indie	53.0	female vocalists	53.0	indie folk	49.0
Zdob Si Zdub	folk	100.0	alternative	81.0	rock	72.0	Moldovan	72.0	folk-rock	69.0
Jessica Pratt	folk	100.0	singer-songwriter	72.0	female vocalists	60.0	acoustic	32.0	seen live	29.0
Eric Fish	folk	100.0	german	74.0	folk rock	69.0	seen live	63.0	acoustic	61.0
Тэм	folk	100.0	russian	65.0	menestrel	65.0	bard	64.0	fantasy	49.0
Bellowhead	folk	100.0	seen live	40.0	english folk	37.0	british	27.0	british folk	18.0
Bandabardò	folk	100.0	italian	88.0	alternative	48.0	italian songwriters	27.0	indie	25.0
Jordaan Mason & the Horse Museum	folk	100.0	Lo-Fi	66.0	experimental	49.0	indie folk	40.0	freak folk	33.0
Roy Harper	folk	100.0	singer-songwriter	81.0	folk rock	79.0	rock	30.0	seen live	22.0
Brooke Waggoner	folk	100.0	singer-songwriter	100.0	piano	82.0	female vocalists	79.0	indie	69.0
The Unthanks	folk	100.0	female vocalists	50.0	northumbrian	36.0	seen live	25.0	british folk	25.0
Cara Dillon	folk	100.0	celtic	67.0	irish	64.0	female vocalists	52.0	singer-songwriter	34.0
Čechomor	folk	100.0	Czech	100.0	folk rock	55.0	seen live	40.0	rock	18.0
The Wooden Sky	folk	100.0	Canadian	89.0	indie	73.0	Alt-country	64.0	seen live	59.0
Die Streuner	folk	100.0	Mittelalter	99.0	medieval	89.0	german	62.0	seen live	33.0
Wake Owl	folk	100.0	indie	90.0	acoustic	30.0	indie folk	30.0	alternative	20.0
DeYarmond Edison	folk	100.0	acoustic	55.0	Alt-country	46.0	indie	20.0	rock	20.0
Madeline	folk	100.0	singer-songwriter	67.0	folk punk	54.0	seen live	50.0	plan-it-x	45.0
ハンバート ハンバート	folk	100.0	acoustic	91.0	japanese	82.0	j-pop	41.0	country	32.0
Tiny Tim	folk	100.0	experimental	88.0	ukulele	69.0	people who are freakier and folkier than motherfucking devendra banhart	52.0	avantgarde	46.0
Chris Pureka	folk	100.0	singer-songwriter	85.0	female vocalists	74.0	acoustic	40.0	seen live	34.0
B Fachada	folk	100.0	portuguese	76.0	seen live	56.0	freak folclore	42.0	florcaveira	32.0
Michael Hurley	folk	100.0	singer-songwriter	58.0	blues	38.0	americana	33.0	people who are freakier and folkier than motherfucking devendra banhart	15.0
Mirel Wagner	folk	100.0	seen live	91.0	acoustic	76.0	singer-songwriter	71.0	blues	46.0
Samamidon	folk	100.0	singer-songwriter	84.0	indie folk	48.0	americana	34.0	indie	30.0
Kari Rueslåtten	folk	100.0	female vocalists	60.0	norwegian	58.0	singer-songwriter	38.0	pop	28.0
Buffy Sainte-Marie	folk	100.0	singer-songwriter	59.0	native american	56.0	female vocalists	51.0	60s	31.0
Beta Radio	folk	100.0	indie folk	95.0	indie	50.0	country	45.0	male vocalists	35.0
Victor Jara	folk	100.0	chile	89.0	political	62.0	singer-songwriter	59.0	latin	50.0
Johnnyswim	soul	100.0	folk	100.0	pop	67.0	rock	67.0	female vocalists	67.0
The Watson Twins	folk	100.0	female vocalists	93.0	Alt-country	89.0	indie	82.0	seen live	63.0
Sera Cahoone	folk	100.0	singer-songwriter	100.0	Alt-country	77.0	female vocalists	69.0	americana	53.0
Twin Forks	seen live	100.0	folk	100.0	indie	87.0	indie folk	67.0	pop	54.0
Eivør Pálsdóttir	folk	100.0	Faroese	61.0	female vocalists	47.0	jazz	44.0	icelandic	44.0
The Seekers	folk	100.0	60s	83.0	oldies	65.0	pop	56.0	australian	48.0
Rapalje	folk	100.0	celtic	73.0	seen live	50.0	Irish Folk	41.0	celtic folk	34.0
River City Extension	folk	100.0	seen live	67.0	Alt-country	30.0	bluegrass	30.0	blues	25.0
Greg Brown	folk	100.0	singer-songwriter	82.0	americana	46.0	Alt-country	30.0	folk rock	18.0
Palace Brothers	folk	100.0	Alt-country	92.0	singer-songwriter	63.0	indie	50.0	americana	49.0
Ramblin' Jack Elliott	folk	100.0	country	68.0	singer-songwriter	54.0	roots	24.0	classic country	19.0
Gjallarhorn	folk	100.0	Scandinavian folk	50.0	finnish	46.0	nordic	31.0	viking metal	28.0
Fossil Collective	folk	100.0	indie	96.0	indie folk	70.0	british	53.0	alternative	53.0
Стары Ольса	folk	100.0	medieval	68.0	Belarusian	36.0	belarussian folk	31.0	ethno	25.0
Little May	folk	100.0	indie	74.0	indie pop	74.0	australian	64.0	pop	53.0
Pokey LaFarge	folk	100.0	seen live	95.0	blues	95.0	singer-songwriter	59.0	riverboat soul	30.0
Ольга Арефьева	folk	100.0	reggae	95.0	russian	89.0	russian rock	63.0	female vocalists	61.0
Jack Rose	folk	100.0	guitar	49.0	instrumental	44.0	New Weird America	39.0	freak folk	37.0
Алина Орлова	folk	100.0	acoustic	97.0	female vocalists	75.0	easy listening	46.0	cardiowave	46.0
Meursault	folk	100.0	experimental	70.0	seen live	61.0	folk punk	52.0	punk	40.0
The Welcome Wagon	folk	100.0	indie	71.0	Alt-country	47.0	alternative gospel	45.0	christian	26.0
Башня Rowan	folk	100.0	russian	71.0	folk rock	64.0	female vocalists	44.0	Russian Folk	37.0
Dikanda	folk	100.0	polish	54.0	ethno	47.0	World Music	36.0	world	34.0
Elephant Revival	folk	100.0	acoustic	49.0	indie	45.0	bluegrass	38.0	seen live	19.0
Percival	folk	100.0	polish	58.0	medieval	52.0	slovian	38.0	rock	21.0
Stan Rogers	folk	100.0	Canadian	75.0	singer-songwriter	43.0	sea shanties	27.0	acoustic	23.0
The Deep Dark Woods	folk	100.0	Alt-country	62.0	Canadian	59.0	seen live	50.0	country	45.0
Show Of Hands	folk	100.0	acoustic	47.0	british folk	43.0	seen live	35.0	folk rock	29.0
Smoke Fairies	folk	100.0	female vocalists	63.0	blues	54.0	seen live	45.0	singer-songwriter	34.0
Warsaw Village Band	folk	100.0	polish	69.0	polish folk	47.0	World Music	38.0	world	31.0
Zakopower	folk	100.0	polish	100.0	folk rock	61.0	alternative	45.0	rock	40.0
Cambriana	folk	100.0	brazilian	100.0	indie	84.0	indie rock	67.0	alternative	28.0
The Wooden Birds	folk	100.0	indie	82.0	acoustic	55.0	seen live	44.0	indie folk	44.0
Kevin Morby	seen live	100.0	folk	100.0	singer-songwriter	92.0	indie	50.0	Lo-Fi	50.0
Fred Neil	folk	100.0	singer-songwriter	78.0	blues	56.0	60s	42.0	folk-rock	30.0
Davy Graham	folk	100.0	acoustic	57.0	guitar	50.0	british folk	35.0	instrumental	33.0
Girlyman	folk	100.0	seen live	51.0	acoustic	48.0	queer	35.0	harmony	31.0
The Dartz	folk	100.0	folk rock	73.0	russian	64.0	celtic	48.0	folk-rock	23.0
Entertainment for the Braindead	folk	100.0	singer-songwriter	91.0	female vocalists	72.0	indie	65.0	indie folk	47.0
Haley Bonar	folk	100.0	female vocalists	84.0	indie	68.0	singer-songwriter	68.0	Minnesota	40.0
Kate & Anna McGarrigle	folk	100.0	singer-songwriter	65.0	female vocalists	57.0	Canadian	46.0	americana	23.0
Frazey Ford	folk	100.0	singer-songwriter	62.0	female vocalists	46.0	Canadian	46.0	country	39.0
Michelle Shocked	folk	100.0	singer-songwriter	91.0	female vocalists	83.0	Alt-country	48.0	americana	34.0
Heathers	folk	100.0	acoustic	77.0	seen live	74.0	female vocalists	67.0	irish	44.0
Ralph McTell	folk	100.0	singer-songwriter	58.0	acoustic	31.0	british	28.0	oldies	26.0
Greg Graffin	folk	100.0	acoustic	86.0	singer-songwriter	56.0	folk rock	39.0	punk	37.0
Drew Holcomb & the Neighbors	folk	100.0	singer-songwriter	75.0	indie	25.0	country	25.0	alternative	25.0
Laïs	folk	100.0	belgian	55.0	female vocalists	40.0	Belgium	29.0	seen live	28.0
Bonnie 'Prince' Billy & Matt Sweeney	folk	100.0	singer-songwriter	64.0	indie	58.0	Alt-country	49.0	seen live	20.0
Fiction Family	folk	100.0	acoustic	75.0	alternative	63.0	christian	57.0	Jon Foreman	29.0
Wooden Wand	folk	100.0	Alt-country	58.0	freak folk	53.0	psychedelic	46.0	New Weird America	37.0
John Renbourn	folk	100.0	acoustic	61.0	guitar	50.0	british folk	49.0	singer-songwriter	38.0
The Amazing	folk	100.0	psychedelic folk	95.0	swedish	67.0	seen live	50.0	Psychedelic Rock	45.0
Peter Wolf Crier	folk	100.0	indie	82.0	Lo-Fi	69.0	Alt-country	57.0	seen live	38.0
Camila Moreno	folk	100.0	trova	72.0	alternative	47.0	female vocalists	47.0	chile	45.0
Odd Nordstoga	folk	100.0	norwegian	98.0	seen live	52.0	norsk	52.0	folk-rock	38.0
Mia Doi Todd	folk	100.0	female vocalists	91.0	singer-songwriter	91.0	indie	85.0	acoustic	56.0
JBM	folk	100.0	indie	97.0	singer-songwriter	90.0	seen live	54.0	Canadian	50.0
Flowers From the Man Who Shot Your Cousin	folk	100.0	singer-songwriter	92.0	acoustic	78.0	indie	65.0	indie folk	58.0
Abigail Washburn	folk	100.0	bluegrass	86.0	banjo	55.0	Alt-country	44.0	country	42.0
Pearls Before Swine	folk	100.0	psychedelic folk	93.0	psychedelic	80.0	acid folk	55.0	folk noir	24.0
Lady Danville	folk	100.0	acoustic	86.0	indie pop	79.0	piano	65.0	Mellow	58.0
The Uncluded	folk	100.0	Hip-Hop	92.0	experimental	59.0	acoustic	59.0	rhymesayers	42.0
Novo Amor	folk	100.0	indie	91.0	acoustic	73.0	alternative	46.0	british	28.0
Boduf Songs	folk	100.0	singer-songwriter	74.0	slowcore	66.0	experimental	62.0	acoustic	54.0
Vandaveer	folk	100.0	indie	56.0	folk rock	56.0	seen live	45.0	rock	34.0
Catie Curtis	folk	100.0	female vocalists	89.0	singer-songwriter	89.0	acoustic	51.0	indie	32.0
Glen Hansard and Markéta Irglová	folk	100.0	irish	90.0	acoustic	70.0	indie	58.0	singer-songwriter	55.0
Robbie Basho	folk	100.0	acoustic	53.0	guitar	53.0	experimental	45.0	raga folk	41.0
Nicole Dollanganger	folk	100.0	indie	84.0	singer-songwriter	67.0	Canadian	50.0	female vocalists	42.0
The Guggenheim Grotto	folk	100.0	irish	85.0	indie	72.0	acoustic	50.0	Mellow	37.0
Sava	folk	100.0	medieval	87.0	celtic	56.0	german	40.0	Mittelalter	31.0
Eddi Reader	folk	100.0	female vocalists	77.0	Scottish	62.0	singer-songwriter	58.0	pop	25.0
Йовин	folk	100.0	minstrel	70.0	bard	68.0	russian	64.0	fantasy	53.0
Mount Moriah	folk	100.0	indie	64.0	americana	64.0	North Carolina	40.0	durham	24.0
The Skygreen Leopards	folk	100.0	psychedelic	83.0	New Weird America	64.0	freak folk	54.0	psych-folk	39.0
Mount Eerie with Julie Doiron and Fred Squire	folk	100.0	indie	82.0	indie folk	63.0	singer-songwriter	44.0	a campire and a tent and a flashlight and some matches and a tree and that river and my glasses and a spaceship and a really really big bear but the bear is really really far away	44.0
Young Man	folk	100.0	dream pop	100.0	indie	83.0	00s	25.0	BIRP	25.0
Deb Talan	folk	100.0	female vocalists	62.0	singer-songwriter	51.0	acoustic	35.0	indie	30.0
Sir Richard Bishop	folk	100.0	seen live	84.0	experimental	79.0	guitar	53.0	instrumental	50.0
Hala Strana	psychedelic folk	100.0	folk	100.0	drone	90.0	experimental	78.0	psychedelic	42.0
Дахабраха	folk	100.0	Ukrainian	86.0	ethnic	61.0	ethno-chaos	54.0	world fusion	37.0
June Tabor	folk	100.0	female vocalists	56.0	british folk	42.0	english	27.0	folk-rock	21.0
Pasarea Colibri	folk	100.0	rock	50.0	folk rock	38.0	romanian folk	34.0	seen live	30.0
Karel Plíhal	folk	100.0	Czech	88.0	singer-songwriter	55.0	acoustic	37.0	guitar	34.0
Rosie and Me	folk	100.0	acoustic	66.0	indie	64.0	indie folk	49.0	experimental	32.0
Hop Along, Queen Ansleis	folk	100.0	singer-songwriter	73.0	female vocalists	64.0	acoustic	41.0	indie	32.0
Tara Jane O'Neil	folk	100.0	singer-songwriter	90.0	female vocalists	72.0	seen live	58.0	indie	57.0
Alasdair Roberts	folk	100.0	seen live	93.0	Scottish	65.0	singer-songwriter	54.0	folk noir	22.0
Karine Polwart	folk	100.0	singer-songwriter	68.0	Scottish	61.0	female vocalists	49.0	celtic	36.0
Bombadil	folk	100.0	indie	95.0	experimental	89.0	indie pop	73.0	seen live	34.0
Lori McKenna	folk	100.0	singer-songwriter	96.0	female vocalists	89.0	americana	50.0	country	47.0
Peter and Kerry	folk	100.0	indie	94.0	indie pop	74.0	acoustic	67.0	singer-songwriter	60.0
Eliza Carthy	folk	100.0	female vocalists	44.0	english folk	33.0	fiddle	28.0	seen live	24.0
Eastmountainsouth	folk	100.0	Alt-country	59.0	singer-songwriter	47.0	female vocalists	44.0	indie	42.0
chris and thomas	folk	100.0	singer-songwriter	57.0	indie	50.0	acoustic	50.0	los angeles	25.0
Misophone	folk	100.0	experimental	90.0	indie	60.0	singer-songwriter	56.0	Lo-Fi	48.0
Eliza Gilkyson	folk	100.0	female vocalists	78.0	singer-songwriter	67.0	Alt-country	39.0	country	23.0
Rachel Sermanni	folk	100.0	female vocalists	88.0	singer-songwriter	88.0	seen live	63.0	british	57.0
Lindisfarne	folk	100.0	folk rock	95.0	british folk	60.0	black metal	53.0	folk-rock	39.0
Versengold	folk	100.0	medieval	95.0	Mittelalter	65.0	german	44.0	Mittelalter Folk	29.0
Aaron West and The Roaring Twenties	folk	100.0	indie	72.0	singer-songwriter	72.0	indie rock	58.0	punk	43.0
Forest Fire	folk	100.0	indie	48.0	rock	44.0	indie pop	28.0	folk rock	24.0
This Is Ivy League	folk	100.0	indie pop	97.0	indie	85.0	acoustic	85.0	pop	58.0
Dialog Dini Hari	folk	100.0	indie	80.0	blues	50.0	indonesia	50.0	indonesian	20.0
Exuma	folk	100.0	Caribbean folk	92.0	freak folk	82.0	voodoo	63.0	caribbean	51.0
青葉市子	folk	100.0	japanese	98.0	singer-songwriter	78.0	acoustic	72.0	female vocalists	58.0
Ally Kerr	folk	100.0	singer-songwriter	59.0	anime	30.0	Soundtrack	29.0	indie pop	27.0
The Duhks	folk	100.0	Canadian	60.0	country	46.0	celtic	43.0	seen live	41.0
Blue Roses	folk	100.0	singer-songwriter	85.0	female vocalists	74.0	acoustic	44.0	seen live	40.0
Lau Nau	folk	100.0	experimental	84.0	finnish	81.0	psychedelic	64.0	drone	47.0
Old Canes	folk	100.0	indie	86.0	singer-songwriter	49.0	indie rock	38.0	seen live	30.0
さだまさし	folk	100.0	japanese	75.0	j-pop	52.0	singer-songwriter	38.0	male vocalists	26.0
Nano Stern	folk	100.0	trova	62.0	seen live	54.0	singer-songwriter	47.0	chile	47.0
Carrantuohill	folk	100.0	celtic	91.0	seen live	61.0	polish	54.0	irish	53.0
Sandro Perri	folk	100.0	experimental	94.0	seen live	87.0	singer-songwriter	57.0	Constellation	40.0
Erdenstern	folk	100.0	fantasy	100.0	instrumental	81.0	ambient	71.0	symphonic	52.0
The Moondoggies	folk	100.0	rock	50.0	seen live	45.0	seattle	35.0	Alt-country	35.0
Dan Bern	folk	100.0	singer-songwriter	98.0	indie	43.0	seen live	35.0	political	35.0
White Magic	folk	100.0	New Weird America	81.0	psychedelic	60.0	indie	58.0	singer-songwriter	40.0
Ezra Vine	folk	100.0	New Zealand	100.0	male singer	50.0	indie	25.0	indie folk	25.0
Yusuf Islam	folk	100.0	singer-songwriter	79.0	acoustic	58.0	islamic	49.0	islam	40.0
Adam Green & Binki Shapiro	folk	100.0	indie	90.0	seen live	80.0	female vocalists	50.0	pop	40.0
Mt. Desolation	folk	100.0	Alt-country	91.0	british	70.0	alternative	70.0	country	65.0
Kris Delmhorst	folk	100.0	singer-songwriter	83.0	female vocalists	71.0	Alt-country	42.0	americana	31.0
David Thomas Broughton	folk	100.0	singer-songwriter	77.0	freak folk	71.0	experimental	70.0	seen live	48.0
Songs of Green Pheasant	folk	100.0	indie	50.0	indie folk	44.0	Lo-Fi	40.0	singer-songwriter	31.0
Anne Briggs	folk	100.0	british folk	50.0	female vocalists	39.0	singer-songwriter	31.0	traditional folk	18.0
Charlie Parr	folk	100.0	blues	84.0	Minnesota	52.0	americana	52.0	seen live	42.0
Caroline Smith And The Good Night Sleeps	folk	100.0	seen live	87.0	indie	80.0	Minnesota	80.0	acoustic	80.0
Mandolin Orange	folk	100.0	americana	50.0	progressive bluegrass	32.0	seen live	25.0	Alt-country	19.0
Dougie MacLean	folk	100.0	celtic	88.0	Scottish	70.0	singer-songwriter	33.0	celtic folk	31.0
Heather Woods Broderick	folk	100.0	ambient	100.0	singer-songwriter	80.0	modern classical	51.0	female vocalists	44.0
Richard Shindell	folk	100.0	singer-songwriter	82.0	acoustic	57.0	americana	37.0	guitar	30.0
William Tyler	folk	100.0	acoustic	95.0	guitar	75.0	seen live	70.0	instrumental	60.0
The Last Bison	folk	100.0	indie folk	73.0	indie	46.0	alternative	32.0	Favorite Artists	10.0
Malvina Reynolds	folk	100.0	singer-songwriter	47.0	female vocalists	38.0	alternative	12.0	weeds	12.0
Иван Купала	folk	100.0	russian	79.0	ethnic	65.0	electronic	55.0	World Music	28.0
Simon Joyner	folk	100.0	Lo-Fi	83.0	singer-songwriter	76.0	indie	63.0	Alt-country	56.0
Siskiyou	folk	100.0	Canadian	63.0	indie	60.0	seen live	45.0	Lo-Fi	41.0
Seryn	folk	100.0	indie	69.0	acoustic	44.0	seen live	19.0	indie folk	19.0
Megan Davies	indie	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0	\N	0.0
Grey Reverend	folk	100.0	singer-songwriter	89.0	acoustic	59.0	seen live	53.0	male vocalist	30.0
Monica Heldal	folk	100.0	singer-songwriter	100.0	acoustic	88.0	seen live	75.0	female vocalists	63.0
Jeffrey Foucault	folk	100.0	singer-songwriter	85.0	americana	74.0	Alt-country	53.0	acoustic	48.0
Yoshino Yuuji	folk	100.0	Soundtrack	94.0	instrumental	87.0	anime	80.0	japanese	74.0
Mary Hopkin	folk	100.0	60s	96.0	female vocalists	87.0	oldies	60.0	british	58.0
Martin Simpson	folk	100.0	acoustic guitar	50.0	celtic	34.0	acoustic	30.0	british folk	20.0
Brathanki	folk	100.0	polish	92.0	folk rock	84.0	rock	40.0	Czech	18.0
Evening Hymns	folk	100.0	seen live	71.0	indie	68.0	Canadian	59.0	acoustic	48.0
Bruce Peninsula	folk	100.0	experimental	95.0	Canadian	71.0	indie rock	50.0	indie	42.0
Jil Is Lucky	folk	100.0	french	86.0	indie	58.0	pop	40.0	french pop	25.0
Roddy Woomble	folk	100.0	Scottish	80.0	singer-songwriter	75.0	seen live	35.0	Mellow	31.0
Rogue Valley	indie	100.0	folk	100.0	indie rock	44.0	alternative rock	25.0	USA	19.0
The Weather Station	folk	100.0	Canadian	65.0	indie	36.0	canada	36.0	seen live	29.0
The Tolkien Ensemble	folk	100.0	Tolkien	78.0	medieval	62.0	Classical	56.0	lord of the rings	37.0
吉田拓郎	folk	100.0	japanese	82.0	j-pop	37.0	JPop	19.0	singer-songwriter	16.0
Lucy Kaplansky	folk	100.0	singer-songwriter	79.0	female vocalists	73.0	Alt-country	47.0	folk rock	28.0
Foreign Fields	folk	100.0	indie	58.0	acoustic	43.0	indie folk	43.0	seen live	29.0
Black Prairie	folk	100.0	bluegrass	93.0	acoustic	45.0	seen live	15.0	female vocalists	15.0
Norfolk & Western	folk	100.0	indie	78.0	Alt-country	70.0	indie folk	60.0	seen live	51.0
Bryan John Appleby	folk	100.0	indie	64.0	indie folk	58.0	singer-songwriter	43.0	seen live	16.0
Tom Paxton	folk	100.0	singer-songwriter	63.0	political	42.0	acoustic	33.0	humour	13.0
John Gorka	folk	100.0	singer-songwriter	98.0	acoustic	53.0	americana	38.0	seen live	21.0
Arbouretum	folk	100.0	psychedelic	95.0	indie rock	93.0	rock	72.0	seen live	39.0
Cricketbows	prog	100.0	psychedelic	100.0	weird	100.0	diy	100.0	experimental	50.0
The Workshy	seen live	100.0	Lo-Fi	50.0	Jam	50.0	under 2000 listeners	50.0	chillwave	50.0
White After Labor Day	pop	100.0	rock	100.0	indie	50.0	Stoner Rock	50.0	piano	50.0
Roly	dub	100.0	dancehall	100.0	under 2000 listeners	100.0	70s	50.0	reggae	50.0
Sex Face	funk	100.0	hip hop	50.0	rock	50.0	experimental	50.0	latin	50.0
Baaba Seth	seen live	100.0	indie	50.0	jam band	50.0	Jam	50.0	local music	50.0
Drinking With Clowns	Reno	100.0	paraguay	100.0	EEUU	100.0	drinking with clowns	100.0	Disco	50.0
Aerobi	australian	100.0	indie	50.0	rock	50.0	funk	50.0	upbeat	50.0
Edgehill Avenue	singer-songwriter	100.0	Southern Rock	100.0	under 2000 listeners	100.0	acoustic	50.0	jamband	50.0
Shun Charon	hip hop	100.0	soul	100.0	rap	100.0	East Coast	100.0	West Virginia	100.0
Jak Stout	jazz	100.0	rock	100.0	guitar	100.0	under 2000 listeners	100.0	vocal	50.0
Bobby Llama	Minnesota	100.0	seen live	50.0	90s	50.0	horns	50.0	Jam	50.0
Dadamah	experimental	100.0	psychedelic	85.0	post-rock	69.0	ambient	41.0	post rock	38.0
bEEdEEgEE	experimental	100.0	electronica	82.0	electronic	73.0	alternative	46.0	new wave	37.0
Нож Для Фрау Мюллер	experimental	100.0	russian	85.0	easy listening	64.0	lounge	43.0	electronica	35.0
Years  Years	chillout	100.0	electronic	100.0	ambient	100.0	experimental	100.0	Drum and bass	100.0
Tanya Tagaq	experimental	100.0	throat singing	84.0	inuit	84.0	female vocalists	38.0	Throat Singer	30.0
Entrepreneurs	experimental	100.0	indie	79.0	electronic	65.0	art rock	65.0	alternative	22.0
Fis	experimental	100.0	dubstep	75.0	Drum and bass	67.0	electronic	59.0	techno	50.0
Violet	experimental	100.0	ambient	90.0	post-hardcore	83.0	electronic	61.0	medieval	33.0
East West Blast Test	experimental	100.0	grindcore	90.0	noise	41.0	noise rock	31.0	instrumental	21.0
Trevor Dunn's Trio-Convulsant	experimental	100.0	Avant-Garde	97.0	jazz	91.0	free jazz	44.0	Fusion	29.0
Kiss Kiss Fantastic	experimental	100.0	shoegaze	94.0	psychedelic	94.0	dream pop	94.0	electronica	69.0
Majestic Casual	electronic	100.0	experimental	100.0	chillout	67.0	House	67.0	remix	67.0
Galapagos	experimental	100.0	chillwave	94.0	Lo-Fi	74.0	electronic	67.0	psychedelic	60.0
Kaiori Breathe	experimental	100.0	dub	100.0	dubstep	92.0	UK	50.0	Awesome	34.0
Alexander Hacke	experimental	100.0	industrial	80.0	german	56.0	alternative	41.0	avantgarde	41.0
Our Brother the Native	experimental	100.0	post-rock	50.0	folk	47.0	New Weird America	47.0	psych-folk	44.0
Matthew That	experimental	100.0	indie	74.0	alternative	67.0	trance	40.0	new progressive	40.0
Cobra Strike	experimental	100.0	Avant-Garde	53.0	alternative	42.0	alternative rock	36.0	rock	34.0
The Deserts of Träun	experimental	100.0	Avant-Garde	69.0	Progressive metal	52.0	Fusion	44.0	Avant-garde Metal	35.0
SJ Esau	experimental	100.0	anticon	93.0	folk	58.0	bristol	54.0	seen live	43.0
D/P/I	experimental	100.0	electronic	80.0	noise	74.0	ambient	74.0	sound collage	67.0
LOWER SPECTRUM	electronic	100.0	trip-hop	100.0	experimental	100.0	downtempo	100.0	epic	100.0
Samo	experimental	100.0	polish	75.0	math metal	75.0	Avant-garde Metal	42.0	Progressive metal	34.0
The Delta Mirror	electronic	100.0	experimental	100.0	ambient	77.0	psychedelic	53.0	indie	30.0
г897653455	experimental	100.0	underground hip-hop	75.0	electronic	50.0	abstract hip-hop	50.0	googlecore	50.0
Nonkeen	electronic	100.0	experimental	100.0	ambient	67.0	downtempo	34.0	electro	34.0
Six Drummers	experimental	100.0	instrumental	64.0	Soundtrack	52.0	percussion	44.0	Sweden	28.0
Bogus Blimp	experimental	100.0	Avant-Garde	100.0	electronic	80.0	ambient	66.0	jester records	26.0
Hunab Ku	experimental	100.0	mathcore	99.0	Avant-garde Metal	79.0	math metal	49.0	grindcore	40.0
Ninjaspy	experimental	100.0	hardcore	96.0	crossover	48.0	avantgarde	44.0	skacore	31.0
The Surfaris	Surf	100.0	surf rock	74.0	60s	41.0	instrumental	39.0	rock	29.0
Satan's Pilgrims	Surf	100.0	surf rock	74.0	Garage Rock	40.0	instrumental	31.0	punk	19.0
The Space Cossacks	Surf	100.0	surf rock	74.0	instrumental	25.0	Instrumental surf	15.0	surf revival	13.0
The Challengers	Surf	100.0	surf rock	73.0	instrumental	47.0	60s	33.0	rock	7.0
The Phantom Surfers	Surf	100.0	surf rock	73.0	Garage Rock	47.0	psychobilly	36.0	garage	30.0
The Torquays	Surf	100.0	surf rock	73.0	instrumental	56.0	Instrumental surf	28.0	rock	23.0
The Astronauts	Surf	100.0	surf rock	72.0	anarcho-punk	60.0	instrumental	35.0	folk punk	32.0
Huevos Rancheros	Surf	100.0	surf rock	72.0	instrumental	40.0	Canadian	38.0	rock	32.0
The Smiles	indie pop	100.0	indie	86.0	surf rock	72.0	surf pop	72.0	Surf	29.0
Ben Vaughn	experimental	100.0	surf rock	72.0	Soundtrack	43.0	Surf	43.0	singer-songwriter	43.0
Rhythm Rockers	Surf	100.0	surf rock	72.0	All	15.0	Fuck Off	15.0	Songs The Cramps Taught Us	15.0
Waikiki Makaki	Surf	100.0	surf rock	72.0	Horror Surf	58.0	instrumental	29.0	rock	15.0
The Tormentos	Surf	100.0	surf rock	71.0	instrumental	53.0	seen live	36.0	argentina	36.0
The Fathoms	Surf	100.0	surf rock	71.0	instrumental	53.0	beat surf	18.0	All	12.0
Laika & The Cosmonauts	Surf	100.0	surf rock	70.0	instrumental	53.0	finnish	38.0	seen live	25.0
The Bel-Airs	Surf	100.0	surf rock	70.0	rock	50.0	60s	10.0	garage	10.0
The Mermen	Surf	100.0	surf rock	69.0	instrumental	56.0	psychedelic	42.0	psychedelic surf	33.0
The Apemen	Surf	100.0	surf rock	69.0	dutch	23.0	rock	19.0	surf guitar	16.0
The Tiki Tones	Surf	100.0	surf rock	69.0	tiki	41.0	exotica	28.0	virally yours	14.0
The Coffin Daggers	Surf	100.0	Horror Surf	79.0	surf rock	68.0	Garage Rock	36.0	garage	36.0
Magic Kids	indie pop	100.0	surf rock	67.0	Lo-Fi	56.0	indie	49.0	seen live	39.0
Fair Ohs	indie	100.0	surf pop	94.0	seen live	87.0	surf rock	67.0	Garage Punk	40.0
Hvitmalt gjerde	seen live	100.0	norwegian	100.0	bergen	100.0	surf rock	67.0	indie	34.0
Bitch Boys	Surf	100.0	punk	67.0	surf rock	67.0	Swedish Punk	38.0	seen live	34.0
Los Porcos	indie	100.0	surf rock	67.0	yacht rock	67.0	british	34.0	New band of the day	34.0
The Honeys	Surf	100.0	60s girls	84.0	female vocalists	78.0	60s	67.0	surf rock	67.0
Elliot Easton's Tiki Gods	rock	100.0	Surf	67.0	blues rock	67.0	surf rock	67.0	new wave	50.0
Tape Waves	dream pop	100.0	indie	67.0	indie pop	67.0	surf rock	67.0	dream-pop	67.0
Grounders	indie	100.0	seen live	67.0	Lo-Fi	67.0	surf rock	67.0	toronto	67.0
Tijuana Bibles	Surf	100.0	Garage Rock	67.0	surf rock	67.0	spanish	34.0	seen live	34.0
Roof Doctor	folk	100.0	folk rock	100.0	indie	67.0	emo	67.0	Lo-Fi	67.0
Dusty Mush	Garage Rock	100.0	psychedelic	67.0	surf rock	67.0	Garage Punk	34.0	under 2000 listeners	34.0
The Barbwires	seen live	100.0	swedish	84.0	Surf	84.0	surf rock	67.0	Garage Rock	34.0
Crushed Out	Garage Rock	100.0	rock	67.0	surf rock	67.0	indie	34.0	indie rock	34.0
Ray Daytona and Googoobombos	Surf	100.0	seen live	67.0	garage	67.0	surf rock	67.0	instrumental	34.0
The Beat Tornados	Surf	100.0	surf rock	67.0	seen live	34.0	Garage Rock	34.0	rock	17.0
Long Boards	Surf	100.0	surf rock	67.0	spanish	34.0	All	34.0	spanish surf	34.0
Irmãos Rocha!	rock gaucho	100.0	rock	67.0	guitar	67.0	surf rock	67.0	feelgood	67.0
Oh, Oh, Ecstasy	shoegaze	100.0	indie	67.0	pop	67.0	Surf	67.0	Lo-Fi	67.0
The Ready Men	Surf	100.0	surf rock	67.0	music	34.0	surf guitar	34.0	asparagus brine salt	34.0
Spring Break Shark Attack!	Surf	100.0	surf rock	67.0	instrumental	56.0	everything	23.0	favorites	12.0
Hondells	Surf	100.0	surf rock	67.0	soft rock	34.0	sunshine pop	34.0	\N	0.0
Playboy Manbaby	arizona	100.0	indie rock	67.0	surf rock	67.0	hip hop	34.0	tempe	34.0
The De-Fenders	Surf	100.0	surf rock	67.0	surf guitar	67.0	asparagus brine salt	34.0	\N	0.0
The Mighty Gordinis	Garage Rock	100.0	seen live	67.0	Surf	67.0	surf rock	67.0	All	34.0
Pavlov's Woody	Surf	100.0	surf rock	67.0	instrumental	34.0	american	34.0	\N	0.0
Husky & The Sandmen	Surf	100.0	instrumental	67.0	surf rock	67.0	\N	0.0	\N	0.0
Cee Bee Beaumont	Garage Rock	100.0	surf rock	67.0	instrumental	34.0	90s	34.0	punk rock	34.0
The Modelos	Surf	100.0	spaghetti western	67.0	surf rock	67.0	country	34.0	All	34.0
The Man from Ravcon	Surf	100.0	spaghetti western	67.0	surf rock	67.0	spy	34.0	Spaghetti Surf	34.0
Los Kanibales Surf Combo	Surf	100.0	surf rock	67.0	rock	34.0	instrumental	34.0	\N	0.0
Aloha Screwdriver	rockabilly	100.0	instrumental	67.0	surf rock	67.0	Surf	34.0	fast	34.0
Frankie & The Poolboys	Surf	100.0	surf rock	67.0	rock	34.0	beach music	34.0	\N	0.0
The Carmines	pop punk	100.0	Pop-punk	100.0	punk	67.0	Surf	67.0	punk rock	67.0
Aloha Radio	indie	100.0	rock	100.0	alternative	100.0	California	100.0	bands i've seen live	100.0
The New Tweedy Bros!	psychedelic	100.0	rock	56.0	folk	56.0	70s	45.0	psychedelic folk	34.0
mequetrefe	psychedelic	100.0	space rock	78.0	galiza	78.0	post-rock	67.0	spanish	56.0
The Ursula Minor	psychedelic	100.0	fusion festival 2008	34.0	rock	23.0	space rock	23.0	Psychedelic Rock	23.0
Ya Ho Wha 13	psychedelic	100.0	Psychedelic Rock	40.0	experimental	36.0	Psychedelia	29.0	Acid Rock	29.0
Laghonia	Psychedelic Rock	100.0	psychedelic	97.0	60s	66.0	Peru	56.0	rock	38.0
Former Cell Mates	seen live	100.0	punk	67.0	rock	50.0	american	50.0	punk rock	50.0
Pint of Stout	folk punk	100.0	pirate punk	45.0	folk-punk	34.0	fsu folk	23.0	pirates folk	23.0
Файно	Ukrainian	100.0	alternative	84.0	ukrainian rock	67.0	folk-punk	34.0	alternative rock	17.0
Joey Briggs	seen live	100.0	folk punk	50.0	folk	34.0	singer-songwriter	34.0	punk rock	34.0
Теорія Ґвалту	ska-punk	100.0	ska	84.0	ska punk	84.0	folk punk	84.0	Ukrainian	50.0
Paper Ceilings	folk punk	100.0	punk	67.0	under 2000 listeners	67.0	folk	34.0	acoustic	34.0
project: CITIZEN	folk punk	100.0	under 2000 listeners	67.0	seen live	34.0	punk rock	34.0	All	34.0
Wifebeater	folk punk	100.0	seen live	67.0	punk	67.0	speed metal	67.0	heavy metal	34.0
Казма-Казма	art rock	100.0	post-punk	78.0	Avant-Garde	78.0	avantgarde	78.0	Progressive rock	45.0
Leatherat	seen live	100.0	folk	100.0	country	34.0	live	34.0	under 2000 listeners	34.0
Pog	seen live	100.0	punk	100.0	twee	100.0	antifolk	100.0	indiepop	67.0
Ghost Town Trio	seen live	100.0	indie rock	100.0	punk rock	100.0	pop punk	100.0	Pop-punk	100.0
Рура	folk	100.0	folk punk	67.0	ukraininan	67.0	seen live	34.0	Ukrainian	34.0
Whack	instrumental	100.0	dance-punk	100.0	seen live	67.0	dance	34.0	Gypsy	34.0
Cartright	austin	100.0	daytrotter	100.0	indie rock	67.0	texas	67.0	indie	34.0
Everymen	seen live	100.0	Alt-country	67.0	rock	34.0	punk	34.0	punk rock	34.0
Last To Leave	country	100.0	punk	100.0	folk	100.0	acoustic	100.0	bluegrass	100.0
The Diffs	seen live	100.0	punk	67.0	indie	34.0	hardcore	34.0	USA	34.0
I Am Unanimous!	under 2000 listeners	100.0	GarageBand	67.0	Need to Rate	67.0	the part-time all-stars	67.0	pop	34.0
Mega Games	folk punk	100.0	punk	67.0	under 2000 listeners	67.0	seen live	34.0	british	34.0
Jamie Clarke's Perfect	british	100.0	folk rock	100.0	seen live	67.0	rock	34.0	country	34.0
PJ & Gaby	folk punk	100.0	seen live	34.0	punk	34.0	folk	34.0	acoustic	34.0
Dead Peasants	black metal	100.0	punk	100.0	raw black metal	100.0	Lo-Fi	67.0	depressive black metal	67.0
Critica radicala	seen live	100.0	anarcho punk	100.0	punk	67.0	punk rock	67.0	Romanian	67.0
Angie Nussey	folk punk	100.0	girls with guitars	100.0	virally female	100.0	Canadian	67.0	00s	67.0
Joe Tilston	folk	100.0	folk punk	100.0	acoustic punk	100.0	seen live	67.0	singer-songwriter	67.0
Snail Quail	2000s	100.0	indie	67.0	male vocalists	67.0	diy	67.0	lo fi	67.0
Хармс	post-punk	100.0	alternative	34.0	post-rock	34.0	soft rock	34.0	neofolk	34.0
Deliwery	punk	100.0	punk rock	100.0	Czech	67.0	seen live	34.0	saxophone	34.0
Radical Din Val	post-punk	100.0	dark	34.0	new wave	34.0	Gothic	34.0	darkwave	34.0
Gilles Zolty	Canadian	100.0	indie	67.0	indietronica	67.0	indie rock	34.0	under 2000 listeners	34.0
The Shillelaghs	Canadian	100.0	punk rock	67.0	celtic punk	67.0	folk-rock	34.0	folk rock	34.0
Circus of Hate	german	100.0	deutschpunk	67.0	punk	34.0	punk rock	34.0	female vocals	34.0
Friends!	emo	100.0	folk punk	100.0	folk	67.0	acoustic	67.0	indie	34.0
Nora & Gnoll	folk	100.0	female vocalists	100.0	acoustic	100.0	political	100.0	singer-songwriter	67.0
Shipwreck Rats	folk	100.0	Irish Folk	67.0	Scottish	34.0	german	34.0	irish	34.0
бабслей	female vocalists	100.0	russian	84.0	punk rock	84.0	indie	67.0	folk	50.0
Zone Libre Vs Casey & B.James	Hip-Hop	100.0	french	100.0	rock	100.0	rap	100.0	Sludge	100.0
The Porters	folk punk	100.0	celtic punk	69.0	german	64.0	seen live	55.0	punk	41.0
Los Gatos Negros	plan-it-x	100.0	alternative	40.0	folk punk	40.0	seen live	30.0	ska	30.0
Arroyo Deathmatch	folk punk	100.0	acoustic	72.0	rage folk	58.0	ukulele	43.0	punk	29.0
Chugga Chugga	folk punk	100.0	indie	58.0	twee	58.0	plan-it-x	58.0	twee pop	29.0
O Pioneers!!!	folk punk	100.0	punk	77.0	punk rock	50.0	orgcore	37.0	seen live	33.0
Bread and Roses	folk punk	100.0	seen live	27.0	acoustic	27.0	folk-punk	27.0	punk	11.0
The Killigans	celtic punk	100.0	folk punk	98.0	irish	61.0	punk	40.0	Paddy Punk	31.0
Crowns	acoustic	100.0	rnb	75.0	synthwave	75.0	electronic	50.0	folk	50.0
Lee Corey Oswald	punk	100.0	seen live	75.0	indie	75.0	emo	50.0	folk	50.0
Ebri Knight	folk	100.0	celtic punk	100.0	celtic	75.0	irish	50.0	folk punk	50.0
The Booze Brothers	rock	100.0	punk rock	100.0	french	75.0	folk	75.0	Punkabilly	75.0
Hot New Mexicans	folk punk	100.0	seen live	25.0	punk	25.0	folk	25.0	punk rock	25.0
Rymodee	folk	100.0	plan-it-x	75.0	singer-songwriter	50.0	folk punk	50.0	black metal	25.0
Catgut Mary	celtic punk	100.0	folk punk	63.0	australian	50.0	punk	25.0	irish folk punk	25.0
Mega Gem	folk	100.0	diy	100.0	indie	75.0	punk	75.0	acoustic	75.0
Jackdaw	celtic rock	100.0	folk punk	75.0	Paddy Punk	75.0	seen live	50.0	american	50.0
criminal jokers	indie	100.0	post-punk	50.0	italian	25.0	folk-punk	25.0	GenteCheNonStaBene	25.0
JD and the Longfellows	folk	100.0	Skiffle	75.0	country	50.0	irish	50.0	folk punk	50.0
The Muck Savages	celtic punk	100.0	punk rock	50.0	irish	50.0	celtic	50.0	Oi	50.0
Supercancer	indie	100.0	noise	50.0	punk	50.0	emo	50.0	folk	50.0
Within Range	hardcore punk	100.0	norwegian hardcore	100.0	punk	75.0	norwegian	75.0	Blitz	75.0
The Intolerants	punk	100.0	seen live	25.0	rock	25.0	folk punk	25.0	under 2000 listeners	25.0
The Scurvy	punk rock	100.0	folk	50.0	folk-rock	50.0	rock	25.0	folk punk	25.0
Operation: Cliff Clavin	pop punk	100.0	folk punk	100.0	punk	89.0	plan-it-x	83.0	political	65.0
Siobhan	celtic	100.0	techno	93.0	Canadian	93.0	Irish Punk	93.0	celtic punk	85.0
Abe Froman	punk	100.0	plan-it-x	95.0	pop punk	50.0	Michigan	45.0	folk punk	39.0
Ahead To The Sea	folk punk	100.0	folk	43.0	german	33.0	folk rock	31.0	folk-punk	22.0
Rumbleseat	folk	100.0	acoustic	68.0	folk punk	56.0	Alt-country	50.0	punk	36.0
Mischief Brew	folk punk	100.0	punk	41.0	folk	39.0	anarcho-punk	33.0	seen live	21.0
This Bike Is a Pipe Bomb	folk punk	100.0	punk	56.0	folk	32.0	seen live	29.0	folk-punk	20.0
Die Schnitter	folk punk	100.0	punk	98.0	german	70.0	folk rock	67.0	Mittelalter	42.0
imadethismistake	folk punk	100.0	seen live	70.0	indie	50.0	acoustic	50.0	singer-songwriter	30.0
Paul Baribeau And Ginger Alford	seen live	100.0	folk punk	100.0	acoustic	80.0	plan-it-x	40.0	punk	20.0
Chris Cresswell	acoustic	100.0	folk punk	80.0	singer-songwriter	60.0	punk	20.0	punk rock	20.0
Pablo Sciuto	singer-songwriter	100.0	Cantautores	100.0	uruguay	100.0	Bebe	100.0	juana molina	100.0
Fantazio	alternative	100.0	french	80.0	seen live	80.0	bass	80.0	acoustic	60.0
Real Live Tigers	seen live	100.0	folk	100.0	indie	40.0	Lo-Fi	40.0	favorites	20.0
Roving Bottles	folk	100.0	german	60.0	political	40.0	Irish Folk	40.0	punk	20.0
Ferocious Dog	folk punk	100.0	folk rock	80.0	celtic	80.0	folk	60.0	punk	40.0
Brine & Bastards	punk	100.0	rock	40.0	Need to Rate	40.0	folk	20.0	punk rock	20.0
Jehovas Fitness	seen live	100.0	Awesome	40.0	punk	20.0	alternative	20.0	alternative rock	20.0
Rhune	black metal	100.0	nsbm	80.0	pagan metal	60.0	medieval	40.0	celtic	40.0
Zolty	Canadian	100.0	indie	40.0	cool	40.0	Vancouver	40.0	alternative	20.0
Beerocephal's	Oi	100.0	folk punk	73.0	punk	56.0	russian	50.0	beer punk	45.0
Gaslight Anthem	seen live	100.0	punk rock	69.0	punk	56.0	rock	51.0	folk punk	43.0
Defiance, Ohio	folk punk	100.0	punk	43.0	folk	34.0	seen live	30.0	acoustic	24.0
Days N' Daze	folk punk	100.0	riot folk	63.0	thrashgrass	50.0	folk	44.0	punk rock	32.0
Бостонское Чаепитие	folk punk	100.0	cabaret	69.0	decadence	63.0	punk	38.0	celtic punk	38.0
Drunken Fairy Tales	celtic punk	100.0	folk punk	64.0	russian	46.0	seen live	37.0	punk rock	19.0
Rosa	folk punk	100.0	folk	46.0	plan-it-x	45.0	punk	25.0	spanish	24.0
The Devil Is Electric	folk punk	100.0	plan-it-x	89.0	pop punk	71.0	punk	65.0	indie	18.0
Matty Pop Chart	folk punk	100.0	seen live	80.0	plan-it-x	77.0	folk	60.0	acoustic	44.0
(Young) Pioneers	folk punk	100.0	punk	75.0	punk rock	34.0	folk	25.0	seen live	17.0
The State Lottery	punk	100.0	punk rock	84.0	folk punk	67.0	pop punk	34.0	folk	17.0
Carrie Nations	punk	100.0	pop punk	84.0	punk rock	67.0	plan-it-x	34.0	classic rock	17.0
Young Mountain	screamo	100.0	post-hardcore	42.0	skramz	34.0	hardcore	25.0	emo	25.0
The Vandon Arms	celtic punk	100.0	punk	67.0	punk rock	50.0	celtic	50.0	folk punk	34.0
Destroy Nate Allen	folk punk	100.0	folk	67.0	seen live	50.0	punk	34.0	acoustic	34.0
Casey Neill	folk	100.0	political	84.0	anarchist	34.0	rock	17.0	punk	17.0
Mr. Denim	folk punk	100.0	punk	50.0	folk	34.0	under 2000 listeners	34.0	acoustic	17.0
Scandaliz Vandalistz	indie	100.0	rock	100.0	alternative	100.0	seen live	84.0	female vocalists	84.0
ContraMundi	punk	100.0	pop punk	100.0	under 2000 listeners	67.0	animal rights	67.0	hardcore	50.0
Mr. Irish Bastard	folk punk	100.0	seen live	79.0	celtic punk	74.0	irish	48.0	Irish Punk	40.0
The Zydepunks	folk punk	100.0	gypsy punk	85.0	folk	77.0	punk	58.0	Gypsy	43.0
Adhamh Roland	folk	100.0	queer	70.0	riot folk	70.0	folk punk	54.0	anarcho folk	54.0
Bleeding Hearts	folk	100.0	folk punk	85.0	folk rock	77.0	seen live	62.0	rock	31.0
The Deadwood Divine	emo	100.0	acoustic	77.0	folk	16.0	singer-songwriter	16.0	folk-punk	16.0
Grabass Charlestons	punk	100.0	seen live	72.0	punk rock	43.0	folk punk	39.0	pop punk	34.0
Junkman's Choir	folk punk	100.0	celtic punk	100.0	scottish punk	72.0	punk	43.0	Paddy Punk	43.0
Hi Ho, Six Shooter!	folk punk	100.0	folk	29.0	acoustic	29.0	seen live	15.0	indie	15.0
Street Fiddlers	folk	100.0	folk rock	86.0	celtic	72.0	seen live	43.0	Irish Folk	43.0
Passion Fodder	post-punk	100.0	80s	43.0	Post punk	29.0	french	15.0	seen live	15.0
Wingnut Dishwasher's Union	folk punk	100.0	punk	40.0	folk	40.0	singer-songwriter	33.0	acoustic punk	30.0
The Measure (SA)	punk	100.0	seen live	79.0	pop punk	79.0	punk rock	65.0	new jersey	58.0
Evan Greer	folk	100.0	folk punk	85.0	riot folk	80.0	political	67.0	acoustic	52.0
Ryan Harvey	riot folk	100.0	political	82.0	folk	71.0	acoustic	46.0	folk punk	38.0
One Reason	plan-it-x	100.0	folk punk	94.0	punk	87.0	riotfolk	40.0	punk rock	34.0
Zuname	punk	100.0	punk rock	87.0	street punk	75.0	russian	56.0	seen live	42.0
Mark Gunnery	riot folk	100.0	folk	74.0	singer-songwriter	54.0	political	54.0	acoustic	47.0
Circle J	folk punk	100.0	seen live	67.0	celtic punk	60.0	punk	40.0	punk rock	40.0
Mike Scott	singer-songwriter	100.0	acoustic punk	76.0	folk punk	72.0	hardcore	39.0	Scottish	34.0
The Bastard Suns	punk	100.0	ska	63.0	punk rock	63.0	ska-punk	50.0	seen live	25.0
Future Virgins	punk	100.0	punk rock	75.0	seen live	50.0	Lo-Fi	38.0	pop punk	38.0
Dr. Frank	pop punk	100.0	singer-songwriter	63.0	punk rock	63.0	alternative	38.0	rock	25.0
Les Nonnes Troppo	french	100.0	humour	63.0	chanson francaise	38.0	francais	38.0	seen live	13.0
Skama la rede	Asturies	100.0	ska punk	88.0	asturian	88.0	ska	75.0	Minority language	50.0
Fiffin Market	folk punk	100.0	celtic	75.0	celtic punk	75.0	irish	63.0	female vocalists	38.0
Old Trees	Vegan	100.0	folk punk	88.0	folk	63.0	acoustic	63.0	Portugal	50.0
Mill a h-Uile Rud	punk	100.0	gaelic	75.0	celtic punk	50.0	rock	38.0	Gaelic Punk	25.0
Pogromcy Wdów i Sierot	punk	100.0	polish punk	75.0	alternative	63.0	hardcore	50.0	polish	50.0
Ghost Mice	folk punk	100.0	folk	44.0	acoustic	38.0	seen live	34.0	punk	33.0
Spoonboy	folk punk	100.0	plan-it-x	54.0	folk	41.0	acoustic	38.0	seen live	30.0
Onsind	folk punk	100.0	acoustic	67.0	seen live	45.0	punk	45.0	Vegan	45.0
Fernando Milagros	folk	100.0	chile	100.0	alternative	39.0	Melancholism	39.0	woja	28.0
The Wild	folk punk	100.0	folk	60.0	punk	44.0	seen live	40.0	punk rock	20.0
Saw Wheel	folk punk	100.0	acoustic	50.0	folk	47.0	country	20.0	seen live	16.0
Patrik Fitzgerald	punk	100.0	folk punk	66.0	singer-songwriter	54.0	folk	39.0	british	35.0
Pedals On Our Pirate Ships	folk punk	100.0	acoustic	56.0	seen live	34.0	punk	23.0	virginia	23.0
Moon Bandits	folk punk	100.0	folk	36.0	Vegan	36.0	acoustic	30.0	punk	24.0
Evil Robot Us'	folk punk	100.0	punk	23.0	female vocals	17.0	basement	17.0	new york	12.0
The Casual Terrorist	folk punk	100.0	anarcho-punk	100.0	punk	56.0	anarchist	56.0	folk	45.0
Los Carayos	patchanka	100.0	rockabilly	78.0	folk	45.0	ska	45.0	latin	34.0
Perkalaba	Ukrainian	100.0	ska	89.0	folk	67.0	ethno-ska	55.0	folk-punk	49.0
Across the Border	folk punk	100.0	punk	39.0	folk rock	37.0	Irish Folk	29.0	german	28.0
Animal Collective	experimental	100.0	indie	69.0	freak folk	54.0	seen live	43.0	indie rock	36.0
Tycho	ambient	100.0	electronic	82.0	idm	70.0	chillout	66.0	downtempo	64.0
Panda Bear	experimental	100.0	psychedelic	73.0	freak folk	60.0	indie	55.0	folk	41.0
Real Estate	Lo-Fi	100.0	indie	97.0	seen live	71.0	surf rock	64.0	Surf	46.0
Kurt Vile	seen live	100.0	Lo-Fi	93.0	psychedelic	81.0	indie	73.0	bedroom pop	34.0
Pinegrove	indie	100.0	indie rock	67.0	seen live	50.0	emo	34.0	Alt-country	34.0
Bay Faction	emo	100.0	\N	0.0	\N	0.0	\N	0.0	\N	0.0
Moon Taxi	alternative	100.0	Jam	89.0	seen live	67.0	indie rock	56.0	indie	34.0
M83	electronic	100.0	shoegaze	76.0	post-rock	60.0	indie	45.0	electronica	36.0
Parquet Courts	post-punk	100.0	Garage Rock	100.0	seen live	76.0	noise rock	58.0	indie	54.0
Deakin	secretly murdered by the other members of the band	100.0	seen live	69.0	ambient	69.0	lounge	38.0	beyondwithin	32.0
Avey Tare	experimental	100.0	psychedelic	94.0	freak folk	69.0	electronic	68.0	indie	44.0
Mac Demarco	Lo-Fi	100.0	indie	83.0	seen live	67.0	experimental	51.0	post-punk	50.0
\.


--
-- Data for Name: artistssmall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY artistssmall (artist, tag1, weight1, tag2, weight2, tag3, weight3, tag4, weight4, tag5, weight5) FROM stdin;
Jacob Whitesides	pop	100.0	american	100.0	male vocalists	100.0	singer-songwriter	50.0	cute	50.0
Le Chat Lunatique	jazz	100.0	seen live	50.0	jazz vocal	50.0	female vocalists	50.0	vocal jazz	50.0
Zachary Kale	different	100.0	indie	50.0	soul	50.0	singer-songwriter	50.0	amazing	50.0
London Clash	alternative rock	100.0	experimental	100.0	Progressive rock	100.0	art rock	100.0	Mellow	100.0
Local Pressure	under 2000 listeners	100.0	electronica	50.0	indie	50.0	pop	50.0	folk	50.0
Shannon Saunders	indie	100.0	female vocalists	100.0	singer-songwriter	100.0	indie pop	60.0	seen live	40.0
Nitemoves	electronic	100.0	seen live	100.0	electronica	34.0	chill	34.0	ambient	34.0
Robotaki	electronica	100.0	electronic	67.0	chill	67.0	DIsco House	67.0	ambient	34.0
ProbCause	Hip-Hop	100.0	underground rap	100.0	instrumental hip-hop	100.0	chicago	67.0	seen live	34.0
Blood Cultures	dream pop	100.0	electronic	67.0	indie	67.0	Lo-Fi	67.0	electronica	34.0
Elo da Corrente	hip hop	100.0	seen live	75.0	underground rap	50.0	underground hip-hop	50.0	STRICTLY FOR THE UNDERGOUND	50.0
The Goodnight Loving	milwaukee	100.0	indie	75.0	folk rock	75.0	garage pop	75.0	seen live	50.0
Gil	punk	100.0	Bahia	100.0	pop	75.0	hardcore	75.0	hardcore punk	75.0
Rotary Downs	indie	100.0	New Orleans	80.0	indie rock	60.0	alternative	40.0	seen live	20.0
T.A.f.T.	alternative	100.0	experimental	100.0	New Weird America	100.0	furry	100.0	classic rock	84.0
DropxLife	trip-hop	100.0	Hip-Hop	86.0	electronic	86.0	instrumental hip-hop	72.0	ambient	58.0
Wild Yaks	folk	100.0	rock	58.0	alternative	43.0	punk	29.0	new york	29.0
Daniela Andrade	acoustic	100.0	indie	94.0	female vocalist	94.0	folk	87.0	folk pop	54.0
The Last Dinosaur	indie	100.0	experimental	88.0	british	75.0	alternative	50.0	acoustic	38.0
treasureseason	dreampop	100.0	chillwave	100.0	swedish	63.0	indie	50.0	must check out	50.0
Emily Kinney	indie pop	100.0	pop	78.0	folk	78.0	female vocalists	56.0	indie	34.0
A Silent Express	seen live	100.0	indie rock	89.0	rock	56.0	dutch	56.0	groningen	34.0
Loopable	ambient	100.0	drone	100.0	under 2000 listeners	100.0	white noise	100.0	mixed-avantgarde	100.0
Will Joseph Cook	seen live	100.0	indie pop	100.0	indie rock	100.0	singer-songwriter	100.0	under 2000 listeners	100.0
Waterstrider	experimental	100.0	under 2000 listeners	100.0	seen live	50.0	indie	50.0	groove	50.0
Sean Milo	indie	100.0	folk	100.0	acoustic	100.0	under 2000 listeners	100.0	new jersey	100.0
Ian Britt	seen live	100.0	acoustic	100.0	under 2000 listeners	100.0	male singer-songwriters	100.0	virally yours	100.0
Fly Golden Eagle	seen live	100.0	Psychedelic Rock	100.0	under 2000 listeners	100.0	Neo-Psychedelia	100.0	rock	50.0
Zes	chillout	100.0	seen live	100.0	bass	100.0	under 2000 listeners	100.0	trap	100.0
Strategic Music	Soundtrack	100.0	ambient	100.0	ost	100.0	game	100.0	video game music	100.0
Rachel Taylor	electronic	100.0	female vocalists	100.0	singer-songwriter	100.0	USA	100.0	under 2000 listeners	100.0
Tula	electronic	100.0	seen live	100.0	swedish	100.0	folk	100.0	Lo-Fi	100.0
Martin Kohlstedt	chillout	100.0	seen live	100.0	instrumental	100.0	alternative	100.0	ambient	100.0
Tauk	seen live	100.0	post-rock	100.0	Progressive rock	100.0	Fusion	100.0	Jazz Rock	100.0
Neva Eder	folk	100.0	under 2000 listeners	100.0	childrens music	100.0	Exactly 2000 listeners	100.0	Need to Rate	100.0
Atlas Bound	electronic	100.0	under 2000 listeners	100.0	folk	50.0	\N	0.0	\N	0.0
Graveola	jazz	100.0	rock	100.0	folk	100.0	acoustic	100.0	latin	100.0
Jasmine Kennedy	under 2000 listeners	100.0	seen live	50.0	\N	0.0	\N	0.0	\N	0.0
STARCARDIGAN	electro	100.0	House	100.0	indietronica	100.0	synthpop	100.0	Electronic Pop	100.0
Belize	pop	100.0	ambient	100.0	drone	100.0	under 2000 listeners	100.0	National Anthem	100.0
Family and Friends	seen live	100.0	american	100.0	under 2000 listeners	100.0	sxsw 2015	100.0	\N	0.0
Subplaid	electronic	100.0	idm	100.0	jungle	100.0	breakcore	100.0	under 2000 listeners	100.0
Cat Ballou	seen live	100.0	rock	100.0	deutsch	100.0	köln	100.0	under 2000 listeners	100.0
the animal upstairs	alternative	100.0	under 2000 listeners	100.0	indie	67.0	rock	67.0	experimental	34.0
Phil Cook	seen live	100.0	indie	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Indios	seen live	100.0	indie rock	100.0	argentina	100.0	native american	100.0	rock nacional	100.0
i-fls	electronic	100.0	idm	100.0	under 2000 listeners	100.0	japanese	50.0	happy	50.0
Brendan Maclean	acoustic	100.0	under 2000 listeners	100.0	seen live	50.0	indie	50.0	pop	50.0
Delta Venus	indie	100.0	rock	100.0	folk	100.0	psychedelic	100.0	argentina	100.0
Camel Power Club	Hip-Hop	100.0	chillout	100.0	indie	100.0	experimental	100.0	underground hip-hop	100.0
Said	hip hop	100.0	rock	100.0	japanese	100.0	punk	100.0	alternative	100.0
Chris Weisman	under 2000 listeners	100.0	singer-songwriter	50.0	liszaj radio	50.0	\N	0.0	\N	0.0
Songs of Water	instrumental	100.0	folk	100.0	christian	100.0	under 2000 listeners	100.0	hammer dulcimer	100.0
Babel feat. Låpsley	chillout	100.0	dream pop	100.0	under 2000 listeners	100.0	dreamwave	100.0	\N	0.0
Waterbed	indie	100.0	alternative	100.0	experimental	100.0	psychedelic	100.0	eurodance	100.0
Thunderstorms	indie	100.0	punk	100.0	emo	100.0	under 2000 listeners	100.0	Twinkle daddies	100.0
Leland	Love	100.0	Acoustic Rock	100.0	san francisco	100.0	under 2000 listeners	100.0	psych rock	100.0
rich edwards	ambient	100.0	House	100.0	contemporary classical	100.0	Progressive House	100.0	crossover	100.0
Cid	metalcore	100.0	electronic	100.0	seen live	100.0	electro house	100.0	under 2000 listeners	100.0
It's A Bird! It's A Plane!	seen live	100.0	indie	100.0	swedish	100.0	chamber pop	100.0	under 2000 listeners	100.0
Hålogalandslaget	seen live	100.0	under 2000 listeners	100.0	Nord-Norsk Rap	100.0	\N	0.0	\N	0.0
Broeder Dieleman	seen live	100.0	under 2000 listeners	100.0	singer-songwriter	67.0	folk	34.0	seenlive	34.0
Korey Dane	folk	100.0	singer-songwriter	100.0	under 2000 listeners	100.0	Unplugged	100.0	akustik	100.0
John Paul Keith	seen live	100.0	rockabilly	100.0	americana	100.0	Alt-country	100.0	Like	100.0
Limboski	jazz	100.0	rock	100.0	alternative	100.0	folk	100.0	blues	100.0
Nathan Roberts	pop	100.0	rock	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0
Rare Monk	seen live	100.0	under 2000 listeners	100.0	jazz	50.0	pop	50.0	rock	50.0
Wyatt	under 2000 listeners	100.0	electronic	50.0	electronica	50.0	seen live	50.0	country	50.0
It Looks Sad.	emo	100.0	indie rock	100.0	post-punk	100.0	jangle pop	100.0	charlotte	100.0
Ben Montague	seen live	100.0	under 2000 listeners	100.0	british	50.0	alternative rock	50.0	pop rock	50.0
Ryan Helsing	under 2000 listeners	100.0	chillout	67.0	instrumental	67.0	ambient	67.0	electronic	34.0
Lucy & The Cloud Parade	indie	100.0	pop	100.0	rock	100.0	folk	100.0	check out	100.0
The Suits	electronic	100.0	seen live	100.0	indie	100.0	alternative	100.0	new york	100.0
Total Babes	seen live	100.0	indie	100.0	pop	100.0	indie pop	100.0	Lo-Fi	100.0
Sharpless	indie	100.0	under 2000 listeners	100.0	All	100.0	seen live	50.0	pop	50.0
Close Talker	seen live	100.0	indie pop	100.0	Canadian	100.0	pop punk	100.0	Pop-punk	100.0
Ganes	seen live	100.0	under 2000 listeners	100.0	rock	67.0	female vocalists	67.0	female vocalist	67.0
Heart Eyes	electronica	100.0	folk	100.0	minimal	100.0	bass	100.0	under 2000 listeners	100.0
Rival Summers	acoustic	100.0	under 2000 listeners	100.0	seen live	50.0	pop	50.0	pop rock	50.0
Papertwin	electronic	100.0	new wave	100.0	synth pop	100.0	Brooklyn	100.0	synthpop	100.0
Haris	singer-songwriter	100.0	acoustic	100.0	christian	100.0	dutch	100.0	under 2000 listeners	100.0
Mainland	seen live	100.0	emo	100.0	indie rock	100.0	under 2000 listeners	100.0	All	100.0
High Tyde	seen live	100.0	indie	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Julián Mayorga	indie	100.0	folk	100.0	experimental	100.0	latin	100.0	freak	100.0
Gaz Brookfield	acoustic	100.0	under 2000 listeners	100.0	folk	50.0	male vocalists	50.0	Singer/Songwriter	50.0
New Beat Fund	seen live	100.0	California	100.0	los angeles	100.0	under 2000 listeners	100.0	SXSW 2013	100.0
Stafford	seen live	100.0	dubstep	100.0	Soundtracks	100.0	under 2000 listeners	100.0	should be famous	100.0
12Vince	Hip-Hop	100.0	seen live	100.0	underground hip-hop	100.0	instrumental hip-hop	100.0	under 2000 listeners	100.0
Chad Sugg	seen live	100.0	singer-songwriter	100.0	Singer/Songwriter	100.0	under 2000 listeners	100.0	TN	100.0
Zach Winters	folk	100.0	singer-songwriter	100.0	under 2000 listeners	100.0	SXSW 2013	100.0	awesome music	100.0
Roger Sellers	ambient	100.0	psychedelic	100.0	under 2000 listeners	100.0	electronic	50.0	seen live	50.0
Orangy	noise	100.0	electronic	100.0	experimental	100.0	House	100.0	weird	100.0
DISCO//OSLO	seen live	100.0	punk	100.0	deutsch	100.0	punk rock	100.0	german	100.0
Borka	noise	100.0	Hip-Hop	100.0	experimental	100.0	funk	100.0	breakbeat	100.0
Lady Maisery	under 2000 listeners	100.0	folk	67.0	female vocalists	67.0	british folk	34.0	diddling	34.0
Chasson Rouel	indie	100.0	ambient	100.0	Fusion	100.0	under 2000 listeners	100.0	soul rock	100.0
Tear Council	synthpop	100.0	australia	100.0	80's	100.0	under 2000 listeners	100.0	All	100.0
Hannah & Maggie	seen live	100.0	indie	100.0	folk	100.0	acoustic	100.0	under 2000 listeners	100.0
Makeup Monsters	seen live	100.0	indie	100.0	punk	100.0	under 2000 listeners	100.0	tacoma	100.0
Magic Giant	folk	100.0	under 2000 listeners	100.0	electronic	50.0	indie	50.0	rock	50.0
The Tuesday Club	rock	100.0	punk	100.0	unsigned	100.0	new wave	100.0	london	100.0
Gaps	seen live	100.0	indie	100.0	hip hop	100.0	rap	100.0	experimental	100.0
Mike McCarthy	folk	100.0	australian	100.0	piano	100.0	singer	100.0	guitar	100.0
Marie Hines	USA	100.0	piano	100.0	under 2000 listeners	100.0	country	50.0	singer-songwriter	50.0
Sean Christopher	singer-songwriter	100.0	new age	100.0	male vocalists	100.0	under 2000 listeners	100.0	\N	0.0
The Fireworks	seen live	100.0	indie	100.0	under 2000 listeners	100.0	On the Radar	100.0	Loud Fuzzy Indiepop	100.0
Joel Jerome	seen live	100.0	rock	100.0	indie pop	100.0	Lo-Fi	100.0	Garage Rock	100.0
Austin Crane	seen live	100.0	indie	100.0	folk	100.0	songwriter	100.0	folk rock	100.0
Enkídú	seen live	100.0	under 2000 listeners	100.0	nihuya sebe	100.0	\N	0.0	\N	0.0
Mirror Talk	synthpop	100.0	under 2000 listeners	100.0	minimal wave	100.0	sl	100.0	relevant magazine	100.0
River Jumpers	punk	100.0	punk rock	100.0	under 2000 listeners	100.0	seen live	50.0	pop punk	50.0
Franko	pop	100.0	alternative rock	100.0	under 2000 listeners	100.0	seen live	50.0	pop rock	50.0
Human Pyramids	rock	100.0	instrumental	100.0	post-rock	100.0	epic	100.0	Scottish	100.0
Ichi	seen live	100.0	techstep	100.0	under 2000 listeners	100.0	trap	100.0	EDM	100.0
Julián Maeso	seen live	100.0	rock	100.0	soul	100.0	country	100.0	funk	100.0
Lakyn	alternative	100.0	folk	100.0	acoustic	100.0	under 2000 listeners	100.0	the voice	100.0
Cristina Quesada	indie	100.0	folk	100.0	spain	100.0	under 2000 listeners	100.0	sweet	100.0
Pocket Satellite	seen live	100.0	indie	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0
Sarah Class	under 2000 listeners	100.0	Soundtrack	50.0	female	50.0	pop	50.0	folk	50.0
Exmagician	electronic	100.0	electronica	100.0	pop	100.0	rock	100.0	folk	100.0
Blockwart	hip hop	100.0	experimental	100.0	under 2000 listeners	100.0	antideutsch	100.0	linksautonom	100.0
Summer Salt	seen live	100.0	Bossa Nova	100.0	oldies	100.0	austin	100.0	under 2000 listeners	100.0
Little Blue Box	electronic	100.0	Electroclash	100.0	electro	100.0	synthpop	100.0	under 2000 listeners	100.0
Anti (Spain)	electronica	100.0	ambient	100.0	experimental	100.0	indietronica	100.0	outsider	100.0
Anirudh	ambient	100.0	post-rock	100.0	bass	100.0	under 2000 listeners	100.0	bootleg	100.0
Chris Rubeo	folk	100.0	under 2000 listeners	100.0	indie	50.0	pop	50.0	under 1000 listeners	50.0
The Gulls	experimental	100.0	indie rock	100.0	psychedelic	100.0	freak folk	100.0	folk rock	100.0
Tuba Tuba	seen live	100.0	pop	100.0	indie pop	100.0	norwegian	100.0	Norway	100.0
Dez Duron	singer-songwriter	100.0	male vocalist	100.0	under 2000 listeners	100.0	the voice	100.0	\N	0.0
Vintage Blue	indie	100.0	pop	100.0	rock	100.0	folk	100.0	blues	100.0
Great Apes	seen live	100.0	under 2000 listeners	100.0	melodic punk	100.0	\N	0.0	\N	0.0
Miejski Sort	Hip-Hop	100.0	seen live	100.0	hip hop	100.0	rap	100.0	hiphop	100.0
Equinox, the Peacekeeper	seen live	100.0	folk	100.0	acoustic	100.0	psychedelic	100.0	under 2000 listeners	100.0
The Outs	seen live	100.0	alternative rock	100.0	britpop	100.0	blues	100.0	psychedelic	100.0
Thad Kopec	indie	100.0	folk	100.0	american	100.0	indie folk	100.0	male vocalists	100.0
Rhonda Mackert	ambient	100.0	piano	100.0	new age	100.0	under 2000 listeners	100.0	All	100.0
Binoculers	seen live	100.0	under 2000 listeners	100.0	singer-songwriter	67.0	germany	67.0	folk	34.0
Trwbador	electronic	100.0	british	100.0	folk	100.0	folktronica	100.0	under 2000 listeners	100.0
Retic	trip hop	100.0	relaxing	100.0	under 2000 listeners	100.0	techno	50.0	idm	50.0
Rob Westwood	Soundtrack	100.0	Classical	100.0	ambient	100.0	under 2000 listeners	100.0	folk	50.0
Heather Maloney	seen live	100.0	female vocalists	100.0	beautiful	100.0	american	100.0	under 2000 listeners	100.0
Benjamin Dunn	pop	100.0	alternative	100.0	folk	100.0	dance	100.0	Arcade Fire	100.0
Музыка для секса	post-punk	100.0	underrated	100.0	under 2000 listeners	100.0	Porno Pop	100.0	zigafolk	100.0
Waldorf Histeria	punk	100.0	under 2000 listeners	100.0	punk pop	100.0	spanish punk rock	100.0	\N	0.0
Trails	under 2000 listeners	100.0	noise	50.0	math rock	50.0	ambient	50.0	experimental	50.0
The Youth	seen live	100.0	under 2000 listeners	100.0	alternative rock	50.0	Japanese Indie	50.0	Filipino Music	50.0
Bumpin Uglies	rock	100.0	punk	100.0	reggae	100.0	ska	100.0	under 2000 listeners	100.0
Le Face	seen live	100.0	punk	100.0	Garage Rock	100.0	garage	100.0	Garage Punk	100.0
Erevan Tusk	seen live	100.0	indie pop	100.0	indie rock	100.0	under 2000 listeners	100.0	primeurs de massy 2012	100.0
Rosh	seen live	100.0	under 2000 listeners	100.0	hip hop	50.0	swedish	50.0	rap	50.0
Avtalet	seen live	100.0	indie pop	100.0	under 2000 listeners	100.0	svensk indiepop	100.0	\N	0.0
Ryo Utasato	ambient	100.0	under 2000 listeners	100.0	trance	50.0	japanese	50.0	world wide pocket	50.0
Her Parents	punk	100.0	hardcore	100.0	london	100.0	funny	100.0	absurd	100.0
Via Coma	rock	100.0	under 2000 listeners	100.0	experimental	34.0	indie rock	34.0	friends	34.0
Music2work2	Classical	100.0	ambient	100.0	calm	100.0	piano	100.0	music to work to	100.0
The Bitter Springs	seen live	100.0	rock	100.0	british	100.0	under 2000 listeners	100.0	music	100.0
Cold (from Iceland)	ambient	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Ivory Hours	indie	100.0	rock	100.0	alternative	100.0	folk	100.0	indie rock	100.0
Careful	math rock	100.0	noise rock	100.0	Drum and bass	100.0	post rock	100.0	under 2000 listeners	100.0
The Record Life	seen live	100.0	under 2000 listeners	100.0	Discoverockult	100.0	\N	0.0	\N	0.0
Alerta Pachuca	folk	100.0	latin	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Akryllic Love	folk	100.0	Lo-Fi	100.0	under 2000 listeners	100.0	experimental	67.0	psychedelic	67.0
Fancy Pants and the Cellphones	punk	100.0	brazilian	100.0	under 2000 listeners	100.0	powerviolence	100.0	makes my balls explode	100.0
The Wooden Wolf	seen live	100.0	folk	100.0	under 2000 listeners	100.0	noir et blanc	100.0	\N	0.0
Tranda	Hip-Hop	100.0	seen live	100.0	under 2000 listeners	100.0	tranda	100.0	\N	0.0
Dear Strange	seen live	100.0	synthpop	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Brightly	electronic	100.0	indie	100.0	pop	100.0	folk	100.0	UK	100.0
Fantasy Rainbow	indie	100.0	alternative	100.0	Surf	100.0	indie rock	100.0	Lo-Fi	100.0
LX	electronic	100.0	french	100.0	seen live	100.0	rap	100.0	russian	100.0
Dilillis	seen live	100.0	under 2000 listeners	100.0	seen live 2012	100.0	north-norwegian	100.0	\N	0.0
Quiet Corral	seen live	100.0	rock	100.0	folk	100.0	folk rock	100.0	under 2000 listeners	100.0
Fiktion	swedish	100.0	under 2000 listeners	100.0	electronic	50.0	electronica	50.0	seen live	50.0
Twinsmatic	Hip-Hop	100.0	experimental	100.0	underground hip-hop	100.0	nu soul	100.0	under 2000 listeners	100.0
Dylan Shearer	indie	100.0	folk	100.0	indie pop	100.0	singer-songwriter	100.0	folk pop	100.0
Daniel Finney	instrumental	100.0	ambient	100.0	under 2000 listeners	100.0	game soundtrack	100.0	psychoalgie	100.0
John Heart Jackie	seen live	100.0	folk	100.0	Alt-country	100.0	under 2000 listeners	100.0	radiated sounds	100.0
Jasper Sloan Yip	under 2000 listeners	100.0	pop	50.0	folk	50.0	alt folk	50.0	piano rock	50.0
White Woods	psychedelic	100.0	melbourne	100.0	under 2000 listeners	100.0	electronic	50.0	seen live	50.0
Fraternal Twin	pop	100.0	folk	100.0	under 2000 listeners	100.0	5432fun	100.0	experimental	50.0
Darsn	electronic	100.0	trip-hop	100.0	rock	100.0	ambient	100.0	acoustic	100.0
Victoria Vox	folk	100.0	female vocalists	100.0	acoustic	100.0	guitar	100.0	american	100.0
El Rojo Adios	indie	100.0	swedish	100.0	americana	100.0	under 2000 listeners	100.0	\N	0.0
Ruspo	electronic	100.0	indie	100.0	experimental	100.0	singer-songwriter	100.0	Lo-Fi	100.0
Wind Chimes	ambient	100.0	drone	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Vitamin Wig C	Lo-Fi	100.0	under 2000 listeners	100.0	indie	50.0	experimental	50.0	psychedelic	50.0
More Hazards More Heroes	indie	100.0	folk	100.0	blues	100.0	Nashville	100.0	under 2000 listeners	100.0
SHIPS	JPop	100.0	anime	100.0	under 2000 listeners	100.0	Hello Project	67.0	seen live	34.0
MoiJe	french	100.0	seen live	100.0	rock	100.0	folk	100.0	favorites	100.0
Walker Lukens	rock	100.0	soul	100.0	singer-songwriter	100.0	male vocalist	100.0	under 2000 listeners	100.0
Joey Fourr	noise	100.0	seen live	100.0	garage	100.0	under 2000 listeners	100.0	Bandcamp	100.0
Plantman	ambient	100.0	under 2000 listeners	100.0	sad folk	100.0	\N	0.0	\N	0.0
Flora Cash	Minnesota	100.0	folk	100.0	female vocalists	100.0	singer-songwriter	100.0	unsigned	100.0
The Milkman's Union	seen live	100.0	indie	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Tempus	rock	100.0	under 2000 listeners	100.0	Mellow and Acoustic	100.0	seen live	67.0	instrumental	67.0
Haunter	indie	100.0	folk	100.0	psychedelic	100.0	under 2000 listeners	100.0	black metal	50.0
Billy Lockett	folk	100.0	acoustic	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
Herencia de Timbiqui	folk	100.0	world	100.0	Colombia	100.0	under 2000 listeners	100.0	pacific	100.0
Tallows	seen live	100.0	under 2000 listeners	100.0	oklahoma	100.0	SXSW 2013	100.0	All	100.0
David Beats Goliath	indie	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0	\N	0.0
Réu e Condenado	under 2000 listeners	100.0	cool	50.0	funny	50.0	seen live	25.0	rock	25.0
Joel Sarakula	seen live	100.0	indie	100.0	alternative	100.0	london	100.0	under 2000 listeners	100.0
A Paper Cup Band	indie	100.0	alternative	100.0	Minnesota	100.0	folk	100.0	acoustic	100.0
Nhumo	electronic	100.0	electronica	100.0	experimental	100.0	Drum and bass	100.0	dnb	100.0
Deadfish	seen live	100.0	under 2000 listeners	100.0	People I have seen live	100.0	\N	0.0	\N	0.0
Tydes feat. Låpsley	chillout	100.0	electronic	100.0	female vocalists	100.0	dream pop	100.0	under 2000 listeners	100.0
Rob Longstaff	under 2000 listeners	100.0	pop	50.0	soul	50.0	singer-songwriter	50.0	acoustic	50.0
The Shape of the Earth	folk	100.0	singer-songwriter	100.0	acoustic	100.0	under 2000 listeners	100.0	seen live	50.0
Casey Cat	electronic	100.0	ambient	100.0	experimental	100.0	idm	100.0	psychedelic	100.0
Me and Cassity	seen live	100.0	germany	100.0	german	100.0	under 2000 listeners	100.0	leiwand4u fm	100.0
Mato	seen live	100.0	remix	100.0	summer	100.0	French rock	100.0	drinking	100.0
James Williamson	rock	100.0	punk	100.0	USA	100.0	psychedelic	100.0	guitar	100.0
Red Heart the Ticker	seen live	100.0	under 2000 listeners	100.0	folk	50.0	folk rock	50.0	duo	50.0
Jeffrey Martin	indie	100.0	folk	100.0	acoustic	100.0	under 2000 listeners	100.0	Slow-coustic	100.0
Dirty Bourbon River Show	seen live	100.0	rock	100.0	americana	100.0	blues	100.0	Gypsy	100.0
InAeona	Progressive rock	100.0	under 2000 listeners	100.0	noise rock	50.0	female vocalists	50.0	post-rock	50.0
Rebecca Mayes	under 2000 listeners	100.0	gaming	100.0	indie	50.0	folk	50.0	indie pop	50.0
The Motorleague	seen live	100.0	punk rock	100.0	under 2000 listeners	100.0	moncton	100.0	\N	0.0
bastien keb	indie	100.0	folk	100.0	ambient	100.0	under 2000 listeners	100.0	\N	0.0
Jeff Allen	seen live	100.0	country	100.0	modern country	100.0	texas	100.0	under 2000 listeners	100.0
Drew Chadwick	trance	100.0	electronic	100.0	chill	100.0	experimental	100.0	down tempo	100.0
The Mouthbreathers	punk	100.0	under 2000 listeners	100.0	sackville	100.0	indie	50.0	indie pop	50.0
Enema Noise	seen live	100.0	alternative	100.0	alternative rock	100.0	hardcore	100.0	garage	100.0
Del Water Gap	indie	100.0	folk	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Ted Scotto	Soundtrack	100.0	ambient	100.0	ost	100.0	ambiance	100.0	under 2000 listeners	100.0
Alloapm	Disco	100.0	pop	100.0	alternative	100.0	ambient	100.0	electro	100.0
airman	electronic	100.0	electronica	100.0	synth pop	100.0	trip hop	100.0	synthpop	100.0
Major Powers & the Lo-Fi Symphony	seen live	100.0	rock	100.0	complex	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Andy Frasco & the U.N.	seen live	100.0	under 2000 listeners	100.0	blues	50.0	boogie	50.0	\N	0.0
Brothers Of Santa Claus	seen live	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Young@Heart Chorus	choir	100.0	under 2000 listeners	100.0	seen live	50.0	pop	50.0	rock	50.0
Mobley	electronic	100.0	seen live	100.0	alternative	100.0	under 2000 listeners	100.0	on tour	100.0
Miss Molly & Me	dutch	100.0	under 2000 listeners	100.0	seen live	50.0	pop	50.0	virally female	50.0
Cyrille Verdeaux	trance	100.0	electronic	100.0	french	100.0	ambient	100.0	Progressive rock	100.0
The Afterparty	seen live	100.0	pop punk	100.0	under 2000 listeners	100.0	United States	100.0	Kansas City	100.0
Julie Atherton	seen live	100.0	female vocalists	100.0	musicals	100.0	Musical theatre	100.0	under 2000 listeners	100.0
Gunk	punk	100.0	indie rock	100.0	under 2000 listeners	100.0	noise	50.0	seen live	50.0
Ania Stępniewska	seen live	100.0	jazz	100.0	polish	100.0	under 2000 listeners	100.0	vocalist	100.0
Tedi Spalato	singer-songwriter	100.0	under 2000 listeners	100.0	croatian	100.0	Lipo	100.0	Tedi Spalato	100.0
Sagrado Corazón de Jesús	spanish	100.0	singer-songwriter	100.0	elefant	100.0	spanish indie pop	100.0	under 2000 listeners	100.0
Moscow Youth Cult	electronica	100.0	electropop	100.0	ambient	100.0	breakbeat	100.0	Warp Records	100.0
Red Sea	experimental	100.0	under 2000 listeners	100.0	heavy metal	50.0	indie	50.0	hard rock	50.0
Max Capote	spanish	100.0	rock	100.0	latin	100.0	under 2000 listeners	100.0	seen live	50.0
The Ryan O'Reilly Band	seen live	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Leure	electronic	100.0	indie	100.0	ambient	100.0	experimental	100.0	female vocalists	100.0
Sammy Walker	folk	100.0	under 2000 listeners	100.0	georgia	50.0	All	50.0	a favorite	50.0
Nader Cabezas	seen live	100.0	indie	100.0	twee pop	100.0	under 2000 listeners	100.0	\N	0.0
The Operators	electronic	100.0	seen live	100.0	indie	100.0	rock	100.0	breakbeat	100.0
La Lá	jazz	100.0	pop	100.0	folk	100.0	electro	100.0	dance	100.0
Broen	seen live	100.0	norwegian	100.0	Norway	100.0	under 2000 listeners	100.0	Artists I have seen Live	100.0
AOK	noise	100.0	Hip-Hop	100.0	experimental	100.0	dance	100.0	Lo-Fi	100.0
I Am the Sky	indie	100.0	country	100.0	folk	100.0	acoustic	100.0	under 2000 listeners	100.0
23 Otoños	metal	100.0	rock	100.0	punk	100.0	alternative	100.0	argentina	100.0
Tom Francis	indie	100.0	soul	100.0	instrumental	100.0	folk	100.0	singer songwriter	100.0
Lady Moscow	seen live	100.0	alternative rock	100.0	norwegian	100.0	Norway	100.0	under 2000 listeners	100.0
John Statz	folk	100.0	singer-songwriter	100.0	under 2000 listeners	100.0	Slow-coustic	100.0	spotify	100.0
Fear Club	electronica	100.0	indie	100.0	hip hop	100.0	Lo-Fi	100.0	idm	100.0
Red River Dialect	under 2000 listeners	100.0	folk	67.0	acoustic	34.0	psychedelic folk	34.0	beyondwithin	34.0
Time Being	ambient	100.0	drone	100.0	breakcore	100.0	under 2000 listeners	100.0	\N	0.0
Salvage My Dream	ambient	100.0	indie folk	100.0	anti-folk	100.0	under 2000 listeners	100.0	\N	0.0
The Hanged Man	electronica	100.0	seen live	100.0	rock	100.0	experimental	100.0	acoustic	100.0
Be Quiet	rock	100.0	singer-songwriter	100.0	new wave	100.0	Fusion	100.0	House	100.0
I Said Yes	indie	100.0	folk	100.0	under 2000 listeners	100.0	melodic	50.0	upbeat	50.0
Caballero Reynaldo	seen live	100.0	pop	100.0	rock	100.0	country	100.0	swing	100.0
Heads	Hip-Hop	100.0	japanese	100.0	noise rock	100.0	Stoner Rock	100.0	j-pop	100.0
The Snow	seen live	100.0	indie	100.0	chill	100.0	indie rock	100.0	post-punk	100.0
Capitán Sunrise	seen live	100.0	pop	100.0	indie pop	100.0	twee	100.0	under 2000 listeners	100.0
The Navigators	seen live	100.0	folk	100.0	dance	100.0	irish	100.0	celtic	100.0
Royal Parks	seen live	100.0	rock	100.0	singer-songwriter	100.0	dutch	100.0	male vocalists	100.0
Burglary Years	under 2000 listeners	100.0	indie	50.0	indie pop	50.0	indie rock	50.0	post-punk	50.0
Hello, Future!	electronic	100.0	ambient	100.0	indietronica	100.0	mashup	100.0	eclectic	100.0
Kachina's Flute	folk	100.0	native american	100.0	under 2000 listeners	100.0	Native American Flute	100.0	\N	0.0
Zack Parrish	under 2000 listeners	100.0	Soundtrack	50.0	ambient	50.0	game	50.0	modern classical	50.0
Kelley James	singer-songwriter	100.0	under 2000 listeners	100.0	Discoverockult	100.0	\N	0.0	\N	0.0
The Biscuit Burners	seen live	100.0	seenlive	100.0	bluegrass	100.0	under 2000 listeners	100.0	cowhat fav	100.0
Must Q	Hip-Hop	100.0	electronic	100.0	experimental	100.0	abstract	100.0	under 2000 listeners	100.0
A Lion Named Roar	seen live	100.0	indie	100.0	pop	100.0	rock	100.0	folk	100.0
Waylon Thornton	Lo-Fi	100.0	punk blues	100.0	under 2000 listeners	100.0	lo fi	100.0	\N	0.0
Danny Mahon	indie	100.0	folk	100.0	acoustic	100.0	under 2000 listeners	100.0	\N	0.0
Guildean Gang	indie	100.0	alternative	100.0	shoegaze	100.0	noise pop	100.0	dream pop	100.0
Mi pequeña Radio	seen live	100.0	indie	100.0	indie pop	100.0	indie rock	100.0	under 2000 listeners	100.0
Runner	alternative rock	100.0	under 2000 listeners	100.0	heavy metal	50.0	trip-hop	50.0	seen live	50.0
The Electric Grandmother	indie	100.0	pop	100.0	punk	100.0	Electroclash	100.0	Lo-Fi	100.0
Printer Clips	folk	100.0	female vocalists	100.0	acoustic	100.0	male vocalists	100.0	under 2000 listeners	100.0
Birdy Hunt	french	100.0	seen live	100.0	rock	100.0	punk	100.0	Surf	100.0
Thy Courage Quail	under 2000 listeners	100.0	folk	67.0	Alt-country	67.0	audible conquest	34.0	\N	0.0
Thick as Thieves	seen live	100.0	indie	100.0	rock	100.0	alternative	100.0	hardcore	100.0
Majestique	Disco	100.0	new wave	100.0	House	100.0	jazzy	100.0	french house	100.0
Vidura Barrios	ambient	100.0	Meditation	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
The Japanese War Effort	under 2000 listeners	100.0	electronic	50.0	seen live	50.0	indie	50.0	british	50.0
Brandon Can't Dance	seen live	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Asle Beck	seen live	100.0	singer-songwriter	100.0	norwegian	100.0	under 2000 listeners	100.0	international	100.0
Robb	under 2000 listeners	100.0	seen live	50.0	soul	50.0	electro	50.0	rnb	50.0
Pines	black metal	100.0	Minnesota	100.0	ambient	100.0	experimental	100.0	drone	100.0
Guess What	seen live	100.0	jazz	100.0	instrumental	100.0	cosmic	100.0	swiss	100.0
Us and Us Only	seen live	100.0	check out	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Ashestoangels	electronic	100.0	seen live	100.0	punk	100.0	alternative rock	100.0	goth	100.0
The Honey Pies	seen live	100.0	under 2000 listeners	100.0	Adelaide	100.0	billy bishop goes to war	100.0	line honours	100.0
Birds fled from me	seen live	100.0	indie	100.0	folk	100.0	female vocalist	100.0	under 2000 listeners	100.0
L'Anarchiste	seen live	100.0	indie	100.0	alternative	100.0	folk	100.0	experimental	100.0
Simon Lomax	ambient	100.0	space	100.0	space music	100.0	under 2000 listeners	100.0	Space Ambient	100.0
Pierre Kwenders	electronic	100.0	seen live	100.0	world	100.0	afrobeat	100.0	under 2000 listeners	100.0
Jason Steel	folk	100.0	acoustic	100.0	blues	100.0	under 2000 listeners	100.0	Nancy Wallace	100.0
Breakup	seen live	100.0	rock	100.0	Grunge	100.0	alternative metal	100.0	female vocal	100.0
Jason Cassidy	country	100.0	singer-songwriter	100.0	acoustic	100.0	folk pop	100.0	under 2000 listeners	100.0
Turning Torso	electronic	100.0	under 2000 listeners	100.0	chillwave	100.0	\N	0.0	\N	0.0
Maycomb	seen live	100.0	pop punk	100.0	under 2000 listeners	100.0	innerearmedia	100.0	\N	0.0
Jake McKelvie & the Countertops	indie	100.0	rock	100.0	folk	100.0	under 2000 listeners	100.0	butt punk	100.0
Fashanu	punk	100.0	pop punk	100.0	Pop-punk	100.0	melodic hardcore	100.0	under 2000 listeners	100.0
Corinthians	seen live	100.0	indie	100.0	pop	100.0	britpop	100.0	brasil	100.0
VHVL	under 2000 listeners	100.0	rather good stuff	100.0	hip hop	50.0	experimental	50.0	experimental hip hop	50.0
Grover Anderson	rock	100.0	country	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0
Dick Sutphen	ambient	100.0	new age	100.0	poetry	100.0	under 2000 listeners	100.0	hypnosis	100.0
Roysta	hip hop	100.0	under 2000 listeners	100.0	northern irish comedy	100.0	seen live	50.0	punk	50.0
Julian Winter	lounge	100.0	russian	100.0	under 2000 listeners	100.0	Soundtrack	50.0	ambient	50.0
SLATKARISTIKA	rap	100.0	under 2000 listeners	100.0	seen live	50.0	balkan	50.0	Horrorcore	50.0
DSF	noise	100.0	electronic	100.0	experimental	100.0	industrial	100.0	under 2000 listeners	100.0
The Lawsuits	rock	100.0	under 2000 listeners	100.0	alternative	50.0	Philadelphia	50.0	folk	50.0
Curious Quail	seen live	100.0	indie rock	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Sean Taylor	seen live	100.0	singer-songwriter	100.0	under 2000 listeners	100.0	glastonbury 2011	100.0	Newsboys	100.0
Damh	chillout	100.0	ambient	100.0	experimental	100.0	psychedelic	100.0	under 2000 listeners	100.0
Mark Berube & the Patriotic Few	seen live	100.0	folk	100.0	Canadian	100.0	montreal	100.0	quebec	100.0
Matt Epp	seen live	100.0	rock	100.0	folk	100.0	Canadian	100.0	under 2000 listeners	100.0
Bad For Lazarus	british	100.0	under 2000 listeners	100.0	seen live	50.0	alternative	50.0	want to see live	50.0
ROSES	pop	100.0	under 2000 listeners	100.0	seen live	67.0	female vocalists	67.0	girl group	67.0
Before the Brave	indie	100.0	alternative	100.0	folk	100.0	indie folk	100.0	under 2000 listeners	100.0
Daniel Robinson	electronic	100.0	electronica	100.0	electropop	100.0	pop	100.0	synthpop	100.0
Our Little Secrets	under 2000 listeners	100.0	indie	50.0	folk	50.0	irish	50.0	Rock and Roll	50.0
Mixture	metal	100.0	rock	100.0	experimental	100.0	DJENT	100.0	Progressive	100.0
Beach Season	electronic	100.0	Calgary	100.0	under 2000 listeners	100.0	chillwave	100.0	bootywave	100.0
KILL WEST	indie	100.0	argentina	100.0	Psychedelic Rock	100.0	under 2000 listeners	100.0	LSD	100.0
Vulgue Tostoi	electronic	100.0	seen live	100.0	rock	100.0	alternative rock	100.0	indie rock	100.0
Coraline	jazz	100.0	pop	100.0	alternative	100.0	folk	100.0	experimental	100.0
Rifle Men	under 2000 listeners	100.0	indie	50.0	ambient	50.0	indie pop	50.0	dream pop	50.0
Straspire	Classical	100.0	instrumental	100.0	ambient	100.0	piano	100.0	under 2000 listeners	100.0
Hullabaloo	seen live	100.0	alternative	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Twin Brother	under 2000 listeners	100.0	seen live	50.0	rock	50.0	alternative	50.0	folk	50.0
Stephen Green	post-rock	100.0	shoegaze	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0
Arp & Anthony Moore	experimental	100.0	repetitive	100.0	soundscape	100.0	minimalism	100.0	Calming	100.0
Blackboard Jungle	rock	100.0	hair metal	100.0	90s	100.0	under 2000 listeners	100.0	seen live	67.0
The Shilohs	folk	100.0	indie pop	100.0	Vancouver	100.0	under 2000 listeners	100.0	bands ive seen live	100.0
Skull Kid	Hip-Hop	100.0	electronic	100.0	seen live	100.0	emo	100.0	ambient	100.0
Darkly	indie	100.0	alternative	100.0	experimental	100.0	singer-songwriter	100.0	new wave	100.0
minimusicman	Soundtrack	100.0	trance	100.0	electronic	100.0	hip hop	100.0	experimental	100.0
Mosman Alder	seen live	100.0	indie	100.0	under 2000 listeners	100.0	Splendour in the Grass 2011	100.0	\N	0.0
Joe gil	indie	100.0	folk	100.0	singer-songwriter	100.0	indie folk	100.0	under 2000 listeners	100.0
the kuguars	seen live	100.0	Comedy Rock	100.0	blues rock	100.0	Rock 'n' Roll	100.0	under 2000 listeners	100.0
Other People	indie	100.0	rock	100.0	instrumental	100.0	alternative rock	100.0	new wave	100.0
Banda Grafith	heavy metal	100.0	reggae	100.0	experimental	100.0	pop rock	100.0	Avant-Garde	100.0
Kana Kapila	punk	100.0	folk	100.0	acoustic	100.0	Lo-Fi	100.0	barcelona	100.0
Hidden Highways	under 2000 listeners	100.0	country	75.0	folk	75.0	Alt-country	75.0	dark folk	75.0
Liam Back	chillout	100.0	electronic	100.0	chill	100.0	under 2000 listeners	100.0	chillwave	100.0
Revenge of the Psychotronic Man	punk	100.0	under 2000 listeners	100.0	british	67.0	punk rock	67.0	Manchester	67.0
ftp!	Hip-Hop	100.0	seen live	100.0	rap	100.0	hiphop	100.0	under 2000 listeners	100.0
Haussmann	new wave	100.0	synthpop	100.0	80's	100.0	french electro	100.0	under 2000 listeners	100.0
Vanessa Peters	rock	100.0	folk	100.0	under 2000 listeners	100.0	new alternative country and western folk rock swing	100.0	country	67.0
Artmagic	seen live	100.0	alternative	100.0	frou frou	100.0	imogen heap	100.0	under 2000 listeners	100.0
Metaphorest	pop	100.0	alternative	100.0	folk	100.0	indie pop	100.0	acoustic	100.0
Without A Face	seen live	100.0	under 2000 listeners	100.0	\N	0.0	\N	0.0	\N	0.0
Electrophile	sad	100.0	happy	100.0	synthpop	100.0	under 2000 listeners	100.0	emotions	100.0
Space Capone	seen live	100.0	under 2000 listeners	100.0	nu disco	100.0	tha biz	100.0	\N	0.0
Guy Buttery	folk	100.0	under 2000 listeners	100.0	acoustic	67.0	jazz	34.0	instrumental	34.0
Omi Palone	seen live	100.0	indie	100.0	chill	100.0	alternative	100.0	indie pop	100.0
The Soft City	seen live	100.0	indie	100.0	under 2000 listeners	100.0	All	100.0	Favourite Band	100.0
Bellflur	under 2000 listeners	100.0	electronic	50.0	rock	50.0	experimental	50.0	indie rock	50.0
The Spitfires	seen live	100.0	rockabilly	100.0	ska	100.0	under 2000 listeners	100.0	mod	100.0
Dent	metal	100.0	rock	100.0	alternative	100.0	experimental	100.0	prog	100.0
Jeff Liu	noise	100.0	electronica	100.0	indie	100.0	instrumental	100.0	experimental	100.0
Ellie Jabbour	folk	100.0	singer-songwriter	100.0	acoustic	100.0	under 2000 listeners	100.0	female vocalists	50.0
Amy Black	under 2000 listeners	100.0	female vocalists	50.0	americana	25.0	boston	25.0	Alabama	25.0
The You Are Minez	Lo-Fi	100.0	under 2000 listeners	100.0	indie	50.0	Garage Rock	50.0	5432fun	50.0
Jackson Harris	pop	100.0	folk	100.0	new york	100.0	pop rock	100.0	male vocalists	100.0
Fragile Tom	indie	100.0	80s	100.0	indie rock	100.0	new wave	100.0	synth pop	100.0
Turn to Crime	seen live	100.0	indie rock	100.0	detroit	100.0	under 2000 listeners	100.0	under 500 listeners	100.0
Jasmin Kaset	indie	100.0	pop	100.0	folk	100.0	Nashville	100.0	Tennessee	100.0
Roya Weidman	folk	100.0	under 2000 listeners	100.0	under 1000 listeners	100.0	\N	0.0	\N	0.0
Chris Weisman & Greg Davis	electronic	100.0	electronica	100.0	folk	100.0	experimental	100.0	under 2000 listeners	100.0
Girl One And The Grease Guns	female vocalists	100.0	new wave	100.0	shoegaze	100.0	underground	100.0	synth-pop	100.0
Glowing House	seen live	100.0	indie	100.0	folk	100.0	acoustic	100.0	haunting	100.0
State of Blue	indie	100.0	folk	100.0	sad	100.0	UK	100.0	favorites	100.0
Gastone	seen live	100.0	german	100.0	Pop-Rock	100.0	under 2000 listeners	100.0	Werbung	100.0
Koizora	black metal	100.0	electronic	100.0	instrumental	100.0	experimental	100.0	under 1000 listeners	100.0
The Strawberry Zots	rock	100.0	80s	100.0	power pop	100.0	Psychedelic Rock	100.0	Neo-Psychedelia	100.0
Sour Mash Hug Band	seen live	100.0	folk	100.0	swing	100.0	thrash	100.0	under 2000 listeners	100.0
clandestines	alternative	100.0	indie rock	100.0	Lo-Fi	100.0	noise pop	100.0	punk rock	100.0
Black Hole Future	experimental	100.0	shoegaze	100.0	dream pop	100.0	ethereal	100.0	darkwave	100.0
Silver Servants	indie	100.0	folk	100.0	experimental	100.0	acoustic	100.0	chamber pop	100.0
rozovoje ghetto	noise	100.0	ambient	100.0	experimental	100.0	dark	100.0	Lo-Fi	100.0
Colt Headed Dog	classic rock	100.0	indie	100.0	experimental	100.0	psychedelic	100.0	Garage Rock	100.0
Aisha I Delfin	electronic	100.0	experimental	100.0	under 1000 listeners	100.0	Disco-polo	100.0	\N	0.0
Thumb of the Maid	indie rock	100.0	Lo-Fi	100.0	under 1000 listeners	100.0	obscenely obscure	100.0	\N	0.0
Sam Morris	indie	100.0	folk	100.0	favorites	100.0	acoustic	100.0	Bright Eyes	100.0
Yawning Chasm	Lo-Fi	100.0	under 2000 listeners	100.0	under 1000 listeners	100.0	\N	0.0	\N	0.0
Alex Robinson	indie	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0	under 1000 listeners	100.0
kazuki uchida	ambient	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0	Tokyo Chill	100.0
Millions Of Dolls	electronic	100.0	punk	100.0	ambient	100.0	experimental	100.0	post-punk	100.0
Tribal Circus	electronic	100.0	chill	100.0	japanese	100.0	experimental	100.0	psychedelic	100.0
Filmore	punk	100.0	emo	100.0	under 1000 listeners	100.0	\N	0.0	\N	0.0
Ionophore	electronic	100.0	trip-hop	100.0	instrumental	100.0	experimental	100.0	atmospheric	100.0
The Loved Drones	jazz	100.0	experimental	100.0	krautrock	100.0	atmospheric	100.0	space rock	100.0
bruce bherman	indie	100.0	pop	100.0	folk	100.0	singer-songwriter	100.0	singer songwriter	100.0
Bryan Aguilar	indie	100.0	folk	100.0	singer-songwriter	100.0	acoustic	100.0	indie folk	100.0
The Expressos	80s	100.0	new wave	100.0	Rare	100.0	under 1000 listeners	100.0	\N	0.0
The Ill Motion	rock	100.0	punk	100.0	fast	100.0	punk rock	100.0	english	100.0
Zwierzę natchnione	instrumental	100.0	folk	100.0	experimental	100.0	atmospheric	100.0	poetry	100.0
yuuponn5	electronic	100.0	japanese	100.0	idm	100.0	glitch	100.0	under 2000 listeners	100.0
Vyshka!	punk	100.0	hardcore	100.0	russian	100.0	punk rock	100.0	Ramones	100.0
Factrix/Control Unit	experimental	100.0	female vocalists	100.0	Lo-Fi	100.0	drone	100.0	under 1000 listeners	100.0
Winter Rowan	folk	100.0	singer-songwriter	100.0	canada	100.0	acoustic	100.0	guitar	100.0
Дом пионеров	indie	100.0	experimental	100.0	idm	100.0	spoken word	100.0	Ukraine	100.0
lautbild	electronic	100.0	seen live	100.0	techno	100.0	polish	100.0	under 1000 listeners	100.0
Skitish	electronic	100.0	swedish	100.0	experimental	100.0	Progressive House	100.0	darkwave	100.0
The Suricates	post-rock	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0	under 50 listeners	100.0
Boid	noise	100.0	indie	100.0	rock	100.0	alternative rock	100.0	experimental	100.0
Earl G. King	indie	100.0	folk	100.0	UK	100.0	favorites	100.0	Love	100.0
Falling Orange Things	electronic	100.0	ambient	100.0	quiet	100.0	under 2000 listeners	100.0	Brian Eno	100.0
increpare	Soundtrack	100.0	ambient	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0
tarpaulin	noise	100.0	Lo-Fi	100.0	spoken word	100.0	drone doom	100.0	under 2000 listeners	100.0
Linda Spjut	electronic	100.0	experimental	100.0	norwegian	100.0	songwriter	100.0	under 1000 listeners	100.0
Fergus O'Byrne	folk	100.0	traditional	100.0	under 2000 listeners	100.0	Old-Timey	100.0	under 100 listeners	100.0
Joseph Tennant	electronic	100.0	alternative	100.0	folk	100.0	experimental	100.0	singer-songwriter	100.0
Toothpaste Rebellion	punk	100.0	hardcore	100.0	pop punk	100.0	under 1000 listeners	100.0	Christian punk	100.0
NCW Vs. Piss	electronic	100.0	experimental	100.0	synth	100.0	cold wave	100.0	under 1000 listeners	100.0
FUHKOV	experimental	100.0	scotland	100.0	fife	100.0	under 500 listeners	100.0	bedroom	100.0
Dave Panting	folk	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0
Bioc	seen live	100.0	ambient	100.0	downtempo	100.0	chill out	100.0	under 2000 listeners	100.0
Crime Disease	female	100.0	punk	100.0	hardcore	100.0	punk rock	100.0	street punk	100.0
The STDs	punk	100.0	hardcore	100.0	thrash	100.0	Southern Rock	100.0	under 2000 listeners	100.0
Rester&Beck	noise	100.0	instrumental	100.0	ambient	100.0	experimental	100.0	psychedelic	100.0
Evgeny Emelyanov & Ulia Gridasova	ambient	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0	under 10 listeners	100.0
Le Dragon Noir	Disco	100.0	experimental	100.0	afro beat	100.0	Belgian music	100.0	under 1000 listeners	100.0
Strip Mines	experimental	100.0	Lo-Fi	100.0	Avant-Garde	100.0	samples	100.0	chicago	100.0
mater dronic	spanish	100.0	experimental	100.0	space rock	100.0	under 1000 listeners	100.0	psychodelic rock	100.0
Mind Gap	punk	100.0	USA	100.0	american	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Nagasaki watchmen	math rock	100.0	indie rock	100.0	Lo-Fi	100.0	Psychedelia	100.0	Psychedelic Rock	100.0
Pepe Avila	Soundtrack	100.0	jazz	100.0	experimental	100.0	Avant-Garde	100.0	contemporary classical	100.0
Mark Forgette	folk	100.0	under 2000 listeners	100.0	Vermont	100.0	under 100 listeners	100.0	under 1000 listeners	100.0
Skinny Bob	Hip-Hop	100.0	Lo-Fi	100.0	underground hip-hop	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Binary Order	electronic	100.0	electronica	100.0	synthpop	100.0	ebm	100.0	futurepop	100.0
Roger Howse	folk	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	newfoundland	100.0	under 1000 listeners	100.0
Hurk.Lee	indie	100.0	singer-songwriter	100.0	german	100.0	female vocalist	100.0	female singer	100.0
Jordan Stinnett	noise	100.0	trance	100.0	experimental	100.0	solo	100.0	dark	100.0
Mazzoł Jebuk	instrumental	100.0	experimental	100.0	polish	100.0	free improvisation	100.0	under 1000 listeners	100.0
Слёзы Поняш	metal	100.0	punk	100.0	Hard	100.0	hardcore	100.0	doom metal	100.0
Baxter Wareham	folk	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	newfoundland	100.0	under 1000 listeners	100.0
Dermot O'Reilly	folk	100.0	traditional	100.0	under 2000 listeners	100.0	Old-Timey	100.0	under 100 listeners	100.0
Leannn	noise	100.0	electronic	100.0	goth	100.0	hardcore	100.0	experimental	100.0
Majuscules	indie	100.0	punk	100.0	shoegaze	100.0	Post punk	100.0	Brooklyn	100.0
Stalking Stuffers	pop	100.0	experimental	100.0	power pop	100.0	Lo-Fi	100.0	under 1000 listeners	100.0
A Horse On Thursday	noise	100.0	ambient	100.0	experimental	100.0	glitch	100.0	Field Recording	100.0
Jim Joyce	folk	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0	\N	0.0
browar	electronic	100.0	experimental	100.0	polish	100.0	under 1000 listeners	100.0	Disco-polo	100.0
Baldan	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Soft Rains	electronic	100.0	french	100.0	instrumental	100.0	ambient	100.0	under 1000 listeners	100.0
THEEYEOFZORA	electronic	100.0	instrumental	100.0	post-rock	100.0	instrumental hip-hop	100.0	under 2000 listeners	100.0
The Propagandas	indie	100.0	rock	100.0	punk	100.0	alternative	100.0	alternative rock	100.0
Tromhet	ambient	100.0	Lo-Fi	100.0	dark ambient	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Dorjirinchin	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Jargalsaikan	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
SPXCE GXNG	Hip-Hop	100.0	Lo-Fi	100.0	underground hip-hop	100.0	space	100.0	alternative hip-hop	100.0
Йобэтэвэайуэматэ Мягкий Знак	Hip-Hop	100.0	Lo-Fi	100.0	underground hip-hop	100.0	abstract hip-hop	100.0	obscure	100.0
Bez Nerwów	seen live	100.0	rock	100.0	alternative rock	100.0	acoustic	100.0	soft rock	100.0
Mark LeGrand and Sarah Munro	folk	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0	\N	0.0
Control Unit feat. Massimo	noise	100.0	electronic	100.0	experimental	100.0	industrial	100.0	atmospheric	100.0
Self Tidal	indie	100.0	pop	100.0	punk	100.0	Grunge	100.0	alternative	100.0
Ben Reynolds, Bridget Hayden, Kirstie Penman	instrumental	100.0	experimental	100.0	atmospheric	100.0	drone	100.0	tribal	100.0
47 Хромосома	experimental	100.0	electro	100.0	Lo-Fi	100.0	idm	100.0	Trash	100.0
Случайный стационарный процесс с дискретными состояниями с независимыми приращениями в дивергенции электромагитного статического поля вблизи колебаний ротора гидробурильной установки	noise	100.0	Lo-Fi	100.0	russian	100.0	drone	100.0	dark ambient	100.0
Jamcha	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
furcifer	folk	100.0	acoustic	100.0	underground rap	100.0	Lo-Fi	100.0	dirty	100.0
постмешище	noise	100.0	experimental	100.0	Lo-Fi	100.0	russian	100.0	Trash	100.0
kurashi	Disco	100.0	experimental	100.0	underground	100.0	argentinian	100.0	under 1000 listeners	100.0
Als Het Zonnetje Blij Is Gekomen	Lo-Fi	100.0	Avant-Garde	100.0	under 2000 listeners	100.0	noisecore	100.0	under 100 listeners	100.0
Badamajah	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Hobo & xPIOH	Lo-Fi	100.0	blues	100.0	russian	100.0	blues rock	100.0	under 2000 listeners	100.0
Sweet Six and the Devil Stix	alternative	100.0	female vocalists	100.0	singer-songwriter	100.0	folk-rock	100.0	Indie-Rock	100.0
Vonnie Barron and Esther Squires	folk	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	newfoundland	100.0	under 1000 listeners	100.0
Fakhrudin	folk	100.0	traditional	100.0	under 2000 listeners	100.0	afghanistan	100.0	under 100 listeners	100.0
Mönkhtsetseg	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
The ARP Fundamentalists	experimental	100.0	industrial	100.0	Lo-Fi	100.0	minimal	100.0	dark ambient	100.0
My greatest journey into nothing	ambient	100.0	space	100.0	great	100.0	dark ambient	100.0	under 1000 listeners	100.0
Pamela Morgan&Anita Best	folk	100.0	under 2000 listeners	100.0	under 100 listeners	100.0	under 1000 listeners	100.0	\N	0.0
Indü-reh	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Gereltü	folk	100.0	mongolia	100.0	traditional	100.0	under 2000 listeners	100.0	under 100 listeners	100.0
Obey the Omen	metal	100.0	seen live	100.0	swedish	100.0	death metal	100.0	Sweden	100.0
truc	Nintendocore	100.0	seen live	61.0	8-bit	59.0	electronic	55.0	post-hardcore	42.0
Chaos Manks	under 2000 listeners	100.0	metal	67.0	punk	67.0	under 100 listeners	67.0	under 1000 listeners	67.0
Dollar Signs	folk punk	100.0	punk	50.0	North Carolina	50.0	under 1000 listeners	50.0	charlotte nc	50.0
Tulpa	noise	100.0	electronic	100.0	ambient	100.0	chillout	50.0	downtempo	50.0
Bon Chat, Bon Rat	chillwave	100.0	future beat	100.0	Disco	50.0	chillout	50.0	electronic	50.0
All Dinosaurs	punk	100.0	seen live	50.0	thrash	50.0	original	50.0	Ohio	50.0
Funny Death	synthpop	100.0	trance	50.0	electronica	50.0	pop	50.0	80s	50.0
Thirty Ought Six	punk	100.0	alternative	100.0	hard rock	100.0	crossover	100.0	modern rock	100.0
Jacob Jeffries Band	rock	100.0	piano	100.0	seen live	50.0	male vocalists	50.0	under 2000 listeners	50.0
Man Watching the Stars	ambient	100.0	Classical	50.0	experimental	50.0	under 2000 listeners	50.0	under 1000 listeners	50.0
So Percussion & Matmos	experimental	100.0	electronic	50.0	Avant-Garde	50.0	electroacoustic	50.0	modern classical	50.0
Nathaniel Noton-Freeman	instrumental	100.0	post-rock	100.0	acoustic	100.0	guitar	100.0	ambient	50.0
So Slow	alternative rock	100.0	noise	50.0	seen live	50.0	rock	50.0	experimental	50.0
Norman Westberg	ambient	100.0	Experimental Rock	50.0	soundscape	50.0	avant garde	50.0	drone	50.0
Justin Soileau	texas	100.0	Connect The Dots	100.0	folk	50.0	americana	50.0	folk rock	50.0
Odd Folk	chicago	100.0	folk	50.0	bluegrass	50.0	indie folk	50.0	newgrass	50.0
Luiz Arcanjo	Samba para Deus	100.0	indie	50.0	pop	50.0	Bossa Nova	50.0	folk	50.0
Little Thoughts	chillout	100.0	ambient	100.0	under 2000 listeners	100.0	Hip-Hop	50.0	electronic	50.0
FolxPunk	Deutschrock	100.0	seen live	50.0	rock	50.0	punk	50.0	under 1000 listeners	50.0
Dziadowski Projekt	electronic	100.0	experimental	100.0	atmospheric	100.0	pagan electro	100.0	pagan disco	100.0
The Leaky Faces	punk	100.0	folk	100.0	acoustic	100.0	punk rock	100.0	folk punk	100.0
Smoke Dawson	fiddle	100.0	folk	50.0	under 2000 listeners	50.0	under 500 listeners	50.0	under 1000 listeners	50.0
Eeem	ambient	100.0	electronic	50.0	drone	50.0	under 1000 listeners	50.0	futuresequence	50.0
How Scandinavian	experimental	100.0	noise rock	100.0	post-punk	100.0	american	100.0	under 2000 listeners	100.0
Psychopop	experimental	100.0	Hip-Hop	50.0	electronic	50.0	psychedelic	50.0	atmospheric	50.0
Western Sons	ambient	100.0	Hip-Hop	50.0	electronic	50.0	instrumental	50.0	dubstep	50.0
major bummer	indie	100.0	Lo-Fi	50.0	under 2000 listeners	50.0	under 1000 listeners	50.0	5432fun	50.0
Life Among People	rock	100.0	metal	50.0	seen live	50.0	indie	50.0	alternative	50.0
Milchstrasse	ambient	100.0	electronic	50.0	pop	50.0	post-rock	50.0	electro	50.0
Deaf Poets	rock	100.0	singer-songwriter	100.0	seen live	50.0	punk	50.0	alternative rock	50.0
Skimmed	80s	100.0	punk	100.0	indie pop	100.0	indie rock	100.0	new wave	100.0
Norman Kennedy	celtic	100.0	British Isles	100.0	folk	50.0	Scottish	50.0	Ballad	50.0
Horse Gives Birth To Fly	experimental	100.0	noise rock	100.0	drone	100.0	noise	50.0	tribal	50.0
Tobetozero	electronic	100.0	idm	100.0	glitch	100.0	under 2000 listeners	50.0	under 100 listeners	50.0
Luut	indie	100.0	noise rock	100.0	underground	100.0	under 2000 listeners	100.0	boid	100.0
k^ren	post-punk	100.0	noise	50.0	experimental	50.0	noise rock	50.0	Avant-Garde	50.0
Laura Citarella	la plata	100.0	folk	50.0	latin america	50.0	under 2000 listeners	50.0	under 1000 listeners	50.0
Hookerclops	punk	100.0	garage	100.0	rock n roll	100.0	boston	100.0	punk rock n roll	100.0
Marliwo	experimental black metal	100.0	experimental	50.0	post-punk	50.0	atmospheric	50.0	drone	50.0
moon watcher	ambient	100.0	under 2000 listeners	100.0	noise	50.0	electronic	50.0	Dreamy	50.0
Littlefields	under 2000 listeners	100.0	noise	50.0	slow	50.0	Lo-Fi	50.0	bass	50.0
П/Н	under 2000 listeners	100.0	noise	50.0	punk	50.0	grindcore	50.0	experimental	50.0
Thursty Moore	witch house	100.0	Hip-Hop	50.0	electronica	50.0	experimental	50.0	under 2000 listeners	50.0
mumbledust	under 2000 listeners	100.0	indie	50.0	alternative	50.0	folk	50.0	singer-songwriter	50.0
Forks and Spoons	folk	100.0	noise rock	100.0	acoustic	100.0	under 2000 listeners	100.0	folk rock	50.0
Lunathin	instrumental	100.0	ambient	100.0	post-rock	100.0	under 2000 listeners	50.0	under 100 listeners	50.0
Black Shoals	black metal	100.0	experimental	50.0	UK	50.0	industrial metal	50.0	brighton	50.0
kloppy brainfuck entertainment	kloppi	100.0	Lo-Fi	50.0	Berlin	50.0	neofolk	50.0	under 100 listeners	50.0
Lilywhoooooooooo	indie	100.0	japanese	100.0	experimental	100.0	trip-hop	50.0	female vocalists	50.0
Nadea	electronica	100.0	pop	50.0	rock	50.0	post-rock	50.0	yolanda	50.0
Graham F	ambient	100.0	electronic	50.0	experimental	50.0	dance	50.0	idm	50.0
Taburetka Projet	punk	100.0	experimental	100.0	Lo-Fi	100.0	Avant-Garde	100.0	free folk	50.0
The Mallstars	under 2000 listeners	100.0	punk	50.0	punk rock	50.0	pop punk	50.0	humor	50.0
Celestial Woods	electronic	100.0	instrumental	100.0	swedish	100.0	tropical	100.0	chillwave	100.0
Matt Goings	under 2000 listeners	100.0	rock	50.0	punk	50.0	alternative	50.0	emo	50.0
Royal Oak	post-rock	100.0	ambient	50.0	experimental	50.0	under 2000 listeners	50.0	under 100 listeners	50.0
Seven Surreal	Progressive	100.0	funk	75.0	post-punk	50.0	post-hardcore	50.0	under 1000 listeners	50.0
The Kill Crazies	under 2000 listeners	100.0	metal	50.0	punk	50.0	Sludge	50.0	horror punk	50.0
Blood Cousin	under 2000 listeners	100.0	singer-songwriter	50.0	Lo-Fi	50.0	indie folk	50.0	dark folk	50.0
Private First Class	hardcore punk	100.0	Christian punk	100.0	punk	50.0	christian	50.0	under 1000 listeners	50.0
Growing Fungus	under 100 listeners	100.0	alternative	50.0	noise rock	50.0	german	50.0	under 2000 listeners	50.0
Forest Kingdom	ambient	100.0	dark ambient	100.0	noise	50.0	seen live	50.0	drone	50.0
Коммерческий самопал	under 2000 listeners	100.0	electronic	50.0	electronica	50.0	experimental	50.0	2009	50.0
Narantsog	mongolia	100.0	folk	50.0	traditional	50.0	under 2000 listeners	50.0	under 100 listeners	50.0
Сердце АлтаЯ	experimental	100.0	noise	50.0	ambient	50.0	Lo-Fi	50.0	russian	50.0
Dandram	mongolia	100.0	folk	50.0	traditional	50.0	under 2000 listeners	50.0	under 100 listeners	50.0
Luminous Shadow	black metal	100.0	raw black metal	100.0	experimental	50.0	Lo-Fi	50.0	atmospheric	50.0
T-REn	rap	100.0	indie	50.0	punk	50.0	hardcore	50.0	experimental	50.0
Winter Sleep	seen live	100.0	Canadian	89.0	indie	75.0	indie rock	73.0	alternative	46.0
Confield	post-punk	100.0	indie	60.0	rock	60.0	indie rock	40.0	under 2000 listeners	40.0
p.ostrin	post-rock	100.0	instrumental	80.0	russian	40.0	under 1000 listeners	40.0	Atmospheric post-rock	40.0
The Phantom Family Halo	seen live	100.0	psychedelic	67.0	psych	67.0	Psychedelic Rock	67.0	rock	34.0
Moist Ghost	electronic	100.0	ambient	67.0	experimental	67.0	under 2000 listeners	67.0	newbreed	67.0
Decent at Best	punk	100.0	under 2000 listeners	67.0	noise	34.0	classic rock	34.0	metal	34.0
Word Of Mouth Chorus	religious	100.0	soul	67.0	folk	67.0	gospel	67.0	Old-Timey	67.0
Splash Wave	seen live	100.0	Italo Disco	100.0	shoegaze	67.0	synthpop	67.0	space disco	67.0
boy miez girl	seen live	100.0	singer-songwriter	34.0	under 2000 listeners	34.0	seen-live	34.0	under 1000 listeners	34.0
Burn So Bright	pop punk	100.0	seen live	67.0	under 2000 listeners	67.0	post hardcore	67.0	rock	34.0
W.	chillout	100.0	grindcore	100.0	ambient	67.0	piano	67.0	death metal	67.0
Fast Reaction	seen live	100.0	pop punk	100.0	under 2000 listeners	67.0	rock	34.0	funny	34.0
Nick Flora	Singer/Songwriter	100.0	under 2000 listeners	100.0	Nashville local	100.0	singer-songwriter	67.0	Random	67.0
seilarmoon	electronic	100.0	goth	100.0	synthpop	100.0	lofi	100.0	hometaping	100.0
Famous Boating Party	experimental	100.0	folk	34.0	post-rock	34.0	Post punk	34.0	Avant-Garde	34.0
Thekenproleten	rock	100.0	german	67.0	thekenproleten	67.0	punk	34.0	Deutschrock	34.0
Equinoxious	minimal wave	100.0	synthpop	67.0	electronic	34.0	darkwave	34.0	mexican	34.0
Jupi/ter	ambient	100.0	instrumental	67.0	drone	67.0	under 2000 listeners	34.0	under 500 listeners	34.0
монах на спидах	chillwave	100.0	under 2000 listeners	34.0	trap	34.0	Ukrainian	34.0	under 1000 listeners	34.0
Delicious Demon	Lo-Fi	100.0	ambient	67.0	under 2000 listeners	67.0	electronic	34.0	experimental	34.0
Replicas	under 2000 listeners	100.0	electro	67.0	techno	67.0	Disco	34.0	seen live	34.0
snowdrift	folk noir	100.0	ambient	67.0	folk	34.0	americana	34.0	female vocals	34.0
The Jezebel Spirit	post-rock	100.0	math rock	67.0	Math-rock	67.0	seen live	34.0	portland	34.0
My Friend Is	electronic	100.0	french	67.0	folk	67.0	rnb	67.0	chill	34.0
mandala eyes	post-rock	100.0	electronic	67.0	instrumental	67.0	experimental	67.0	Progressive	67.0
Crush Kill Destroy	math rock	100.0	seen live	34.0	indie	34.0	emo	34.0	indie rock	34.0
Sigihl	drone	100.0	polish	100.0	experimental	67.0	Avant-Garde	67.0	noise	34.0
Vl@d	Lo-Fi	100.0	outsider	100.0	kircore	67.0	rock	34.0	punk	34.0
Entry Level Hipster Garbage	noise	100.0	experimental	100.0	electronic	84.0	ambient	67.0	minimalist	67.0
Darksphere	dubstep	100.0	darkstep	100.0	dark electro	100.0	experimental	67.0	electro	67.0
Os Intrusivos	punk rock	100.0	bubblegum	100.0	ramonescore	100.0	punk	67.0	brazil	67.0
iron noir	electronic	100.0	experimental	100.0	techno	100.0	dub techno	67.0	polish	67.0
The Sweet Release of Death	seen live	100.0	alternative rock	34.0	noise rock	34.0	shoegaze	34.0	2013	34.0
Shinji Masuko	boredoms	100.0	ambient	67.0	drone	67.0	japanese	34.0	instrumental	34.0
The Atomaren Übermenschen	punk	100.0	seen live	67.0	rock	67.0	german	67.0	deutschpunk	67.0
Чингиль	post-punk	100.0	Lo-Fi	67.0	Psychedelic Rock	67.0	punk	34.0	post-rock	34.0
Vengeful Vinyl	noise rock	100.0	Avant-Garde	100.0	PDX	100.0	portland	100.0	reverse	100.0
Conclusive Proof That There Is Still Beauty in the World	ambient	100.0	post-rock	100.0	spoken word	67.0	experimental	34.0	Lo-Fi	34.0
Anita Best	folk	100.0	canada	100.0	Canadian	100.0	canadian folk	100.0	world	67.0
Babau	under 2000 listeners	100.0	electronic	67.0	ambient	67.0	drone	67.0	Italy	67.0
Cyborg Jazz	experimental	100.0	new weird europe	100.0	under 2000 listeners	67.0	art	67.0	under 100 listeners	67.0
Encyclopediascope	experimental	100.0	weird	67.0	outsider	67.0	Avant-Garde	67.0	spoken word	67.0
mothcub	synth	100.0	pop	67.0	cute	67.0	synthpop	67.0	under 2000 listeners	67.0
dn76e	lobit	100.0	noise	67.0	electronic	67.0	experimental	67.0	glitch	67.0
Hazy Shores	folk	100.0	acoustic	100.0	Lo-Fi	100.0	under 2000 listeners	67.0	coldwave	34.0
We Stay for Tomorrow	post-rock	100.0	post rock	100.0	polish	67.0	seen live	34.0	instrumental	34.0
KANOPIC DESCENT	ambient	100.0	dark	100.0	ethereal	100.0	occult	100.0	katabatik	100.0
Artur Tune	singer-songwriter	100.0	under 100 listeners	100.0	acoustic	67.0	Not Another Pointless Game	67.0	folk	34.0
Death At Love House	electronic	100.0	downtempo	100.0	Lo-Fi	100.0	dark	67.0	synth	67.0
Right Behind Those Left Behind	under 2000 listeners	100.0	rock	34.0	punk	34.0	alternative	34.0	alternative rock	34.0
{{{VVÜÜÜRZÜÜÜΛΛ}}}	black metal	100.0	raw black metal	100.0	Lo-Fi	67.0	Noise Black Metal	67.0	noise	34.0
Bed.	ambient	100.0	japanese	50.0	electronic	25.0	alternative	25.0	portland	25.0
Wrangler	electronic	100.0	calypso	75.0	experimental	50.0	synthpop	50.0	minimal wave	50.0
Lost Integrity	ambient	100.0	downtempo	100.0	idm	50.0	electronic	25.0	olympia	25.0
Quinn Sullivan	blues	100.0	blues rock	100.0	seen live	75.0	guitar	75.0	guitar virtuoso	50.0
Grace Askew	blues	100.0	memphis	75.0	folk	50.0	rock	25.0	moody	25.0
Sinestar	electronic	100.0	seen live	25.0	electropop	25.0	british	25.0	synth pop	25.0
Past	post-punk	100.0	coldwave	75.0	electronic	50.0	Post punk	50.0	polish	50.0
Covergirl	seen live	100.0	queer	75.0	pop	50.0	emo	50.0	post-hardcore	50.0
John Praw	ambient	100.0	under 2000 listeners	75.0	electronic	50.0	experimental	50.0	improv	50.0
Small sound	pop punk	100.0	punk rock	75.0	under 2000 listeners	50.0	punk	25.0	ska	25.0
Neon Pulse	electronic	100.0	ambient	100.0	drone	50.0	under 2000 listeners	50.0	psychedelic	25.0
Sigmund Freund	witch house	100.0	chillwave	75.0	dreamwave	75.0	electronic	50.0	ambient	50.0
Der Heidi ist Lieb!	experimental	100.0	industrial	75.0	technoir	50.0	electronica	25.0	dark electro	25.0
Cannibal Gluttoness	noise	100.0	harsh noise	75.0	power electronics	75.0	experimental	50.0	drone	50.0
DJ quax	electronic	100.0	ambient	100.0	experimental	100.0	under 2000 listeners	75.0	FPFM	75.0
Denkimushi	ambient	100.0	electronic	75.0	experimental	75.0	drone	75.0	noise	25.0
Nonprolific	death metal	100.0	grindcore	75.0	experimental	50.0	metal	25.0	Progressive	25.0
Ablaze Eternal	dark ambient	100.0	industrial	50.0	black ambient	50.0	ambient	25.0	experimental	25.0
Cesca Waterfield	folk	100.0	singer-songwriter	100.0	americana	100.0	blues	50.0	female vocalist	50.0
Ｊａｃｋｍａｎ	visual kei	100.0	japanese	60.0	seen live	40.0	J-rock	40.0	sexy	20.0
Joel Gion	Psychedelic Rock	100.0	seen live	80.0	indie	80.0	dream pop	80.0	psychedelic	60.0
Pregnant Head	ambient	100.0	chillout	60.0	electronic	60.0	downtempo	60.0	turkish	40.0
Leila Abdul-Rauf	ambient	100.0	dark ambient	80.0	electronic	60.0	instrumental	40.0	experimental	40.0
Ron Hynes	Canadian	100.0	newfoundland	60.0	folk	40.0	singer-songwriter	40.0	canada	40.0
Tangram	ambient	100.0	electronic	60.0	berlin school	40.0	instrumental	20.0	experimental	20.0
Zlam Dunk	punk rock	100.0	indie	60.0	punk	60.0	texas	60.0	dance punk	60.0
John Kay & Steppenwolf	classic rock	100.0	hard rock	100.0	seen live	40.0	bluesrock	40.0	rock	20.0
Sun of Man	psychedelic	100.0	Stoner Rock	80.0	stoner	80.0	Psychedelic Rock	60.0	heavy psych	40.0
The Lollies	community records	100.0	punk	40.0	punk rock	40.0	under 2000 listeners	40.0	experimental	20.0
Lupid Ocampo	experimental	100.0	glitch-hop	80.0	downtempo	60.0	dub	60.0	glitch	60.0
DJ GAY'S ANATOMY	electronic	100.0	breakcore	100.0	experimental	80.0	noisecore	60.0	mashcore	60.0
Christian Church	psychedelic	100.0	noise	80.0	Lo-Fi	80.0	dream pop	60.0	ambient	40.0
Miles From Home	pop punk	100.0	pop rock	60.0	rock	40.0	punk	40.0	powerpop	40.0
ErzfeinT	thrash metal	100.0	metal	80.0	german	80.0	seen live	60.0	death metal	60.0
If I Weren't a Mouse I'd Be a Lion, If I Weren't a Man I'd Be a Ghost	acoustic	100.0	singer-songwriter	80.0	folk punk	80.0	emo	60.0	under 2000 listeners	60.0
Amorte	black metal	100.0	metal	20.0	ambient	20.0	spoken	20.0	thrash metal	20.0
Pinegrove	indie	100.0	indie rock	84.0	seen live	50.0	emo	34.0	Alt-country	34.0
Ornamento y Delito	post-punk	100.0	seen live	50.0	spanish	34.0	indie	34.0	rock	34.0
Cosmos70	electronic	100.0	idm	100.0	under 2000 listeners	34.0	bee record	34.0	trip-hop	17.0
Memory Drawings	ambient	100.0	folk	84.0	contemporary classical	67.0	instrumental	50.0	modern classical	50.0
Dinosaurus Rex	chillwave	100.0	Hip-Hop	50.0	electronica	50.0	future funk	50.0	instrumental	34.0
Vena Portae	ambient	100.0	idm	100.0	experimental	84.0	noise	50.0	dark ambient	34.0
Ellie Herring	ambient	100.0	idm	100.0	electronic	84.0	experimental	84.0	indietronica	84.0
Eric Steckel	blues rock	100.0	rock	67.0	blues	67.0	seen live	50.0	bluesrock	34.0
Notuv	idm	100.0	glitch	67.0	electronic	50.0	minimal	34.0	electronica	17.0
Anda Union	mongolia	100.0	folk	84.0	throat singing	50.0	horse-hair fiddle	50.0	seen live	34.0
F.E. Denning	dark ambient	100.0	noise	84.0	experimental	84.0	industrial	84.0	drone	84.0
Bridget Hayden	experimental	100.0	seen live	50.0	female	50.0	UK	50.0	drone	50.0
A Band of Buriers	seen live	100.0	experimental hip hop	86.0	anti-folk	86.0	decorative stamp	86.0	folk	58.0
Infinity Girl	shoegaze	100.0	dream pop	58.0	rock	15.0	indie pop	15.0	indie rock	15.0
Teacups	New Zealand	100.0	folk	86.0	indie	72.0	nz	58.0	seen live	43.0
Xyn	idm	100.0	electronic	43.0	techno	29.0	dub techno	29.0	electronica	15.0
Not Long After	pop punk	100.0	punk rock	29.0	christian	29.0	under 2000 listeners	29.0	punk	15.0
Flat Affect	noise	100.0	dark ambient	100.0	ambient	58.0	experimental	29.0	under 2000 listeners	29.0
Best Youth	seen live	100.0	female vocalists	100.0	portuguese	100.0	trip-hop	75.0	synthpop	63.0
Junior Achiever	pop punk	100.0	Pop-punk	50.0	pop rock	38.0	punk	25.0	under 2000 listeners	25.0
Opala	post-punk	100.0	italian	75.0	new wave	50.0	italian post-punk	50.0	80s	38.0
Material Object	techno	100.0	minimal techno	50.0	electronic	25.0	ambient	25.0	experimental	25.0
Ujjaya	ambient	100.0	drone	88.0	experimental	75.0	ritual ambient	63.0	tribal ambient	50.0
Graffiti Mechanism	drone	100.0	noise	75.0	ambient	75.0	experimental	38.0	minimal	38.0
tsanreiki	under 2000 listeners	100.0	experimental	63.0	under 100 listeners	63.0	ambient	50.0	electronic	38.0
Kate McGill	acoustic	100.0	singer-songwriter	77.0	british	71.0	female vocalists	53.0	folk	24.0
The Unb	ironic punk	100.0	punk	89.0	belarusian rock	89.0	rock	78.0	Belarusian	56.0
Cyrcus	metalcore	100.0	seen live	100.0	alternative metal	89.0	Nu Metal	78.0	hard rock	67.0
Spring Field	pop punk	100.0	punk rock	78.0	punk	45.0	Pop-punk	23.0	under 2000 listeners	23.0
Love Spells	newbreed	100.0	electronic	67.0	chillwave	67.0	post-whatever	56.0	chillout	34.0
Disinformation	noise	100.0	ambient	89.0	electronic	67.0	power electronics	45.0	drone	34.0
\.


--
-- Data for Name: usersearch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usersearch (id, curtime, searchtype, artist1, artist2, artist3, artist4, artist5) FROM stdin;
1	2016-04-28 20:04:50.974948	small	Courtney Barnett	Diiv	Tycho	Craft Spells	David Bowie
2	2016-04-28 20:05:33.655444	normal	Pinegrove	Tycho	The National	The Werks	Set Your Goals
3	2016-05-01 18:49:05.061624	normal	Courtney Barnett	The National	Diiv	Tycho	Kurt Vile
4	2016-05-01 18:50:11.777918	small	Diiv	The National	Courtney Barnett	Tycho	David Bowie
5	2016-05-01 18:51:56.064924	small	Diiv	The National	The Shins	Diiv	Cage The Elephant
6	2016-05-01 18:52:58.430503	small	Diiv	The National	The Shins	Diiv	Cage The Elephant
7	2016-05-01 18:53:28.790814	small	Diiv	The National	The Shins	Diiv	Cage The Elephant
8	2016-05-01 18:55:44.071577	small	Diiv	The National	The Shins	Diiv	Cage The Elephant
9	2016-05-02 09:29:05.467088	normal	Kurt Vile	The War On Drugs	The National	The Shins	The Weeks
10	2016-05-02 09:32:49.993131	normal	Kurt Vile	The National	Diiv	Tycho	David Bowie
11	2016-05-02 10:39:19.067904	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
12	2016-05-02 10:41:11.994881	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
13	2016-05-02 10:42:29.479351	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
14	2016-05-02 10:43:13.436893	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
15	2016-05-02 10:44:25.311815	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
16	2016-05-02 10:45:59.370677	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
17	2016-05-02 10:51:40.220216	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
18	2016-05-02 10:54:53.14576	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
19	2016-05-02 10:55:32.056351	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
20	2016-05-02 10:56:48.191722	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
21	2016-05-02 10:57:20.001367	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
22	2016-05-02 10:57:50.199474	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
23	2016-05-02 10:59:54.416808	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
24	2016-05-02 11:01:05.263207	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
25	2016-05-02 11:02:03.214273	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
26	2016-05-02 11:03:06.945349	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
27	2016-05-02 11:05:11.61869	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
28	2016-05-02 11:08:55.462688	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
29	2016-05-02 11:10:45.373609	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
30	2016-05-02 11:12:26.649617	normal	Kurt Vile	The National	The Shins	Tycho	The Weeks
31	2016-05-02 11:14:37.047882	normal	Kuurt Vile	Counting Crows	Diiv	Tycho	David Bowie
32	2016-05-02 11:16:09.63425	normal	Dan Croll	The National	Diiv	Tycho	The National
33	2016-05-02 11:16:25.170567	normal	Dan Croll	The National	Diiv	Tycho	The National
34	2016-05-02 11:22:38.331946	normal	Courtney Barnett	The National	Diiv	Tycho	Cage The Elephant
35	2016-05-02 11:23:13.547267	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
36	2016-05-02 11:23:25.511012	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
37	2016-05-02 11:24:16.776772	normal	Courtney Barnett	The National	Diiv	Tycho	Cage The Elephant
38	2016-05-02 11:25:05.479919	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
39	2016-05-02 11:26:39.220659	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
40	2016-05-02 11:28:27.48432	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
41	2016-05-02 11:44:51.581151	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
42	2016-05-02 11:45:18.997502	normal	Diiv	The National	Diiv	Tycho	David Bowie
43	2016-05-02 11:46:34.524529	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
44	2016-05-02 12:28:37.780215	normal	Kurt Vile	The National	The Shins	Diiv	David Bowie
45	2016-05-02 12:30:07.642218	normal	Kurt Vile	Diiv	The Shins	Tycho	The National
46	2016-05-02 12:30:31.345449	normal	Kurt Vile	Diiv	The Shins	Tycho	The National
47	2016-05-02 12:30:44.143452	normal	Kurt Vile	The National	Diiv	Tycho	The National
48	2016-05-02 12:31:19.621937	normal	Kurt Vile	Diiv	The Shins	Tycho	The National
49	2016-05-02 12:31:34.26167	normal	Kurt Vile	The National	Diiv	Tycho	The National
50	2016-05-02 12:32:14.652079	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
51	2016-05-02 12:33:10.12952	normal	Courtney Barnett	The National	Diiv	Tycho	Cage The Elephant
52	2016-05-02 12:33:46.183297	normal	Diiv	The National	Courtney Barnett	Tycho	The National
53	2016-05-02 12:35:02.186547	normal	Courtney Barnett	The National	Diiv	Tycho	The National
54	2016-05-02 12:37:00.25355	normal	Courtney Barnett	The National	Diiv	Tycho	Cage The Elephant
55	2016-05-02 12:37:42.120176	normal	Courtney Barnett	The National	Diiv	Tycho	Cage The Elephant
56	2016-05-02 12:38:19.188837	normal	Courtney Barnett	The National	Diiv	Tycho	David Bowie
57	2016-05-02 12:38:57.306218	normal	Courtney Barnett	The National	Diiv	Tycho	Cage The Elephant
58	2016-05-02 12:39:39.926275	normal	Kurt Vile	Alt J	Diiv	Tycho	David Bowie
59	2016-05-02 12:40:13.920565	normal	Alt J	Kurt Vile	Diiv	Tycho	The Avalacnes
60	2016-05-02 12:40:34.675112	normal	Kurt Vile	Tycho	Diiv	The Avalanches	The National
61	2016-05-02 12:41:38.886543	normal	Kurt Vile	Diiv	The Shins	Craft Spells	The National
62	2016-05-02 12:42:51.204284	normal	Kurt Vile	Diiv	Alt J	Tycho	The Avalanches
63	2016-05-02 12:44:24.827671	normal	Kurt Vile	Diiv	Tycho	The Avalanches	Alt J
64	2016-05-02 12:46:37.264262	normal	Kurt Vile	Tycho	Alt J	The Avalanches	Diiv
65	2016-05-02 12:47:50.660782	normal	Alt J	Tycho	The Avalanches	Kurt Vile	Queen
66	2016-05-02 12:49:36.026948	small	Kurt Vile	Tycho	Alt J	The Avalanches	Queen
67	2016-05-02 13:01:09.689139	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
68	2016-05-02 13:06:03.81479	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
69	2016-05-02 13:06:56.513413	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
70	2016-05-02 13:07:40.952042	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
71	2016-05-02 13:08:26.333961	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
72	2016-05-02 13:52:01.597732	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
73	2016-05-02 13:58:17.616565	normal	Foals	Tycho	Alt J	Kurt Vile	Silversun Pickups
74	2016-05-02 14:08:47.483128	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
75	2016-05-02 15:40:11.312603	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
76	2016-05-02 15:40:45.233826	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
77	2016-05-02 15:42:05.366034	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
78	2016-05-02 15:42:38.98153	normal	Courtney Barnett	Diiv	The Shins	Craft Spells	David Bowie
79	2016-05-02 15:43:24.835427	normal	Tycho	Aphex Twin	Emancipator	Ratatat	Caspian
80	2016-05-02 15:44:21.536214	normal	Tycho	Aphex Twin	Emancipator	Ratatat	Caspian
81	2016-05-02 15:44:57.210252	normal	My Morning Jacket	Wilco	Beck	Queens Of The Stone Age	Kurt Vile
82	2016-05-02 15:48:33.357267	normal	My Morning Jacket	Wilco	Beck	Queens Of The Stone Age	Kurt Vile
83	2016-05-02 15:49:37.803409	normal	My Morning Jacket	Wilco	Beck	Queens Of The Stone Age	Kurt Vile
84	2016-05-02 15:51:36.993642	normal	Tycho	Explosions In The Sky	Caspian	Godspeed You Black Emperor	God Is An Astronaut
\.


--
-- Name: usersearch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usersearch_id_seq', 84, true);


--
-- Name: artists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (artist);


--
-- Name: artistssmall_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY artistssmall
    ADD CONSTRAINT artistssmall_pkey PRIMARY KEY (artist);


--
-- Name: usersearch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usersearch
    ADD CONSTRAINT usersearch_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

