.class public Lcom/ibm/icu/text/DecimalFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;
    }
.end annotation


# static fields
.field private static final CURRENCY_SIGN:C = '\u00a4'

.field private static final CURRENCY_SIGN_COUNT_IN_ISO_FORMAT:I = 0x2

.field private static final CURRENCY_SIGN_COUNT_IN_PLURAL_FORMAT:I = 0x3

.field private static final CURRENCY_SIGN_COUNT_IN_SYMBOL_FORMAT:I = 0x1

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAX_SCIENTIFIC_INTEGER_DIGITS:I = 0x8

.field public static final PAD_AFTER_PREFIX:I = 0x1

.field public static final PAD_AFTER_SUFFIX:I = 0x3

.field public static final PAD_BEFORE_PREFIX:I = 0x0

.field public static final PAD_BEFORE_SUFFIX:I = 0x2

.field private static final PARSE_MAX_EXPONENT:I = 0x3e8

.field private static final PATTERN_DECIMAL_SEPARATOR:C = '.'

.field private static final PATTERN_DIGIT:C = '#'

.field static final PATTERN_EXPONENT:C = 'E'

.field private static final PATTERN_GROUPING_SEPARATOR:C = ','

.field private static final PATTERN_MINUS:C = '-'

.field static final PATTERN_PAD_ESCAPE:C = '*'

.field private static final PATTERN_PERCENT:C = '%'

.field private static final PATTERN_PER_MILLE:C = '\u2030'

.field static final PATTERN_PLUS_SIGN:C = '+'

.field private static final PATTERN_SEPARATOR:C = ';'

.field static final PATTERN_SIGNIFICANT_DIGIT:C = '@'

.field private static final PATTERN_ZERO_DIGIT:C = '0'

.field private static final QUOTE:C = '\''

.field private static final STATUS_INFINITE:I = 0x0

.field private static final STATUS_LENGTH:I = 0x3

.field private static final STATUS_POSITIVE:I = 0x1

.field private static final STATUS_UNDERFLOW:I = 0x2

.field private static final commaEquivalents:Lcom/ibm/icu/text/UnicodeSet; = null

.field static final currentSerialVersion:I = 0x3

.field private static final defaultGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static final dotEquivalents:Lcom/ibm/icu/text/UnicodeSet; = null

.field private static epsilon:D = 0.0

.field private static final otherGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet; = null

.field static final roundingIncrementEpsilon:D = 1.0E-9

.field private static final serialVersionUID:J = 0xbff0362d872303aL

.field private static final strictCommaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

.field private static final strictDefaultGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

.field private static final strictDotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

.field private static final strictOtherGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;


# instance fields
.field private transient affixPatternsForCurrency:Ljava/util/Set;

.field private attributes:Ljava/util/ArrayList;

.field private currencyChoice:Ljava/text/ChoiceFormat;

.field private currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

.field private currencySignCount:I

.field private decimalSeparatorAlwaysShown:Z

.field private transient digitList:Lcom/ibm/icu/text/DigitList;

.field private exponentSignAlwaysShown:Z

.field private formatPattern:Ljava/lang/String;

.field private formatWidth:I

.field private groupingSize:B

.field private groupingSize2:B

.field private transient isReadyForParsing:Z

.field private mathContext:Lcom/ibm/icu/math/MathContext;

.field private maxSignificantDigits:I

.field private minExponentDigits:B

.field private minSignificantDigits:I

.field private multiplier:I

.field private negPrefixPattern:Ljava/lang/String;

.field private negSuffixPattern:Ljava/lang/String;

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private pad:C

.field private padPosition:I

.field private parseBigDecimal:Z

.field private posPrefixPattern:Ljava/lang/String;

.field private posSuffixPattern:Ljava/lang/String;

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private transient roundingDouble:D

.field private transient roundingDoubleReciprocal:D

.field private roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

.field private roundingMode:I

.field private serialVersionOnStream:I

.field private style:I

.field private symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

.field private useExponentialNotation:Z

.field private useSignificantDigits:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide v0, 0x3da5fd7fe1796495L

    sput-wide v0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[.\u2024\u3002\ufe12\ufe52\uff0e\uff61]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->dotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[,\u060c\u066b\u3001\ufe10\ufe11\ufe50\ufe51\uff0c\uff64]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->commaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\ \'\u00a0\u066c\u2000-\u200a\u2018\u2019\u202f\u205f\u3000\uff07]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->otherGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[.\u2024\ufe52\uff0e\uff61]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->strictDotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[,\u066b\ufe10\ufe50\uff0c]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->strictCommaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[\\ \'\u00a0\u066c\u2000-\u200a\u2018\u2019\u202f\u205f\u3000\uff07]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->strictOtherGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    sget-object v1, Lcom/ibm/icu/text/DecimalFormat;->dotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    sget-object v1, Lcom/ibm/icu/text/DecimalFormat;->commaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DecimalFormat;->otherGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->defaultGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    sget-object v1, Lcom/ibm/icu/text/DecimalFormat;->strictDotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    sget-object v1, Lcom/ibm/icu/text/DecimalFormat;->strictCommaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DecimalFormat;->strictOtherGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    new-instance v2, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v2}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const-string v2, ""

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string v2, "-"

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v8, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    iput-byte v5, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v3, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v3, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-boolean v3, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v8, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v3, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iput-wide v6, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v6, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    const/4 v2, 0x6

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    new-instance v2, Lcom/ibm/icu/math/MathContext;

    invoke-direct {v2, v3, v3}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    iput v3, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    const/16 v2, 0x20

    iput-char v2, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    iput v3, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v3, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    iput v5, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string v2, ""

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v3, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    iput v3, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v3, p0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ibm/icu/text/DecimalFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/DecimalFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    invoke-direct {p0, v1, v3}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    if-ne v2, v5, :cond_8b

    new-instance v2, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v2, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    :goto_8a
    return-void

    :cond_8b
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    goto :goto_8a
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    new-instance v1, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v1}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string v1, "-"

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v7, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    iput-byte v4, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v7, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iput-wide v5, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v5, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    const/4 v1, 0x6

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    new-instance v1, Lcom/ibm/icu/math/MathContext;

    invoke-direct {v1, v2, v2}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    const/16 v1, 0x20

    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    iput v4, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Lcom/ibm/icu/util/Currency;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    if-ne v1, v4, :cond_87

    new-instance v1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    :goto_86
    return-void

    :cond_87
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    goto :goto_86
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .registers 10

    const/4 v6, 0x3

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    new-instance v0, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v0}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string v0, "-"

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v5, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    iput-byte v6, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v1, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-boolean v1, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v5, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iput-wide v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    const/4 v0, 0x6

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    new-instance v0, Lcom/ibm/icu/math/MathContext;

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v1, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    iput v6, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v1, p0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V
    .registers 12

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    new-instance v1, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v1}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string v1, "-"

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v7, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v7, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v4, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iput-wide v5, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v5, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    iput v4, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    new-instance v1, Lcom/ibm/icu/math/MathContext;

    invoke-direct {v1, v2, v2}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    const/16 v1, 0x20

    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    const/4 v0, 0x0

    if-ne p3, v4, :cond_72

    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    :cond_72
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ibm/icu/text/DecimalFormat;->create(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/text/CurrencyPluralInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/text/CurrencyPluralInfo;I)V
    .registers 13

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    new-instance v1, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v1}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const-string v1, "-"

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    iput v7, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    iput-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    iput v7, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v4, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iput-wide v5, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v5, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    iput v4, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    new-instance v1, Lcom/ibm/icu/math/MathContext;

    invoke-direct {v1, v2, v2}, Lcom/ibm/icu/math/MathContext;-><init>(II)V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    const/16 v1, 0x20

    iput-char v1, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    const-string v1, ""

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    iput-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-object v0, p3

    if-ne p4, v4, :cond_6f

    invoke-virtual {p3}, Lcom/ibm/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    :cond_6f
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/ibm/icu/text/DecimalFormat;->create(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/text/CurrencyPluralInfo;I)V

    return-void
.end method

