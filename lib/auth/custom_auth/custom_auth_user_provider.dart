import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class EsquadraoDeVendasMVPAuthUser {
  EsquadraoDeVendasMVPAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  LoggedUserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<EsquadraoDeVendasMVPAuthUser>
    esquadraoDeVendasMVPAuthUserSubject =
    BehaviorSubject.seeded(EsquadraoDeVendasMVPAuthUser(loggedIn: false));
Stream<EsquadraoDeVendasMVPAuthUser> esquadraoDeVendasMVPAuthUserStream() =>
    esquadraoDeVendasMVPAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
