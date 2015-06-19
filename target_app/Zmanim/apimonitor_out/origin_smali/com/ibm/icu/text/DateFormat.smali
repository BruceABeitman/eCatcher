.class public abstract Lcom/ibm/icu/text/DateFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateFormat$Field;
    }
.end annotation


# static fields
.field public static final ABBR_MONTH:Ljava/lang/String; = "MMM"

.field public static final ABBR_MONTH_DAY:Ljava/lang/String; = "MMMd"

.field public static final ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMEd"

.field public static final ABBR_STANDALONE_MONTH:Ljava/lang/String; = "LLL"

.field public static final AM_PM_FIELD:I = 0xe

.field public static final DATE_FIELD:I = 0x3

.field public static final DAY:Ljava/lang/String; = "d"

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final DOW_LOCAL_FIELD:I = 0x13

.field public static final ERA_FIELD:I = 0x0

.field public static final EXTENDED_YEAR_FIELD:I = 0x14

.field public static final FIELD_COUNT:I = 0x1e

.field public static final FRACTIONAL_SECOND_FIELD:I = 0x8

.field public static final FULL:I = 0x0

.field public static final HOUR:Ljava/lang/String; = "h"

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR24_MINUTE:Ljava/lang/String; = "Hm"

.field public static final HOUR24_MINUTE_SECOND:Ljava/lang/String; = "Hms"

.field public static final HOUR_GENERIC_TZ:Ljava/lang/String; = "hv"

.field public static final HOUR_MINUTE:Ljava/lang/String; = "hm"

.field public static final HOUR_MINUTE_GENERIC_TZ:Ljava/lang/String; = "hmv"

.field public static final HOUR_MINUTE_SECOND:Ljava/lang/String; = "hms"

.field public static final HOUR_MINUTE_TZ:Ljava/lang/String; = "hmz"

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final HOUR_TZ:Ljava/lang/String; = "hz"

.field public static final JULIAN_DAY_FIELD:I = 0x15

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECONDS_IN_DAY_FIELD:I = 0x16

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MINUTE_SECOND:Ljava/lang/String; = "ms"

.field public static final MONTH:Ljava/lang/String; = "MMMM"

.field public static final MONTH_DAY:Ljava/lang/String; = "MMMMd"

.field public static final MONTH_FIELD:I = 0x2

.field public static final MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MMMMEEEEd"

.field public static final NONE:I = -0x1

.field public static final NUM_MONTH:Ljava/lang/String; = "M"

.field public static final NUM_MONTH_DAY:Ljava/lang/String; = "Md"

.field public static final NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "MEd"

.field public static final QUARTER_FIELD:I = 0x1b

.field public static final RELATIVE:I = 0x80

.field public static final RELATIVE_DEFAULT:I = 0x82

.field public static final RELATIVE_FULL:I = 0x80

.field public static final RELATIVE_LONG:I = 0x81

.field public static final RELATIVE_MEDIUM:I = 0x82

.field public static final RELATIVE_SHORT:I = 0x83

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final STANDALONE_DAY_FIELD:I = 0x19

.field public static final STANDALONE_MONTH:Ljava/lang/String; = "LLLL"

.field public static final STANDALONE_MONTH_FIELD:I = 0x1a

.field public static final STANDALONE_QUARTER_FIELD:I = 0x1c

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final TIMEZONE_GENERIC_FIELD:I = 0x18

.field public static final TIMEZONE_RFC_FIELD:I = 0x17

.field public static final TIMEZONE_SPECIAL_FIELD:I = 0x1d

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR:Ljava/lang/String; = "y"

.field public static final YEAR_ABBR_MONTH:Ljava/lang/String; = "yMMM"

.field public static final YEAR_ABBR_MONTH_DAY:Ljava/lang/String; = "yMMMd"

.field public static final YEAR_ABBR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMEd"

.field public static final YEAR_ABBR_QUARTER:Ljava/lang/String; = "yQ"

.field public static final YEAR_FIELD:I = 0x1

.field public static final YEAR_MONTH:Ljava/lang/String; = "yMMMM"

.field public static final YEAR_MONTH_DAY:Ljava/lang/String; = "yMMMMd"

.field public static final YEAR_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMMMMEEEEd"

.field public static final YEAR_NUM_MONTH:Ljava/lang/String; = "yM"

.field public static final YEAR_NUM_MONTH_DAY:Ljava/lang/String; = "yMd"

.field public static final YEAR_NUM_MONTH_WEEKDAY_DAY:Ljava/lang/String; = "yMEd"

.field public static final YEAR_QUARTER:Ljava/lang/String; = "yQQQ"

.field public static final YEAR_WOY_FIELD:I = 0x12

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field protected calendar:Lcom/ibm/icu/util/Calendar;

.field protected numberFormat:Lcom/ibm/icu/text/NumberFormat;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    return-void
.end method