.method private addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V
    .registers 6

    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {v0, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V
    .registers 10

    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    if-lez v3, :cond_38

    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int v1, v3, v4

    if-lez v1, :cond_38

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_1a

    iget-char v3, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1a
    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    packed-switch v3, :pswitch_data_50

    :goto_1f
    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    if-eqz v3, :cond_28

    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_38

    :cond_28
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_38
    return-void

    :pswitch_39
    invoke-virtual {p1, p3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1f

    :pswitch_3d
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1f

    :pswitch_42
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1f

    :pswitch_4b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1f

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_39
        :pswitch_42
        :pswitch_4b
    .end packed-switch
.end method

.method private appendAffix(Ljava/lang/StringBuffer;ZZZ)I
    .registers 12

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    if-eqz v4, :cond_31

    const/4 v2, 0x0

    if-eqz p3, :cond_27

    if-eqz p2, :cond_23

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object v2, v4

    :goto_d
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    :goto_22
    return v4

    :cond_23
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object v2, v4

    goto :goto_d

    :cond_27
    if-eqz p2, :cond_2d

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object v2, v4

    :goto_2c
    goto :goto_d

    :cond_2d
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object v2, v4

    goto :goto_2c

    :cond_31
    const/4 v0, 0x0

    if-eqz p3, :cond_71

    if-eqz p2, :cond_6d

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object v0, v4

    :goto_39
    if-eqz p4, :cond_65

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v5, v3, :cond_54

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v5, v3, :cond_54

    const/4 v3, 0x0

    :cond_54
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v0, v4, v5}, Lcom/ibm/icu/text/DecimalFormat;->formatAffix2Attribute(Ljava/lang/String;II)V

    :cond_65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_22

    :cond_6d
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object v0, v4

    goto :goto_39

    :cond_71
    if-eqz p2, :cond_77

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object v0, v4

    :goto_76
    goto :goto_39

    :cond_77
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object v0, v4

    goto :goto_76
.end method

.method private appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V
    .registers 13

    const/16 v6, 0x27

    const/4 v1, 0x0

    if-eqz p3, :cond_31

    if-eqz p2, :cond_2d

    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object v1, v5

    :goto_a
    if-nez v1, :cond_4d

    const/4 v0, 0x0

    if-eqz p3, :cond_3f

    if-eqz p2, :cond_3b

    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object v0, v5

    :goto_14
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_49

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_27

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2d
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object v1, v5

    goto :goto_a

    :cond_31
    if-eqz p2, :cond_37

    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object v1, v5

    :goto_36
    goto :goto_a

    :cond_37
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object v1, v5

    goto :goto_36

    :cond_3b
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object v0, v5

    goto :goto_14

    :cond_3f
    if-eqz p2, :cond_45

    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object v0, v5

    :goto_44
    goto :goto_14

    :cond_45
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object v0, v5

    goto :goto_44

    :cond_49
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    if-nez p4, :cond_53

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4c

    :cond_53
    const/4 v3, 0x0

    :goto_54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4c

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_c2

    :goto_61
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    if-eq v2, v5, :cond_71

    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v5

    if-ne v2, v5, :cond_be

    :cond_71
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :sswitch_7d
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_9e

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed affix pattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9e
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    goto :goto_7a

    :sswitch_a9
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    goto :goto_61

    :sswitch_b0
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    goto :goto_61

    :sswitch_b7
    iget-object v5, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    goto :goto_61

    :cond_be
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7a

    :sswitch_data_c2
    .sparse-switch
        0x25 -> :sswitch_b0
        0x27 -> :sswitch_7d
        0x2d -> :sswitch_b7
        0x2030 -> :sswitch_a9
    .end sparse-switch
.end method

.method private applyPattern(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    return-void
.end method

.method private applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V
    .registers 60

    const/16 v53, 0x30

    const/16 v44, 0x40

    const/16 v22, 0x2c

    const/16 v9, 0x2e

    const/16 v37, 0x25

    const/16 v36, 0x2030

    const/16 v10, 0x23

    const/16 v43, 0x3b

    const/16 v55, 0x45

    invoke-static/range {v55 .. v55}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    const/16 v38, 0x2b

    const/16 v33, 0x2a

    const/16 v27, 0x2d

    if-eqz p2, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v27

    :cond_96
    add-int/lit8 v55, v53, 0x9

    move/from16 v0, v55

    int-to-char v0, v0

    move/from16 v30, v0

    const/16 v19, 0x0

    const/16 v39, 0x0

    const/16 v35, 0x0

    :goto_a3
    const/16 v55, 0x2

    move/from16 v0, v35

    move/from16 v1, v55

    if-ge v0, v1, :cond_6db

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v55

    move/from16 v0, v39

    move/from16 v1, v55

    if-ge v0, v1, :cond_6db

    const/16 v50, 0x1

    const/16 v48, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v51, Ljava/lang/StringBuffer;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v8, -0x1

    const/16 v28, 0x1

    const/4 v11, 0x0

    const/16 v54, 0x0

    const/4 v12, 0x0

    const/16 v45, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v34, -0x1

    const/16 v32, 0x0

    const/16 v23, -0x1

    const-wide/16 v24, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object/from16 v5, v41

    move/from16 v46, v39

    :goto_e4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v55

    move/from16 v0, v39

    move/from16 v1, v55

    if-ge v0, v1, :cond_407

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v50, :pswitch_data_7a4

    :cond_f9
    :goto_f9
    add-int/lit8 v39, v39, 0x1

    goto :goto_e4

    :pswitch_fc
    if-ne v7, v10, :cond_113

    if-gtz v54, :cond_102

    if-lez v45, :cond_110

    :cond_102
    add-int/lit8 v12, v12, 0x1

    :goto_104
    if-ltz v20, :cond_f9

    if-gez v8, :cond_f9

    add-int/lit8 v55, v20, 0x1

    move/from16 v0, v55

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_f9

    :cond_110
    add-int/lit8 v11, v11, 0x1

    goto :goto_104

    :cond_113
    move v0, v7

    move/from16 v1, v53

    if-lt v0, v1, :cond_11d

    move v0, v7

    move/from16 v1, v30

    if-le v0, v1, :cond_122

    :cond_11d
    move v0, v7

    move/from16 v1, v44

    if-ne v0, v1, :cond_182

    :cond_122
    if-lez v12, :cond_149

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unexpected \'"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x27

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_149
    move v0, v7

    move/from16 v1, v44

    if-ne v0, v1, :cond_15c

    add-int/lit8 v45, v45, 0x1

    :cond_150
    :goto_150
    if-ltz v20, :cond_f9

    if-gez v8, :cond_f9

    add-int/lit8 v55, v20, 0x1

    move/from16 v0, v55

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_f9

    :cond_15c
    add-int/lit8 v54, v54, 0x1

    move v0, v7

    move/from16 v1, v53

    if-eq v0, v1, :cond_150

    add-int v55, v11, v54

    add-int v31, v55, v12

    if-ltz v23, :cond_176

    :goto_169
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_178

    const-wide/16 v55, 0xa

    mul-long v24, v24, v55

    add-int/lit8 v23, v23, 0x1

    goto :goto_169

    :cond_176
    move/from16 v23, v31

    :cond_178
    sub-int v55, v7, v53

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v55, v0

    add-long v24, v24, v55

    goto :goto_150

    :cond_182
    move v0, v7

    move/from16 v1, v22

    if-ne v0, v1, :cond_1de

    const/16 v55, 0x27

    move v0, v7

    move/from16 v1, v55

    if-ne v0, v1, :cond_1b9

    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_1b9

    add-int/lit8 v55, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v10, :cond_1b9

    move v0, v6

    move/from16 v1, v53

    if-lt v0, v1, :cond_1b0

    move v0, v6

    move/from16 v1, v30

    if-le v0, v1, :cond_1b9

    :cond_1b0
    const/16 v55, 0x27

    move v0, v6

    move/from16 v1, v55

    if-ne v0, v1, :cond_1cc

    add-int/lit8 v39, v39, 0x1

    :cond_1b9
    if-ltz v8, :cond_1c6

    const-string v55, "Grouping separator after decimal"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c6
    move/from16 v21, v20

    const/16 v20, 0x0

    goto/16 :goto_f9

    :cond_1cc
    if-gez v20, :cond_1d2

    const/16 v50, 0x3

    goto/16 :goto_f9

    :cond_1d2
    const/16 v50, 0x2

    move-object/from16 v5, v51

    add-int/lit8 v40, v39, -0x1

    move/from16 v47, v39

    move/from16 v39, v40

    goto/16 :goto_f9

    :cond_1de
    if-ne v7, v9, :cond_1f3

    if-ltz v8, :cond_1ed

    const-string v55, "Multiple decimal separators"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ed
    add-int v55, v11, v54

    add-int v8, v55, v12

    goto/16 :goto_f9

    :cond_1f3
    const/16 v55, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v56

    move-object/from16 v0, p1

    move/from16 v1, v39

    move-object/from16 v2, v18

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v55

    if-eqz v55, :cond_294

    if-ltz v16, :cond_216

    const-string v55, "Multiple exponential symbols"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_216
    if-ltz v20, :cond_223

    const-string v55, "Grouping separator in exponential"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_223
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v55

    add-int v39, v39, v55

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v55

    move/from16 v0, v39

    move/from16 v1, v55

    if-ge v0, v1, :cond_245

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    move/from16 v0, v55

    move/from16 v1, v38

    if-ne v0, v1, :cond_245

    const/16 v17, 0x1

    add-int/lit8 v39, v39, 0x1

    :cond_245
    const/16 v16, 0x0

    :goto_247
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v55

    move/from16 v0, v39

    move/from16 v1, v55

    if-ge v0, v1, :cond_269

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    move/from16 v0, v55

    move/from16 v1, v53

    if-ne v0, v1, :cond_269

    add-int/lit8 v55, v16, 0x1

    move/from16 v0, v55

    int-to-byte v0, v0

    move/from16 v16, v0

    add-int/lit8 v39, v39, 0x1

    goto :goto_247

    :cond_269
    add-int v55, v11, v54

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_27d

    add-int v55, v45, v12

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_289

    :cond_27d
    if-lez v45, :cond_281

    if-gtz v11, :cond_289

    :cond_281
    const/16 v55, 0x1

    move/from16 v0, v16

    move/from16 v1, v55

    if-ge v0, v1, :cond_294

    :cond_289
    const-string v55, "Malformed exponential"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_294
    const/16 v50, 0x2

    move-object/from16 v5, v51

    add-int/lit8 v40, v39, -0x1

    move/from16 v47, v39

    move/from16 v39, v40

    goto/16 :goto_f9

    :pswitch_2a0
    if-eq v7, v10, :cond_2b8

    move v0, v7

    move/from16 v1, v22

    if-eq v0, v1, :cond_2b8

    if-eq v7, v9, :cond_2b8

    move v0, v7

    move/from16 v1, v53

    if-lt v0, v1, :cond_2b3

    move v0, v7

    move/from16 v1, v30

    if-le v0, v1, :cond_2b8

    :cond_2b3
    move v0, v7

    move/from16 v1, v44

    if-ne v0, v1, :cond_324

    :cond_2b8
    const/16 v55, 0x1

    move/from16 v0, v50

    move/from16 v1, v55

    if-ne v0, v1, :cond_2ca

    const/16 v50, 0x0

    add-int/lit8 v40, v39, -0x1

    move/from16 v48, v39

    move/from16 v39, v40

    goto/16 :goto_f9

    :cond_2ca
    const/16 v55, 0x27

    move v0, v7

    move/from16 v1, v55

    if-ne v0, v1, :cond_2fa

    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_2f6

    add-int/lit8 v55, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    const/16 v56, 0x27

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_2f6

    add-int/lit8 v39, v39, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f9

    :cond_2f6
    add-int/lit8 v50, v50, 0x2

    goto/16 :goto_f9

    :cond_2fa
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unquoted special character \'"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x27

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31f
    :goto_31f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f9

    :cond_324
    const/16 v55, 0xa4

    move v0, v7

    move/from16 v1, v55

    if-ne v0, v1, :cond_397

    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_380

    add-int/lit8 v55, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    const/16 v56, 0xa4

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_380

    const/16 v55, 0x1

    move/from16 v14, v55

    :goto_34d
    if-eqz v14, :cond_38e

    add-int/lit8 v39, v39, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_385

    add-int/lit8 v55, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    const/16 v56, 0xa4

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_385

    add-int/lit8 v39, v39, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v55, 0x3

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    goto :goto_31f

    :cond_380
    const/16 v55, 0x0

    move/from16 v14, v55

    goto :goto_34d

    :cond_385
    const/16 v55, 0x2

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    goto :goto_31f

    :cond_38e
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    goto :goto_31f

    :cond_397
    const/16 v55, 0x27

    move v0, v7

    move/from16 v1, v55

    if-ne v0, v1, :cond_3c7

    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_3c3

    add-int/lit8 v55, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    const/16 v56, 0x27

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_3c3

    add-int/lit8 v39, v39, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_31f

    :cond_3c3
    add-int/lit8 v50, v50, 0x2

    goto/16 :goto_31f

    :cond_3c7
    move v0, v7

    move/from16 v1, v43

    if-ne v0, v1, :cond_570

    const/16 v55, 0x1

    move/from16 v0, v50

    move/from16 v1, v55

    if-eq v0, v1, :cond_3dc

    const/16 v55, 0x1

    move/from16 v0, v35

    move/from16 v1, v55

    if-ne v0, v1, :cond_401

    :cond_3dc
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unquoted special character \'"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x27

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_401
    add-int/lit8 v40, v39, 0x1

    move/from16 v49, v39

    move/from16 v39, v40

    :cond_407
    const/16 v55, 0x3

    move/from16 v0, v50

    move/from16 v1, v55

    if-eq v0, v1, :cond_417

    const/16 v55, 0x4

    move/from16 v0, v50

    move/from16 v1, v55

    if-ne v0, v1, :cond_422

    :cond_417
    const-string v55, "Unterminated quote"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_422
    if-nez v47, :cond_428

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v47

    :cond_428
    if-nez v49, :cond_42e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v49

    :cond_42e
    if-nez v54, :cond_444

    if-nez v45, :cond_444

    if-lez v11, :cond_444

    if-ltz v8, :cond_444

    move/from16 v29, v8

    if-nez v29, :cond_43c

    add-int/lit8 v29, v29, 0x1

    :cond_43c
    sub-int v12, v11, v29

    const/16 v55, 0x1

    sub-int v11, v29, v55

    const/16 v54, 0x1

    :cond_444
    if-gez v8, :cond_44a

    if-lez v12, :cond_44a

    if-eqz v45, :cond_467

    :cond_44a
    if-ltz v8, :cond_457

    if-gtz v45, :cond_467

    if-lt v8, v11, :cond_467

    add-int v55, v11, v54

    move v0, v8

    move/from16 v1, v55

    if-gt v0, v1, :cond_467

    :cond_457
    if-eqz v20, :cond_467

    if-eqz v21, :cond_467

    if-lez v45, :cond_45f

    if-gtz v54, :cond_467

    :cond_45f
    const/16 v55, 0x2

    move/from16 v0, v50

    move/from16 v1, v55

    if-le v0, v1, :cond_472

    :cond_467
    const-string v55, "Malformed pattern"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_472
    if-ltz v34, :cond_47c

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_61f

    const/16 v34, 0x0

    :cond_47c
    :goto_47c
    if-nez v35, :cond_6c3

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    if-ltz v16, :cond_64e

    const/16 v55, 0x1

    :goto_4a2
    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v55, v0

    if-eqz v55, :cond_4bc

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    :cond_4bc
    add-int v55, v11, v54

    add-int v13, v55, v12

    if-ltz v8, :cond_652

    move v15, v8

    :goto_4c3
    if-lez v45, :cond_655

    const/16 v55, 0x1

    move/from16 v52, v55

    :goto_4c9
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    if-eqz v52, :cond_65b

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    add-int v55, v45, v12

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    :goto_4e2
    if-lez v20, :cond_698

    const/16 v55, 0x1

    :goto_4e6
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    if-lez v20, :cond_69c

    move/from16 v55, v20

    :goto_4f1
    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    if-lez v21, :cond_6a0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_6a0

    move/from16 v55, v21

    :goto_501
    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    if-eqz v8, :cond_511

    if-ne v8, v13, :cond_6a4

    :cond_511
    const/16 v55, 0x1

    :goto_513
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    if-ltz v34, :cond_6a8

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    sub-int v55, v47, v48

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    :goto_530
    const-wide/16 v55, 0x0

    cmp-long v55, v24, v55

    if-eqz v55, :cond_6b6

    sub-int v42, v23, v15

    if-lez v42, :cond_6b2

    move/from16 v55, v42

    :goto_53c
    move-wide/from16 v0, v24

    move/from16 v2, v55

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->valueOf(JI)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    if-gez v42, :cond_561

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    move-object/from16 v55, v0

    move/from16 v0, v42

    neg-int v0, v0

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Lcom/ibm/icu/math/BigDecimal;->movePointRight(I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    :cond_561
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingDouble()V

    const/16 v55, 0x6

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    :goto_56c
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_a3

    :cond_570
    move v0, v7

    move/from16 v1, v37

    if-eq v0, v1, :cond_57a

    move v0, v7

    move/from16 v1, v36

    if-ne v0, v1, :cond_5ab

    :cond_57a
    const/16 v55, 0x1

    move/from16 v0, v28

    move/from16 v1, v55

    if-eq v0, v1, :cond_58d

    const-string v55, "Too many percent/permille characters"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58d
    move v0, v7

    move/from16 v1, v37

    if-ne v0, v1, :cond_5a1

    const/16 v55, 0x64

    move/from16 v28, v55

    :goto_596
    move v0, v7

    move/from16 v1, v37

    if-ne v0, v1, :cond_5a6

    const/16 v55, 0x25

    move/from16 v7, v55

    :goto_59f
    goto/16 :goto_31f

    :cond_5a1
    const/16 v55, 0x3e8

    move/from16 v28, v55

    goto :goto_596

    :cond_5a6
    const/16 v55, 0x2030

    move/from16 v7, v55

    goto :goto_59f

    :cond_5ab
    move v0, v7

    move/from16 v1, v27

    if-ne v0, v1, :cond_5b4

    const/16 v7, 0x2d

    goto/16 :goto_31f

    :cond_5b4
    move v0, v7

    move/from16 v1, v33

    if-ne v0, v1, :cond_31f

    if-ltz v34, :cond_5c6

    const-string v55, "Multiple pad specifiers"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c6
    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_5dd

    const-string v55, "Invalid pad specifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5dd
    add-int/lit8 v40, v39, 0x1

    move/from16 v34, v39

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    move/from16 v39, v40

    goto/16 :goto_f9

    :pswitch_5ed
    const/16 v55, 0x27

    move v0, v7

    move/from16 v1, v55

    if-ne v0, v1, :cond_617

    add-int/lit8 v55, v39, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_61c

    add-int/lit8 v55, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v55

    const/16 v56, 0x27

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_61c

    add-int/lit8 v39, v39, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_617
    :goto_617
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_f9

    :cond_61c
    add-int/lit8 v50, v50, -0x2

    goto :goto_617

    :cond_61f
    add-int/lit8 v55, v34, 0x2

    move/from16 v0, v55

    move/from16 v1, v48

    if-ne v0, v1, :cond_62b

    const/16 v34, 0x1

    goto/16 :goto_47c

    :cond_62b
    move/from16 v0, v34

    move/from16 v1, v47

    if-ne v0, v1, :cond_635

    const/16 v34, 0x2

    goto/16 :goto_47c

    :cond_635
    add-int/lit8 v55, v34, 0x2

    move/from16 v0, v55

    move/from16 v1, v49

    if-ne v0, v1, :cond_641

    const/16 v34, 0x3

    goto/16 :goto_47c

    :cond_641
    const-string v55, "Illegal pad position"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_47c

    :cond_64e
    const/16 v55, 0x0

    goto/16 :goto_4a2

    :cond_652
    move v15, v13

    goto/16 :goto_4c3

    :cond_655
    const/16 v55, 0x0

    move/from16 v52, v55

    goto/16 :goto_4c9

    :cond_65b
    sub-int v26, v15, v11

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v55, v0

    if-eqz v55, :cond_68f

    add-int v55, v11, v26

    :goto_66e
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    if-ltz v8, :cond_692

    sub-int v55, v13, v8

    :goto_679
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    if-ltz v8, :cond_695

    add-int v55, v11, v54

    sub-int v55, v55, v8

    :goto_686
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    goto/16 :goto_4e2

    :cond_68f
    const/16 v55, 0x135

    goto :goto_66e

    :cond_692
    const/16 v55, 0x0

    goto :goto_679

    :cond_695
    const/16 v55, 0x0

    goto :goto_686

    :cond_698
    const/16 v55, 0x0

    goto/16 :goto_4e6

    :cond_69c
    const/16 v55, 0x0

    goto/16 :goto_4f1

    :cond_6a0
    const/16 v55, 0x0

    goto/16 :goto_501

    :cond_6a4
    const/16 v55, 0x0

    goto/16 :goto_513

    :cond_6a8
    const/16 v55, 0x0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    goto/16 :goto_530

    :cond_6b2
    const/16 v55, 0x0

    goto/16 :goto_53c

    :cond_6b6
    const/16 p2, 0x0

    check-cast p2, Lcom/ibm/icu/math/BigDecimal;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    goto/16 :goto_56c

    :cond_6c3
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    const/16 v19, 0x1

    goto/16 :goto_56c

    :cond_6db
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v55

    if-nez v55, :cond_713

    const-string v55, ""

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    const/16 v55, 0x135

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    const/16 v55, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/16 v55, 0x154

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_713
    if-eqz v19, :cond_739

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_764

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_764

    :cond_739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v56, 0x2d

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    :cond_764
    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v55, v0

    const/16 v56, 0x3

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_7a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-object/from16 v55, v0

    if-nez v55, :cond_7a2

    new-instance v55, Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    :cond_7a2
    return-void

    nop

    :pswitch_data_7a4
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_2a0
        :pswitch_2a0
        :pswitch_5ed
        :pswitch_5ed
    .end packed-switch
.end method

.method private compareAffix(Ljava/lang/String;IZZLjava/lang/String;I[Lcom/ibm/icu/util/Currency;)I
    .registers 14

    if-nez p7, :cond_a

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    if-lez v0, :cond_15

    :cond_a
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat;->compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Lcom/ibm/icu/util/Currency;)I

    move-result v0

    :goto_14
    return v0

    :cond_15
    if-eqz p4, :cond_23

    if-eqz p3, :cond_20

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    :goto_1b
    invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_14

    :cond_20
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    goto :goto_1b

    :cond_23
    if-eqz p3, :cond_2c

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    :goto_27
    invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_14

    :cond_2c
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    goto :goto_27
.end method

.method private compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Lcom/ibm/icu/util/Currency;)I
    .registers 22

    move/from16 v12, p3

    const/4 v5, 0x0

    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_11b

    if-ltz p3, :cond_11b

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v14, 0x27

    if-ne v4, v14, :cond_6d

    move v5, v6

    :goto_19
    const/16 v14, 0x27

    move-object/from16 v0, p1

    move v1, v14

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-ne v9, v5, :cond_33

    const/16 v14, 0x27

    move-object/from16 v0, p2

    move/from16 v1, p3

    move v2, v14

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p3

    add-int/lit8 v5, v9, 0x1

    goto :goto_3

    :cond_33
    if-le v9, v5, :cond_67

    move-object/from16 v0, p1

    move v1, v5

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->match(Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    add-int/lit8 v5, v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_3

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-ne v14, v15, :cond_3

    const/16 v14, 0x27

    move-object/from16 v0, p2

    move/from16 v1, p3

    move v2, v14

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_67
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14}, Ljava/lang/RuntimeException;-><init>()V

    throw v14

    :cond_6d
    sparse-switch v4, :sswitch_data_124

    :goto_70
    move-object/from16 v0, p2

    move/from16 v1, p3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p3

    invoke-static {v4}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v14

    if-eqz v14, :cond_11e

    move-object/from16 v0, p1

    move v1, v6

    invoke-static {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->skipRuleWhiteSpace(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_3

    :sswitch_88
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_f0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa4

    if-ne v14, v15, :cond_f0

    const/4 v14, 0x1

    move v7, v14

    :goto_9b
    if-eqz v7, :cond_121

    add-int/lit8 v5, v6, 0x1

    :goto_9f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_f3

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa4

    if-ne v14, v15, :cond_f3

    const/4 v14, 0x1

    move v10, v14

    :goto_b2
    if-eqz v10, :cond_b7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    :cond_b7
    sget-object v14, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v13

    if-nez v13, :cond_cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v14, v0

    sget-object v15, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v14, v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v13

    :cond_cd
    new-instance v11, Ljava/text/ParsePosition;

    move-object v0, v11

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v0, v13

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object v3, v11

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/Currency;->parse(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f6

    if-eqz p5, :cond_ea

    const/4 v14, 0x0

    invoke-static {v8}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v15

    aput-object v15, p5, v14

    :cond_ea
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    goto/16 :goto_3

    :cond_f0
    const/4 v14, 0x0

    move v7, v14

    goto :goto_9b

    :cond_f3
    const/4 v14, 0x0

    move v10, v14

    goto :goto_b2

    :cond_f6
    const/16 p3, -0x1

    goto/16 :goto_3

    :sswitch_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v4

    goto/16 :goto_70

    :sswitch_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v4

    goto/16 :goto_70

    :sswitch_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v4

    goto/16 :goto_70

    :cond_11b
    sub-int v14, p3, v12

    return v14

    :cond_11e
    move v5, v6

    goto/16 :goto_3

    :cond_121
    move v5, v6

    goto/16 :goto_9f

    :sswitch_data_124
    .sparse-switch
        0x25 -> :sswitch_fa
        0x2d -> :sswitch_110
        0xa4 -> :sswitch_88
        0x2030 -> :sswitch_105
    .end sparse-switch
.end method

.method private static compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11

    const/4 v7, -0x1

    move v5, p2

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_61

    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_50

    const/4 v3, 0x0

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge p2, v6, :cond_2d

    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_2d

    const/4 v3, 0x1

    add-int/2addr v1, v2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3c

    :cond_2d
    :goto_2d
    invoke-static {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->skipRuleWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    move v4, p2

    invoke-static {p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_4b

    if-nez v3, :cond_4b

    move v6, v7

    :goto_3b
    return v6

    :cond_3c
    invoke-static {p0, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_2d

    :cond_4b
    invoke-static {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3

    :cond_50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge p2, v6, :cond_5f

    invoke-static {p1, p2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_5f

    add-int/2addr v1, v2

    add-int/2addr p2, v2

    goto :goto_3

    :cond_5f
    move v6, v7

    goto :goto_3b

    :cond_61
    sub-int v6, p2, v5

    goto :goto_3b
.end method

.method private create(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/text/CurrencyPluralInfo;I)V
    .registers 8

    const/4 v1, 0x6

    if-eq p4, v1, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->createFromPatternAndSymbols(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    :goto_6
    iput p4, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    return-void

    :cond_9
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p3, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    const-string v2, "other"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    goto :goto_6
.end method

.method private createFromPatternAndSymbols(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .registers 5

    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_d

    :cond_5
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_a

    :cond_15
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/ibm/icu/text/DecimalFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method private expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V
    .registers 23

    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v7, 0x0

    :cond_8
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_16d

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v15, 0x27

    if-ne v5, v15, :cond_6a

    move v7, v8

    :goto_1c
    const/16 v15, 0x27

    move-object/from16 v0, p1

    move v1, v15

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-ne v11, v7, :cond_33

    const/16 v15, 0x27

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v11, 0x1

    goto :goto_8

    :cond_33
    if-le v11, v7, :cond_64

    move-object/from16 v0, p1

    move v1, v7

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v11, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_8

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x27

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/16 v15, 0x27

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_64
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15}, Ljava/lang/RuntimeException;-><init>()V

    throw v15

    :cond_6a
    sparse-switch v5, :sswitch_data_172

    :goto_6d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v7, v8

    goto :goto_8

    :sswitch_75
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v8, v15, :cond_d4

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xa4

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_d4

    const/4 v15, 0x1

    move v9, v15

    :goto_8b
    const/4 v12, 0x0

    if-eqz v9, :cond_16e

    add-int/lit8 v7, v8, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v7, v15, :cond_a8

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0xa4

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a8

    const/4 v12, 0x1

    const/4 v9, 0x0

    add-int/lit8 v7, v7, 0x1

    :cond_a8
    :goto_a8
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v6

    if-eqz v6, :cond_134

    if-eqz v12, :cond_d7

    if-eqz p2, :cond_d7

    const/4 v15, 0x1

    new-array v10, v15, [Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v15

    const/16 v16, 0x2

    move-object v0, v6

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v14

    :cond_cc
    :goto_cc
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :cond_d4
    const/4 v15, 0x0

    move v9, v15

    goto :goto_8b

    :cond_d7
    if-nez v9, :cond_12f

    const/4 v15, 0x1

    new-array v10, v15, [Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v15

    const/16 v16, 0x0

    move-object v0, v6

    move-object v1, v15

    move/from16 v2, v16

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-boolean v15, v10, v15

    if-eqz v15, :cond_cc

    if-nez p4, :cond_10f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    move-object v15, v0

    if-nez v15, :cond_108

    new-instance v15, Ljava/text/ChoiceFormat;

    invoke-direct {v15, v14}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    :cond_108
    const/16 v15, 0xa4

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    goto :goto_cc

    :cond_10f
    new-instance v13, Ljava/text/FieldPosition;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Ljava/text/FieldPosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/DigitList;->getDouble()D

    move-result-wide v16

    move-object v0, v15

    move-wide/from16 v1, v16

    move-object/from16 v3, p3

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/text/ChoiceFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :cond_12f
    invoke-virtual {v6}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v14

    goto :goto_cc

    :cond_134
    if-eqz v9, :cond_141

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    :goto_140
    goto :goto_cc

    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    goto :goto_140

    :sswitch_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v5

    goto/16 :goto_6d

    :sswitch_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v5

    goto/16 :goto_6d

    :sswitch_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v5

    goto/16 :goto_6d

    :cond_16d
    return-void

    :cond_16e
    move v7, v8

    goto/16 :goto_a8

    nop

    :sswitch_data_172
    .sparse-switch
        0x25 -> :sswitch_14c
        0x2d -> :sswitch_162
        0xa4 -> :sswitch_75
        0x2030 -> :sswitch_157
    .end sparse-switch
.end method

.method private expandAffixAdjustWidth(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    if-lez v0, :cond_19

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    :cond_19
    return-void
.end method

.method private expandAffixes(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyChoice:Ljava/text/ChoiceFormat;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    :cond_18
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    :cond_27
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    :cond_36
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/ibm/icu/text/DecimalFormat;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    :cond_45
    return-void
.end method

.method private format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .registers 25

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    if-nez v5, :cond_75

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_24
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_55

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_55
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    if-nez v5, :cond_88

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_65
    :goto_65
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    move-object/from16 v5, p3

    :goto_74
    return-object v5

    :cond_75
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_24

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_24

    :cond_88
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_65

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_65

    :cond_9b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_ab

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move v5, v0

    int-to-double v5, v5

    mul-double p1, p1, v5

    :cond_ab
    const-wide/16 v5, 0x0

    cmpg-double v5, p1, v5

    if-ltz v5, :cond_c1

    const-wide/16 v5, 0x0

    cmpl-double v5, p1, v5

    if-nez v5, :cond_179

    const-wide/high16 v5, 0x3ff0

    div-double v5, v5, p1

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_179

    :cond_c1
    const/4 v5, 0x1

    move v12, v5

    :goto_c3
    if-eqz v12, :cond_ca

    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 p1, v0

    :cond_ca
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_f7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    move v11, v0

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/ibm/icu/text/DecimalFormat;->round(DDDIZ)D

    move-result-wide v15

    const-wide/16 v5, 0x0

    cmpl-double v5, v15, v5

    if-nez v5, :cond_f5

    cmpl-double v5, p1, v15

    if-eqz v5, :cond_f5

    const/4 v12, 0x0

    :cond_f5
    move-wide/from16 p1, v15

    :cond_f7
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1a3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v12

    move v3, v5

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    move-result v17

    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    if-nez v5, :cond_17d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_11a
    :goto_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_14b

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_14b
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    if-nez v5, :cond_190

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_15b
    :goto_15b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v12

    move v3, v5

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    move-object/from16 v5, p3

    goto/16 :goto_74

    :cond_179
    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_c3

    :cond_17d
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_11a

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_11a

    :cond_190
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_15b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_15b

    :cond_1a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    monitor-enter v5

    :try_start_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->precision(Z)I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move v8, v0

    if-nez v8, :cond_1df

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v8

    if-nez v8, :cond_1df

    const/4 v8, 0x1

    :goto_1c4
    move-object v0, v6

    move-wide/from16 v1, p1

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DigitList;->set(DIZ)V

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/ibm/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v6

    monitor-exit v5

    move-object v5, v6

    goto/16 :goto_74

    :cond_1df
    const/4 v8, 0x0

    goto :goto_1c4

    :catchall_1e1
    move-exception v6

    monitor-exit v5
    :try_end_1e3
    .catchall {:try_start_1a9 .. :try_end_1e3} :catchall_1e1

    throw v6
.end method

.method private format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .registers 22

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    move-object v5, v0

    if-eqz v5, :cond_25

    invoke-static/range {p1 .. p2}, Lcom/ibm/icu/math/BigDecimal;->valueOf(J)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v5

    :goto_24
    return-object v5

    :cond_25
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_6d

    const/4 v5, 0x1

    move v10, v5

    :goto_2d
    if-eqz v10, :cond_34

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8d

    const/4 v15, 0x0

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_73

    const-wide/high16 v5, -0x8000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move v7, v0

    int-to-long v7, v7

    div-long v13, v5, v7

    cmp-long v5, p1, v13

    if-gtz v5, :cond_70

    const/4 v5, 0x1

    move v15, v5

    :goto_53
    if-eqz v15, :cond_8d

    if-eqz v10, :cond_8a

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide v5, v0

    :goto_5b
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_24

    :cond_6d
    const/4 v5, 0x0

    move v10, v5

    goto :goto_2d

    :cond_70
    const/4 v5, 0x0

    move v15, v5

    goto :goto_53

    :cond_73
    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move v7, v0

    int-to-long v7, v7

    div-long v13, v5, v7

    cmp-long v5, p1, v13

    if-lez v5, :cond_87

    const/4 v5, 0x1

    move v15, v5

    :goto_86
    goto :goto_53

    :cond_87
    const/4 v5, 0x0

    move v15, v5

    goto :goto_86

    :cond_8a
    move-wide/from16 v5, p1

    goto :goto_5b

    :cond_8d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move v5, v0

    int-to-long v5, v5

    mul-long p1, p1, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v13, v0

    monitor-enter v13

    :try_start_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->precision(Z)I

    move-result v6

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/text/DigitList;->set(JI)V

    move-wide/from16 v0, p1

    long-to-double v0, v0

    move-wide v6, v0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/ibm/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v5

    monitor-exit v13

    goto/16 :goto_24

    :catchall_c3
    move-exception v5

    monitor-exit v13
    :try_end_c5
    .catchall {:try_start_9b .. :try_end_c5} :catchall_c3

    throw v5
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .registers 14

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    if-eq v0, v4, :cond_11

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_11
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    iget v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    invoke-virtual {p1, v0, v3, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    :cond_23
    iget-object v8, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    monitor-enter v8

    :try_start_26
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->precision(Z)I

    move-result v1

    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-nez v2, :cond_51

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v2

    if-nez v2, :cond_51

    move v2, v4

    :goto_38
    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/text/DigitList;->set(Ljava/math/BigDecimal;IZ)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_53

    move v5, v4

    :goto_46
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :cond_51
    move v2, v3

    goto :goto_38

    :cond_53
    move v5, v3

    goto :goto_46

    :catchall_55
    move-exception v0

    monitor-exit v8
    :try_end_57
    .catchall {:try_start_26 .. :try_end_57} :catchall_55

    throw v0
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .registers 13

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    if-eq v0, v2, :cond_1e

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_1e
    iget-object v7, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    monitor-enter v7

    :try_start_21
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->precision(Z)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/text/DigitList;->set(Ljava/math/BigInteger;I)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_44

    move v4, v2

    :goto_36
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/DecimalFormat;->subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    monitor-exit v7

    goto :goto_e

    :catchall_41
    move-exception v0

    monitor-exit v7
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    const/4 v0, 0x0

    move v4, v0

    goto :goto_36
.end method

.method private formatAffix2Attribute(Ljava/lang/String;II)V
    .registers 6

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_13

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v1, :cond_25

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    goto :goto_12

    :cond_25
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v1, :cond_37

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    goto :goto_12

    :cond_37
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v1, :cond_12

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    goto :goto_12
.end method

.method private getSimilarDecimals(CZ)Lcom/ibm/icu/text/UnicodeSet;
    .registers 4

    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->dotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_d

    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->strictDotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->dotEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_c

    :cond_10
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->commaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p2, :cond_1d

    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->strictCommaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_c

    :cond_1d
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->commaEquivalents:Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_c

    :cond_20
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    goto :goto_c
.end method

.method private isGroupingPosition(I)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v1

    if-eqz v1, :cond_21

    if-lez p1, :cond_21

    iget-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    if-lez v1, :cond_21

    iget-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    if-lez v1, :cond_24

    iget-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    if-le p1, v1, :cond_24

    iget-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    sub-int v1, p1, v1

    iget-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    rem-int/2addr v1, v2

    if-nez v1, :cond_22

    move v0, v4

    :cond_21
    :goto_21
    return v0

    :cond_22
    move v0, v3

    goto :goto_21

    :cond_24
    iget-byte v1, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    rem-int v1, p1, v1

    if-nez v1, :cond_2c

    move v0, v4

    :goto_2b
    goto :goto_21

    :cond_2c
    move v0, v3

    goto :goto_2b
.end method

.method static final match(Ljava/lang/String;II)I
    .registers 6

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_9

    move v1, v2

    :goto_8
    return v1

    :cond_9
    invoke-static {p2}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v0, p1

    invoke-static {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_18

    move v1, v2

    goto :goto_8

    :cond_18
    move v1, p1

    goto :goto_8

    :cond_1a
    if-ltz p1, :cond_28

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_28

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_8

    :cond_28
    move v1, v2

    goto :goto_8
.end method

.method static final match(Ljava/lang/String;ILjava/lang/String;)I
    .registers 6

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    if-ltz p1, :cond_21

    invoke-static {p2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->match(Ljava/lang/String;II)I

    move-result p1

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2, v1}, Lcom/ibm/icu/text/DecimalFormat;->skipRuleWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_21
    return p1
.end method

.method private parse(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Object;
    .registers 36

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v23

    move/from16 v25, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move v5, v0

    if-lez v5, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v25

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v25, v25, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move v5, v0

    if-lez v5, :cond_7a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_70

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7a

    :cond_70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v25

    :cond_7a
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    new-instance v5, Ljava/lang/Double;

    const-wide/high16 v6, 0x7ff8

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    :goto_88
    return-object v5

    :cond_89
    move/from16 v25, v23

    const/4 v5, 0x3

    new-array v10, v5, [Z

    if-eqz p3, :cond_ab

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/ibm/icu/util/Currency;

    move-object v9, v5

    :goto_94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move v5, v0

    if-lez v5, :cond_ae

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/text/DecimalFormat;->parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;Z[Lcom/ibm/icu/util/Currency;[Z)Z

    move-result v5

    if-nez v5, :cond_e7

    const/4 v5, 0x0

    goto :goto_88

    :cond_ab
    const/4 v5, 0x0

    move-object v9, v5

    goto :goto_94

    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v22}, Lcom/ibm/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/DigitList;Z[Z[Lcom/ibm/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_e7

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v5, 0x0

    goto :goto_88

    :cond_e7
    const/16 v29, 0x0

    const/4 v5, 0x0

    aget-boolean v5, v10, v5

    if-eqz v5, :cond_110

    new-instance v29, Ljava/lang/Double;

    const/4 v5, 0x1

    aget-boolean v5, v10, v5

    if-eqz v5, :cond_10d

    const-wide/high16 v5, 0x7ff0

    :goto_f7
    move-object/from16 v0, v29

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    :cond_fd
    :goto_fd
    if-eqz p3, :cond_22f

    new-instance v5, Lcom/ibm/icu/util/CurrencyAmount;

    const/4 v6, 0x0

    aget-object v6, v9, v6

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    goto/16 :goto_88

    :cond_10d
    const-wide/high16 v5, -0x10

    goto :goto_f7

    :cond_110
    const/4 v5, 0x2

    aget-boolean v5, v10, v5

    if-eqz v5, :cond_12e

    const/4 v5, 0x1

    aget-boolean v5, v10, v5

    if-eqz v5, :cond_124

    new-instance v5, Ljava/lang/Double;

    const-string v6, "0.0"

    invoke-direct {v5, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object/from16 v29, v5

    :goto_123
    goto :goto_fd

    :cond_124
    new-instance v5, Ljava/lang/Double;

    const-string v6, "-0.0"

    invoke-direct {v5, v6}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object/from16 v29, v5

    goto :goto_123

    :cond_12e
    const/4 v5, 0x1

    aget-boolean v5, v10, v5

    if-nez v5, :cond_149

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v5

    if-eqz v5, :cond_149

    new-instance v29, Ljava/lang/Double;

    const-string v5, "-0.0"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_fd

    :cond_149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    move/from16 v28, v0

    :goto_14f
    rem-int/lit8 v5, v28, 0xa

    if-nez v5, :cond_161

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    iget v6, v5, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    div-int/lit8 v28, v28, 0xa

    goto :goto_14f

    :cond_161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    move v5, v0

    if-nez v5, :cond_204

    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_204

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DigitList;->isIntegral()Z

    move-result v5

    if-eqz v5, :cond_204

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    iget v5, v5, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    const/16 v6, 0xc

    if-ge v5, v6, :cond_1e0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    iget v5, v5, Lcom/ibm/icu/text/DigitList;->count:I

    if-lez v5, :cond_1d5

    const/16 v30, 0x0

    :goto_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    iget v5, v5, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_1b6

    const-wide/16 v5, 0xa

    mul-long v5, v5, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v7, v0

    iget-object v7, v7, Lcom/ibm/icu/text/DigitList;->digits:[B

    add-int/lit8 v31, v30, 0x1

    aget-byte v7, v7, v30

    int-to-char v7, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x30

    sub-long v26, v5, v7

    move/from16 v30, v31

    goto :goto_191

    :cond_1b6
    :goto_1b6
    add-int/lit8 v31, v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    iget v5, v5, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_1cb

    const-wide/16 v5, 0xa

    mul-long v26, v26, v5

    move/from16 v30, v31

    goto :goto_1b6

    :cond_1cb
    const/4 v5, 0x1

    aget-boolean v5, v10, v5

    if-nez v5, :cond_1d5

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    :cond_1d5
    new-instance v29, Ljava/lang/Long;

    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto/16 :goto_fd

    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    const/4 v6, 0x1

    aget-boolean v6, v10, v6

    invoke-virtual {v5, v6}, Lcom/ibm/icu/text/DigitList;->getBigInteger(Z)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0x40

    if-ge v5, v6, :cond_201

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v29, v5

    :goto_1ff
    goto/16 :goto_fd

    :cond_201
    move-object/from16 v29, v24

    goto :goto_1ff

    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object v5, v0

    const/4 v6, 0x1

    aget-boolean v6, v10, v6

    invoke-virtual {v5, v6}, Lcom/ibm/icu/text/DigitList;->getBigDecimalICU(Z)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v24

    move-object/from16 v29, v24

    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-eq v0, v1, :cond_fd

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide v5, v0

    invoke-static {v5, v6}, Lcom/ibm/icu/math/BigDecimal;->valueOf(J)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    move-object v6, v0

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v29

    goto/16 :goto_fd

    :cond_22f
    move-object/from16 v5, v29

    goto/16 :goto_88
.end method

.method private parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;Z[Lcom/ibm/icu/util/Currency;[Z)Z
    .registers 31

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    move v3, v0

    if-nez v3, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->setupCurrencyAffixForAllPatterns()V

    const/4 v3, 0x3

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    :goto_27
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    :cond_2d
    move/from16 v20, v21

    const/16 v19, -0x1

    const/16 v24, 0x0

    const/4 v3, 0x3

    new-array v8, v3, [Z

    new-instance v5, Ljava/text/ParsePosition;

    move-object v0, v5

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v6, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v6}, Lcom/ibm/icu/text/DigitList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    move v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_ed

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/ibm/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/DigitList;Z[Z[Lcom/ibm/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v16

    :goto_6b
    if-eqz v16, :cond_10f

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-le v0, v1, :cond_81

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v20

    move-object/from16 v24, v8

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    :cond_81
    :goto_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8a
    :goto_8a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;

    const/4 v3, 0x3

    new-array v8, v3, [Z

    new-instance v5, Ljava/text/ParsePosition;

    move-object v0, v5

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v6, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v6}, Lcom/ibm/icu/text/DigitList;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->getNegPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->getNegSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->getPosPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->getPosSuffix()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;->getPatternType()I

    move-result v14

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/ibm/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/DigitList;Z[Z[Lcom/ibm/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_115

    const/16 v16, 0x1

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-le v0, v1, :cond_8a

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v20

    move-object/from16 v24, v8

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    goto :goto_8a

    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    goto/16 :goto_27

    :cond_ed
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/ibm/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/DigitList;Z[Z[Lcom/ibm/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v16

    goto/16 :goto_6b

    :cond_10f
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v19

    goto/16 :goto_81

    :cond_115
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_124

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    move/from16 v19, v3

    :cond_124
    goto/16 :goto_8a

    :cond_126
    const/4 v3, 0x3

    new-array v8, v3, [Z

    new-instance v5, Ljava/text/ParsePosition;

    move-object v0, v5

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v6, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v6}, Lcom/ibm/icu/text/DigitList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v23, v0

    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/ibm/icu/text/DecimalFormat;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/DigitList;Z[Z[Lcom/ibm/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    if-eqz v22, :cond_18a

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-le v0, v1, :cond_17e

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v20

    move-object/from16 v24, v8

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    :cond_17e
    const/16 v16, 0x1

    :goto_180
    if-nez v16, :cond_19a

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_189
    return v16

    :cond_18a
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_199

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    move/from16 v19, v3

    :cond_199
    goto :goto_180

    :cond_19a
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v3, -0x1

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/16 v17, 0x0

    :goto_1aa
    const/4 v3, 0x3

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_189

    aget-boolean v3, v24, v17

    aput-boolean v3, p5, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_1aa
.end method

.method private patternError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private precision(Z)I
    .registers 4

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a

    :cond_19
    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    goto :goto_a

    :cond_1d
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    goto :goto_a
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v4, 0x154

    const/16 v1, 0x135

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    if-le v0, v1, :cond_12

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    :cond_12
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    if-le v0, v4, :cond_1b

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_1b
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3b

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setInternalRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingDouble()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    iput v2, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3b

    iput-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    :cond_3b
    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    if-ge v0, v3, :cond_42

    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    :cond_42
    iput v3, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    new-instance v0, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v0}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setInternalRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingDouble()V

    :cond_5c
    return-void
.end method

.method private static round(DDDIZ)D
    .registers 14

    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_33

    div-double v0, p0, p2

    move-wide v2, v0

    :goto_9
    packed-switch p6, :pswitch_data_ca

    :pswitch_c
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    sub-double v0, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    packed-switch p6, :pswitch_data_de

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid rounding mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    mul-double v0, p0, p4

    move-wide v2, v0

    goto :goto_9

    :pswitch_37
    if-eqz p7, :cond_4b

    sget-wide p0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_40
    move-wide p6, p0

    :goto_41
    const-wide/16 p0, 0x0

    cmpl-double p0, p4, p0

    if-nez p0, :cond_c6

    mul-double p0, p6, p2

    :goto_49
    move-wide p2, p6

    :goto_4a
    return-wide p0

    :cond_4b
    sget-wide p0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    sub-double p0, v2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_40

    :pswitch_54
    if-eqz p7, :cond_60

    sget-wide p0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    sub-double p0, v2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :goto_5e
    move-wide p6, p0

    goto :goto_41

    :cond_60
    sget-wide p0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    goto :goto_5e

    :pswitch_68
    sget-wide p0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    move-wide p6, p0

    goto :goto_41

    :pswitch_71
    sget-wide p0, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    sub-double p0, v2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    move-wide p6, p0

    goto :goto_41

    :pswitch_7b
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    cmpl-double p2, v2, p2

    if-eqz p2, :cond_8b

    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Rounding necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    move-wide p2, v2

    goto :goto_4a

    :pswitch_8d
    sget-wide p6, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p6, v2

    cmpg-double p6, p6, v0

    if-gez p6, :cond_97

    move-wide p0, v4

    move-wide p6, p0

    goto :goto_41

    :cond_97
    sget-wide p6, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p6, v0

    cmpg-double p6, p6, v2

    if-gez p6, :cond_a1

    move-wide p0, p0

    move-wide p6, p0

    goto :goto_41

    :cond_a1
    const-wide/high16 p6, 0x4000

    div-double p6, v4, p6

    invoke-static {p6, p7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double p6, p6, v0

    if-nez p6, :cond_ae

    move-wide p0, v4

    :cond_ae
    move-wide p6, p0

    goto :goto_41

    :pswitch_b0
    sget-wide p6, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p6, v0

    cmpg-double p6, v2, p6

    if-gtz p6, :cond_b8

    move-wide p0, v4

    :cond_b8
    move-wide p6, p0

    goto :goto_41

    :pswitch_ba
    sget-wide p6, Lcom/ibm/icu/text/DecimalFormat;->epsilon:D

    add-double/2addr p6, v2

    cmpg-double p6, v0, p6

    if-gtz p6, :cond_c4

    :goto_c1
    move-wide p6, p0

    goto/16 :goto_41

    :cond_c4
    move-wide p0, v4

    goto :goto_c1

    :cond_c6
    div-double p0, p6, p4

    goto :goto_49

    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_71
        :pswitch_68
        :pswitch_37
        :pswitch_54
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_7b
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x4
        :pswitch_ba
        :pswitch_b0
        :pswitch_8d
    .end packed-switch
.end method

.method private setCurrencyForSymbols()V
    .registers 4

    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    :goto_38
    return-void

    :cond_39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    goto :goto_38
.end method

.method private setInternalRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrement:Ljava/math/BigDecimal;

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_5
.end method

.method private setRoundingDouble()V
    .registers 4

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    if-nez v0, :cond_b

    iput-wide v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {v0}, Lcom/ibm/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    sget-object v0, Lcom/ibm/icu/math/BigDecimal;->ONE:Lcom/ibm/icu/math/BigDecimal;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingDoubleReciprocal(D)V

    goto :goto_a
.end method

.method private setRoundingDoubleReciprocal(D)V
    .registers 7

    invoke-static {p1, p2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    iget-wide v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e112e0be826d695L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1b

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    :cond_1b
    return-void
.end method

.method private setupCurrencyAffixForAllPatterns()V
    .registers 12

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    if-nez v1, :cond_11

    new-instance v1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    :cond_11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    iget-object v10, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->getPattern(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    new-instance v0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralPatternIterator()Ljava/util/Iterator;

    move-result-object v8

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :cond_47
    :goto_47
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1, v9}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_47

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v6, v1}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    new-instance v0, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_7c
    iput-object v10, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    return-void
.end method

.method private final skipPadding(Ljava/lang/String;I)I
    .registers 5

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_11

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    if-ne v0, v1, :cond_11

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_11
    return p2
.end method

.method private static skipRuleWhiteSpace(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_10

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    return p1

    :cond_11
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private static skipUWhiteSpace(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_10

    invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    return p1

    :cond_11
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .registers 15

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/CurrencyPluralInfo;->select(D)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/DecimalFormat;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_15
.end method

.method private subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .registers 14

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/CurrencyPluralInfo;->select(D)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/DecimalFormat;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_16
.end method

.method private subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .registers 14

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/ibm/icu/text/DecimalFormat;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    :cond_17
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixAdjustWidth(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method private subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .registers 46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v35

    const/16 v37, 0x30

    sub-int v36, v35, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v37, v0

    if-lez v37, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparator()C

    move-result v37

    move/from16 v17, v37

    :goto_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move/from16 v37, v0

    if-lez v37, :cond_1a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v37

    move/from16 v7, v37

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v37

    if-eqz v37, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    :cond_5c
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v37

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    move-result v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v37, v0

    if-eqz v37, :cond_4b8

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    if-nez v37, :cond_1b5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/16 v37, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_8e
    :goto_8e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    const/16 v20, -0x1

    const/4 v15, -0x1

    const/16 v24, 0x0

    if-eqz v34, :cond_205

    const/16 v25, 0x1

    move/from16 v22, v25

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v37

    const/16 v38, 0x1

    sub-int v24, v37, v38

    :cond_a5
    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move v14, v0

    const/16 v37, 0x1

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_22f

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_22f

    if-lez v14, :cond_225

    const/16 v37, 0x1

    sub-int v37, v14, v37

    div-int v37, v37, v22

    move/from16 v14, v37

    :goto_c8
    mul-int v14, v14, v22

    :goto_ca
    add-int v27, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v37

    if-eqz v37, :cond_23c

    move/from16 v21, v25

    :goto_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-le v0, v1, :cond_ee

    move/from16 v33, v27

    :cond_ee
    move/from16 v0, v21

    move/from16 v1, v33

    if-le v0, v1, :cond_f6

    move/from16 v33, v21

    :cond_f6
    const/16 v18, 0x0

    :goto_f8
    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_284

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_167

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    if-nez v37, :cond_24e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_115
    :goto_115
    if-eqz p5, :cond_12c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v19

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_12c
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_150

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    const/16 v38, 0x1

    sub-int v8, v37, v38

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v8

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    :cond_150
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_267

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_167
    :goto_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_280

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/ibm/icu/text/DigitList;->digits:[B

    move-object/from16 v37, v0

    aget-byte v37, v37, v18

    add-int v37, v37, v36

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    :goto_18e
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_f8

    :cond_199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v37

    move/from16 v17, v37

    goto/16 :goto_22

    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v37

    move/from16 v7, v37

    goto/16 :goto_36

    :cond_1b5
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1cc

    const/16 v37, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_8e

    :cond_1cc
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_1ee

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/16 v37, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_8e

    :cond_1ee
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_8e

    const/16 v37, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_8e

    :cond_205
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v24

    const/16 v37, 0x8

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_21b

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_21b

    move/from16 v22, v25

    :cond_21b
    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_a5

    const/16 v25, 0x1

    goto/16 :goto_a5

    :cond_225
    div-int v37, v14, v22

    const/16 v38, 0x1

    sub-int v37, v37, v38

    move/from16 v14, v37

    goto/16 :goto_c8

    :cond_22f
    if-gtz v25, :cond_233

    if-lez v24, :cond_239

    :cond_233
    move/from16 v37, v25

    :goto_235
    sub-int v14, v14, v37

    goto/16 :goto_ca

    :cond_239
    const/16 v37, 0x1

    goto :goto_235

    :cond_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v37, v0

    sub-int v37, v37, v14

    move/from16 v21, v37

    goto/16 :goto_da

    :cond_24e
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_115

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_115

    :cond_267
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_167

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_167

    :cond_280
    move/from16 v37, v35

    goto/16 :goto_18e

    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v37

    if-eqz v37, :cond_299

    if-nez v33, :cond_299

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_299
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    if-nez v37, :cond_392

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v37

    if-gez v37, :cond_2b0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2b0
    :goto_2b0
    if-eqz p5, :cond_2d7

    if-gez v20, :cond_2c5

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v19

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_2c5
    if-lez v15, :cond_2d7

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v15

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_30f

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    sub-int v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v39

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_30f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DigitList;->isZero()Z

    move-result v37

    if-eqz v37, :cond_31c

    const/4 v14, 0x0

    :cond_31c
    if-gez v14, :cond_405

    const/16 v37, 0x1

    move/from16 v28, v37

    :goto_322
    if-eqz v28, :cond_40b

    neg-int v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v37

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_351

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    const/16 v39, 0x1

    sub-int v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v39

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_351
    :goto_351
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v37 .. v39}, Lcom/ibm/icu/text/DigitList;->set(J)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    move v12, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v37, v0

    if-eqz v37, :cond_377

    const/16 v37, 0x1

    move v0, v12

    move/from16 v1, v37

    if-ge v0, v1, :cond_377

    const/4 v12, 0x1

    :cond_377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v18, v0

    :goto_383
    move/from16 v0, v18

    move v1, v12

    if-ge v0, v1, :cond_440

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v18, v18, 0x1

    goto :goto_383

    :cond_392
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3bc

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v37

    if-gez v37, :cond_3af

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_3af
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_2b0

    :cond_3bc
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_3db

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v37

    if-gez v37, :cond_2b0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_2b0

    :cond_3db
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_2b0

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v37

    if-gez v37, :cond_3f8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_3f8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_2b0

    :cond_405
    const/16 v37, 0x0

    move/from16 v28, v37

    goto/16 :goto_322

    :cond_40b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    move/from16 v37, v0

    if-eqz v37, :cond_351

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v37

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_351

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    const/16 v38, 0x1

    sub-int v13, v37, v38

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v13

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    goto/16 :goto_351

    :cond_440
    const/16 v18, 0x0

    :goto_442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_488

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_485

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/ibm/icu/text/DigitList;->digits:[B

    move-object/from16 v37, v0

    aget-byte v37, v37, v18

    add-int v37, v37, v36

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    :goto_47b
    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v18, v18, 0x1

    goto :goto_442

    :cond_485
    move/from16 v37, v35

    goto :goto_47b

    :cond_488
    if-eqz p5, :cond_49a

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v11

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_49a
    :goto_49a
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v37

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->appendAffix(Ljava/lang/StringBuffer;ZZZ)I

    move-result v32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v29

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object p1

    :cond_4b8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    if-nez v37, :cond_5ba

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_4cd
    :goto_4cd
    const/16 v30, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    move-result v23

    if-nez v34, :cond_4de

    const/16 v26, 0x0

    const v23, 0x7fffffff

    :cond_4de
    if-eqz v34, :cond_5d3

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v5, v37

    :goto_4f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v37, v0

    if-lez v37, :cond_51e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v37, v0

    move v0, v5

    move/from16 v1, v37

    if-ge v0, v1, :cond_51e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move v5, v0

    :cond_51e
    const/4 v9, 0x0

    move v0, v5

    move/from16 v1, v22

    if-le v0, v1, :cond_536

    if-ltz v22, :cond_536

    move/from16 v5, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v37, v0

    sub-int v9, v37, v5

    :cond_536
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v31

    const/16 v37, 0x1

    sub-int v18, v5, v37

    move v10, v9

    :goto_53f
    if-ltz v18, :cond_5e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_5d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move v0, v10

    move/from16 v1, v37

    if-ge v0, v1, :cond_5d7

    move/from16 v0, v30

    move/from16 v1, v23

    if-ge v0, v1, :cond_5d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/ibm/icu/text/DigitList;->digits:[B

    move-object/from16 v37, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v6, v37, v10

    add-int v37, v6, v36

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v30, v30, 0x1

    :goto_58a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    move-result v37

    if-eqz v37, :cond_5b6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_5b6

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    const/16 v39, 0x1

    sub-int v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v39

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_5b6
    add-int/lit8 v18, v18, -0x1

    move v10, v9

    goto :goto_53f

    :cond_5ba
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_4cd

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_4cd

    :cond_5d3
    move/from16 v5, v25

    goto/16 :goto_4f4

    :cond_5d7
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lez v30, :cond_7e9

    add-int/lit8 v30, v30, 0x1

    move v9, v10

    goto :goto_58a

    :cond_5e4
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    if-nez v37, :cond_703

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_5f5
    :goto_5f5
    if-nez p4, :cond_608

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move v0, v10

    move/from16 v1, v37

    if-lt v0, v1, :cond_610

    :cond_608
    if-eqz v34, :cond_71c

    move/from16 v0, v30

    move/from16 v1, v26

    if-ge v0, v1, :cond_722

    :cond_610
    const/16 v37, 0x1

    move/from16 v16, v37

    :goto_614
    if-nez v16, :cond_627

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, v31

    if-ne v0, v1, :cond_627

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_627
    if-eqz p5, :cond_63a

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v19

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_63a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    move/from16 v37, v0

    if-nez v37, :cond_644

    if-eqz v16, :cond_665

    :cond_644
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_665

    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    const/16 v39, 0x1

    sub-int v38, v38, v39

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v39

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    :cond_665
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_728

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    :cond_67c
    :goto_67c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eqz v34, :cond_741

    const v37, 0x7fffffff

    move/from16 v5, v37

    :goto_687
    if-eqz v34, :cond_6a7

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_6a6

    move/from16 v0, v30

    move/from16 v1, v26

    if-lt v0, v1, :cond_6a7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move v0, v10

    move/from16 v1, v37

    if-ne v0, v1, :cond_6a7

    :cond_6a6
    const/4 v5, 0x0

    :cond_6a7
    const/16 v18, 0x0

    :goto_6a9
    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_7e6

    if-nez v34, :cond_749

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v37

    move/from16 v0, v18

    move/from16 v1, v37

    if-lt v0, v1, :cond_749

    if-nez p4, :cond_7e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move v0, v10

    move/from16 v1, v37

    if-lt v0, v1, :cond_749

    move v9, v10

    :cond_6ce
    :goto_6ce
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7cd

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_6e5
    :goto_6e5
    if-eqz p5, :cond_49a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    move/from16 v37, v0

    if-nez v37, :cond_6f1

    if-eqz v16, :cond_49a

    :cond_6f1
    sget-object v37, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v15

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->addAttribute(Lcom/ibm/icu/text/NumberFormat$Field;II)V

    goto/16 :goto_49a

    :cond_703
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_5f5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_5f5

    :cond_71c
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v37

    if-gtz v37, :cond_610

    :cond_722
    const/16 v37, 0x0

    move/from16 v16, v37

    goto/16 :goto_614

    :cond_728
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_67c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto/16 :goto_67c

    :cond_741
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v37

    move/from16 v5, v37

    goto/16 :goto_687

    :cond_749
    const/16 v37, -0x1

    sub-int v37, v37, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move/from16 v38, v0

    const/16 v39, 0x1

    sub-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_770

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v9, v10

    :cond_76b
    add-int/lit8 v18, v18, 0x1

    move v10, v9

    goto/16 :goto_6a9

    :cond_770
    if-nez p4, :cond_7c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move v0, v10

    move/from16 v1, v37

    if-ge v0, v1, :cond_7c4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/ibm/icu/text/DigitList;->digits:[B

    move-object/from16 v37, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v37, v37, v10

    add-int v37, v37, v36

    move/from16 v0, v37

    int-to-char v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7a1
    add-int/lit8 v30, v30, 0x1

    if-eqz v34, :cond_76b

    move/from16 v0, v30

    move/from16 v1, v23

    if-eq v0, v1, :cond_6ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move/from16 v37, v0

    move v0, v9

    move/from16 v1, v37

    if-ne v0, v1, :cond_76b

    move/from16 v0, v30

    move/from16 v1, v26

    if-lt v0, v1, :cond_76b

    goto/16 :goto_6ce

    :cond_7c4
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v9, v10

    goto :goto_7a1

    :cond_7cd
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v37

    sget-object v38, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_6e5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_6e5

    :cond_7e6
    move v9, v10

    goto/16 :goto_6ce

    :cond_7e9
    move v9, v10

    goto/16 :goto_58a
.end method

.method private final subparse(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/DigitList;Z[Z[Lcom/ibm/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 53

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move v5, v0

    if-lez v5, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    if-nez v5, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v7

    :cond_1f
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/ibm/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;I[Lcom/ibm/icu/util/Currency;)I

    move-result v33

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p7

    move/from16 v11, p11

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/ibm/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;I[Lcom/ibm/icu/util/Currency;)I

    move-result v30

    if-ltz v33, :cond_4b

    if-ltz v30, :cond_4b

    move/from16 v0, v33

    move/from16 v1, v30

    if-le v0, v1, :cond_fa

    const/16 v30, -0x1

    :cond_4b
    :goto_4b
    if-ltz v33, :cond_104

    add-int v7, v7, v33

    :goto_4f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move v5, v0

    if-lez v5, :cond_67

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_67

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v7

    :cond_67
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, p5, v5

    if-nez p4, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, p1

    move v1, v7

    move-object v2, v5

    move v3, v6

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v7, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p5, v5

    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move v5, v0

    if-lez v5, :cond_ba

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_ba

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v7

    :cond_ba
    if-ltz v33, :cond_cc

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/ibm/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;I[Lcom/ibm/icu/util/Currency;)I

    move-result v33

    :cond_cc
    if-ltz v30, :cond_de

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p8

    move/from16 v11, p11

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/ibm/icu/text/DecimalFormat;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;I[Lcom/ibm/icu/util/Currency;)I

    move-result v30

    :cond_de
    if-ltz v33, :cond_ea

    if-ltz v30, :cond_ea

    move/from16 v0, v33

    move/from16 v1, v30

    if-le v0, v1, :cond_445

    const/16 v30, -0x1

    :cond_ea
    :goto_ea
    if-ltz v33, :cond_44f

    const/4 v5, 0x1

    :goto_ed
    if-ltz v30, :cond_452

    const/4 v6, 0x1

    :goto_f0
    if-ne v5, v6, :cond_455

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v5, 0x0

    :goto_f9
    return v5

    :cond_fa
    move/from16 v0, v30

    move/from16 v1, v33

    if-le v0, v1, :cond_4b

    const/16 v33, -0x1

    goto/16 :goto_4b

    :cond_104
    if-ltz v30, :cond_10a

    add-int v7, v7, v30

    goto/16 :goto_4f

    :cond_10a
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v5, 0x0

    goto :goto_f9

    :cond_112
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->count:I

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    move v5, v0

    if-lez v5, :cond_20d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v5

    move v15, v5

    :goto_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v22

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v35, 0x0

    const-wide/16 v19, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->isParseStrict()Z

    move-result v39

    const/16 v37, 0x0

    const/16 v26, -0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    move v5, v0

    if-nez v5, :cond_219

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    move v5, v0

    move/from16 v25, v5

    :goto_169
    const/16 v38, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    new-instance v16, Lcom/ibm/icu/text/UnicodeSet;

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->getSimilarDecimals(CZ)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    new-instance v5, Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v39, :cond_222

    sget-object v6, Lcom/ibm/icu/text/DecimalFormat;->strictDefaultGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    :goto_186
    invoke-direct {v5, v6}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v24

    const/16 v18, 0x0

    const/4 v13, -0x1

    :goto_19a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v7, v5, :cond_1df

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sub-int v17, v14, v40

    if-ltz v17, :cond_1b2

    const/16 v5, 0x9

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_1b8

    :cond_1b2
    const/16 v5, 0xa

    invoke-static {v14, v5}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v17

    :cond_1b8
    if-nez v17, :cond_25d

    if-eqz v39, :cond_228

    const/4 v5, -0x1

    if-eq v13, v5, :cond_228

    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_1ce

    sub-int v5, v13, v26

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v25

    if-ne v0, v1, :cond_1dd

    :cond_1ce
    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-ne v0, v1, :cond_226

    sub-int v5, v7, v31

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v25

    if-le v0, v1, :cond_226

    :cond_1dd
    const/16 v37, 0x1

    :cond_1df
    :goto_1df
    const/4 v5, -0x1

    if-eq v13, v5, :cond_1e3

    move v7, v13

    :cond_1e3
    if-nez v34, :cond_1eb

    move/from16 v0, v18

    move-object/from16 v1, p3

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    :cond_1eb
    if-eqz v39, :cond_3e0

    if-eqz v38, :cond_3e0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move v5, v0

    add-int v5, v5, v27

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v6

    if-le v5, v6, :cond_3e0

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v5, 0x0

    goto/16 :goto_f9

    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    move v15, v5

    goto/16 :goto_137

    :cond_219
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    move v5, v0

    move/from16 v25, v5

    goto/16 :goto_169

    :cond_222
    sget-object v6, Lcom/ibm/icu/text/DecimalFormat;->defaultGroupingSeparators:Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_186

    :cond_226
    move/from16 v26, v13

    :cond_228
    const/4 v13, -0x1

    const/16 v35, 0x1

    move-object/from16 v0, p3

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move v5, v0

    if-nez v5, :cond_251

    if-nez v34, :cond_244

    if-eqz v39, :cond_240

    if-nez p4, :cond_240

    if-nez v38, :cond_23c

    add-int/lit8 v28, v7, 0x1

    :cond_23c
    const/16 v38, 0x1

    add-int/lit8 v27, v27, 0x1

    :cond_240
    :goto_240
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19a

    :cond_244
    move-object/from16 v0, p3

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    goto :goto_240

    :cond_251
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v5, v17, 0x30

    int-to-char v5, v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DigitList;->append(I)V

    goto :goto_240

    :cond_25d
    if-lez v17, :cond_29e

    const/16 v5, 0x9

    move/from16 v0, v17

    move v1, v5

    if-gt v0, v1, :cond_29e

    if-eqz v39, :cond_28f

    const/4 v5, -0x1

    if-eq v13, v5, :cond_28f

    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_27a

    sub-int v5, v13, v26

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v25

    if-ne v0, v1, :cond_289

    :cond_27a
    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-ne v0, v1, :cond_28d

    sub-int v5, v7, v31

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v25

    if-le v0, v1, :cond_28d

    :cond_289
    const/16 v37, 0x1

    goto/16 :goto_1df

    :cond_28d
    move/from16 v26, v13

    :cond_28f
    const/16 v35, 0x1

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v5, v17, 0x30

    int-to-char v5, v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DigitList;->append(I)V

    const/4 v13, -0x1

    goto :goto_240

    :cond_29e
    if-nez p4, :cond_2dc

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_2dc

    if-eqz v39, :cond_2c3

    const/4 v5, -0x1

    if-ne v13, v5, :cond_2bf

    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_2c3

    sub-int v5, v7, v26

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    if-eq v5, v6, :cond_2c3

    :cond_2bf
    const/16 v37, 0x1

    goto/16 :goto_1df

    :cond_2c3
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v5

    if-nez v5, :cond_1df

    if-nez v34, :cond_1df

    move/from16 v0, v18

    move-object/from16 v1, p3

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    const/16 v34, 0x1

    move-object/from16 v0, v16

    move v1, v14

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_240

    :cond_2dc
    if-nez p4, :cond_304

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v5

    if-eqz v5, :cond_304

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_304

    if-nez v34, :cond_1df

    if-eqz v39, :cond_2fa

    if-eqz v35, :cond_2f6

    const/4 v5, -0x1

    if-eq v13, v5, :cond_2fa

    :cond_2f6
    const/16 v37, 0x1

    goto/16 :goto_1df

    :cond_2fa
    move-object/from16 v0, v24

    move v1, v14

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    move v13, v7

    goto/16 :goto_240

    :cond_304
    if-nez p4, :cond_1df

    if-nez v36, :cond_1df

    const/4 v5, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v7

    move-object/from16 v2, v22

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_1df

    const/16 v29, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    add-int v32, v7, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_340

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v5

    if-ne v14, v5, :cond_38a

    add-int/lit8 v32, v32, 0x1

    :cond_340
    :goto_340
    new-instance v21, Lcom/ibm/icu/text/DigitList;

    invoke-direct/range {v21 .. v21}, Lcom/ibm/icu/text/DigitList;-><init>()V

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->count:I

    :goto_34b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_39a

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int v17, v5, v40

    if-ltz v17, :cond_367

    const/16 v5, 0x9

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_375

    :cond_367
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v17

    :cond_375
    if-ltz v17, :cond_39a

    const/16 v5, 0x9

    move/from16 v0, v17

    move v1, v5

    if-gt v0, v1, :cond_39a

    add-int/lit8 v5, v17, 0x30

    int-to-char v5, v5

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DigitList;->append(I)V

    add-int/lit8 v32, v32, 0x1

    goto :goto_34b

    :cond_38a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v5

    if-ne v14, v5, :cond_340

    add-int/lit8 v32, v32, 0x1

    const/16 v29, 0x1

    goto :goto_340

    :cond_39a
    move-object/from16 v0, v21

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move v5, v0

    if-lez v5, :cond_1df

    if-eqz v39, :cond_3b0

    const/4 v5, -0x1

    if-ne v13, v5, :cond_3ac

    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_3b0

    :cond_3ac
    const/16 v37, 0x1

    goto/16 :goto_1df

    :cond_3b0
    move-object/from16 v0, v21

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move v5, v0

    const/16 v6, 0xa

    if-le v5, v6, :cond_3ca

    if-eqz v29, :cond_3c5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, p5, v5

    :cond_3bf
    :goto_3bf
    move/from16 v7, v32

    const/16 v36, 0x1

    goto/16 :goto_1df

    :cond_3c5
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p5, v5

    goto :goto_3bf

    :cond_3ca
    move-object/from16 v0, v21

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->count:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    invoke-virtual/range {v21 .. v21}, Lcom/ibm/icu/text/DigitList;->getLong()J

    move-result-wide v19

    if-eqz v29, :cond_3bf

    move-wide/from16 v0, v19

    neg-long v0, v0

    move-wide/from16 v19, v0

    goto :goto_3bf

    :cond_3e0
    if-eqz v39, :cond_3f7

    if-nez v34, :cond_3f7

    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_3f7

    sub-int v5, v7, v26

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    if-eq v5, v6, :cond_3f7

    const/16 v37, 0x1

    :cond_3f7
    if-eqz v37, :cond_409

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v5, 0x0

    goto/16 :goto_f9

    :cond_409
    move-object/from16 v0, p3

    iget v0, v0, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    move v5, v0

    int-to-long v5, v5

    add-long v19, v19, v5

    const-wide/16 v5, -0x3e8

    cmp-long v5, v19, v5

    if-gez v5, :cond_430

    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, p5, v5

    :goto_41b
    if-nez v35, :cond_a2

    if-nez v18, :cond_a2

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v5, 0x0

    goto/16 :goto_f9

    :cond_430
    const-wide/16 v5, 0x3e8

    cmp-long v5, v19, v5

    if-lez v5, :cond_43b

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p5, v5

    goto :goto_41b

    :cond_43b
    move-wide/from16 v0, v19

    long-to-int v0, v0

    move v5, v0

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/ibm/icu/text/DigitList;->decimalAt:I

    goto :goto_41b

    :cond_445
    move/from16 v0, v30

    move/from16 v1, v33

    if-le v0, v1, :cond_ea

    const/16 v33, -0x1

    goto/16 :goto_ea

    :cond_44f
    const/4 v5, 0x0

    goto/16 :goto_ed

    :cond_452
    const/4 v6, 0x0

    goto/16 :goto_f0

    :cond_455
    if-ltz v33, :cond_490

    move/from16 v5, v33

    :goto_459
    add-int/2addr v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move v5, v0

    if-lez v5, :cond_472

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_472

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/DecimalFormat;->skipPadding(Ljava/lang/String;I)I

    move-result v7

    :cond_472
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v5, 0x1

    if-ltz v33, :cond_493

    const/4 v6, 0x1

    :goto_47c
    aput-boolean v6, p5, v5

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move v0, v5

    move/from16 v1, v31

    if-ne v0, v1, :cond_495

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v5, 0x0

    goto/16 :goto_f9

    :cond_490
    move/from16 v5, v30

    goto :goto_459

    :cond_493
    const/4 v6, 0x0

    goto :goto_47c

    :cond_495
    const/4 v5, 0x1

    goto/16 :goto_f9
.end method

.method private toPattern(Z)Ljava/lang/String;
    .registers 29

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v24

    move/from16 v23, v24

    :goto_13
    if-eqz p1, :cond_174

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v24

    move/from16 v6, v24

    :goto_21
    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v22

    if-eqz v22, :cond_37

    if-eqz p1, :cond_17a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v24

    move/from16 v20, v24

    :cond_37
    :goto_37
    if-eqz p1, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v24

    move/from16 v8, v24

    :goto_45
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_186

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    move/from16 v24, v0

    move/from16 v13, v24

    :goto_59
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_190

    new-instance v24, Ljava/lang/StringBuffer;

    const/16 v25, 0x2

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p1, :cond_18c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v25

    :goto_74
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v14, v24

    :goto_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->movePointRight(I)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v18, v24, v9

    :cond_b1
    const/4 v15, 0x0

    :goto_b2
    const/16 v24, 0x2

    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_3b4

    if-nez v13, :cond_c1

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c1
    if-eqz v15, :cond_196

    const/16 v24, 0x1

    :goto_c5
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    const/16 v24, 0x1

    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_e1

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v24

    if-eqz v24, :cond_19a

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v7, v24

    :goto_f9
    if-lez v7, :cond_11d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v24, v0

    if-lez v24, :cond_11d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_11d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    move/from16 v24, v0

    add-int v7, v7, v24

    :cond_11d
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-eqz v22, :cond_1a0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumSignificantDigits()I

    move-result v11

    move v10, v11

    :goto_12b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1a9

    const/16 v24, 0x8

    move v0, v10

    move/from16 v1, v24

    if-le v0, v1, :cond_13b

    const/4 v10, 0x1

    :cond_13b
    :goto_13b
    move v9, v10

    :goto_13c
    if-lez v9, :cond_20b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-nez v24, :cond_157

    if-ge v9, v10, :cond_157

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    move-result v24

    if-eqz v24, :cond_157

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_157
    if-eqz v22, :cond_1cf

    if-lt v11, v9, :cond_1cc

    sub-int v24, v11, v12

    move v0, v9

    move/from16 v1, v24

    if-le v0, v1, :cond_1cc

    move/from16 v24, v20

    :goto_164
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_16b
    add-int/lit8 v9, v9, -0x1

    goto :goto_13c

    :cond_16e
    const/16 v24, 0x30

    move/from16 v23, v24

    goto/16 :goto_13

    :cond_174
    const/16 v24, 0x23

    move/from16 v6, v24

    goto/16 :goto_21

    :cond_17a
    const/16 v24, 0x40

    move/from16 v20, v24

    goto/16 :goto_37

    :cond_180
    const/16 v24, 0x2c

    move/from16 v8, v24

    goto/16 :goto_45

    :cond_186
    const/16 v24, -0x1

    move/from16 v13, v24

    goto/16 :goto_59

    :cond_18c
    const/16 v25, 0x2a

    goto/16 :goto_74

    :cond_190
    const/16 v24, 0x0

    move-object/from16 v14, v24

    goto/16 :goto_88

    :cond_196
    const/16 v24, 0x0

    goto/16 :goto_c5

    :cond_19a
    const/16 v24, 0x0

    move/from16 v7, v24

    goto/16 :goto_f9

    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v10

    goto :goto_12b

    :cond_1a9
    if-eqz v22, :cond_1b5

    add-int/lit8 v24, v7, 0x1

    move v0, v10

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_13b

    :cond_1b5
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v24

    move v0, v7

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    add-int/lit8 v10, v24, 0x1

    goto/16 :goto_13b

    :cond_1cc
    move/from16 v24, v6

    goto :goto_164

    :cond_1cf
    if-eqz v19, :cond_1fb

    sub-int v16, v18, v9

    if-ltz v16, :cond_1fb

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_1fb

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    sub-int v24, v24, v25

    add-int v24, v24, v23

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_16b

    :cond_1fb
    if-gt v9, v12, :cond_208

    move/from16 v24, v23

    :goto_1ff
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_16b

    :cond_208
    move/from16 v24, v6

    goto :goto_1ff

    :cond_20b
    if-nez v22, :cond_283

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v24

    if-gtz v24, :cond_21b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_22e

    :cond_21b
    if-eqz p1, :cond_256

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v24

    :goto_227
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_22e
    move/from16 v16, v18

    const/4 v9, 0x0

    :goto_231
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v24

    move v0, v9

    move/from16 v1, v24

    if-ge v0, v1, :cond_283

    if-eqz v19, :cond_26d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_26d

    if-gez v16, :cond_259

    move/from16 v24, v23

    :goto_24a
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v16, v16, 0x1

    :goto_253
    add-int/lit8 v9, v9, 0x1

    goto :goto_231

    :cond_256
    const/16 v24, 0x2e

    goto :goto_227

    :cond_259
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x30

    sub-int v24, v24, v25

    add-int v24, v24, v23

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    goto :goto_24a

    :cond_26d
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v24

    move v0, v9

    move/from16 v1, v24

    if-ge v0, v1, :cond_280

    move/from16 v24, v23

    :goto_278
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_253

    :cond_280
    move/from16 v24, v6

    goto :goto_278

    :cond_283
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2dc

    if-eqz p1, :cond_2cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_29e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2b9

    if-eqz p1, :cond_2d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v24

    :goto_2b2
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2b9
    const/4 v9, 0x0

    :goto_2ba
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    move/from16 v24, v0

    move v0, v9

    move/from16 v1, v24

    if-ge v0, v1, :cond_2dc

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2ba

    :cond_2cf
    const/16 v24, 0x45

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_29e

    :cond_2d9
    const/16 v24, 0x2b

    goto :goto_2b2

    :cond_2dc
    if-eqz v14, :cond_34e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    move/from16 v24, v0

    if-nez v24, :cond_34e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    sub-int v24, v24, v25

    add-int v24, v24, v21

    if-nez v15, :cond_337

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v25, v25, v26

    :goto_30c
    sub-int v5, v24, v25

    :cond_30e
    :goto_30e
    if-lez v5, :cond_34e

    move-object/from16 v0, v17

    move/from16 v1, v21

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, -0x1

    const/16 v24, 0x1

    move v0, v5

    move/from16 v1, v24

    if-le v0, v1, :cond_30e

    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->isGroupingPosition(I)Z

    move-result v24

    if-eqz v24, :cond_30e

    move-object/from16 v0, v17

    move/from16 v1, v21

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, -0x1

    goto :goto_30e

    :cond_337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v25, v25, v26

    goto :goto_30c

    :cond_34e
    const/16 v24, 0x2

    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_35b

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_35b
    if-eqz v15, :cond_3b9

    const/16 v24, 0x1

    :goto_35f
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    const/16 v24, 0x3

    move v0, v13

    move/from16 v1, v24

    if-ne v0, v1, :cond_37b

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37b
    if-nez v15, :cond_3cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x2d

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3bc

    :cond_3b4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    return-object v24

    :cond_3b9
    const/16 v24, 0x0

    goto :goto_35f

    :cond_3bc
    if-eqz p1, :cond_3d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v24

    :goto_3c8
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3cf
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b2

    :cond_3d3
    const/16 v24, 0x3b

    goto :goto_3c8
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1f

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x27

    if-eq v1, v4, :cond_1d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1d
    move v2, v3

    goto :goto_a

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;Z)V

    return-void
.end method

.method public areSignificantDigitsUsed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DecimalFormat;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v2, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    new-instance v2, Lcom/ibm/icu/text/DigitList;

    invoke-direct {v2}, Lcom/ibm/icu/text/DigitList;-><init>()V

    iput-object v2, v1, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v2}, Lcom/ibm/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    iput-object p0, v1, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    return-object v1

    :catch_26
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_5

    move v2, v4

    :goto_4
    return v2

    :cond_5
    invoke-super {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v4

    goto :goto_4

    :cond_d
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    move-object v1, v0

    iget v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    iget v3, v1, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    if-ne v2, v3, :cond_99

    iget v2, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_44

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/DecimalFormat;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    :cond_44
    iget v2, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    iget v3, v1, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    if-ne v2, v3, :cond_99

    iget-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    iget-byte v3, v1, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    if-ne v2, v3, :cond_99

    iget-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    iget-byte v3, v1, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    if-ne v2, v3, :cond_99

    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    iget-boolean v3, v1, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    if-ne v2, v3, :cond_99

    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    iget-boolean v3, v1, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-ne v2, v3, :cond_99

    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-eqz v2, :cond_6c

    iget-byte v2, p0, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    iget-byte v3, v1, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    if-ne v2, v3, :cond_99

    :cond_6c
    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    iget-boolean v3, v1, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    if-ne v2, v3, :cond_99

    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    if-eqz v2, :cond_82

    iget v2, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    iget v3, v1, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    if-ne v2, v3, :cond_99

    iget v2, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    iget v3, v1, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    if-ne v2, v3, :cond_99

    :cond_82
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iget-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_99
    move v2, v4

    goto/16 :goto_4
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 13

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    if-eq v0, v4, :cond_13

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->valueOf(J)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    :cond_13
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iget v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/ibm/icu/math/BigDecimal;->divide(Lcom/ibm/icu/math/BigDecimal;II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/math/BigDecimal;->multiply(Lcom/ibm/icu/math/BigDecimal;Lcom/ibm/icu/math/MathContext;)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    :cond_27
    iget-object v8, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    monitor-enter v8

    :try_start_2a
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->digitList:Lcom/ibm/icu/text/DigitList;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->precision(Z)I

    move-result v1

    iget-boolean v2, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    if-nez v2, :cond_55

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->areSignificantDigitsUsed()Z

    move-result v2

    if-nez v2, :cond_55

    move v2, v4

    :goto_3c
    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/text/DigitList;->set(Lcom/ibm/icu/math/BigDecimal;IZ)V

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_57

    move v5, v4

    :goto_4a
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/DecimalFormat;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    monitor-exit v8

    return-object v0

    :cond_55
    move v2, v3

    goto :goto_3c

    :cond_57
    move v5, v3

    goto :goto_4a

    :catchall_59
    move-exception v0

    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_2a .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 16

    const/4 v6, 0x1

    const/4 v13, 0x0

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v10, v0

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    instance-of v1, p1, Ljava/math/BigInteger;

    if-eqz v1, :cond_56

    check-cast v10, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v13}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, v10, v1, v2, v6}, Lcom/ibm/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_2a
    :goto_2a
    new-instance v7, Ljava/text/AttributedString;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_34
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_9f

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/FieldPosition;

    invoke-virtual {v11}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    invoke-virtual {v11}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {v11}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    invoke-virtual {v7, v8, v8, v1, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_56
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6b

    check-cast v10, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v13}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, v10, v1, v2, v6}, Lcom/ibm/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_2a

    :cond_6b
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_83

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/text/FieldPosition;

    invoke-direct {v5, v13}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_2a

    :cond_83
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_8b

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    :cond_8b
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/text/FieldPosition;

    invoke-direct {v5, v13}, Ljava/text/FieldPosition;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_2a

    :cond_9f
    invoke-virtual {v7}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    return-object v1
.end method

.method public getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    if-nez v1, :cond_7

    move-object v1, v2

    :goto_6
    return-object v1

    :cond_7
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/CurrencyPluralInfo;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-object v1, p0

    goto :goto_6

    :catch_11
    move-exception v1

    move-object v0, v1

    move-object v1, v2

    goto :goto_6
.end method

.method public getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DecimalFormatSymbols;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-object v1, p0

    :goto_9
    return-object v1

    :catch_a
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected getEffectiveCurrency()Lcom/ibm/icu/util/Currency;
    .registers 3

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public getFormatWidth()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    return v0
.end method

.method public getGroupingSize()I
    .registers 2

    iget-byte v0, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    return v0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    if-nez v1, :cond_7

    move-object v1, v4

    :goto_6
    return-object v1

    :cond_7
    new-instance v1, Ljava/math/MathContext;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {v2}, Lcom/ibm/icu/math/MathContext;->getDigits()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    invoke-virtual {v3}, Lcom/ibm/icu/math/MathContext;->getRoundingMode()I

    move-result v3

    invoke-static {v3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_6

    :catch_1d
    move-exception v1

    move-object v0, v1

    move-object v1, v4

    goto :goto_6
.end method

.method public getMathContextICU()Lcom/ibm/icu/math/MathContext;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    return-object v0
.end method

.method public getMaximumSignificantDigits()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    return v0
.end method

.method public getMinimumExponentDigits()B
    .registers 2

    iget-byte v0, p0, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    return v0
.end method

.method public getMinimumSignificantDigits()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    return v0
.end method

.method public getMultiplier()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getPadCharacter()C
    .registers 2

    iget-char v0, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    return v0
.end method

.method public getPadPosition()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    return v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingIncrementICU:Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {v0}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_5
.end method

.method public getRoundingMode()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    return v0
.end method

.method public getSecondaryGroupingSize()I
    .registers 2

    iget-byte v0, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    return v0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    return v0
.end method

.method public isExponentSignAlwaysShown()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    return v0
.end method

.method public isParseBigDecimal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    return v0
.end method

.method public isScientificNotation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method parseCurrency(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CurrencyAmount;

    return-object p0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    if-eqz p1, :cond_21

    const/4 v3, 0x1

    new-array v1, v3, [Z

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    :cond_21
    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->currencySignCount:I

    if-lez v3, :cond_3c

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getRoundingIncrement()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_38
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method public setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/text/DecimalFormat;->isReadyForParsing:Z

    return-void
.end method

.method public setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .registers 3

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyForSymbols()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->expandAffixes(Ljava/lang/String;)V

    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ibm/icu/text/DecimalFormat;->decimalSeparatorAlwaysShown:Z

    return-void
.end method

.method public setExponentSignAlwaysShown(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ibm/icu/text/DecimalFormat;->exponentSignAlwaysShown:Z

    return-void
.end method

.method public setFormatWidth(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal format width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput p1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatWidth:I

    return-void
.end method

.method public setGroupingSize(I)V
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize:B

    return-void
.end method

.method public setMathContext(Ljava/math/MathContext;)V
    .registers 7

    new-instance v0, Lcom/ibm/icu/math/MathContext;

    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    return-void
.end method

.method public setMathContextICU(Lcom/ibm/icu/math/MathContext;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->mathContext:Lcom/ibm/icu/math/MathContext;

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .registers 3

    const/16 v0, 0x154

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .registers 3

    const/16 v0, 0x135

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    return-void
.end method

.method public setMaximumSignificantDigits(I)V
    .registers 4

    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    const/4 p1, 0x1

    :cond_4
    iget v1, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    iput p1, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    return-void
.end method

.method public setMinimumExponentDigits(B)V
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exponent digits must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-byte p1, p0, Lcom/ibm/icu/text/DecimalFormat;->minExponentDigits:B

    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .registers 3

    const/16 v0, 0x154

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .registers 3

    const/16 v0, 0x135

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/ibm/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    return-void
.end method

.method public setMinimumSignificantDigits(I)V
    .registers 4

    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    const/4 p1, 0x1

    :cond_4
    iget v1, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput p1, p0, Lcom/ibm/icu/text/DecimalFormat;->minSignificantDigits:I

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->maxSignificantDigits:I

    return-void
.end method

.method public setMultiplier(I)V
    .registers 5

    if-nez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad multiplier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput p1, p0, Lcom/ibm/icu/text/DecimalFormat;->multiplier:I

    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negPrefixPattern:Ljava/lang/String;

    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->negativeSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->negSuffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setPadCharacter(C)V
    .registers 2

    iput-char p1, p0, Lcom/ibm/icu/text/DecimalFormat;->pad:C

    return-void
.end method

.method public setPadPosition(I)V
    .registers 4

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal pad position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Lcom/ibm/icu/text/DecimalFormat;->padPosition:I

    return-void
.end method

.method public setParseBigDecimal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ibm/icu/text/DecimalFormat;->parseBigDecimal:Z

    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->positivePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->posPrefixPattern:Ljava/lang/String;

    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->positiveSuffix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->posSuffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setRoundingIncrement(D)V
    .registers 10

    const-wide/high16 v5, 0x3ff0

    const-wide/16 v3, 0x0

    cmpg-double v2, p1, v3

    if-gez v2, :cond_10

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal rounding increment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    iput-wide p1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iput-wide v3, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDoubleReciprocal:D

    cmpl-double v2, p1, v3

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    check-cast v2, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    :goto_1e
    return-void

    :cond_1f
    iput-wide p1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    iget-wide v2, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    cmpg-double v2, v2, v5

    if-gez v2, :cond_2e

    iget-wide v2, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingDouble:D

    div-double v0, v5, v2

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingDoubleReciprocal(D)V

    :cond_2e
    new-instance v2, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DecimalFormat;->setInternalRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    goto :goto_1e
.end method

.method public setRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V
    .registers 5

    if-nez p1, :cond_e

    const/4 v1, 0x0

    move v0, v1

    :goto_4
    if-gez v0, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal rounding increment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    sget-object v1, Lcom/ibm/icu/math/BigDecimal;->ZERO:Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p1, v1}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;)I

    move-result v1

    move v0, v1

    goto :goto_4

    :cond_16
    if-nez v0, :cond_20

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setInternalRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    :goto_1c
    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingDouble()V

    return-void

    :cond_20
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setInternalRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    goto :goto_1c
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)V
    .registers 3

    if-nez p1, :cond_9

    const/4 v0, 0x0

    check-cast v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V

    goto :goto_8
.end method

.method public setRoundingMode(I)V
    .registers 6

    if-ltz p1, :cond_5

    const/4 v0, 0x7

    if-le p1, v0, :cond_1e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rounding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput p1, p0, Lcom/ibm/icu/text/DecimalFormat;->roundingMode:I

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_35

    const-wide/high16 v0, 0x4024

    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(D)V

    :cond_35
    return-void
.end method

.method public setScientificNotation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ibm/icu/text/DecimalFormat;->useExponentialNotation:Z

    return-void
.end method

.method public setSecondaryGroupingSize(I)V
    .registers 3

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/ibm/icu/text/DecimalFormat;->groupingSize2:B

    return-void
.end method

.method public setSignificantDigitsUsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ibm/icu/text/DecimalFormat;->useSignificantDigits:Z

    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public toPattern()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/ibm/icu/text/DecimalFormat;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatPattern:Ljava/lang/String;

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
