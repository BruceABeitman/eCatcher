.class public abstract Lcom/ibm/icu/util/TimeZone;
.super Ljava/lang/Object;
.source "TimeZone.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LONG:I = 0x1

.field private static final LONG_GENERIC:I = 0x3

.field public static final SHORT:I = 0x0

.field public static final TIMEZONE_ICU:I = 0x0

.field public static final TIMEZONE_JDK:I = 0x1

.field private static TZDATA_VERSION:Ljava/lang/String; = null

.field private static final TZIMPL_CONFIG_ICU:Ljava/lang/String; = "ICU"

.field private static final TZIMPL_CONFIG_JDK:Ljava/lang/String; = "JDK"

.field private static final TZIMPL_CONFIG_KEY:Ljava/lang/String; = "com.ibm.icu.util.TimeZone.DefaultTimeZoneType"

.field private static TZ_IMPL:I = 0x0

.field private static cachedLocaleData:Lcom/ibm/icu/impl/ICUCache; = null

.field private static defaultZone:Lcom/ibm/icu/util/TimeZone; = null

.field private static final serialVersionUID:J = -0xa5690eb38a351bfL


# instance fields
.field private ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v1, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v1}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/TimeZone;->cachedLocaleData:Lcom/ibm/icu/impl/ICUCache;

    sput-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    sput-object v2, Lcom/ibm/icu/util/TimeZone;->TZDATA_VERSION:Ljava/lang/String;

    const/4 v1, 0x0

    sput v1, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const-string v1, "com.ibm.icu.util.TimeZone.DefaultTimeZoneType"

    const-string v2, "ICU"

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    sput v1, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    :cond_22
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized _getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 26

    monitor-enter p0

    if-nez p3, :cond_e

    :try_start_3
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "locale is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_e
    :try_start_e
    sget-object v6, Lcom/ibm/icu/util/TimeZone;->cachedLocaleData:Lcom/ibm/icu/impl/ICUCache;

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/ibm/icu/text/SimpleDateFormat;

    if-nez v19, :cond_30

    new-instance v19, Lcom/ibm/icu/text/SimpleDateFormat;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    sget-object v6, Lcom/ibm/icu/util/TimeZone;->cachedLocaleData:Lcom/ibm/icu/impl/ICUCache;

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    const/4 v6, 0x4

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v6, 0x0

    const-string v7, "z"

    aput-object v7, v21, v6

    const/4 v6, 0x1

    const-string v7, "zzzz"

    aput-object v7, v21, v6

    const/4 v6, 0x2

    const-string v7, "v"

    aput-object v7, v21, v6

    const/4 v6, 0x3

    const-string v7, "vvvv"

    aput-object v7, v21, v6

    aget-object v6, v21, p2

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    const/4 v6, 0x2

    move/from16 v0, p2

    move v1, v6

    if-lt v0, v1, :cond_6e

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_e .. :try_end_6b} :catchall_b

    move-result-object v6

    :goto_6c
    monitor-exit p0

    return-object v6

    :cond_6e
    const/4 v6, 0x2

    :try_start_6f
    move v0, v6

    new-array v0, v0, [I

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v8

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    if-eqz p1, :cond_89

    const/4 v6, 0x1

    aget v6, v20, v6

    if-nez v6, :cond_90

    :cond_89
    if-nez p1, :cond_99

    const/4 v6, 0x1

    aget v6, v20, v6

    if-nez v6, :cond_99

    :cond_90
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6c

    :cond_99
    if-eqz p1, :cond_f3

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_f3

    new-instance v17, Lcom/ibm/icu/util/GregorianCalendar;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, v17

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v6, 0x5

    const/4 v7, 0x1

    move-object/from16 v0, v17

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v18

    const/16 v6, 0x10

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v6

    if-nez v6, :cond_e9

    new-instance v5, Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v6, 0x0

    aget v6, v20, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/TimeZone;->getDSTSavings()I

    move-result v16

    invoke-direct/range {v5 .. v16}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIII)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    :cond_e9
    :goto_e9
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6c

    :cond_f3
    new-instance v5, Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v6, 0x0

    aget v6, v20, v6

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/SimpleDateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V
    :try_end_105
    .catchall {:try_start_6f .. :try_end_105} :catchall_b

    goto :goto_e9
.end method

