.class public Lcom/ibm/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final AFTER_CURRENCY:Ljava/lang/String; = "afterCurrency"

.field private static final BEFORE_CURRENCY:Ljava/lang/String; = "beforeCurrency"

.field public static final CURRENCT_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final CURRENCY_SPACING:Ljava/lang/String; = "currencySpacing"

.field private static final CURRENCY_SPACING_KEYS:[Ljava/lang/String; = null

.field public static final CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final CURRENCY_SPC_INSERT:I = 0x2

.field private static final DEFAULT_SPC_INSERT:Ljava/lang/String; = " "

.field private static final DEFAULT_SPC_MATCH:Ljava/lang/String; = "[:letter:]"

.field private static final DEFAULT_SPC_SUR_MATCH:Ljava/lang/String; = "[:digit:]"

.field private static final cachedLocaleData:Ljava/util/Hashtable; = null

.field private static final currentSerialVersion:I = 0x6

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private transient currency:Lcom/ibm/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private exponentSeparator:Ljava/lang/String;

.field private exponential:C

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private monetaryGroupingSeparator:C

.field private monetarySeparator:C

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private plusSign:C

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "currencyMatch"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "surroundingMatch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "insertBetween"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->CURRENCY_SPACING_KEYS:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->initialize(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .registers 1

    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .registers 1

    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols;
    .registers 2

    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/DecimalFormatSymbols;
    .registers 2

    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initialize(Lcom/ibm/icu/util/ULocale;)V
    .registers 25

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    sget-object v20, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/Hashtable;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [[Ljava/lang/String;

    move-object v11, v0

    if-nez v11, :cond_4d

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [[Ljava/lang/String;

    move-object v11, v0

    const-string v20, "com/ibm/icu/impl/data/icudt42b"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v17

    check-cast v17, Lcom/ibm/icu/impl/ICUResourceBundle;

    const/16 v20, 0x0

    const-string v21, "NumberElements"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v20

    sget-object v20, Lcom/ibm/icu/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/Hashtable;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    const/16 v20, 0x0

    aget-object v15, v11, v20

    const-string v20, "com/ibm/icu/impl/data/icudt42b"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v16

    check-cast v16, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    const/16 v20, 0x0

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    const/16 v20, 0x1

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    const/16 v20, 0x2

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    const/16 v20, 0x3

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    const/16 v20, 0x4

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    const/16 v20, 0x5

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    const/16 v20, 0x6

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    const/16 v20, 0x7

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    const/16 v20, 0x8

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    const/16 v20, 0x9

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    const/16 v20, 0xa

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    const/16 v20, 0xb

    aget-object v20, v15, v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    const/16 v20, 0x2a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 v20, 0x40

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v14

    if-eqz v14, :cond_150

    invoke-virtual {v14}, Lcom/ibm/icu/text/NumberingSystem;->getRadix()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_150

    invoke-virtual {v14}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v20

    if-nez v20, :cond_150

    invoke-virtual {v14}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    :cond_150
    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Z

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v10

    const/16 v20, 0x0

    aget-boolean v20, v13, v20

    if-eqz v20, :cond_2a8

    new-instance v20, Ljava/text/ChoiceFormat;

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v21, 0x4000

    invoke-virtual/range {v20 .. v22}, Ljava/text/ChoiceFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    :goto_1a1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    :goto_1a7
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v7

    if-eqz v7, :cond_237

    invoke-virtual {v7}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_237

    const-string v20, "com/ibm/icu/impl/data/icudt42b"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v18

    check-cast v18, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v20, "Currencies"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v9

    :try_start_1e1
    invoke-virtual {v9, v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_237

    const/16 v20, 0x2

    move-object v0, v9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object v9, v0

    const/16 v20, 0x0

    move-object v0, v9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    const/16 v20, 0x1

    move-object v0, v9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    const/16 v20, 0x2

    move-object v0, v9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C
    :try_end_237
    .catch Ljava/util/MissingResourceException; {:try_start_1e1 .. :try_end_237} :catch_2bf

    :cond_237
    :goto_237
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    const-string v20, "currencySpacing"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v6, :cond_2be

    const-string v20, "beforeCurrency"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v20, "afterCurrency"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;

    const/4 v12, 0x0

    :goto_278
    const/16 v20, 0x2

    move v0, v12

    move/from16 v1, v20

    if-gt v0, v1, :cond_2be

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Lcom/ibm/icu/text/DecimalFormatSymbols;->CURRENCY_SPACING_KEYS:[Ljava/lang/String;

    aget-object v21, v21, v12

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Lcom/ibm/icu/text/DecimalFormatSymbols;->CURRENCY_SPACING_KEYS:[Ljava/lang/String;

    aget-object v21, v21, v12

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_278

    :cond_2a8
    move-object/from16 v20, v10

    goto/16 :goto_1a1

    :cond_2ac
    const-string v20, "XXX"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string v20, "\u00a4"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto/16 :goto_1a7

    :cond_2be
    return-void

    :catch_2bf
    move-exception v20

    goto/16 :goto_237
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v0, v3, :cond_14

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    const/16 v0, 0x45

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponential:C

    :cond_14
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v0, v4, :cond_28

    const/16 v0, 0x2a

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 v0, 0x2b

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponential:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    :cond_28
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v0, v2, :cond_32

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    :cond_32
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3f

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    :cond_3f
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_48

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :cond_48
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    if-ge v0, v6, :cond_7a

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    if-nez v0, :cond_54

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    :cond_54
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    if-nez v0, :cond_5c

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    :cond_5c
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    const-string v2, "[:letter:]"

    aput-object v2, v1, v5

    aput-object v2, v0, v5

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    const-string v2, "[:digit:]"

    aput-object v2, v1, v3

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v4

    aput-object v2, v0, v4

    :cond_7a
    iput v6, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DecimalFormatSymbols;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception v1

    move-object v0, v1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_6

    move v3, v5

    :goto_5
    return v3

    :cond_6
    if-ne p0, p1, :cond_a

    move v3, v6

    goto :goto_5

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v2, v0

    const/4 v1, 0x0

    :goto_f
    const/4 v3, 0x2

    if-gt v1, v3, :cond_35

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move v3, v5

    goto :goto_5

    :cond_22
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    move v3, v5

    goto :goto_5

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_35
    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v3, v4, :cond_ac

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v3, v4, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v3, v4, :cond_ac

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v4, v2, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v3, v4, :cond_ac

    move v3, v6

    goto/16 :goto_5

    :cond_ac
    move v3, v5

    goto/16 :goto_5
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupingSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method public getInfinity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .registers 3

    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_6
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMinusSign()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMonetaryDecimalSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getMonetaryGroupingSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPadEscape()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    return v0
.end method

.method public getPatternForCurrencySpacing(IZ)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_6
.end method

.method public getPatternSeparator()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getPlusSign()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    return v0
.end method

.method public getSignificantDigit()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    return v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getZeroDigit()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    return v0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparator(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return-void
.end method

.method public setDigit(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->digit:C

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparator(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-void
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_10

    move v0, v2

    :goto_5
    if-nez p2, :cond_8

    move v1, v2

    :cond_8
    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    move v0, v1

    goto :goto_5

    :cond_12
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method public setMinusSign(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->minusSign:C

    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return-void
.end method

.method public setMonetaryGroupingSeparator(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-void
.end method

.method public setPadEscape(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->padEscape:C

    return-void
.end method

.method public setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .registers 5

    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aput-object p3, v0, p1

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aput-object p3, v0, p1

    goto :goto_5
.end method

.method public setPatternSeparator(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return-void
.end method

.method public setPerMill(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->perMill:C

    return-void
.end method

.method public setPercent(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->percent:C

    return-void
.end method

.method public setPlusSign(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->plusSign:C

    return-void
.end method

.method public setSignificantDigit(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->sigDigit:C

    return-void
.end method

.method public setZeroDigit(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols;->zeroDigit:C

    return-void
.end method
