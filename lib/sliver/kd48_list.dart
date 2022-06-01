import 'dart:convert' as convert;

import "package:collection/collection.dart";
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KD48List extends StatefulWidget {
  const KD48List({Key? key}) : super(key: key);
  @override
  State<KD48List> createState() => _KD48ListState();
}

class _KD48ListState extends State<KD48List> {
  Map<String, List<Member>> _members = {};

  @override
  void initState() {
    _getMembers().then((value) {
      setState(() {
        _members = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() => _members.clear());
          _getMembers().then((value) {
            setState(() {
              _members = value;
            });
          });
        },
        child: Scrollbar(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text("口袋48"),
                pinned: true,
              ),
              const SliverToBoxAdapter(),
              _members.isEmpty
                  ? const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 300,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    )
                  : const SliverToBoxAdapter(),
              for (var item in _members.keys)
                ..._buildSection(item, _members[item]!.toList()),
            ],
          ),
        ),
      ),
    );
  }
}

Future<Map<String, List<Member>>> _getMembers() async {
  const url = "https://h5.48.cn/resource/jsonp/allmembers.php?gid=10";
  final res = await http.get(Uri.parse(url));
  if (res.statusCode != 200) {
    throw ("error");
  }
  final json = convert.jsonDecode(res.body);
  final members = json["rows"].map<Member>((row) {
    return Member(
      sid: row["sid"],
      sname: row["sname"],
      tid: row["tid"],
      tname: row["tname"],
      tcolor: row["tcolor"],
      pinyin: row['pinyin'],
      abbr: row['abbr'],
      pid: row['pid'],
      pname: row['pname'],
      nickname: row['nickname'],
      company: row['company'],
      join_day: row['join_day'],
      height: row['height'],
      birth_day: row['birth_day'],
      star_sign_12: row['star_sign_12'],
      star_sign_48: row['star_sign_48'],
      birth_place: row['birth_place'],
      speciality: row['speciality'],
      hobby: row['hobby'],
    );
  });
  return groupBy(members, (Member m) => m.tname);
}

List<Widget> _buildSection(String title, List<Member> members) {
  return [
    SliverPersistentHeader(
      pinned: true,
      delegate: _MyDelegate(
        color: Color(int.parse(members[0].tcolor.substring(0, 6), radix: 16) +
                0xFF000000)
            .withOpacity(.8),
        height: 38.0,
        child: FittedBox(
          child: Text(title),
        ),
      ),
    ),
    SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        final m = members[index];
        return InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => KD48Detail(
                member: m,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: m.sid,
                child: Material(
                  elevation: .5,
                  shape: const CircleBorder(),
                  child: ClipOval(
                    child: CircleAvatar(
                      child: Image.network(
                        m.avatarUrl,
                        fit: BoxFit.cover,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(m.sname),
            ],
          ),
        );
      }, childCount: members.length),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 120,
      ),
    )
  ];
}

class _MyDelegate extends SliverPersistentHeaderDelegate {
  final double height;
  final Widget child;
  final Color color;

  _MyDelegate({required this.height, required this.child, required this.color});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      child: Material(
        color: color,
        elevation: overlapsContent ? 4.0 : 0.0,
        child: child,
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(_) => true;
}

class Member {
  final String sid;
  final String sname;
  final String tname;
  final String tid;
  final String tcolor;
  final String pinyin;
  final String abbr;
  final String pid;
  final String pname;
  final String nickname;
  final String company;
  final String join_day;
  final String height;
  final String birth_day;
  final String star_sign_12;
  final String star_sign_48;
  final String birth_place;
  final String speciality;
  final String hobby;

  Member({
    required this.sid,
    required this.sname,
    required this.tname,
    required this.tid,
    required this.tcolor,
    required this.pinyin,
    required this.abbr,
    required this.pid,
    required this.pname,
    required this.nickname,
    required this.company,
    required this.join_day,
    required this.height,
    required this.birth_day,
    required this.star_sign_12,
    required this.star_sign_48,
    required this.birth_place,
    required this.speciality,
    required this.hobby,
  });

  String get avatarUrl => "https://www.snh48.com/images/member/zp_$sid.jpg";

  @override
  String toString() => "$sid $sname";
}

class KD48Detail extends StatelessWidget {
  final Member member;
  const KD48Detail({Key? key, required this.member}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          pinned: true,
          backgroundColor: Colors.pink[50],
          expandedHeight: 300,
          stretch: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "SNH48-${member.sname}",
              style: TextStyle(color: Colors.grey[800]),
            ),
            background: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "./assets/images/pink_bg.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 2,
                    ),
                    const Spacer(),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                ),
                Hero(
                  tag: member.sid,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(100),
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Material(
                          elevation: 4.0,
                          shape: const CircleBorder(),
                          child: ClipOval(
                            child: Image.network(
                              member.avatarUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            collapseMode: CollapseMode.pin,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _buildInfo("拼音", member.pinyin),
              _buildInfo("加入所属", member.pname),
              _buildInfo("昵称", member.nickname),
              _buildInfo("加入日期", member.join_day),
              _buildInfo("身高", "${member.height} cm"),
              _buildInfo("生日", member.birth_day),
              _buildInfo("星座", member.star_sign_12),
              _buildInfo("出生地", member.birth_place),
              _buildInfo("特长", member.speciality),
              _buildInfo("兴趣爱好", member.hobby),
            ],
          ),
        ),
      ],
    ));
  }

  _buildInfo(String label, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(
              content,
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