.method public static countEquivalentIDs(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->countEquivalentIDs(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalID(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_11
    :goto_11
    if-eqz p1, :cond_16

    const/4 v2, 0x0

    aput-boolean v1, p1, v2

    :cond_16
    return-object v0

    :cond_17
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method public static declared-synchronized getDefault()Lcom/ibm/icu/util/TimeZone;
    .registers 4

    const-class v1, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    if-nez v2, :cond_13

    sget v2, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    new-instance v2, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-direct {v2}, Lcom/ibm/icu/impl/JavaTimeZone;-><init>()V

    sput-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    :cond_13
    :goto_13
    sget-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZone;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    monitor-exit v1

    return-object v0

    :cond_1d
    :try_start_1d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_13

    :catchall_2c
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getDefaultTimeZoneType()I
    .registers 1

    sget v0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    return v0
.end method

.method public static getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ZoneMeta;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getTZDataVersion()Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/ibm/icu/util/TimeZone;->TZDATA_VERSION:Ljava/lang/String;

    if-nez v2, :cond_17

    const-string v2, "com/ibm/icu/impl/data/icudt42b"

    const-string v3, "zoneinfo"

    invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v2, "TZVersion"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/TimeZone;->TZDATA_VERSION:Ljava/lang/String;

    :cond_17
    sget-object v2, Lcom/ibm/icu/util/TimeZone;->TZDATA_VERSION:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v2

    :catchall_1b
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .registers 3

    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I

    invoke-static {p0, v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;I)Lcom/ibm/icu/util/TimeZone;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTimeZone(Ljava/lang/String;I)Lcom/ibm/icu/util/TimeZone;
    .registers 5

    const-class v1, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    :try_start_6
    new-instance v0, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/JavaTimeZone;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    :cond_b
    :goto_b
    monitor-exit v1

    return-object v0

    :cond_d
    if-nez p0, :cond_18

    :try_start_f
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_18
    :try_start_18
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    :cond_22
    if-nez v0, :cond_b

    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getGMT()Lcom/ibm/icu/util/TimeZone;
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_15

    move-result-object v0

    goto :goto_b
.end method

.method public static declared-synchronized setDefault(Lcom/ibm/icu/util/TimeZone;)V
    .registers 5

    const-class v2, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v2

    :try_start_3
    sput-object p0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    const/4 v1, 0x0

    sget-object v3, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    instance-of v3, v3, Lcom/ibm/icu/impl/JavaTimeZone;

    if-eqz v3, :cond_19

    sget-object p0, Lcom/ibm/icu/util/TimeZone;->defaultZone:Lcom/ibm/icu/util/TimeZone;

    check-cast p0, Lcom/ibm/icu/impl/JavaTimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/JavaTimeZone;->unwrap()Ljava/util/TimeZone;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_39

    monitor-exit v2

    return-void

    :cond_19
    if-eqz p0, :cond_14

    :try_start_1b
    instance-of v3, p0, Lcom/ibm/icu/impl/OlsonTimeZone;

    if-eqz v3, :cond_32

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const/4 v1, 0x0

    :cond_32
    if-nez v1, :cond_14

    invoke-static {p0}, Lcom/ibm/icu/impl/TimeZoneAdapter;->wrap(Lcom/ibm/icu/util/TimeZone;)Ljava/util/TimeZone;
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_39

    move-result-object v1

    goto :goto_14

    :catchall_39
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static declared-synchronized setDefaultTimeZoneType(I)V
    .registers 4

    const-class v0, Lcom/ibm/icu/util/TimeZone;

    monitor-enter v0

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    if-eq p0, v1, :cond_13

    :try_start_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid timezone type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_13
    :try_start_13
    sput p0, Lcom/ibm/icu/util/TimeZone;->TZ_IMPL:I
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    monitor-exit v0

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeZone;

    iget-object v2, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    iput-object v2, v1, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    :catch_b
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    :cond_12
    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    iget-object v1, p1, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getDSTSavings()I
    .registers 2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x36ee80

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(ZI)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/util/TimeZone;->getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 7

    if-eqz p2, :cond_1e

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZone;->_getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;
    .registers 5

    invoke-static {p3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/util/TimeZone;->getDisplayName(ZILcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getOffset(IIIIII)I
.end method

.method public getOffset(J)I
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v1, v2

    return v1
.end method

.method public getOffset(JZ[I)V
    .registers 15

    const/4 v9, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    aput v0, p4, v9

    if-nez p3, :cond_e

    aget v0, p4, v9

    int-to-long v2, v0

    add-long/2addr p1, v2

    :cond_e
    const/4 v0, 0x6

    new-array v7, v0, [I

    const/4 v8, 0x0

    :goto_12
    invoke-static {p1, p2, v7}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    aget v2, v7, v9

    aget v3, v7, v1

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    aget v2, p4, v9

    sub-int/2addr v0, v2

    aput v0, p4, v1

    if-nez v8, :cond_34

    if-eqz p3, :cond_34

    aget v0, p4, v1

    if-nez v0, :cond_35

    :cond_34
    return-void

    :cond_35
    aget v0, p4, v1

    int-to-long v2, v0

    sub-long/2addr p1, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_12
.end method

.method public abstract getRawOffset()I
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .registers 4

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inDaylightTime(Ljava/util/Date;)Z
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iput-object p1, p0, Lcom/ibm/icu/util/TimeZone;->ID:Ljava/lang/String;

    return-void
.end method

.method public abstract setRawOffset(I)V
.end method

.method public abstract useDaylightTime()Z
.end method
