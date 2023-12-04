import '../../res/import/import.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String? val)? validator;
  final String? label;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final Function(String? val)? onchanged;
  final Function(String? val)? onsaved;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? titleText;
  final TextStyle? textStyle;
  final int? maxLength;
  final int? maxLines;
  final Color? fillColor;
  final double? height;
  final List<TextInputFormatter>? textInputFormatter;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? readonly;

  const CustomTextFormField({
    super.key,
    this.validator,
    this.label,
    this.controller,
    this.textInputType,
    this.obscureText,
    this.onchanged,
    this.onsaved,
    this.textInputAction,
    this.hintText,
    this.titleText,
    this.textStyle,
    this.maxLength,
    this.maxLines,
    this.height,
    this.textInputFormatter,
    this.readonly,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      keyboardType: textInputType,
      inputFormatters: textInputFormatter,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onchanged,
      onSaved: onsaved,
      maxLength: maxLength,
      maxLines: maxLines ?? 1,
      readOnly: readonly ?? false,
      onTap: onTap,
      style: textStyle ??
          const TextStyle(
              fontFamily: "Helvetica Neue",
              fontWeight: FontWeight.w400,
              color: moniepointWhite,
              fontSize: (16)),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: label,
        hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: (16),
            color: moniepointWhite.withOpacity(0.4)),
        fillColor: fillColor ?? moniepointTransparent,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffD9D9D9),
            ),
            borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: moniepointPrimaryColor),
            borderRadius: BorderRadius.circular(15)),
        labelStyle: const TextStyle(
            color: moniepointPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w700),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 13,
        ),
      ),
    );
  }
}

class CustomTextFormFieldDropDown extends StatelessWidget {
  final String? Function(String? val)? validator;
  final String? label;
  final Function(String? val)? onchanged;
  final Function(String? val)? onsaved;
  final Function()? onTap;
  final String? hintText;
  final String? titleText;
  final TextStyle? textStyle;
  final List<String> items;
  final Color? fillColor;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextFormFieldDropDown({
    super.key,
    required this.items,
    this.validator,
    this.label,
    this.onchanged,
    this.onsaved,
    this.hintText,
    this.titleText,
    this.textStyle,
    this.height,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DropdownButtonFormField(
        validator: validator,
        onChanged: onchanged,
        onSaved: onsaved,
        onTap: onTap,
        icon: SizedBox(
          width: (24),
          height: (24),
          child: Image.asset('down'.mobilepng),
        ),
        style: textStyle ??
            const TextStyle(
                fontFamily: "Helvetica Neue",
                fontWeight: FontWeight.w400,
                color: moniepointBlack,
                fontSize: (16)),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: label,
          hintStyle: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: (16),
              color: moniepointTextColor),
          fillColor: fillColor ?? moniepointTransparent,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffD9D9D9),
              ),
              borderRadius: BorderRadius.circular(4)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(4)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: moniepointPrimaryColor),
              borderRadius: BorderRadius.circular(4)),
          labelStyle: const TextStyle(
              color: moniepointPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
          prefixIcon: prefixIcon,
          suffix: suffixIcon,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 13,
          ),
        ),
        items: items.map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(
              option,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: (16),
                  color: moniepointTextColor),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CustomRadio extends StatelessWidget {
  final String value;
  final String? groupValue;
  final Function(String?) onChanged;
  const CustomRadio({
    super.key,
    required this.value,
    required this.onChanged,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: moniepointWhite,
        border: Border.all(
          color: value == groupValue ? moniepointPrimaryColor : moniepointGrey,
          width: value == groupValue ? 1 : 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          if (value == groupValue)
            BoxShadow(
              blurRadius: 8,
              color: moniepointPrimaryColor.withOpacity(0.24),
            ),
        ],
      ),
      child: RadioListTile(
        selected: value == groupValue,
        tileColor: moniepointWhite,
        selectedTileColor: moniepointWhite,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: moniepointPrimaryColor,
        visualDensity: VisualDensity.compact,
        title: Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: moniepointTextColor,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.symmetric(
            // horizontal: 20,
            // vertical: 16,
            ),
      ),
    );
  }
}
