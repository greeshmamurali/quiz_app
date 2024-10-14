import 'package:quiz_app/utils/imageConstants.dart';

class Dummydb {
  static List<Map> data = 
  [
     {
      'img': Imageconstants.SPORTS, 
      'name': 'Sports', 
      'qtns': '10 questions',
      'questions':[
                              {
                              'question': 'Which country won the FIFA World Cup in 2018?',
                              'options': ['Brazil', 'Germany', 'France', 'Argentina'],
                              'answerIndex': 2
                            },
                            {
                              'question': 'In which sport is the term "slam dunk" used?',
                              'options': ['Basketball', 'Tennis', 'Football', 'Cricket'],
                              'answerIndex': 0
                            },
                            {
                              'question':
                                  'Who holds the record for the most Grand Slam titles in tennis?',
                              'options': [
                                'Roger Federer',
                                'Rafael Nadal',
                                'Novak Djokovic',
                                'Pete Sampras'
                              ],
                              'answerIndex': 2
                            },
                            {
                              'question':
                                  'Which country has won the most Olympic gold medals in swimming?',
                              'options': ['USA', 'Australia', 'China', 'Russia'],
                              'answerIndex': 0
                            },
                            {
                              'question': 'What is the national sport of Japan?',
                              'options': ['Sumo Wrestling', 'Baseball', 'Judo', 'Karate'],
                              'answerIndex': 0
                            },
                            {
                              'question': 'In cricket, how many players are there on each team?',
                              'options': ['9', '10', '11', '12'],
                              'answerIndex': 2
                            },
                            {
                              'question': 'Which country is known as the birthplace of rugby?',
                              'options': ['Australia', 'New Zealand', 'England', 'South Africa'],
                              'answerIndex': 2
                            },
                            {
                              'question': 'Who is the top goal scorer in football history?',
                              'options': [
                                'Lionel Messi',
                                'Cristiano Ronaldo',
                                'Pele',
                                'Diego Maradona'
                              ],
                              'answerIndex': 1
                            },
                            {
                              'question': 'Which sport is often referred to as "the beautiful game"?',
                              'options': ['Basketball', 'Tennis', 'Football', 'Baseball'],
                              'answerIndex': 2
                            },
                            {
                              'question': 'Which country hosts the Tour de France cycling race?',
                              'options': ['Italy', 'Spain', 'France', 'Belgium'],
                              'answerIndex': 2
                            }

                  ]
     },

     {
      'img': Imageconstants.MATHS,
     'name': 'Maths',
      'qtns': '10 questions',
     
      'questions':[
                    {
                      'question': 'What is the value of Pi (π) to two decimal places?',
                      'options': ['3.12', '3.14', '3.16', '3.18'],
                      'answerIndex': 1
                    },
                    {
                      'question': 'What is the square root of 144?',
                      'options': ['10', '11', '12', '13'],
                      'answerIndex': 2
                    },
                    {
                      'question': 'If 5x = 20, what is the value of x?',
                      'options': ['2', '3', '4', '5'],
                      'answerIndex': 2
                    },
                    {
                      'question': 'What is the sum of the angles in a triangle?',
                      'options': ['180°', '90°', '360°', '270°'],
                      'answerIndex': 0
                    },
                    {
                      'question': 'Which number is a prime number?',
                      'options': ['9', '12', '15', '17'],
                      'answerIndex': 3
                    },
                    {
                      'question': 'What is 15% of 200?',
                      'options': ['25', '30', '35', '40'],
                      'answerIndex': 1
                    },
                    {
                      'question':
                          'What is the area of a circle with radius 7 units? (Use π = 3.14)',
                      'options': ['153.86', '143.22', '148.28', '154.00'],
                      'answerIndex': 0
                    },
                    {
                      'question': 'What is the perimeter of a square with side length 6 units?',
                      'options': ['24', '36', '18', '12'],
                      'answerIndex': 0
                    },
                    {
                      'question': 'What is 8 divided by 2(2+2)?',
                      'options': ['1', '8', '16', '32'],
                      'answerIndex': 1
                    },
                    {
                      'question': 'Which of the following is a Pythagorean triplet?',
                      'options': ['3, 4, 5', '5, 12, 13', '7, 24, 25', 'All of the above'],
                      'answerIndex': 3
                    }
                  ]
    },

       
    {
      'img': Imageconstants.GEOGRAPHY,
      'name': 'Geography',
      'qtns': '10 questions',
      'questions':[
         {
      'question': 'What is the largest continent by area?',
      'options': ['Africa', 'Asia', 'Europe', 'Antarctica'],
      'answerIndex': 1
    },
    {
      'question': 'Which river is the longest in the world?',
      'options': ['Amazon', 'Yangtze', 'Nile', 'Mississippi'],
      'answerIndex': 2
    },
    {
      'question': 'Mount Everest is located in which mountain range?',
      'options': ['Andes', 'Rockies', 'Himalayas', 'Alps'],
      'answerIndex': 2
    },
    {
      'question': 'What is the capital city of Australia?',
      'options': ['Sydney', 'Melbourne', 'Canberra', 'Brisbane'],
      'answerIndex': 2
    },
    {
      'question': 'Which desert is the largest hot desert in the world?',
      'options': ['Sahara', 'Gobi', 'Kalahari', 'Thar'],
      'answerIndex': 0
    },
    {
      'question': 'Which ocean is the deepest?',
      'options': [
        'Indian Ocean',
        'Pacific Ocean',
        'Atlantic Ocean',
        'Arctic Ocean'
      ],
      'answerIndex': 1
    },
    {
      'question': 'What is the smallest country by land area?',
      'options': ['Monaco', 'Vatican City', 'San Marino', 'Liechtenstein'],
      'answerIndex': 1
    },
    {
      'question': 'Which country has the most population?',
      'options': ['India', 'United States', 'Russia', 'China'],
      'answerIndex': 3
    },
    {
      'question': 'Which U.S. state is the largest by area?',
      'options': ['California', 'Texas', 'Alaska', 'Montana'],
      'answerIndex': 2
    },
    {
      'question': 'Which sea is the saltiest in the world?',
      'options': ['Baltic Sea', 'Red Sea', 'Dead Sea', 'Mediterranean Sea'],
      'answerIndex': 2
    }
      ]
    },


    {
       'img': Imageconstants.CHEMISTRY,
      'name': 'Chemistry',
      'qtns': '10 questions',
    'questions':
    [
              {
              'question': 'What is the chemical symbol for gold?',
              'options': ['Au', 'Ag', 'Pb', 'Fe'],
              'answerIndex': 0
            },
            {
              'question': 'What is the most abundant gas in the Earth’s atmosphere?',
              'options': ['Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen'],
              'answerIndex': 1
            },
            {
              'question': 'What is the pH value of pure water?',
              'options': ['5', '7', '9', '11'],
              'answerIndex': 1
            },
            {
              'question': 'Which element has the atomic number 1?',
              'options': ['Oxygen', 'Helium', 'Hydrogen', 'Carbon'],
              'answerIndex': 2
            },
            {
              'question': 'What is the chemical formula for table salt?',
              'options': ['H2O', 'NaCl', 'CO2', 'KCl'],
              'answerIndex': 1
            },
            {
              'question':
                  'What type of bond involves the sharing of electron pairs between atoms?',
              'options': [
                'Ionic Bond',
                'Covalent Bond',
                'Metallic Bond',
                'Hydrogen Bond'
              ],
              'answerIndex': 1
            },
            {
              'question': 'Which element is a noble gas?',
              'options': ['Nitrogen', 'Oxygen', 'Argon', 'Chlorine'],
              'answerIndex': 2
            },
            {
              'question': 'What is the chemical name of H2SO4?',
              'options': [
                'Sulfuric Acid',
                'Hydrochloric Acid',
                'Nitric Acid',
                'Acetic Acid'
              ],
              'answerIndex': 0
            },
            {
              'question': 'Which of the following is an alkali metal?',
              'options': ['Magnesium', 'Calcium', 'Sodium', 'Aluminum'],
              'answerIndex': 2
            },
            {
              'question':
                  'What is the process by which plants make their own food using sunlight?',
              'options': ['Respiration', 'Digestion', 'Fermentation', 'Photosynthesis'],
              'answerIndex': 3
            }
    ]
    },



 
    
  ];

 

  

  
}
