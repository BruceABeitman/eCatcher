.class public Lcom/ibm/icu/util/GregorianCalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field private static final EPOCH_YEAR:I = 0x7b2

.field private static final LIMITS:[[I = null

.field private static final MONTH_COUNT:[[I = null

.field private static final serialVersionUID:J = 0x7faacb46ed8a2479L


# instance fields
.field private transient cutoverJulianDay:I

.field private gregorianCutover:J

.field private transient gregorianCutoverYear:I

.field protected transient invertGregorian:Z

.field protected transient isGregorian:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/16 v0, 0xc

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_104

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_110

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_11c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_128

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_134

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_14c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_158

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_164

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_170

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_17c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_188

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_194

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1a0

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_1ac

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1b8

    aput-object v1, v0, v7

    new-array v1, v4, [I

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_1c4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_1d0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_1dc

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1e8

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1f4

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v4, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v4, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    return-void

    nop

    :array_104
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_110
    .array-data 0x4
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_11c
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_128
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data

    :array_134
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
    .end array-data

    :array_140
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
    .end array-data

    :array_14c
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
    .end array-data

    :array_158
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
    .end array-data

    :array_164
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
    .end array-data

    :array_170
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
    .end array-data

    :array_17c
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
    .end array-data

    :array_188
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data

    :array_194
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x63t 0xf1t 0x58t 0x0t
        0xbet 0x15t 0x59t 0x0t
    .end array-data

    :array_1ac
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_1b8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1d0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data

    :array_1dc
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e8
    .array-data 0x4
        0x42t 0xeat 0xa6t 0xfft
        0x42t 0xeat 0xa6t 0xfft
        0x64t 0xf1t 0x58t 0x0t
        0xbft 0x15t 0x59t 0x0t
    .end array-data

    :array_1f4
    .array-data 0x4
        0x43t 0xeat 0xa6t 0xfft
        0x43t 0xeat 0xa6t 0xfft
        0x63t 0xf1t 0x58t 0x0t
        0xbet 0x15t 0x59t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    const/4 v2, 0x1

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 9

    const/4 v2, 0x1

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 10

    const/4 v2, 0x1

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const v0, 0x231519

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    const/16 v0, 0x62e

    iput v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getActualMaximum(I)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_4a

    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    :goto_9
    return v6

    :pswitch_a
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {v0, v8}, Lcom/ibm/icu/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/ibm/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sget-object v6, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v6, v6, v8

    aget v4, v6, v8

    sget-object v6, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v6, v6, v8

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/lit8 v3, v6, 0x1

    :goto_2a
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v3, :cond_48

    add-int v6, v4, v3

    div-int/lit8 v5, v6, 0x2

    invoke-virtual {v0, v8, v5}, Lcom/ibm/icu/util/Calendar;->set(II)V

    invoke-virtual {v0, v8}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v5, :cond_43

    invoke-virtual {v0, v9}, Lcom/ibm/icu/util/Calendar;->get(I)I

    move-result v6

    if-ne v6, v2, :cond_43

    move v4, v5

    goto :goto_2a

    :cond_43
    move v3, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_2a

    :cond_48
    move v6, v4

    goto :goto_9

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .registers 4

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "gregorian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .registers 21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    move v15, v0

    move/from16 v0, p1

    move v1, v15

    if-lt v0, v1, :cond_54

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianMonth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianDayOfMonth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianDayOfYear()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianYear()I

    move-result v7

    :goto_1a
    const/4 v15, 0x2

    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move v1, v15

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v15, 0x6

    move-object/from16 v0, p0

    move v1, v15

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    const/16 v15, 0x13

    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v6, 0x1

    const/4 v15, 0x1

    if-ge v7, v15, :cond_43

    const/4 v6, 0x0

    const/4 v15, 0x1

    sub-int v7, v15, v7

    :cond_43
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->internalSet(II)V

    return-void

    :cond_54
    const v15, 0x1a4450

    sub-int v15, p1, v15

    int-to-long v11, v15

    const-wide/16 v15, 0x4

    mul-long/2addr v15, v11

    const-wide/16 v17, 0x5b8

    add-long v15, v15, v17

    const-wide/16 v17, 0x5b5

    invoke-static/range {v15 .. v18}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v15

    long-to-int v7, v15

    const/4 v15, 0x1

    sub-int v15, v7, v15

    mul-int/lit16 v15, v15, 0x16d

    const/16 v16, 0x1

    sub-int v16, v7, v16

    const/16 v17, 0x4

    invoke-static/range {v16 .. v17}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v16

    add-int v15, v15, v16

    int-to-long v9, v15

    sub-long v15, v11, v9

    long-to-int v5, v15

    and-int/lit8 v15, v7, 0x3

    if-nez v15, :cond_a9

    const/4 v15, 0x1

    move v8, v15

    :goto_83
    const/4 v3, 0x0

    if-eqz v8, :cond_ac

    const/16 v15, 0x3c

    move v13, v15

    :goto_89
    if-lt v5, v13, :cond_8f

    if-eqz v8, :cond_b0

    const/4 v15, 0x1

    move v3, v15

    :cond_8f
    :goto_8f
    add-int v15, v5, v3

    mul-int/lit8 v15, v15, 0xc

    add-int/lit8 v15, v15, 0x6

    div-int/lit16 v14, v15, 0x16f

    sget-object v15, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v15, v15, v14

    if-eqz v8, :cond_b3

    const/16 v16, 0x3

    :goto_9f
    aget v15, v15, v16

    sub-int v15, v5, v15

    add-int/lit8 v4, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1a

    :cond_a9
    const/4 v15, 0x0

    move v8, v15

    goto :goto_83

    :cond_ac
    const/16 v15, 0x3b

    move v13, v15

    goto :goto_89

    :cond_b0
    const/4 v15, 0x2

    move v3, v15

    goto :goto_8f

    :cond_b3
    const/16 v16, 0x2

    goto :goto_9f
.end method

.method protected handleComputeJulianDay(I)I
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ibm/icu/util/GregorianCalendar;->invertGregorian:Z

    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    iget v2, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    if-lt v0, v2, :cond_18

    move v2, v4

    :goto_f
    if-eq v1, v2, :cond_17

    iput-boolean v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->invertGregorian:Z

    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v0

    :cond_17
    return v0

    :cond_18
    move v2, v3

    goto :goto_f
.end method

.method protected handleComputeMonthStart(IIZ)I
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-ltz p2, :cond_8

    const/16 v4, 0xb

    if-le p2, v4, :cond_13

    :cond_8
    new-array v2, v6, [I

    const/16 v4, 0xc

    invoke-static {p2, v4, v2}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v4

    add-int/2addr p1, v4

    aget p2, v2, v7

    :cond_13
    rem-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_65

    move v0, v6

    :goto_18
    sub-int v3, p1, v6

    mul-int/lit16 v4, v3, 0x16d

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x1a444f

    add-int v1, v4, v5

    iget v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v4, :cond_67

    move v4, v6

    :goto_2c
    iput-boolean v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    iget-boolean v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->invertGregorian:Z

    if-eqz v4, :cond_39

    iget-boolean v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    if-nez v4, :cond_69

    move v4, v6

    :goto_37
    iput-boolean v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    :cond_39
    iget-boolean v4, p0, Lcom/ibm/icu/util/GregorianCalendar;->isGregorian:Z

    if-eqz v4, :cond_58

    if-eqz v0, :cond_6b

    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_47

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_6b

    :cond_47
    move v0, v6

    :goto_48
    const/16 v4, 0x190

    invoke-static {v3, v4}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v3, v5}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    :cond_58
    if-eqz p2, :cond_64

    sget-object v4, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v4, v4, p2

    if-eqz v0, :cond_6d

    const/4 v5, 0x3

    :goto_61
    aget v4, v4, v5

    add-int/2addr v1, v4

    :cond_64
    return v1

    :cond_65
    move v0, v7

    goto :goto_18

    :cond_67
    move v4, v7

    goto :goto_2c

    :cond_69
    move v4, v7

    goto :goto_37

    :cond_6b
    move v0, v7

    goto :goto_48

    :cond_6d
    const/4 v5, 0x2

    goto :goto_61
.end method

.method protected handleGetExtendedYear()I
    .registers 7

    const/16 v5, 0x7b2

    const/16 v4, 0x13

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/ibm/icu/util/GregorianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v4, :cond_10

    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, v3, v3}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v2

    sub-int v1, v3, v2

    goto :goto_f

    :cond_1e
    invoke-virtual {p0, v3, v5}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(II)I

    move-result v1

    goto :goto_f
.end method

.method protected handleGetLimit(II)I
    .registers 4

    sget-object v0, Lcom/ibm/icu/util/GregorianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ltz p2, :cond_8

    const/16 v1, 0xb

    if-le p2, v1, :cond_13

    :cond_8
    new-array v0, v4, [I

    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    aget p2, v0, v3

    :cond_13
    sget-object v1, Lcom/ibm/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    aget-object v1, v1, p2

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v4

    :goto_1e
    aget v1, v1, v2

    return v1

    :cond_21
    move v2, v3

    goto :goto_1e
.end method

.method protected handleGetYearLength(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x16d

    goto :goto_8
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Lcom/ibm/icu/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method inDaylightTime()Z
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->complete()V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_c

    :cond_1a
    move v0, v1

    goto :goto_c
.end method

.method public isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z
    .registers 6

    invoke-super {p0, p1}, Lcom/ibm/icu/util/Calendar;->isEquivalentTo(Lcom/ibm/icu/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Lcom/ibm/icu/util/GregorianCalendar;

    iget-wide v2, p1, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isLeapYear(I)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    if-lt p1, v0, :cond_16

    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_14

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_12
    move v0, v2

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_13

    :cond_1c
    move v0, v1

    goto :goto_13
.end method

.method public roll(II)V
    .registers 14

    const/16 v7, 0x34

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_6c

    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;->roll(II)V

    :goto_b
    return-void

    :pswitch_c
    invoke-virtual {p0, v9}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v10}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    if-nez v6, :cond_61

    if-lt v5, v7, :cond_28

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v6

    add-int/2addr v0, v6

    :cond_28
    :goto_28
    add-int/2addr v5, p2

    if-lt v5, v8, :cond_2d

    if-le v5, v7, :cond_5a

    :cond_2d
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v2

    sub-int v6, v2, v0

    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/ibm/icu/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/lit8 v3, v6, 0x7

    if-gez v3, :cond_44

    add-int/lit8 v3, v3, 0x7

    :cond_44
    sub-int v6, v10, v3

    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v6, v7, :cond_4e

    add-int/lit8 v2, v2, -0x7

    :cond_4e
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v2, v6}, Lcom/ibm/icu/util/GregorianCalendar;->weekNumber(II)I

    move-result v4

    add-int v6, v5, v4

    sub-int/2addr v6, v8

    rem-int/2addr v6, v4

    add-int/lit8 v5, v6, 0x1

    :cond_5a
    invoke-virtual {p0, v9, v5}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v8, v1}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    goto :goto_b

    :cond_61
    if-ne v5, v8, :cond_28

    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    move-result v6

    sub-int/2addr v0, v6

    goto :goto_28

    nop

    :pswitch_data_6c
    .packed-switch 0x3
        :pswitch_c
    .end packed-switch
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .registers 7

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    iget-wide v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide v3, -0x28ec76c40e65000L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    const/high16 v1, -0x8000

    iput v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    iput v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    :goto_17
    return-void

    :cond_18
    iget-wide v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide v3, 0x28d47dbbf19b000L

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2b

    const v1, 0x7fffffff

    iput v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    iput v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_17

    :cond_2b
    iget-wide v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutover:J

    const-wide/32 v3, 0x5265c00

    invoke-static {v1, v2, v3, v4}, Lcom/ibm/icu/util/GregorianCalendar;->floorDivide(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->cutoverJulianDay:I

    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {p0}, Lcom/ibm/icu/util/GregorianCalendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_17
.end method
