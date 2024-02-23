import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int Counter = 0 ;

  int TextCounter =0;

  List<String> tsabeh = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',

  ];
  double CounterRotate = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  bottom: 208,
                  right: 60,
                  child: Image.asset('assets/images/head of seb7a.png')),

              Transform.rotate(
                angle: CounterRotate,
                child: Image.asset(
                  'assets/images/body of seb7a.png',
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'عدد التسبيحات',
            style: TextStyle(fontWeight: FontWeight.bold,
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 24),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 30
            ),
            decoration:
            BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(15),
            child: Text('$Counter',
              style: TextStyle(fontSize: 22,
              color: Theme.of(context).secondaryHeaderColor,
              ),),
          ),
          GestureDetector(


            onTap: (){

              if(Counter == 32){
                Counter = 0;
                if(TextCounter!= 2){
                  TextCounter++;
                }else{

                  TextCounter = 0;
                }

              }else{
                Counter+=1;
                CounterRotate+=0.1;
              }

              setState(() {

              });

            },
            child: Container(

              decoration:
              BoxDecoration(
                  color:Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(30)),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(tsabeh[TextCounter],style: TextStyle(fontSize: 22,
                  color: Theme.of(context).primaryColor),),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
