import 'package:flutter/material.dart';
import 'package:layout_demo_flutter/layout_type.dart';
import 'package:layout_demo_flutter/pages/main_app_bar.dart';

class Contact {
  Contact({this.name, this.email});
  final String name;
  final String email;
}

class ListPage extends StatelessWidget implements HasLayoutGroup {
  ListPage({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        layoutGroup: layoutGroup,
        layoutType: LayoutType.list,
        onLayoutToggle: onLayoutToggle,
      ),
      body: Container(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
        itemCount: allContacts.length,
        itemBuilder: (BuildContext content, int index) {
          Contact contact = allContacts[index];
          return ContactListTile(contact);
        });
  }
}

class ContactListTile extends ListTile {
  ContactListTile(Contact contact)
      : super(
    title: Text(contact.name),
    subtitle: Text(contact.email),
    leading: CircleAvatar(child: Text(contact.name[0])),
  );
}

List<Contact> allContacts = [
  Contact(name: 'EdMan', email: 'ed.manigat@gmail.com'),
  Contact(name: 'Racquel Ricciardi', email: 'racquel.ricciardi@me.com'),
  Contact(name: 'Teresita Mccubbin', email: 'teresita.mccubbin@me.com'),

];