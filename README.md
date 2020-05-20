# loginrtlview

`LoginRtlView` is a ready-made login/signup widget with many animation effects to
demonstrate the capabilities of Flutter

<p align="center">
  <a href='https://i.imgur.com/z3FJSe7.mp4'>
    <img src='https://github.com/AlaaAlShammaa/LoginRtlView/blob/master/demo.gif' width=320>
  </a>
</p>


## Installation

Follow the install instructions [here](https://pub.dev/packages/login_rtl#-installing-tab-)

## Reference

Property |   Type     | Desciption
-------- |------------| ---------------
isLanguageArabic |   `Boolean`     | <sub>if you set this value to true the whole UI will turn into RTL mode with arabic language support</sub>
onSignup |   `AuthCallback`     | <sub>Called when the user hit the submit button when in sign up mode</sub>
onLogin |   `AuthCallback`     | <sub>Called when the user hit the submit button when in login mode</sub>
onRecoverPassword |   `RecoverCallback`     | <sub>Called when the user hit the submit button when in recover password mode</sub>
title |   `String`     | <sub>The large text above the login [Card], usually the app or company name. Leave the string empty or null if you want no title.</sub>
logo |   `String`     | <sub>The path to the asset image that will be passed to the `Image.asset()`</sub>
messages |   [`LoginMessages`](#LoginMessages)     | <sub>Describes all of the labels, text hints, button texts and other auth descriptions</sub>
theme |   [`LoginTheme`](#LoginTheme)     | <sub>FlutterLogin's theme. If not specified, it will use the default theme as shown in the demo gifs and use the colorsheme in the closest `Theme` widget</sub>
emailValidator |   <sub>`FormFieldValidator<String>`</sub>     | <sub>Email validating logic, Returns an error string to display if the input is invalid, or null otherwise</sub>
passwordValidator | <sub>`FormFieldValidator<String>`</sub>     | <sub>Same as `emailValidator` but for password</sub>
<sub>onSubmitAnimationCompleted</sub> |   `Function`     | <sub>Called after the submit animation's completed. Put your route transition logic here</sub>
logoTag |   `String`     | <sub>`Hero` tag for logo image. If not specified, it will simply fade out when changing route</sub>
titleTag |   `String`     | <sub>`Hero` tag for title text. Need to specify `LoginTheme.beforeHeroFontSize` and `LoginTheme.afterHeroFontSize` if you want different font size before and after hero animation</sub>
showDebugButtons |   `bool`     | <sub>Display the debug buttons to quickly forward/reverse login animations. In release mode, this will be overrided to `false` regardless of the value passed in</sub>

### LoginMessages

Property |   Type     | Desciption
-------- |------------| ---------------
usernameHint | `String` | Hint text of the user name [TextField]
passwordHint | `String` | Hint text of the password [TextField]
confirmPasswordHint | `String` | Hint text of the confirm password [TextField]
forgotPasswordButton | `String` | Forgot password button's label
loginButton | `String` | Login button's label
signupButton | `String` | Signup button's label
recoverPasswordButton | `String` | Recover password button's label
recoverPasswordIntro | `String` | Intro in password recovery form
recoverPasswordDescription | `String` | Description in password recovery form
goBackButton | `String` | Go back button's label. Go back button is used to go back to to login/signup form from the recover password form
confirmPasswordError | `String` | The error message to show when the confirm password not match with the original password
recoverPasswordSuccess | `String` | The success message to show after submitting recover password

### LoginTheme

Property |   Type     | Desciption
-------- |------------| ---------------
primaryColor | `Color` | The background color of major parts of the widget like the login screen and buttons
accentColor | `Color` | The secondary color, used for title text color, loading icon, etc. Should be contrast with the [primaryColor]
errorColor | `Color` | The color to use for [TextField] input validation errors
cardTheme | `CardTheme` | The colors and styles used to render auth [Card]
inputTheme | `InputDecorationTheme` | Defines the appearance of all [TextField]s
buttonTheme | `LoginButtonTheme` | A theme for customizing the shape, elevation, and color of the submit button
titleStyle | `TextStyle` | Text style for the big title
bodyStyle | `TextStyle` | Text style for small text like the recover password description
textFieldStyle | `TextStyle` | Text style for [TextField] input text
buttonStyle | `TextStyle` | Text style for button text
beforeHeroFontSize | `double` | Defines the font size of the title in the login screen (before the hero transition)
afterHeroFontSize | `double` | Defines the font size of the title in the screen after the login screen (after the hero transition)
pageColorLight | `Color` | The optional light background color of login screen; if provided, used for light gradient instead of primaryColor
pageColorDark | `Color` | The optional dark background color of login screen; if provided, used for dark gradient instead of primaryColor
