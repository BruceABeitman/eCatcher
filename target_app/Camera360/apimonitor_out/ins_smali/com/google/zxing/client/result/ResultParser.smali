.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"
.field private static final AMPERSAND:Ljava/util/regex/Pattern; = null
.field private static final BYTE_ORDER_MARK:Ljava/lang/String; = "\ufeff"
.field private static final DIGITS:Ljava/util/regex/Pattern;
.field private static final EQUALS:Ljava/util/regex/Pattern;
.field private static final PARSERS:[Lcom/google/zxing/client/result/ResultParser;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x14
new-array v0, v0, [Lcom/google/zxing/client/result/ResultParser;
const/4 v1, 0x0
new-instance v2, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x1
new-instance v2, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x2
new-instance v2, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x3
new-instance v2, Lcom/google/zxing/client/result/AddressBookAUResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x4
new-instance v2, Lcom/google/zxing/client/result/VCardResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x5
new-instance v2, Lcom/google/zxing/client/result/BizcardResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x6
new-instance v2, Lcom/google/zxing/client/result/VEventResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V
aput-object v2, v0, v1
const/4 v1, 0x7
new-instance v2, Lcom/google/zxing/client/result/EmailAddressResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0x8
new-instance v2, Lcom/google/zxing/client/result/SMTPResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/SMTPResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0x9
new-instance v2, Lcom/google/zxing/client/result/TelResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0xa
new-instance v2, Lcom/google/zxing/client/result/SMSMMSResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0xb
new-instance v2, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0xc
new-instance v2, Lcom/google/zxing/client/result/GeoResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0xd
new-instance v2, Lcom/google/zxing/client/result/WifiResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0xe
new-instance v2, Lcom/google/zxing/client/result/URLTOResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0xf
new-instance v2, Lcom/google/zxing/client/result/URIResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0x10
new-instance v2, Lcom/google/zxing/client/result/ISBNResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/ISBNResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0x11
new-instance v2, Lcom/google/zxing/client/result/ProductResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0x12
new-instance v2, Lcom/google/zxing/client/result/ExpandedProductResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V
aput-object v2, v0, v1
const/16 v1, 0x13
new-instance v2, Lcom/google/zxing/client/result/VINResultParser;
invoke-direct {v2}, Lcom/google/zxing/client/result/VINResultParser;-><init>()V
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;
const-string/jumbo v0, "\\d+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;
const-string/jumbo v0, "&"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;
const-string/jumbo v0, "="
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V
.registers 7
const/4 v4, 0x2
sget-object v3, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;
invoke-virtual {v3, p0, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
move-result-object v1
array-length v3, v1
if-ne v3, v4, :cond_17
const/4 v3, 0x0
aget-object v0, v1, v3
const/4 v3, 0x1
aget-object v2, v1, v3
:try_start_10
invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
:try_end_17
.catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v3
goto :goto_17
.end method
.method protected static getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "\ufeff"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_12
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_12
return-object v0
.end method
.method protected static isStringOfDigits(Ljava/lang/CharSequence;I)Z
.registers 3
if-eqz p0, :cond_18
if-lez p1, :cond_18
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v0
if-ne p1, v0, :cond_18
sget-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method protected static isSubstringOfDigits(Ljava/lang/CharSequence;II)Z
.registers 7
const/4 v1, 0x0
if-eqz p0, :cond_5
if-gtz p2, :cond_6
:cond_5
:goto_5
return v1
:cond_6
add-int v0, p1, p2
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v2
if-lt v2, v0, :cond_5
sget-object v2, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;
invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method
.method static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
.registers 12
const/4 v2, 0x0
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
:cond_6
if-ge v1, v3, :cond_e
invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v1
if-gez v1, :cond_18
:cond_e
if-eqz v2, :cond_16
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v6
if-eqz v6, :cond_5d
:cond_16
const/4 v6, 0x0
:goto_17
return-object v6
:cond_18
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
add-int/2addr v1, v6
move v5, v1
const/4 v4, 0x1
:goto_1f
if-eqz v4, :cond_6
invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I
move-result v1
if-gez v1, :cond_2d
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
const/4 v4, 0x0
goto :goto_1f
:cond_2d
add-int/lit8 v6, v1, -0x1
invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C
move-result v6
const/16 v7, 0x5c
if-ne v6, v7, :cond_3a
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_3a
if-nez v2, :cond_42
new-instance v2, Ljava/util/ArrayList;
const/4 v6, 0x3
invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V
:cond_42
invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/google/zxing/client/result/ResultParser;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz p3, :cond_50
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:cond_50
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v6
if-nez v6, :cond_59
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_59
add-int/lit8 v1, v1, 0x1
const/4 v4, 0x0
goto :goto_1f
:cond_5d
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v6
new-array v6, v6, [Ljava/lang/String;
invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Ljava/lang/String;
goto :goto_17
.end method
.method static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
const/4 v1, 0x0
aget-object v1, v0, v1
goto :goto_7
.end method
.method protected static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
.registers 3
if-eqz p0, :cond_a
const/16 v0, 0xa
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_a
return-void
.end method
.method protected static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
.registers 7
if-eqz p0, :cond_14
move-object v0, p0
array-length v2, v0
const/4 v1, 0x0
:goto_5
if-ge v1, v2, :cond_14
aget-object v3, v0, v1
const/16 v4, 0xa
invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_14
return-void
.end method
.method protected static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p0, v0, v1
goto :goto_3
.end method
.method protected static parseHexDigit(C)I
.registers 2
const/16 v0, 0x30
if-lt p0, v0, :cond_b
const/16 v0, 0x39
if-gt p0, v0, :cond_b
add-int/lit8 v0, p0, -0x30
:goto_a
return v0
:cond_b
const/16 v0, 0x61
if-lt p0, v0, :cond_18
const/16 v0, 0x66
if-gt p0, v0, :cond_18
add-int/lit8 v0, p0, -0x61
add-int/lit8 v0, v0, 0xa
goto :goto_a
:cond_18
const/16 v0, 0x41
if-lt p0, v0, :cond_25
const/16 v0, 0x46
if-gt p0, v0, :cond_25
add-int/lit8 v0, p0, -0x41
add-int/lit8 v0, v0, 0xa
goto :goto_a
:cond_25
const/4 v0, -0x1
goto :goto_a
.end method
.method static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
.registers 9
const/16 v6, 0x3f
invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I
move-result v4
if-gez v4, :cond_a
const/4 v5, 0x0
:cond_9
return-object v5
:cond_a
new-instance v5, Ljava/util/HashMap;
const/4 v6, 0x3
invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V
sget-object v6, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;
add-int/lit8 v7, v4, 0x1
invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v0
array-length v3, v0
const/4 v1, 0x0
:goto_1e
if-ge v1, v3, :cond_9
aget-object v2, v0, v1
invoke-static {v2, v5}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V
add-int/lit8 v1, v1, 0x1
goto :goto_1e
.end method
.method public static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 8
sget-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;
array-length v2, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v2, :cond_12
aget-object v3, v0, v1
invoke-virtual {v3, p0}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
move-result-object v4
if-eqz v4, :cond_f
:goto_e
return-object v4
:cond_f
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_12
new-instance v4, Lcom/google/zxing/client/result/TextParsedResult;
invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-direct {v4, v5, v6}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method protected static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/16 v8, 0x5c
invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_9
:goto_8
return-object p0
:cond_9
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
new-instance v5, Ljava/lang/StringBuilder;
add-int/lit8 v6, v3, -0x1
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v6
const/4 v7, 0x0
invoke-virtual {v5, v6, v7, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const/4 v4, 0x0
move v2, v0
:goto_1e
if-ge v2, v3, :cond_31
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
if-nez v4, :cond_28
if-eq v1, v8, :cond_2f
:cond_28
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v4, 0x0
:goto_2c
add-int/lit8 v2, v2, 0x1
goto :goto_1e
:cond_2f
const/4 v4, 0x1
goto :goto_2c
:cond_31
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_8
.end method
.method static urlDecode(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
const-string/jumbo v1, "UTF-8"
invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_6
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8
move-result-object v1
return-object v1
:catch_8
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public abstract parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.end method