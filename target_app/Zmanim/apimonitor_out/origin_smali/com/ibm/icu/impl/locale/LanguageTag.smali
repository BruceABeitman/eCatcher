.class public final Lcom/ibm/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/LanguageTag$Extension;
    }
.end annotation


# static fields
.field private static final DEPRECATEDLANGS:[[Ljava/lang/String; = null

.field private static final EXTL:I = 0x2

.field private static final EXTS:I = 0x20

.field private static final EXTV:I = 0x40

.field private static final GRANDFATHERED:Ljava/util/HashMap; = null

.field private static final LANG:I = 0x1

.field private static final MINLEN:I = 0x2

.field private static final PRIV:I = 0x80

.field private static final PRIVATEUSE:Ljava/lang/String; = "x"

.field private static final REGN:I = 0x8

.field private static final SCRT:I = 0x4

.field private static final SEP:Ljava/lang/String; = "-"

.field private static final SEPCHAR:C = '-'

.field public static UNDETERMINED:Ljava/lang/String; = null

.field private static final VART:I = 0x10


# instance fields
.field private _extensions:Ljava/util/TreeSet;

.field private _extlang:[Ljava/lang/String;

.field private _grandfathered:Ljava/lang/String;

.field private _language:Ljava/lang/String;

.field private _languageTag:Ljava/lang/String;

.field private _privateuse:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variants:Ljava/util/TreeSet;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "und"

    sput-object v3, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/HashMap;

    const/16 v3, 0x1a

    new-array v1, v3, [[Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "art-lojban"

    aput-object v4, v3, v6

    const-string v4, "jbo"

    aput-object v4, v3, v7

    aput-object v3, v1, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "cel-gaulish"

    aput-object v4, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    aput-object v3, v1, v7

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "en-GB-oed"

    aput-object v4, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    aput-object v3, v1, v8

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "i-ami"

    aput-object v4, v3, v6

    const-string v4, "ami"

    aput-object v4, v3, v7

    aput-object v3, v1, v9

    const/4 v3, 0x4

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-bnn"

    aput-object v5, v4, v6

    const-string v5, "bnn"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/4 v3, 0x5

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-default"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/4 v3, 0x6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-enochian"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/4 v3, 0x7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-hak"

    aput-object v5, v4, v6

    const-string v5, "hak"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x8

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-klingon"

    aput-object v5, v4, v6

    const-string v5, "tlh"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x9

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-lux"

    aput-object v5, v4, v6

    const-string v5, "lb"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0xa

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-mingo"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0xb

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-navajo"

    aput-object v5, v4, v6

    const-string v5, "nv"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0xc

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-pwn"

    aput-object v5, v4, v6

    const-string v5, "pwn"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0xd

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-tao"

    aput-object v5, v4, v6

    const-string v5, "tao"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0xe

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-tay"

    aput-object v5, v4, v6

    const-string v5, "tay"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0xf

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "i-tsu"

    aput-object v5, v4, v6

    const-string v5, "tsu"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x10

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "no-bok"

    aput-object v5, v4, v6

    const-string v5, "nb"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x11

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "no-nyn"

    aput-object v5, v4, v6

    const-string v5, "nn"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x12

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "sgn-BE-FR"

    aput-object v5, v4, v6

    const-string v5, "sfb"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x13

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "sgn-BE-NL"

    aput-object v5, v4, v6

    const-string v5, "vgt"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x14

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "sgn-CH-DE"

    aput-object v5, v4, v6

    const-string v5, "sgg"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x15

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "zh-guoyu"

    aput-object v5, v4, v6

    const-string v5, "cmn"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x16

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "zh-hakka"

    aput-object v5, v4, v6

    const-string v5, "hak"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x17

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "zh-min"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x18

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "zh-min-nan"

    aput-object v5, v4, v6

    const-string v5, "nan"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/16 v3, 0x19

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "zh-xiang"

    aput-object v5, v4, v6

    const-string v5, "hsn"

    aput-object v5, v4, v7

    aput-object v4, v1, v3

    const/4 v2, 0x0

    :goto_174
    array-length v3, v1

    if-ge v2, v3, :cond_185

    aget-object v0, v1, v2

    sget-object v3, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/HashMap;

    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_174

    :cond_185
    new-array v3, v9, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "iw"

    aput-object v5, v4, v6

    const-string v5, "he"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "ji"

    aput-object v5, v4, v6

    const-string v5, "yi"

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "in"

    aput-object v5, v4, v6

    const-string v5, "id"

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    sput-object v3, Lcom/ibm/icu/impl/locale/LanguageTag;->DEPRECATEDLANGS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_languageTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_grandfathered:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_languageTag:Ljava/lang/String;

    return-void
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_17

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isExtlangSubtag(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isLanguageSubtag(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isPrivateuseValueSubtag(Ljava/lang/String;)Z
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static isRegionSubtag(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static isScriptSubtag(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isVariantSubtag(Ljava/lang/String;)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12

    const/16 v1, 0x8

    if-gt v0, v1, :cond_12

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x4

    if-ne v0, v1, :cond_43

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v1

    if-eqz v1, :cond_41

    move v1, v3

    goto :goto_11

    :cond_41
    move v1, v2

    goto :goto_11

    :cond_43
    move v1, v2

    goto :goto_11
.end method

.method public static parse(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/LanguageTag;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_26

    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified tag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' is too short"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_34
    const/4 v1, 0x1

    sub-int v1, v0, v1

    if-ltz v1, :cond_47

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_47

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_47
    new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\' ends with "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_6c
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v8, Lcom/ibm/icu/impl/locale/LanguageTag;

    invoke-direct {v8, v9}, Lcom/ibm/icu/impl/locale/LanguageTag;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    iput-object v9, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_grandfathered:Ljava/lang/String;

    sget-object p0, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/HashMap;

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8f

    iput-object p0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    :cond_8f
    move-object p0, v8

    :goto_90
    return-object p0

    :cond_91
    const/16 v0, 0x2d

    invoke-static {v9, v0}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v5, 0x81

    const/4 v1, 0x0

    move v11, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    move v0, v11

    :goto_a4
    array-length v6, v7

    if-lt v5, v6, :cond_df

    move-object v0, v1

    move v4, v5

    :goto_a9
    if-nez v0, :cond_cd

    if-eqz v3, :cond_cd

    if-nez v2, :cond_2c0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' contains an incomplete extension: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_cd
    :goto_cd
    if-eqz v0, :cond_2e6

    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_d1
    if-ge v1, v4, :cond_2e0

    aget-object v2, v7, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    :cond_df
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_f7

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguageSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f7

    add-int/lit8 v0, v5, 0x1

    aget-object v5, v7, v5

    iput-object v5, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    const/16 v5, 0xbe

    move v11, v5

    move v5, v0

    move v0, v11

    goto :goto_a4

    :cond_f7
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_125

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtlangSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_125

    if-nez v4, :cond_10a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlang:[Ljava/lang/String;

    :cond_10a
    iget-object v10, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlang:[Ljava/lang/String;

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    aget-object v5, v7, v5

    aput-object v5, v10, v4

    const/4 v4, 0x3

    if-ge v0, v4, :cond_11e

    const/16 v4, 0xbe

    move v5, v6

    move v11, v0

    move v0, v4

    move v4, v11

    goto :goto_a4

    :cond_11e
    const/16 v4, 0xbc

    move v5, v6

    move v11, v0

    move v0, v4

    move v4, v11

    goto :goto_a4

    :cond_125
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_13e

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScriptSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13e

    add-int/lit8 v0, v5, 0x1

    aget-object v5, v7, v5

    iput-object v5, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    const/16 v5, 0xb8

    move v11, v5

    move v5, v0

    move v0, v11

    goto/16 :goto_a4

    :cond_13e
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_157

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegionSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_157

    add-int/lit8 v0, v5, 0x1

    aget-object v5, v7, v5

    iput-object v5, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    const/16 v5, 0xb0

    move v11, v5

    move v5, v0

    move v0, v11

    goto/16 :goto_a4

    :cond_157
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_17e

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariantSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17e

    iget-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/TreeSet;

    if-nez v0, :cond_16e

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/TreeSet;

    :cond_16e
    iget-object v6, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/TreeSet;

    add-int/lit8 v0, v5, 0x1

    aget-object v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xb0

    move v11, v5

    move v5, v0

    move v0, v11

    goto/16 :goto_a4

    :cond_17e
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_1da

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1da

    if-eqz v3, :cond_1cc

    if-nez v2, :cond_1ae

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' contains an incomplete extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v5

    goto/16 :goto_a9

    :cond_1ae
    iget-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    if-nez v0, :cond_1b9

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    :cond_1b9
    new-instance v0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;-><init>(CLjava/lang/String;)V

    iget-object v2, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1cc
    add-int/lit8 v3, v5, 0x1

    aget-object v2, v7, v5

    const/4 v0, 0x0

    const/16 v5, 0x40

    move v11, v5

    move v5, v3

    move-object v3, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_a4

    :cond_1da
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_209

    aget-object v6, v7, v5

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_209

    if-nez v2, :cond_1f9

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v5, 0x1

    aget-object v5, v7, v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1f1
    const/16 v5, 0xe0

    move v11, v5

    move v5, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_a4

    :cond_1f9
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v5, 0x1

    aget-object v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_1f1

    :cond_209
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_293

    const-string v0, "x"

    aget-object v4, v7, v5

    invoke-static {v0, v4}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_293

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v4, v5, 0x1

    const/4 v0, 0x1

    :goto_21f
    array-length v5, v7

    if-ge v4, v5, :cond_267

    aget-object v5, v7, v4

    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseValueSubtag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_256

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' contains an illegal private use subtag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v7, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_253

    const-string v1, "<empty>"

    :goto_249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a9

    :cond_253
    aget-object v1, v7, v4

    goto :goto_249

    :cond_256
    if-eqz v0, :cond_261

    const/4 v0, 0x0

    :goto_259
    aget-object v5, v7, v4

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_21f

    :cond_261
    const-string v5, "-"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_259

    :cond_267
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    iget-object v0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' contains an empty private use subtag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto/16 :goto_a9

    :cond_293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' contains an illegal subtag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v7, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2bd

    const-string v1, "<empty>"

    :goto_2b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v5

    goto/16 :goto_a9

    :cond_2bd
    aget-object v1, v7, v5

    goto :goto_2b2

    :cond_2c0
    iget-object p0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    if-nez p0, :cond_2cb

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    iput-object p0, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    :cond_2cb
    new-instance p0, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/impl/locale/LanguageTag$Extension;-><init>(CLjava/lang/String;)V

    iget-object v1, v8, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cd

    :cond_2e0
    new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    invoke-direct {v1, v0, p0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2e6
    move-object p0, v8

    goto/16 :goto_90

    :cond_2e9
    move-object v0, v1

    goto/16 :goto_a9
.end method

.method public static toLanguageTag(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Ljava/lang/String;
    .registers 15

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_77

    sget-object v12, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_14
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_30

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScriptSubtag(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_30

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_30
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4c

    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegionSubtag(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4c

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4c
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_bf

    const/16 v12, 0x5f

    invoke-static {v10, v12}, Lcom/ibm/icu/impl/Utility;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v11

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    const/4 v2, 0x0

    :goto_62
    array-length v12, v11

    if-ge v2, v12, :cond_a2

    aget-object v8, v11, v2

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariantSubtag(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_74

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_77
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguageSubtag(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9b

    const/4 v2, 0x0

    :goto_7e
    sget-object v12, Lcom/ibm/icu/impl/locale/LanguageTag;->DEPRECATEDLANGS:[[Ljava/lang/String;

    array-length v12, v12

    if-ge v2, v12, :cond_93

    sget-object v12, Lcom/ibm/icu/impl/locale/LanguageTag;->DEPRECATEDLANGS:[[Ljava/lang/String;

    aget-object v3, v12, v2

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-static {v4, v12}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_98

    const/4 v12, 0x1

    aget-object v4, v3, v12

    :cond_93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_9b
    sget-object v12, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    :cond_a2
    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v12

    if-lez v12, :cond_bf

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ac
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_bf

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_ac

    :cond_bf
    if-eqz p1, :cond_db

    sget-object v12, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    invoke-virtual {p1, v12}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_db

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getCanonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_db

    const-string v12, "-"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_db
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public getExtensions()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExtlang(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlang:[Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlang:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlang:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getGrandfathered()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_grandfathered:Ljava/lang/String;

    return-object v0
.end method

.method public getJDKLanguage()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lcom/ibm/icu/impl/locale/LanguageTag;->DEPRECATEDLANGS:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_18

    sget-object v3, Lcom/ibm/icu/impl/locale/LanguageTag;->DEPRECATEDLANGS:[[Ljava/lang/String;

    aget-object v2, v3, v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v1, v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    const/4 v3, 0x0

    aget-object v1, v2, v3

    :cond_18
    return-object v1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateUse()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 4

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/TreeSet;

    if-eqz v2, :cond_2d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_20

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2c
    return-object v2

    :cond_2d
    const-string v2, ""

    goto :goto_2c
.end method

.method public getVarinats()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
