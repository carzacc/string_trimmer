library string_trimmer;

/// Trims [inputString] to the given [length].
/// Optionally, a [lastChars] value can be provided to show the last [lastChars] characters of the string
/// after the ellipsis. The ellipsis will always be counted as three characters when it comes to reaching the specified [length].
/// It uses three dots as the ellipsis by default, but setting [useUnicodeEllipsis] to true will
/// use the Unicode ellipsis character U+2026 instead.
/// Setting [lastChars] to 0 will cause th
String trim(String inputString, int length,
    {int? lastChars, bool? useUnicodeEllipsis}) {
  if (inputString.length <= length) return inputString;
  if (lastChars != null)
    return "${inputString.substring(0, length - lastChars - 3)}" +
        (useUnicodeEllipsis == true ? "…" : "...") +
        (lastChars != 0
            ? "${inputString.substring(inputString.length - lastChars, inputString.length)}"
            : "");
  else
    return inputString.substring(0, length);
}