.method private static get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 10

    const/4 v6, 0x3

    const/4 v5, -0x1

    if-eq p1, v5, :cond_8

    and-int/lit16 v4, p1, 0x80

    if-gtz v4, :cond_e

    :cond_8
    if-eq p0, v5, :cond_15

    and-int/lit16 v4, p0, 0x80

    if-lez v4, :cond_15

    :cond_e
    new-instance v2, Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {v2, p1, p0, p2}, Lcom/ibm/icu/impl/RelativeDateFormat;-><init>(IILcom/ibm/icu/util/ULocale;)V

    move-object v4, v2

    :goto_14
    return-object v4

    :cond_15
    if-lt p1, v5, :cond_19

    if-le p1, v6, :cond_32

    :cond_19
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal time style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_32
    if-lt p0, v5, :cond_36

    if-le p0, v6, :cond_4f

    :cond_36
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal date style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4f
    :try_start_4f
    invoke-static {p2}, Lcom/ibm/icu/util/Calendar;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v3

    sget-object v4, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v0, v4}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v0, v5}, Lcom/ibm/icu/util/Calendar;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ibm/icu/text/DateFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    :try_end_66
    .catch Ljava/util/MissingResourceException; {:try_start_4f .. :try_end_66} :catch_68

    move-object v4, v3

    goto :goto_14

    :catch_68
    move-exception v4

    move-object v1, v4

    new-instance v4, Lcom/ibm/icu/text/SimpleDateFormat;

    const-string v5, "M/d/yy h:mm a"

    invoke-direct {v4, v5}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_14
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

.method public static final getDateInstance()Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(I)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(Lcom/ibm/icu/util/Calendar;I)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(Lcom/ibm/icu/util/Calendar;ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 5

    const/4 v0, -0x1

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance()Lcom/ibm/icu/text/DateFormat;
    .registers 2

    const/4 v1, 0x2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v1, v1, v0}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(II)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(Lcom/ibm/icu/util/Calendar;II)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/util/Calendar;->getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 5

    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/util/Calendar;->getDateTimeFormat(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/ibm/icu/text/DateFormat;
    .registers 1

    const/4 v0, 0x3

    invoke-static {v0, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(II)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/Calendar;)Lcom/ibm/icu/text/DateFormat;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getInstance(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, 0x3

    invoke-static {p0, v0, v0, p1}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v1, v1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPatternInstance(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 6

    invoke-static {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-direct {v1, v0, p2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/SimpleDateFormat;->setCalendar(Lcom/ibm/icu/util/Calendar;)V

    return-object v1
.end method

.method public static final getPatternInstance(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getPatternInstance(Lcom/ibm/icu/util/Calendar;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPatternInstance(Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;
    .registers 2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getPatternInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 5

    invoke-static {p1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateTimePatternGenerator;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-direct {v2, v0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-object v2
.end method

.method public static final getPatternInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/DateFormat;->getPatternInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance()Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(I)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/ibm/icu/text/DateFormat;->get(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(Lcom/ibm/icu/util/Calendar;I)Lcom/ibm/icu/text/DateFormat;
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(Lcom/ibm/icu/util/Calendar;ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;
    .registers 4

    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(Lcom/ibm/icu/util/Calendar;ILjava/util/Locale;)Lcom/ibm/icu/text/DateFormat;
    .registers 5

    const/4 v0, -0x1

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(Lcom/ibm/icu/util/Calendar;IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DateFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v1}, Lcom/ibm/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Calendar;

    iput-object v1, v0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    iget-object v1, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/NumberFormat;

    iput-object p0, v0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
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

    check-cast v0, Lcom/ibm/icu/text/DateFormat;

    move-object v1, v0

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    iget-object v3, v1, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v5

    goto :goto_5

    :cond_2e
    move v2, v4

    goto :goto_5
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7

    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    :cond_16
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot format given Object ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as a Date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/DateFormat;->format(Lcom/ibm/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCalendar()Lcom/ibm/icu/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    return-object v0
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method public getTimeZone()Lcom/ibm/icu/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_33

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_33
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v4}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v3

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v4}, Lcom/ibm/icu/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p0, p1, v4, p2}, Lcom/ibm/icu/text/DateFormat;->parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eq v4, v2, :cond_21

    :try_start_1b
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v4}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_20} :catch_27

    move-result-object v1

    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    return-object v1

    :catch_27
    move-exception v4

    move-object v0, v4

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_21
.end method

.method public abstract parse(Ljava/lang/String;Lcom/ibm/icu/util/Calendar;Ljava/text/ParsePosition;)V
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCalendar(Lcom/ibm/icu/util/Calendar;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    return-void
.end method

.method public setLenient(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    return-void
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
    .registers 4

    iput-object p1, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    return-void
.end method

.method public setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormat;->calendar:Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Calendar;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    return-void
.end method
