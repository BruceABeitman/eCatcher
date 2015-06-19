.class public Lcom/ibm/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ABBREVIATED:I = 0x0

.field static final DEFAULT_GMT_HOUR_PATTERNS:[[Ljava/lang/String; = null

.field static final DEFAULT_GMT_PATTERN:Ljava/lang/String; = "GMT{0}"

.field private static DFSCACHE:Lcom/ibm/icu/impl/ICUCache; = null

.field public static final DT_CONTEXT_COUNT:I = 0x2

.field public static final DT_WIDTH_COUNT:I = 0x3

.field public static final FORMAT:I = 0x0

.field public static final NARROW:I = 0x2

.field static final OFFSET_HM:I = 0x1

.field static final OFFSET_HMS:I = 0x0

.field static final OFFSET_NEGATIVE:I = 0x0

.field static final OFFSET_POSITIVE:I = 0x1

.field public static final STANDALONE:I = 0x1

.field public static final WIDE:I = 0x1

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzYeugAZvcLQqV"

.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field ampms:[Ljava/lang/String;

.field eraNames:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field gmtFormat:Ljava/lang/String;

.field gmtHourFormats:[[Ljava/lang/String;

.field localPatternChars:Ljava/lang/String;

.field months:[Ljava/lang/String;

.field narrowEras:[Ljava/lang/String;

.field narrowMonths:[Ljava/lang/String;

.field narrowWeekdays:[Ljava/lang/String;

.field quarters:[Ljava/lang/String;

.field private requestedLocale:Lcom/ibm/icu/util/ULocale;

.field shortMonths:[Ljava/lang/String;

.field shortQuarters:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field standaloneMonths:[Ljava/lang/String;

.field standaloneNarrowMonths:[Ljava/lang/String;

.field standaloneNarrowWeekdays:[Ljava/lang/String;

.field standaloneQuarters:[Ljava/lang/String;

.field standaloneShortMonths:[Ljava/lang/String;

.field standaloneShortQuarters:[Ljava/lang/String;

.field standaloneShortWeekdays:[Ljava/lang/String;

.field standaloneWeekdays:[Ljava/lang/String;

.field private validLocale:Lcom/ibm/icu/util/ULocale;

.field weekdays:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;

.field private transient zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/ICUCache;

    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "-HH:mm:ss"

    aput-object v2, v1, v3

    const-string v2, "-HH:mm"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "+HH:mm:ss"

    aput-object v2, v1, v3

    const-string v2, "+HH:mm"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/text/DateFormatSymbols;->DEFAULT_GMT_HOUR_PATTERNS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/text/DateFormatSymbols;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [[Ljava/lang/String;

    move-object v5, v0

    iput-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [[Ljava/lang/String;

    move-object v7, v0

    iput-object v7, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    iput-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Calendar"

    const-string v6, ""

    invoke-static {v2, v5, v6}, Lcom/ibm/icu/impl/Utility;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 4

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/util/ULocale;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    iput-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    new-instance v1, Lcom/ibm/icu/impl/CalendarData;

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-static {p2}, Lcom/ibm/icu/text/DateFormatSymbols;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/CalendarData;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .registers 4

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private static final arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x0

    if-ne p0, p1, :cond_5

    const/4 v2, 0x1

    :goto_4
    return v2

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v2, v4

    goto :goto_4

    :cond_b
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_11

    move v2, v4

    goto :goto_4

    :cond_11
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_13
    array-length v2, p0

    if-ge v1, v2, :cond_20

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    move v2, v0

    goto :goto_4

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method private final duplicate([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private final duplicate([[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 5

    array-length v2, p1

    new-array v0, v2, [[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
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

.method private static getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 8

    const-string v0, "calendar"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1b

    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    const-string v1, "calendar"

    const-string v2, "calendar"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;[ZZ)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    const-string v0, "calendar"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1b
    return-object v6
.end method

.method public static getDateFormatBundle(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateFormatBundle(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/ibm/icu/text/DateFormatSymbols;
    .registers 1

    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormatSymbols;
    .registers 2

    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormatSymbols;
    .registers 2

    new-instance v0, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initializeGMTFormat(Lcom/ibm/icu/util/ULocale;)V
    .registers 11

    const/4 v8, -0x1

    const-string v3, "gmtFormat"

    invoke-static {p1, v3}, Lcom/ibm/icu/impl/ZoneMeta;->getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    if-nez v3, :cond_11

    const-string v3, "GMT{0}"

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    :cond_11
    :try_start_11
    const-string v3, "hourFormat"

    invoke-static {p1, v3}, Lcom/ibm/icu/impl/ZoneMeta;->getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v8, :cond_b1

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_4a
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_cd

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":ss"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_7d
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_127

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":ss"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_b0
    return-void

    :cond_b1
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    const-string v5, "+HH:mm"

    aput-object v5, v3, v4

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    const-string v5, "-HH:mm"

    aput-object v5, v3, v4
    :try_end_c5
    .catch Ljava/util/MissingResourceException; {:try_start_11 .. :try_end_c5} :catch_c6

    goto :goto_4a

    :catch_c6
    move-exception v3

    move-object v0, v3

    sget-object v3, Lcom/ibm/icu/text/DateFormatSymbols;->DEFAULT_GMT_HOUR_PATTERNS:[[Ljava/lang/String;

    iput-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    goto :goto_b0

    :cond_cd
    :try_start_cd
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_102

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ss"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_7d

    :cond_102
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ss"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_7d

    :cond_127
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_15c

    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ss"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_b0

    :cond_15c
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ss"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_17f
    .catch Ljava/util/MissingResourceException; {:try_start_cd .. :try_end_17f} :catch_c6

    goto/16 :goto_b0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeGMTFormat(Lcom/ibm/icu/util/ULocale;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    :catch_7
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_6

    move v2, v5

    :goto_5
    return v2

    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    goto :goto_5

    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/text/DateFormatSymbols;

    move-object v1, v0

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    move v2, v5

    goto/16 :goto_5

    :cond_eb
    move v2, v4

    goto/16 :goto_5
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEraNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGmtFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    return-object v0
.end method

.method getGmtHourFormat(II)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .registers 3

    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_6
.end method

.method public getMonths()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonths(II)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_24

    :goto_4
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_9
    packed-switch p2, :pswitch_data_2c

    goto :goto_4

    :pswitch_d
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_4

    :pswitch_10
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    packed-switch p2, :pswitch_data_36

    goto :goto_4

    :pswitch_1a
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_4

    :pswitch_1d
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_4

    :pswitch_20
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_4

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public getQuarters(II)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_22

    :goto_4
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_9
    packed-switch p2, :pswitch_data_2a

    goto :goto_4

    :pswitch_d
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    goto :goto_4

    :pswitch_10
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_4

    :pswitch_13
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_15
    packed-switch p2, :pswitch_data_34

    goto :goto_4

    :pswitch_19
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_4

    :pswitch_1c
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_4

    :pswitch_1f
    const/4 v0, 0x0

    goto :goto_4

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_9
        :pswitch_15
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public getShortMonths()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekdays(II)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_24

    :goto_4
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_9
    packed-switch p2, :pswitch_data_2c

    goto :goto_4

    :pswitch_d
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_4

    :pswitch_10
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    packed-switch p2, :pswitch_data_36

    goto :goto_4

    :pswitch_1a
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_4

    :pswitch_1d
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_4

    :pswitch_20
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_4

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method getZoneStringFormat()Lcom/ibm/icu/impl/ZoneStringFormat;
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_17

    new-instance v0, Lcom/ibm/icu/impl/ZoneStringFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;-><init>([[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ZoneStringFormat;

    move-result-object v0

    goto :goto_6
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/ZoneStringFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ZoneStringFormat;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V
    .registers 3

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtFormat:Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->gmtHourFormats:[[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    iget-object v0, p1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/CalendarData;)V
    .registers 22

    const-string v15, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    :try_start_e
    const-string v15, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;
    :try_end_1c
    .catch Ljava/util/MissingResourceException; {:try_start_e .. :try_end_1c} :catch_28d

    :goto_1c
    :try_start_1c
    const-string v15, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;
    :try_end_2a
    .catch Ljava/util/MissingResourceException; {:try_start_1c .. :try_end_2a} :catch_29f

    :goto_2a
    const-string v15, "monthNames"

    const-string v16, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    const-string v15, "monthNames"

    const-string v16, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    :try_start_4e
    const-string v15, "monthNames"

    const-string v16, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;
    :try_end_60
    .catch Ljava/util/MissingResourceException; {:try_start_4e .. :try_end_60} :catch_2b1

    :goto_60
    :try_start_60
    const-string v15, "monthNames"

    const-string v16, "stand-alone"

    const-string v17, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;
    :try_end_76
    .catch Ljava/util/MissingResourceException; {:try_start_60 .. :try_end_76} :catch_2e1

    :goto_76
    :try_start_76
    const-string v15, "monthNames"

    const-string v16, "stand-alone"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;
    :try_end_8c
    .catch Ljava/util/MissingResourceException; {:try_start_76 .. :try_end_8c} :catch_2fb

    :goto_8c
    :try_start_8c
    const-string v15, "monthNames"

    const-string v16, "stand-alone"

    const-string v17, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;
    :try_end_a2
    .catch Ljava/util/MissingResourceException; {:try_start_8c .. :try_end_a2} :catch_315

    :goto_a2
    const-string v15, "dayNames"

    const-string v16, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v7

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v15, "dayNames"

    const-string v16, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v10

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    :try_start_115
    const-string v15, "dayNames"

    const-string v16, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_121
    .catch Ljava/util/MissingResourceException; {:try_start_115 .. :try_end_121} :catch_349

    move-result-object v8

    :goto_122
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v8

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v8

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    :try_start_14f
    const-string v15, "dayNames"

    const-string v16, "stand-alone"

    const-string v17, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_15f
    .catch Ljava/util/MissingResourceException; {:try_start_14f .. :try_end_15f} :catch_36f

    move-result-object v11

    :goto_160
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v11

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    :try_start_18d
    const-string v15, "dayNames"

    const-string v16, "stand-alone"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_19d
    .catch Ljava/util/MissingResourceException; {:try_start_18d .. :try_end_19d} :catch_384

    move-result-object v13

    :goto_19e
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v13

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v13

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    :try_start_1cb
    const-string v15, "dayNames"

    const-string v16, "stand-alone"

    const-string v17, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1db
    .catch Ljava/util/MissingResourceException; {:try_start_1cb .. :try_end_1db} :catch_399

    move-result-object v12

    :goto_1dc
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object v15, v0

    const/16 v16, 0x0

    const-string v17, ""

    aput-object v17, v15, v16

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v12

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v15, "AmPmMarkers"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const-string v15, "quarters"

    const-string v16, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const-string v15, "quarters"

    const-string v16, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    :try_start_23a
    const-string v15, "quarters"

    const-string v16, "stand-alone"

    const-string v17, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;
    :try_end_250
    .catch Ljava/util/MissingResourceException; {:try_start_23a .. :try_end_250} :catch_3c3

    :goto_250
    :try_start_250
    const-string v15, "quarters"

    const-string v16, "stand-alone"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;
    :try_end_266
    .catch Ljava/util/MissingResourceException; {:try_start_250 .. :try_end_266} :catch_3dd

    :goto_266
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeGMTFormat(Lcom/ibm/icu/util/ULocale;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->requestedLocale:Lcom/ibm/icu/util/ULocale;

    const-string v15, "com/ibm/icu/impl/data/icudt42b"

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v9

    check-cast v9, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v15, "GyMdkHmsSEDFwWahKzYeugAZvcLQqV"

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/DateFormatSymbols;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    return-void

    :catch_28d
    move-exception v15

    move-object v5, v15

    const-string v15, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    goto/16 :goto_1c

    :catch_29f
    move-exception v15

    move-object v5, v15

    const-string v15, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    goto/16 :goto_2a

    :catch_2b1
    move-exception v15

    move-object v5, v15

    :try_start_2b3
    const-string v15, "monthNames"

    const-string v16, "stand-alone"

    const-string v17, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;
    :try_end_2c9
    .catch Ljava/util/MissingResourceException; {:try_start_2b3 .. :try_end_2c9} :catch_2cb

    goto/16 :goto_60

    :catch_2cb
    move-exception v15

    move-object v6, v15

    const-string v15, "monthNames"

    const-string v16, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto/16 :goto_60

    :catch_2e1
    move-exception v15

    move-object v5, v15

    const-string v15, "monthNames"

    const-string v16, "format"

    const-string v17, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto/16 :goto_76

    :catch_2fb
    move-exception v15

    move-object v5, v15

    const-string v15, "monthNames"

    const-string v16, "format"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto/16 :goto_8c

    :catch_315
    move-exception v15

    move-object v5, v15

    :try_start_317
    const-string v15, "monthNames"

    const-string v16, "format"

    const-string v17, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;
    :try_end_32d
    .catch Ljava/util/MissingResourceException; {:try_start_317 .. :try_end_32d} :catch_32f

    goto/16 :goto_a2

    :catch_32f
    move-exception v15

    move-object v6, v15

    const-string v15, "monthNames"

    const-string v16, "format"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto/16 :goto_a2

    :catch_349
    move-exception v15

    move-object v5, v15

    :try_start_34b
    const-string v15, "dayNames"

    const-string v16, "stand-alone"

    const-string v17, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_35b
    .catch Ljava/util/MissingResourceException; {:try_start_34b .. :try_end_35b} :catch_35e

    move-result-object v8

    goto/16 :goto_122

    :catch_35e
    move-exception v15

    move-object v6, v15

    const-string v15, "dayNames"

    const-string v16, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_122

    :catch_36f
    move-exception v15

    move-object v5, v15

    const-string v15, "dayNames"

    const-string v16, "format"

    const-string v17, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_160

    :catch_384
    move-exception v15

    move-object v5, v15

    const-string v15, "dayNames"

    const-string v16, "format"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_19e

    :catch_399
    move-exception v15

    move-object v5, v15

    :try_start_39b
    const-string v15, "dayNames"

    const-string v16, "format"

    const-string v17, "narrow"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3ab
    .catch Ljava/util/MissingResourceException; {:try_start_39b .. :try_end_3ab} :catch_3ae

    move-result-object v12

    goto/16 :goto_1dc

    :catch_3ae
    move-exception v15

    move-object v6, v15

    const-string v15, "dayNames"

    const-string v16, "format"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1dc

    :catch_3c3
    move-exception v15

    move-object v5, v15

    const-string v15, "quarters"

    const-string v16, "format"

    const-string v17, "wide"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto/16 :goto_250

    :catch_3dd
    move-exception v15

    move-object v5, v15

    const-string v15, "quarters"

    const-string v16, "format"

    const-string v17, "abbreviated"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto/16 :goto_266
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .registers 8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v3, v2}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols;

    if-nez v1, :cond_39

    new-instance v0, Lcom/ibm/icu/impl/CalendarData;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/CalendarData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/CalendarData;)V

    invoke-virtual {p0}, Lcom/ibm/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormatSymbols;

    sget-object v3, Lcom/ibm/icu/text/DateFormatSymbols;->DFSCACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v3, v2, v1}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_38
    return-void

    :cond_39
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V

    goto :goto_38
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    return-void
.end method

.method public setEraNames([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->validLocale:Lcom/ibm/icu/util/ULocale;

    iput-object p2, p0, Lcom/ibm/icu/text/DateFormatSymbols;->actualLocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    return-void
.end method

.method public setMonths([Ljava/lang/String;II)V
    .registers 5

    packed-switch p2, :pswitch_data_36

    :goto_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_3e

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_3

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_3

    :pswitch_16
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_3

    :pswitch_1d
    packed-switch p3, :pswitch_data_48

    goto :goto_3

    :pswitch_21
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_3

    :pswitch_28
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_3

    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_3

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1d
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
        :pswitch_16
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_21
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method public setQuarters([Ljava/lang/String;II)V
    .registers 5

    packed-switch p2, :pswitch_data_28

    :goto_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_30

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    goto :goto_3

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_3

    :pswitch_16
    packed-switch p3, :pswitch_data_38

    goto :goto_3

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_3

    :pswitch_21
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_3

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_4
        :pswitch_16
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_21
    .end packed-switch
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;II)V
    .registers 5

    packed-switch p2, :pswitch_data_36

    :goto_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_3e

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_3

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_3

    :pswitch_16
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_3

    :pswitch_1d
    packed-switch p3, :pswitch_data_48

    goto :goto_3

    :pswitch_21
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_3

    :pswitch_28
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_3

    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_3

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1d
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_f
        :pswitch_16
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_21
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    new-instance v0, Lcom/ibm/icu/impl/ZoneStringFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ZoneStringFormat;-><init>([[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols;->zsformat:Lcom/ibm/icu/impl/ZoneStringFormat;

    return-void
.end method
