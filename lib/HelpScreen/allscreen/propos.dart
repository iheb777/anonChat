import 'package:chat/view/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ProposPage extends StatefulWidget {
  ProposPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProposPageState createState() => _ProposPageState();
}

class _ProposPageState extends State<ProposPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  SvgPicture.asset("assets/icons/menu.svg"),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                SocialIcons(),
                SizedBox(height: 30),
                Text(
                  'AnonChat',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
                SizedBox(height: 15),
                ProfileListItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final IconData icon;

  const AppBarButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-1, -1),
              blurRadius: 10,
            ),
          ]),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}



class SocialIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          color: Color(0xFF102397),
          //  iconData: "assets/icons/facebook.svg",
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFFff4f38),
          //  iconData: "assets/icons/facebook.svg",
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFF38A1F3),
          //  iconData: twitter,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFF2867B2),
          //   iconData: linkedin,
          onPressed: () {},
        )
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Function onPressed;

  SocialIcon({this.color, this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: onPressed,
          child: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}

class ProfileListItems extends StatelessWidget {
  var html1 =
      "<div class='schema-faq-code' itemscope='' itemtype='https://schema.org/FAQPage'> <div itemscope='' itemprop='mainEntity' itemtype='https://schema.org/Question' class='faq-question'> <h3 itemprop='name' class='faq-q'>What is anon Chat?</h3> <div itemscope='' itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> <p itemprop='text' class='faq-a'>Think of it like the “connector” who facilitates brief chats between you and specific people who you don't yet know – the person introducing you to people you want to meet. Launched in 2018 in Berlin, we are bringing people together every day for brief conversations that are always the start of something new – you share your perspective and simplify the next step for someone.</p></div></div></div>";
  var html2 =
      "<div class='schema-faq-code' itemscope='' itemtype='https://schema.org/FAQPage'> <div itemscope='' itemprop='mainEntity' itemtype='https://schema.org/Question' class='faq-question'> <h3 itemprop='name' class='faq-q'>Why do I need anon Chat? I have friends.</h3> <div itemscope='' itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> <p itemprop='text' class='faq-a'>If you have a friend who can answer any question you have and who has advice for any situation you face, you’re a lucky person!</p></div></div></div>";
  var html3 =
      "<div class='schema-faq-code' itemscope='' itemtype='https://schema.org/FAQPage'> <div itemscope='' itemprop='mainEntity' itemtype='https://schema.org/Question' class='faq-question'> <h3 itemprop='name' class='faq-q'>It feels kind of strange to speak with people I don’t know. Can't I just not do this?</h3> <div itemscope='' itemprop='acceptedAnswer' itemtype='https://schema.org/Answer'> <p itemprop='text' class='faq-a'>We agree – it always feels weird to meet new people. But rest assured: we are all in the same weird situation before a chat. Because we believe that Coffee Chat shouldn't be only for the most communicative people we designed it to account for this. And there are remarkable benefits of speaking with strangers: Ybarra et al. (2010) find that short-term social interactions where you need to engage with others and take their perspective actually boost brain power. You’re welcome :)</p></div></div></div>";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Html(
            data: html1,
          ),
          Html(
            data: html2,
          ),
          Html(
            data: html3,
          ),

        ],
      )),
    );
  }
}
