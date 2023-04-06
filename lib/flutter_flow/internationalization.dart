import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'tl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? tlText = '',
  }) =>
      [enText, esText, tlText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // StartPage
  {
    'dfy114ok': {
      'en': 'Open up your',
      'es': 'Abre tu',
      'tl': 'Buksan ang iyong',
    },
    '0lvb88kc': {
      'en': 'creative boundries',
      'es': 'límites creativos',
      'tl': 'malikhaing mga hangganan',
    },
    'j8hk26n3': {
      'en': 'Start your journey to tomorrow now!',
      'es': '¡Comience su viaje hacia el mañana ahora!',
      'tl': 'Simulan ang iyong paglalakbay hanggang bukas ngayon!',
    },
    '7gnyhydg': {
      'en': 'Built in collaboration between \nPropesorslab & NetlifiApp',
      'es': 'Construido en colaboración entre\nPropesorslab y NetlifiApp',
      'tl':
          'Itinayo sa pakikipagtulungan sa pagitan ng\nPropesorslab at NetlifiApp',
    },
    '8yoh0h45': {
      'en': 'Get Started',
      'es': 'Empezar',
      'tl': 'Magsimula',
    },
    'ymnelq5a': {
      'en': 'Home',
      'es': 'Hogar',
      'tl': 'Bahay',
    },
  },
  // GenerateArtPage
  {
    'qucyv8un': {
      'en': 'Generate art',
      'es': 'generar arte',
      'tl': 'Bumuo ng sining',
    },
    'xfi44ix1': {
      'en': 'Enter your prompt here',
      'es': 'Ingrese su aviso aquí',
      'tl': 'Ilagay ang iyong prompt dito',
    },
    '8epxkbm7': {
      'en': 'Inference Steps',
      'es': 'Pasos de inferencia',
      'tl': 'Mga Hakbang sa Paghinuha',
    },
    '1dbbjeub': {
      'en': 'Generate',
      'es': 'Generar',
      'tl': 'Bumuo',
    },
    'deoeue7f': {
      'en': 'Home',
      'es': 'Hogar',
      'tl': 'Bahay',
    },
  },
  // HomePage
  {
    'l1azr1uv': {
      'en': '__',
      'es': '__',
      'tl': '__',
    },
  },
  // CreatePostPage
  {
    'emf6wkas': {
      'en': 'New Post',
      'es': 'Nueva publicación',
      'tl': 'Bagong Post',
    },
    '8yttqb2a': {
      'en': 'New Post',
      'es': 'Nueva publicación',
      'tl': 'Bagong Post',
    },
    'x6i2em5f': {
      'en': 'PROMPT',
      'es': 'INMEDIATO',
      'tl': 'MABUTI',
    },
    'zd9j5o92': {
      'en': 'Add your post description here...',
      'es': 'Agrega la descripción de tu publicación aquí...',
      'tl': 'Idagdag ang paglalarawan ng iyong post dito...',
    },
    'eo2ppgux': {
      'en': 'Tag Users',
      'es': 'Etiquetar usuarios',
      'tl': 'I-tag ang mga User',
    },
    '20fx0c6f': {
      'en': 'Tag Users',
      'es': 'Etiquetar usuarios',
      'tl': 'I-tag ang mga User',
    },
    'gv34j8vz': {
      'en': 'Share post',
      'es': 'Compartir post',
      'tl': 'Ibahagi ang post',
    },
    't8mcp1qo': {
      'en': 'New Post',
      'es': 'Nueva publicación',
      'tl': 'Bagong Post',
    },
    'adhopbyz': {
      'en': 'PROMPT',
      'es': 'INMEDIATO',
      'tl': 'MABUTI',
    },
    'a4x2bddk': {
      'en': 'Add your post description here...',
      'es': 'Agrega la descripción de tu publicación aquí...',
      'tl': 'Idagdag ang paglalarawan ng iyong post dito...',
    },
    'a9xqqmct': {
      'en': 'Tag Users',
      'es': 'Etiquetar usuarios',
      'tl': 'I-tag ang mga User',
    },
    '18jvywyu': {
      'en': 'Tag Users',
      'es': 'Etiquetar usuarios',
      'tl': 'I-tag ang mga User',
    },
    'e5dd9fz8': {
      'en': 'Share post',
      'es': 'Compartir post',
      'tl': 'Ibahagi ang post',
    },
    'nho4gn9l': {
      'en': 'Home',
      'es': 'Hogar',
      'tl': 'Bahay',
    },
  },
  // ProfilePage
  {
    '9wpwqkx8': {
      'en': 'Profile',
      'es': 'Perfil',
      'tl': 'Profile',
    },
    'elrrt6hb': {
      'en': 'Switch to Dark Mode',
      'es': 'Cambiar al modo oscuro',
      'tl': 'Lumipat sa Dark Mode',
    },
    'h3qqk2e3': {
      'en': 'Switch to Light Mode',
      'es': 'Cambiar al modo de luz',
      'tl': 'Lumipat sa Light Mode',
    },
    'joia5szx': {
      'en': 'Account Settings',
      'es': 'Configuraciones de la cuenta',
      'tl': 'Mga Setting ng Account',
    },
    'z28rltyf': {
      'en': 'Change Password',
      'es': 'Cambiar la contraseña',
      'tl': 'Palitan ANG password',
    },
    'ftwe1g1w': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'tl': 'Ibahin ang profile',
    },
    '4tpei1i6': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'tl': 'Log Out',
    },
    'g4by1mf5': {
      'en': '__',
      'es': '__',
      'tl': '__',
    },
  },
  // EditProfile
  {
    'id3w77mr': {
      'en': 'Display Name',
      'es': 'Nombre para mostrar',
      'tl': 'Display Name',
    },
    '20cuw6f8': {
      'en': 'Username',
      'es': 'Nombre de usuario',
      'tl': 'Username',
    },
    'yz681zxt': {
      'en': 'Update Profile',
      'es': 'Actualización del perfil',
      'tl': 'I-update ang Profile',
    },
    '2smd85zc': {
      'en': 'Edit Profile',
      'es': 'Editar perfil',
      'tl': 'Ibahin ang profile',
    },
    'uy63lxjb': {
      'en': 'Home',
      'es': 'Hogar',
      'tl': 'Bahay',
    },
  },
  // Assitantforcomv
  {
    '2ezit5ax': {
      'en': 'Propesor Emilio',
      'es': '',
      'tl': '',
    },
    'icwwiziy': {
      'en': '5',
      'es': '',
      'tl': '',
    },
    '0gq7uglp': {
      'en': 'Office Job and  Business Letters',
      'es': '',
      'tl': '',
    },
    'w8vstbym': {
      'en': 'REASONING',
      'es': '',
      'tl': '',
    },
    'wx4aappd': {
      'en': '90%',
      'es': '',
      'tl': '',
    },
    'dl4ju7ks': {
      'en': 'INTERPRETATION',
      'es': '',
      'tl': '',
    },
    '8fnu5qbz': {
      'en': '80%',
      'es': '',
      'tl': '',
    },
    'ax7pix7d': {
      'en': 'BUSINESS LETTERS',
      'es': '',
      'tl': '',
    },
    'tt985dgp': {
      'en': '99%',
      'es': '',
      'tl': '',
    },
    'd37lpswg': {
      'en': 'SKILLS',
      'es': '',
      'tl': '',
    },
    'xi4m7my8': {
      'en': 'Ask Me',
      'es': '',
      'tl': '',
    },
    't8qw3t66': {
      'en': 'Home',
      'es': '',
      'tl': '',
    },
  },
  // AuthSheet
  {
    '0n19brqx': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
      'tl': 'Mag-sign In',
    },
    'gyro46ff': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'tl': 'Email',
    },
    'rtj25ur3': {
      'en': 'Enter your email',
      'es': 'Introduce tu correo electrónico',
      'tl': 'Ilagay ang iyong email',
    },
    's2vb9zvd': {
      'en': 'Password',
      'es': 'Contraseña',
      'tl': 'Password',
    },
    'm8ysityp': {
      'en': 'Enter your password',
      'es': 'Ingresa tu contraseña',
      'tl': 'Ipasok ang iyong password',
    },
    'uczx858h': {
      'en': 'Don\'t have an account?',
      'es': '¿No tienes una cuenta?',
      'tl': 'Walang account?',
    },
    'ayjh6vgq': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'tl': 'Mag-sign Up',
    },
    '6yqvvuss': {
      'en': 'Login',
      'es': 'Acceso',
      'tl': 'Mag log in',
    },
    '6ybuvoop': {
      'en': 'Or use a social account to sign in',
      'es': 'O use una cuenta social para iniciar sesión',
      'tl': 'O gumamit ng social account para mag-sign in',
    },
    'cofw3l4f': {
      'en': 'Please enter your email',
      'es': 'Por favor introduzca su correo electrónico',
      'tl': 'Mangyaring ipasok ang iyong email',
    },
    'nob7t76m': {
      'en': 'Please enter a correct email',
      'es': 'Por favor ingrese un correo electrónico correcto',
      'tl': 'Mangyaring magpasok ng tamang email',
    },
    '3fk10ebg': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'tl': 'Mangyaring pumili ng opsyon mula sa dropdown',
    },
    '1iwwt5rb': {
      'en': 'Please enter your password',
      'es': 'Por favor, introduzca su contraseña',
      'tl': 'Mangyaring ipasok ang iyong password',
    },
    '378t4w15': {
      'en': 'Please enter a password having greater than 6 characters',
      'es': 'Ingrese una contraseña que tenga más de 6 caracteres',
      'tl': 'Mangyaring magpasok ng password na may higit sa 6 na character',
    },
    'r3ru546x': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'tl': 'Mangyaring pumili ng opsyon mula sa dropdown',
    },
    'urj3a01o': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'tl': 'Lumikha ng Account',
    },
    'nixsfpbd': {
      'en': 'Name',
      'es': 'Nombre',
      'tl': 'Pangalan',
    },
    'we3aclq8': {
      'en': 'Enter your name',
      'es': 'Introduzca su nombre',
      'tl': 'Ilagay ang iyong pangalan',
    },
    'vj8jh8jm': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'tl': 'Email',
    },
    'n3v8wmqw': {
      'en': 'Enter your email',
      'es': 'Introduce tu correo electrónico',
      'tl': 'Ilagay ang iyong email',
    },
    'qze6enr4': {
      'en': 'Password',
      'es': 'Contraseña',
      'tl': 'Password',
    },
    'zwh9qj52': {
      'en': 'Enter your password',
      'es': 'Ingresa tu contraseña',
      'tl': 'Ipasok ang iyong password',
    },
    '3z5403hk': {
      'en': 'Confirm Password',
      'es': 'confirmar Contraseña',
      'tl': 'Kumpirmahin ang Password',
    },
    'q5r1r24f': {
      'en': 'Confirm your password',
      'es': 'Confirmar la contraseña',
      'tl': 'Kumpirmahin ang iyong password',
    },
    'udpfrk4e': {
      'en': 'Already have an account?',
      'es': '¿Ya tienes una cuenta?',
      'tl': 'Mayroon nang account?',
    },
    '8bmfmq7n': {
      'en': 'Login',
      'es': 'Acceso',
      'tl': 'Mag log in',
    },
    'f47xi40i': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'tl': 'Mag-sign Up',
    },
    'cqgmhm43': {
      'en': 'Or use a social account to sign up',
      'es': 'O use una cuenta social para registrarse',
      'tl': 'O gumamit ng social account para mag-sign up',
    },
    '3fb482sl': {
      'en': 'Please enter your name',
      'es': 'por favor, escriba su nombre',
      'tl': 'Pakilagay ang iyong pangalan',
    },
    'nt6b7tt5': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'tl': 'Mangyaring pumili ng opsyon mula sa dropdown',
    },
    '6ksfaaiw': {
      'en': 'Please enter your email',
      'es': 'Por favor introduzca su correo electrónico',
      'tl': 'Mangyaring ipasok ang iyong email',
    },
    'ucqz0ad1': {
      'en': 'Please enter a correct email',
      'es': 'Por favor ingrese un correo electrónico correcto',
      'tl': 'Mangyaring magpasok ng tamang email',
    },
    '4vvv5avn': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'tl': 'Mangyaring pumili ng opsyon mula sa dropdown',
    },
    'tcafayzn': {
      'en': 'Please enter a password',
      'es': 'porfavor ingrese una contraseña',
      'tl': 'Mangyaring magpasok ng password',
    },
    '1o2gpbgp': {
      'en': 'Password should have at least 6 characters',
      'es': 'La contraseña debe tener al menos 6 caracteres',
      'tl': 'Dapat mayroong hindi bababa sa 6 na character ang password',
    },
    'e30i3tbo': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'tl': 'Mangyaring pumili ng opsyon mula sa dropdown',
    },
    'dh3oorrf': {
      'en': 'Please confirm the password',
      'es': 'Por favor confirme la contraseña',
      'tl': 'Pakikumpirma ang password',
    },
    'zx3mv395': {
      'en': 'Password should have at least 6 characters',
      'es': 'La contraseña debe tener al menos 6 caracteres',
      'tl': 'Dapat mayroong hindi bababa sa 6 na character ang password',
    },
    'fqvo56nd': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'tl': 'Mangyaring pumili ng opsyon mula sa dropdown',
    },
  },
  // WecomeMessage
  {
    '428l0fdf': {
      'en': 'Open up your',
      'es': 'Abre tu',
      'tl': 'Buksan ang iyong',
    },
    'pwb2nohv': {
      'en': 'creative boundries',
      'es': 'límites creativos',
      'tl': 'malikhaing mga hangganan',
    },
  },
  // PreviewGeneratedArt
  {
    '5cas44jn': {
      'en': 'Generated Result',
      'es': 'Resultado generado',
      'tl': 'Binuo na Resulta',
    },
    'l55bc2ge': {
      'en': 'Do you want to continue with this generated art?',
      'es': '¿Quieres seguir con este arte generado?',
      'tl': 'Gusto mo bang magpatuloy sa nabuong sining na ito?',
    },
    '3wlhbn3q': {
      'en': 'Continue',
      'es': 'Continuar',
      'tl': 'Magpatuloy',
    },
    '4ciat98o': {
      'en': 'Regenerate',
      'es': 'Regenerado',
      'tl': 'Magbagong-buhay',
    },
  },
  // PostCard
  {
    'bl7979tf': {
      'en': 'Like',
      'es': 'Como',
      'tl': 'Gaya ng',
    },
  },
  // UpdatePhoto
  {
    'vjsdwm9h': {
      'en': 'Change Photo',
      'es': 'Cambiar foto',
      'tl': 'Baguhin ang Larawan',
    },
    'xck2hxm7': {
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
      'es':
          'Cargue una nueva foto a continuación para cambiar su avatar visto por otros.',
      'tl':
          'Mag-upload ng bagong larawan sa ibaba upang mapalitan ang iyong avatar na nakita ng iba.',
    },
    '7uqtzvmm': {
      'en': 'Upload Image',
      'es': 'Cargar imagen',
      'tl': 'Mag-upload ng Larawan',
    },
    '1aljwn49': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'tl': 'I-save ang mga pagbabago',
    },
  },
  // modal_Post
  {
    'cooyk9ri': {
      'en': 'Comments',
      'es': 'Comentarios',
      'tl': 'Mga komento',
    },
    't6xjhq2q': {
      'en': 'Erica B.',
      'es': 'Érica B.',
      'tl': 'Erica B.',
    },
    '3qeditr0': {
      'en': 'okay wow, you could definitely catch meat the restaurant in Ibiza',
      'es':
          'Vale, guau, definitivamente podrías pescar carne en el restaurante de Ibiza.',
      'tl':
          'okay wow, siguradong makakahuli ka ng karne sa restaurant sa Ibiza',
    },
    'lsg6ydef': {
      'en': 'Posted',
      'es': 'Al corriente',
      'tl': 'Nai-post',
    },
    '2ti0n71i': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'tl': 'Ilang sandali ang nakalipas',
    },
    'zduyg7ot': {
      'en': 'Elena Rodriguez',
      'es': 'Elena Rodríguez',
      'tl': 'Elena Rodriguez',
    },
    '776x1nph': {
      'en': 'Incredible work my friend.',
      'es': 'Increíble trabajo amigo.',
      'tl': 'Hindi kapani-paniwalang gawain aking kaibigan.',
    },
    '7iz57qlf': {
      'en': 'Posted',
      'es': 'Al corriente',
      'tl': 'Nai-post',
    },
    'xyhq2my2': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'tl': 'Ilang sandali ang nakalipas',
    },
    'p7oxrz47': {
      'en': 'Rod Stanton',
      'es': 'Rod Stanton',
      'tl': 'Rod Stanton',
    },
    '6vih546m': {
      'en': 'This is wonderful!',
      'es': '¡Esto es maravilloso!',
      'tl': 'Ito ay kahanga-hanga!',
    },
    'lr65apr2': {
      'en': 'Posted',
      'es': 'Al corriente',
      'tl': 'Nai-post',
    },
    'kppgd708': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'tl': 'Ilang sandali ang nakalipas',
    },
  },
  // SideNav_2
  {
    '0ev7kbec': {
      'en': 'Home',
      'es': 'Hogar',
      'tl': 'Bahay',
    },
    'gxk63736': {
      'en': 'Chats',
      'es': 'charlas',
      'tl': 'Mga chat',
    },
    'qef6plls': {
      'en': 'Bookmarks',
      'es': 'Marcadores',
      'tl': 'Mga bookmark',
    },
  },
  // loadingState
  {
    'wyrr1r6f': {
      'en': 'Generating image...',
      'es': 'Generando imagen...',
      'tl': 'Bumubuo ng larawan...',
    },
    'mc71j9ti': {
      'en': 'Still working, your art will look fantastic...',
      'es': 'Todavía trabajando, tu arte se verá fantástico...',
      'tl': 'Gumagana pa rin, magiging kahanga-hanga ang iyong sining...',
    },
  },
  // EmptyList
  {
    '62932hqz': {
      'en': 'No Robot Art',
      'es': 'Sin arte robótico',
      'tl': 'Walang Robot Art',
    },
    '5r47o601': {
      'en':
          'You need to create some art!! Tap the button below in order to create posts.',
      'es':
          '¡Necesitas crear algo de arte! Toca el botón de abajo para crear publicaciones.',
      'tl':
          'Kailangan mong lumikha ng ilang sining!! I-tap ang button sa ibaba para makagawa ng mga post.',
    },
  },
  // Miscellaneous
  {
    'nmun44uk': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '2i3x1gxy': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'mex2uq7g': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'vvtzv20s': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'jcncc3xo': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '3lpdhc2m': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'k6smdlil': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'bueoyczw': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'vpdxilsw': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'heqrffsm': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'qf8h4b6d': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'lbzkpbzz': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'n74shr1d': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '4e1zc1rl': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '9vat02l9': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'pat7rwte': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '5nccv3io': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'lwgsqkhb': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'd7lg8q8c': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '5xhhvrp1': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'q427l1r3': {
      'en': '',
      'es': '',
      'tl': '',
    },
    'p7q6gpxm': {
      'en': '',
      'es': '',
      'tl': '',
    },
    '0vbs98ds': {
      'en': '',
      'es': '',
      'tl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
