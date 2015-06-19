.class abstract Lcom/ibm/icu/util/CECalendar;
.super Lcom/ibm/icu/util/Calendar;
.source "CECalendar.java"


# static fields
.field private static final LIMITS:[[I = null

.field private static final serialVersionUID:J = -0xddf1b4470f5acbfL


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_9e

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_b6

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_c2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_e6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [I

    fill-array-data v2, :array_f2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v4, [I

    fill-array-data v2, :array_fe

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/CECalendar;->LIMITS:[[I

    return-void

    :array_9e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_aa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x4bt 0x4ct 0x0t
        0x40t 0x4bt 0x4ct 0x0t
    .end array-data

    :array_b6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_c2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    :array_ce
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_da
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data

    :array_e6
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_f2
    .array-data 0x4
        0xc0t 0xb4t 0xb3t 0xfft
        0xc0t 0xb4t 0xb3t 0xfft
        0x40t 0x4bt 0x4ct 0x0t
        0x40t 0x4bt 0x4ct 0x0t
    .end array-data

    :array_fe
    .array-data 0x4
        0xc0t 0xb4t 0xb3t 0xfft
        0xc0t 0xb4t 0xb3t 0xfft
        0x40t 0x4bt 0x4ct 0x0t
        0x40t 0x4bt 0x4ct 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(III)V
    .registers 6

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/util/CECalendar;->set(III)V

    return-void
.end method

.method protected constructor <init>(IIIIII)V
    .registers 9

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    invoke-virtual/range {p0 .. p6}, Lcom/ibm/icu/util/CECalendar;->set(IIIIII)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CECalendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CECalendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;)V
    .registers 4

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/Calendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CECalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .registers 3

    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public static ceToJD(JIII)I
    .registers 9

    if-ltz p2, :cond_1f

    div-int/lit8 v0, p2, 0xd

    int-to-long v0, v0

    add-long/2addr p0, v0

    rem-int/lit8 p2, p2, 0xd

    :goto_8
    int-to-long v0, p4

    const-wide/16 v2, 0x16d

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    invoke-static {p0, p1, v2, v3}, Lcom/ibm/icu/util/CECalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, p2, 0x1e

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    div-int/lit8 v0, p2, 0xd

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr p0, v0

    rem-int/lit8 v0, p2, 0xd

    add-int/lit8 p2, v0, 0xc

    goto :goto_8
.end method

.method public static jdToCE(II[I)V
    .registers 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v2, v7, [I

    sub-int v3, p0, p1

    const/16 v4, 0x5b5

    invoke-static {v3, v4, v2}, Lcom/ibm/icu/util/CECalendar;->floorDivide(II[I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x4

    aget v4, v2, v6

    div-int/lit16 v4, v4, 0x16d

    aget v5, v2, v6

    div-int/lit16 v5, v5, 0x5b4

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, p2, v6

    aget v3, v2, v6

    const/16 v4, 0x5b4

    if-ne v3, v4, :cond_2f

    const/16 v3, 0x16d

    move v1, v3

    :goto_23
    div-int/lit8 v3, v1, 0x1e

    aput v3, p2, v7

    const/4 v3, 0x2

    rem-int/lit8 v4, v1, 0x1e

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v3

    return-void

    :cond_2f
    aget v3, v2, v6

    rem-int/lit16 v3, v3, 0x16d

    move v1, v3

    goto :goto_23
.end method


# virtual methods
.method protected abstract getJDEpochOffset()I
.end method

.method protected handleComputeMonthStart(IIZ)I
    .registers 8

    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/util/CECalendar;->getJDEpochOffset()I

    move-result v3

    invoke-static {v0, v1, p2, v2, v3}, Lcom/ibm/icu/util/CECalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method

.method protected handleGetLimit(II)I
    .registers 4

    sget-object v0, Lcom/ibm/icu/util/CECalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method
