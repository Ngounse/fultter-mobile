import 'package:flutter/material.dart';
import 'package:my_library/detailsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(), debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Advertising & Media',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  '',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _buildFoodItem(
                          'assets/plate01.png',
                          'Web Hosting in Cambodia Unlimited ( 50 GB SSD )',
                          '36m • Chamkar Mon, Phnom Penh',
                          '1- Domain name\n2- Unlimited websites\n3- 50 GB SSD\n5- Unlimited mailboxes\n6- AutoBackup & Cloud Storage\n7- Website Builder',
                        ),
                        _buildFoodItem(
                          'assets/plate02.png',
                          'សេវ៉ាកម្មធ្វើ Poster , Banner , A stand តម្លៃចាប់ពី 8\$ ឡើងទៅ',
                          '1h • Chbar Ampov, Phnom Penh',
                          'ទទួលធ្វើ Poster , Video , Live Steam asset\nតម្លៃចាប់ពី 8\$ ឡើងទៅ\nTelegram: 077555xxxClick To Call',
                        ),
                        _buildFoodItem(
                          'assets/plate03.png',
                          'ធ្វេីស្លាកយីហោរគ្រប់ប្រភេទ',
                          '3h • Tuol Kouk, Phnom Penh',
                          'ព្រីន​PVC Sticker , ប្រអប់ភ្លេីង \nLocation: ផ្ទះលេខ៣៣AEoE1E2E3 ខណ្ឌទួលគោក​ ភ្នំពេញ​ Phsar Depou Pir, Tuol Kouk, Phnom Penh\nContact Info: Please don\'t forget to mention that you found this ad on khmer24.com.\n012661xxx Click To Call\n093661xxx Click To Call',
                        ),
                        _buildFoodItem(
                          'assets/plate04.png',
                          'ព្រីនខ្នាតធំ កៅស៊ូ ស្ទីគ័រ និងស្លាកយីហោរ',
                          '5h • Dangkao, Phnom Penh',
                          ' យើងខ្ញុំមានទទួលធ្វើដូចជា: \nធ្វើស្លាកយីហោរអាជីវកម្ម-ប៉ាណូតូចធំគ្រប់ប្រភេទ \nធ្វើស្លាកអក្សរផុសផ្ទៃកាបោន អក្សរផុសអាគ្រីលីក អក្សរអ៊ីណុក ជ័រស្ព៉ូត ស្រទបចេក ស្លាកពីកៅស៊ូប្រភេទ ស្ទីគ័រព្រីនកាត់បិត, Sticker die-cut, photo props..etc \nមានប្រភេទកៅស៊ូថ្មីគុណភាព X3 ទៅ X5 ដងនៅនៃកៅស៊ូធម្មតា\nLogo អក្សរ 3D អក្សភ្លើងណេអុង ភ្លើងរត់ប្រដេញ\nស្លាកបញ្ឈ ស្លាកកាត់យកម៉ូត ស្លាកប្រអប់ភ្លើង ស្លាកពីសង្ខសី Logo មានភ្លើង..etc \nព្រីនកៅស៊ូ PVC កៅស៊ូធម្មតា កៅស៊ូចំណាំងផ្លាត \nព្រីនបិតស្ទីគ័រគ្រប់ប្រភេទ ស្ទីគ័រកាត់ ស្ទីគ័រឆ្លោះ (Mask ស្ទីគ័រ) Blur Sticker, UV sticker\nស្តេនតាំងបង្ហាញផលិតផល X-Stand, Rolling Stand, I-Stand…etc\nមានសេវាជាងដែកគ្រប់ប្រភេទ ជាងឈើ សេវាជាងភ្លើង ជាងតំបូល ចម្រឹងជាងពិដាន.ល.។\nមានទទួលកាត់តុ ទូរ ខោនធ័រ ធ្នើរសម្រាប់តាំងបង្ហាញផលិតផលផ្សេងៗ..etc\nមានទទួលរៀបចំឆាកដេគ័រ ក្រាលព្រុំ បេកត្រប់ តម្លើងខ្លោងទ្វា រៀបចំភ្លើងសម្រាប់កម្មវិធីតូចធំគ្រប់ប្រភេទ\nមានសេវាកម្មឌីហ្សាញគូរប្លង់ផ្សេងៗទៅតាមការកម្ម៉ងម៉ូតអតិថិជន',
                        ),
                        _buildFoodItem(
                          'assets/plate06.png',
                          'Marketing Freelancer | Designer | Photographer',
                          '7h • Phnom Penh',
                          'Are you ready to elevate your brand visibility and customer engagement?\nWe specialize in high-quality graphic design for all your business needs—from advertisements and marketing materials to complete company branding.\n-Confidence: We deliver designs that clearly communicate your value and instill confidence in your audience.\n-Efficiency: Save time with our streamlined design process and reliable execution.\n-Value: Receive premium quality design at a competitive, transparent price.\nPartner with us to transform your product or service\'s perception in the market. Let\'s discuss your vision today.\nPrevious works : https://www.behance.net/kimchhe948',
                        ),
                        _buildFoodItem(
                          'assets/plate07.png',
                          '🎁កញ្ចប់អាជីវកម្ម ONLINE ធ្វើទីផ្សារផ្សព្វផ្សាយបែបទំនើប🎁',
                          '10h • Prampir Meakkakra, Phnom Penh',
                          '🎁​កញ្ចប់អាជីវកម្ម ONLINE ធ្វើទីផ្សារផ្សព្វផ្សាយបែបទំនើប🎁​\n🥰ម្ចាស់អាជីវកម្មចង់ពង្រីកការលក់សហការជាមួយ Mekong Digital Media និងទទួលបាន \n🤝ភ្នាក់ងារធ្វើទីផ្សារផ្សព្វផ្សាយ ONLINE លក់ផ្ទាល់ទៅតែកាន់អតិថិជនរាប់លាននាក់នៅក្នុងបណ្ដាញសង្គម Facebook \n🤝មានការរចនារូបភាព ថតរូប នឹងធ្វើវីដេអូដើម្បីផ្សព្វផ្សាយ\n🤝មានការ Live ធ្វើទីផ្សារលក់ផ្ទាល់តាម Facebook Page \n🤝ក្រុមហ៊ុនមាន Website និង Mobile App សម្រាប់ធ្វើទីផ្សារផ្សព្វផ្សាយតាមរយៈអនឡាញបែបទំនើប \n🤝បច្ចេកទេសផ្សព្វផ្សាយការលក់ទៅកាន់អតិថិជនចំគោលដៅ និងមានប្រសិទ្ធភាព \n🥰មេគង្គឌីជីថលមេឌា ជាក្រុមហ៊ុនបច្ចេកវិទ្យាប្រព័ន្ធផ្សព្វផ្សាយឈានមុខគេប្រកបដោយភាពច្នៃប្រឌិតថ្មី មានប្រសិទ្ធិភាពខ្ពស់ដោយភ្ជាប់ទៅអ្នកប្រើប្រាស់ \n🏢ក្រុមហ៊ុនយើងខ្ញុំជាដៃគូអាជីវកម្មរបស់អ្នកល្អបំផុត\n💁ពត៌មានបន្ថែម ទំនាក់ទំនងមកលេខ៖\n📲Telegram: t.me/mekongdigitalmedia',
                        ),
                        _buildFoodItem(
                          'assets/plate08.png',
                          'Smart Door Lock សោទ្វាសុវត្ថិភាព ស្កេបម្រាមដៃ ការ លេខកូតសម្ងាត់086509293077509293Telegram',
                          '11h • Por Senchey, Phnom Penh',
                          'Smart Door Lock សោទ្វាសុវត្ថិភាព ស្កេបម្រាមដៃ ការ លេខកូតសម្ងាត់\n086509xxxClick To Call\n077509xxxClick To Call\nTelegram\nLocation: ភ្នំពេញ Chaom Chau 1, Por Senchey, Phnom Penh',
                        ),
                        _buildFoodItem(
                          'assets/plate09.png',
                          'ចង់ឲ្យវីដេអូ TikTok របស់អ្នកមានអ្នកមើលច្រើនជាងមុន អ្នកអាចប្រើសេវាកម្មខាងយើងបាន?',
                          '1d • Mean Chey, Phnom Penh',
                          'ចង់ឲ្យវីដេអូ TikTok របស់អ្នកមានអ្នកមើលច្រើនជាងមុន អ្នកអាចប្រើសេវាកម្មខាងយើងបាន?\nយើងមានសេវាកម្ម Boot View TikTok & Boost TikTok Follower ដែលអាចជួយឲ្យវីដេអូអ្នកកើនចំនួនមើល និងលក់ដាច់ជាងមុនក្នុងតម្លៃសមរម្យជាងទីផ្សារ!\n\n🎯 អ្វីដែលអតិថិជនទទួលបាន\n\n✔️ Views TikTok កើនក្នុងរយៈពេលខ្លី\n✔️ ជួយវីដេអូឡើង FYP ងាយជាងមុន\n✔️ កើន Followers ធម្មជាតិដោយសារមើលច្រើន\n✔️ Engagement (Like, Comment, Share) កើនឡើងបានលឿន\n✔️ ការធានាថា View មិនធ្លាក់',
                        ),
                        _buildFoodItem(
                          'assets/plate10.png',
                          'សេវាកម្ម Boot Page Facebook _ចង់ឲ្យ Page Facebook របស់អ្នកមានអតិថិជនច្រើន',
                          '1d • Mean Chey, Phnom Penh',
                          'ចង់ឲ្យ Page Facebook របស់អ្នកមានអតិថិជនច្រើន ឆ្លើយតបទាន់ចិត្តមែនទេ?\nយើងមានសេវាកម្ម Boot Page ដែលអាចជួយឲ្យអ្នករកបានអតិថិជនពិតៗក្នុងតម្លៃសមរម្យខ្លាំង!\n\n💙 អ្វីដែលអតិថិជនទទួលបានពីសេវាកម្មរបស់យើង\n\n✔️ កើន Like Page ឡើងរហ័ស\n✔️ កើន Reach និង Engagement ឲ្យអ្នកបានអតិថិជនពិត\n✔️ ផ្សព្វផ្សាយគោលដៅឡែក ដាក់ត្រឹមត្រូវទៅកាន់អស់តែអតិថិជនដែលអ្នកចង់បាន\n✔️ Boost ក្នុងតម្លៃថោកជាងអ្នកដទៃ\n✔️ ធានាលទ្ធផល — មិនលទ្ធផល មិនគិតលុយ!',
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF1C1428),
                      ),
                      child: Center(
                        child: Text(
                          ' + New',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItem(
    String imgPath,
    String foodName,
    String price,
    String decs,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                heroTag: imgPath,
                foodName: foodName,
                foodPrice: price,
                decs: decs,
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
