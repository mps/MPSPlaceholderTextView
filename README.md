# MPSPlaceholderTextView

A simple UITextView that allows Placeholder text.

## Example

![Screenshot](https://raw.github.com/mps/MPSPlaceholderTextView/master/images/example.png)

## Usage

### Xib

You can use MPSPlaceholderTextView in your Xib's as a normal UITextView by overriding the Class from a UITextView control to MPSPlaceholderTextView.

### Code

Just like you would init a UITextView, you can do the same for MPSPlaceholderTextView.

```objc
MPSPlaceholderTextView *placeholder = [[MPSPlaceholderTextView alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 200.0f, 80.0f)];
```

## Customization

```objc
@property (nonatomic, strong) NSString *placeholder;
```

Your placeholder text.

```objc
@property (nonatomic, strong) UIColor *placeholderColor;
```

The color you want your placeholder text to be.

```objc
@property (nonatomic, strong) UILabel *placeHolderLabel;
```

If you do not want to take the given UILabel for the Placeholder, you can setup your own here.

## Credits

I have improved this idea over time but I first stumbled across a similar implementation somewhere on the internet.

## Contact

* [@strickland](https://twitter.com/strickland) on Twitter
* [@mps](https://github.com/mps) on Github
* <a href="mailTo:matthew@idlefusion.com">matthew@idlefusion.com</a>

## License

See [LICENSE](https://github.com/mps/MPSPlaceholderTextView/blob/master/LICENSE).