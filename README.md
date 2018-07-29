# Seaside-Bootstrap4
Bootstrap 4 wrapper for Seaside for Pharo 7

based on 4.0 from [http://bootstrap.rtlcss.com/](http://bootstrap.rtlcss.com/)

## Load

```Smalltalk
  Metacello new
      baseline:'Bootstrap4';
      repository: 'github://astares/Seaside-Bootstrap4:master/src';
      load
```

## Learn
- see [https://www.w3schools.com/bootstrap4/](https://www.w3schools.com/bootstrap4/)

## Migration from Bootstrap 3 to 4

- the prefix is gone, so use container instead of tbsContainer, etc.
- use formButton or outlineButton instead of tbsButton
- buttons do not have beExtraSmall and beExtraSmallIf: styles anymore
- breadcrumb section is now called breadcrumb item
