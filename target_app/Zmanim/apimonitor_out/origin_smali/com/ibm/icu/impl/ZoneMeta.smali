.class public final Lcom/ibm/icu/impl/ZoneMeta;
.super Ljava/lang/Object;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ZoneMeta$1;,
        Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;,
        Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;
    }
.end annotation


# static fields
.field private static final ASSERT:Z = false

.field private static final DEF_FALLBACK_FORMAT:Ljava/lang/String; = "{1} ({0})"

.field private static final DEF_REGION_FORMAT:Ljava/lang/String; = "{0}"

.field private static final EMPTY:[Ljava/lang/String; = null

.field public static final FALLBACK_FORMAT:Ljava/lang/String; = "fallbackFormat"

.field public static final FORWARD_SLASH:Ljava/lang/String; = "/"

.field public static final GMT:Ljava/lang/String; = "gmtFormat"

.field public static final HOUR:Ljava/lang/String; = "hourFormat"

.field private static META_TO_OLSON_REF:Ljava/lang/ref/SoftReference; = null

.field private static OLSON_TO_META_REF:Ljava/lang/ref/SoftReference; = null

.field static OLSON_ZONE_COUNT:I = 0x0

.field static OLSON_ZONE_START:I = 0x0

.field public static final REGION_FORMAT:Ljava/lang/String; = "regionFormat"

.field public static final ZONE_STRINGS:Ljava/lang/String; = "zoneStrings"

.field private static canonicalMap:Ljava/util/Map; = null

.field private static final kCUSTOM_TZ_PREFIX:Ljava/lang/String; = "GMT"

.field private static final kGMT_ID:Ljava/lang/String; = "GMT"

.field private static final kMAX_CUSTOM_HOUR:I = 0x17

.field private static final kMAX_CUSTOM_MIN:I = 0x3b

.field private static final kMAX_CUSTOM_SEC:I = 0x3b

.field private static final kNAMES:Ljava/lang/String; = "Names"

.field private static final kREGIONS:Ljava/lang/String; = "Regions"

.field private static final kZONES:Ljava/lang/String; = "Zones"

.field private static multiZoneTerritories:Ljava/util/Set;

.field private static zoneCache:Lcom/ibm/icu/impl/ICUCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->canonicalMap:Ljava/util/Map;

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->multiZoneTerritories:Ljava/util/Set;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;

    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->zoneCache:Lcom/ibm/icu/impl/ICUCache;

    const/4 v0, -0x1

    sput v0, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_START:I

    sput v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized countEquivalentIDs(Ljava/lang/String;)I
    .registers 7

    const-class v4, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v4

    :try_start_3
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_11

    const/4 v5, 0x6

    if-ne v2, v5, :cond_1f

    :cond_11
    const/4 v5, 0x1

    sub-int v5, v2, v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v3

    array-length v5, v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    :goto_1d
    monitor-exit v4

    return v5

    :cond_1f
    const/4 v5, 0x0

    goto :goto_1d

    :catchall_21
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method private static createOlsonToMetaMap()Ljava/util/Map;
    .registers 11

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    const-string v2, "metazoneInfo"

    invoke-static {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v2, "metazoneMappings"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_f
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_f} :catch_33

    move-result-object v0

    move-object v2, v0

    :goto_11
    if-eqz v2, :cond_b8

    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    move v1, v0

    move-object v6, v3

    :goto_1a
    array-length v0, v7

    if-ge v1, v0, :cond_ab

    aget-object v0, v7, v1

    invoke-static {v0}, Lcom/ibm/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b5

    aget-object v3, v7, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    move-object v3, v6

    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v6, v3

    goto :goto_1a

    :catch_33
    move-exception v0

    move-object v2, v1

    goto :goto_11

    :cond_36
    aget-object v0, v7, v1

    const/16 v3, 0x2f

    const/16 v4, 0x3a

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :try_start_40
    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
    :try_end_49
    .catch Ljava/util/MissingResourceException; {:try_start_40 .. :try_end_49} :catch_a7

    const/4 v0, 0x0

    :goto_4a
    :try_start_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6b

    array-length v3, v5

    const/4 v9, 0x3

    if-eq v3, v9, :cond_6e

    :cond_6b
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_6e
    new-instance v3, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;

    invoke-direct {v3}, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Lcom/ibm/icu/impl/ZoneMeta;->parseDate(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->from:J

    const/4 v9, 0x2

    aget-object v5, v5, v9

    invoke-static {v5}, Lcom/ibm/icu/impl/ZoneMeta;->parseDate(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->to:J

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/util/MissingResourceException; {:try_start_4a .. :try_end_91} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_91} :catch_af

    goto :goto_6b

    :catch_92
    move-exception v0

    :try_start_93
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_b3

    if-nez v6, :cond_b1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_a0
    .catch Ljava/util/MissingResourceException; {:try_start_93 .. :try_end_a0} :catch_a7

    :goto_a0
    :try_start_a0
    aget-object v3, v7, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/util/MissingResourceException; {:try_start_a0 .. :try_end_a5} :catch_ad

    :goto_a5
    move-object v3, v0

    goto :goto_2e

    :catch_a7
    move-exception v0

    move-object v0, v6

    :goto_a9
    move-object v3, v0

    goto :goto_2e

    :cond_ab
    move-object v0, v6

    :goto_ac
    return-object v0

    :catch_ad
    move-exception v3

    goto :goto_a9

    :catch_af
    move-exception v3

    goto :goto_6b

    :cond_b1
    move-object v0, v6

    goto :goto_a0

    :cond_b3
    move-object v0, v6

    goto :goto_a5

    :cond_b5
    move-object v3, v6

    goto/16 :goto_2e

    :cond_b8
    move-object v0, v3

    goto :goto_ac
.end method

.method private static findInStringArray(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)I
    .registers 10

    const/4 v7, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v1

    const/4 v5, 0x0

    const v0, 0x7fffffff

    const/4 v6, 0x1

    if-ge v1, v6, :cond_12

    move v6, v7

    :goto_e
    return v6

    :cond_f
    if-gez v3, :cond_29

    move v1, v2

    :cond_12
    :goto_12
    add-int v6, v4, v1

    div-int/lit8 v2, v6, 0x2

    if-ne v0, v2, :cond_1a

    :cond_18
    move v6, v7

    goto :goto_e

    :cond_1a
    move v0, v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    move v6, v2

    goto :goto_e

    :cond_29
    move v4, v2

    goto :goto_12
.end method

.method static formatCustomID(IIIZ)Ljava/lang/String;
    .registers 9

    const/16 v4, 0x3a

    const/16 v3, 0x30

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_11

    if-eqz p1, :cond_38

    :cond_11
    if-eqz p3, :cond_3d

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_18
    if-ge p0, v2, :cond_1d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge p1, v2, :cond_28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge p2, v2, :cond_35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3d
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_18
.end method

.method public static declared-synchronized getAvailableIDs()[Ljava/lang/String;
    .registers 6

    const-class v2, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getOlsonMeta()Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_28

    :goto_b
    monitor-exit v2

    return-object v3

    :cond_d
    :try_start_d
    const-string v3, "com/ibm/icu/impl/data/icudt42b"

    const-string v4, "zoneinfo"

    sget-object v5, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v3, "Names"

    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_28
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_22} :catch_24

    move-result-object v3

    goto :goto_b

    :catch_24
    move-exception v3

    :try_start_25
    sget-object v3, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_28

    goto :goto_b

    :catchall_28
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static declared-synchronized getAvailableIDs(I)[Ljava/lang/String;
    .registers 8

    const-class v5, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getOlsonMeta()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_52

    :goto_b
    monitor-exit v5

    return-object v6

    :cond_d
    :try_start_d
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    :goto_13
    sget v6, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_COUNT:I

    if-ge v0, v6, :cond_39

    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getID(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {v2}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v6

    if-ne v6, p0, :cond_36

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_39
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4f

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v6, p0

    goto :goto_b

    :cond_4f
    sget-object v6, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_52

    goto :goto_b

    :catchall_52
    move-exception v6

    monitor-exit v5

    throw v6
.end method

.method public static declared-synchronized getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const-class v7, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v7

    :try_start_3
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getOlsonMeta()Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_45

    :goto_b
    monitor-exit v7

    return-object v8

    :cond_d
    :try_start_d
    const-string v8, "com/ibm/icu/impl/data/icudt42b"

    const-string v9, "zoneinfo"

    sget-object v10, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v8, v9, v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v8, "Regions"

    invoke-virtual {v5, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v8, "Names"

    invoke-virtual {v5, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v2, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v6

    array-length v8, v6

    new-array v3, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_31
    array-length v8, v6

    if-ge v0, v8, :cond_3f

    aget v8, v6, v0

    invoke-virtual {v1, v8}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v0
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_45
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_3c} :catch_41

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3f
    move-object v8, v3

    goto :goto_b

    :catch_41
    move-exception v8

    :try_start_42
    sget-object v8, Lcom/ibm/icu/impl/ZoneMeta;->EMPTY:[Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_45

    goto :goto_b

    :catchall_45
    move-exception v8

    monitor-exit v7

    throw v8
.end method

.method public static getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    aget-object v1, v0, v1

    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private static getCanonicalInfo(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return-object p0

    :cond_a
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->canonicalMap:Ljava/util/Map;

    if-nez v0, :cond_11c

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :try_start_18
    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    const-string v1, "supplementalData"

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "zoneFormatting"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_13c

    goto :goto_2c

    :sswitch_3e
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, ""

    aput-object v5, v3, v0

    const/4 v0, 0x1

    const-string v5, ""

    aput-object v5, v3, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v7, 0x2f

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "territory"

    invoke-virtual {v5, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const-string v7, "001"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    const/4 v1, 0x1

    const/4 v7, 0x0

    aput-object v7, v3, v1

    :goto_71
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/util/MissingResourceException; {:try_start_18 .. :try_end_74} :catch_8e

    :try_start_74
    const-string v0, "aliases"

    invoke-virtual {v5, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7f
    array-length v5, v0

    if-ge v1, v5, :cond_2c

    aget-object v5, v0, v1

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/util/MissingResourceException; {:try_start_74 .. :try_end_87} :catch_134

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_8a
    const/4 v7, 0x1

    :try_start_8b
    aput-object v1, v3, v7
    :try_end_8d
    .catch Ljava/util/MissingResourceException; {:try_start_8b .. :try_end_8d} :catch_8e

    goto :goto_71

    :catch_8e
    move-exception v0

    :cond_8f
    :try_start_8f
    const-string v0, "com/ibm/icu/impl/data/icudt42b"

    const-string v1, "zoneinfo"

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v0, "Names"

    invoke-virtual {v8, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_a7
    array-length v0, v2

    if-ge v1, v0, :cond_114

    aget-object v0, v2, v1

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_af
    .catch Ljava/util/MissingResourceException; {:try_start_8f .. :try_end_af} :catch_113

    move-result v0

    if-eqz v0, :cond_c6

    :goto_b2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a7

    :sswitch_b6
    :try_start_b6
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_bb
    array-length v3, v1

    if-ge v0, v3, :cond_2c

    aget-object v3, v1, v0

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/util/MissingResourceException; {:try_start_b6 .. :try_end_c3} :catch_8e

    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    :cond_c6
    const/4 v3, 0x0

    :try_start_c7
    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/ibm/icu/util/TimeZone;->countEquivalentIDs(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x0

    move-object v7, v3

    move v3, v0

    :goto_d0
    if-ge v3, v5, :cond_139

    aget-object v0, v2, v1

    invoke-static {v0, v3}, Lcom/ibm/icu/util/TimeZone;->getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aget-object v9, v2, v1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    :goto_e0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d0

    :cond_e4
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_137

    :goto_ee
    if-nez v0, :cond_12b

    aget-object v0, v2, v1

    invoke-static {v8, v0}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneByName(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_128

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v0

    aget-object v0, v2, v0

    :goto_103
    aget-object v3, v2, v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v0

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_112
    .catch Ljava/util/MissingResourceException; {:try_start_c7 .. :try_end_112} :catch_113

    goto :goto_b2

    :catch_113
    move-exception v0

    :cond_114
    const-class v0, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v0

    :try_start_117
    sput-object v4, Lcom/ibm/icu/impl/ZoneMeta;->canonicalMap:Ljava/util/Map;

    sput-object v6, Lcom/ibm/icu/impl/ZoneMeta;->multiZoneTerritories:Ljava/util/Set;

    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_117 .. :try_end_11c} :catchall_131

    :cond_11c
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->canonicalMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    goto/16 :goto_9

    :cond_128
    :try_start_128
    aget-object v0, v2, v1

    goto :goto_103

    :cond_12b
    aget-object v3, v2, v1

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_130
    .catch Ljava/util/MissingResourceException; {:try_start_128 .. :try_end_130} :catch_113

    goto :goto_b2

    :catchall_131
    move-exception p0

    :try_start_132
    monitor-exit v0
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_131

    throw p0

    :catch_134
    move-exception v0

    goto/16 :goto_2c

    :cond_137
    move-object v7, v0

    goto :goto_e0

    :cond_139
    move-object v0, v7

    goto :goto_ee

    nop

    :sswitch_data_13c
    .sparse-switch
        0x2 -> :sswitch_3e
        0x8 -> :sswitch_b6
    .end sparse-switch
.end method

.method public static getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static getCustomID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [I

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1f

    aget v1, v0, v6

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    aget v4, v0, v5

    if-gez v4, :cond_1d

    move v4, v6

    :goto_18
    invoke-static {v1, v2, v3, v4}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v1

    :goto_1c
    return-object v1

    :cond_1d
    move v4, v5

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public static getCustomTimeZone(I)Lcom/ibm/icu/util/TimeZone;
    .registers 9

    const/4 v3, 0x0

    move v5, p0

    if-gez p0, :cond_6

    const/4 v3, 0x1

    neg-int v5, p0

    :cond_6
    rem-int/lit16 v1, v5, 0x3e8

    div-int/lit16 v5, v5, 0x3e8

    rem-int/lit8 v4, v5, 0x3c

    div-int/lit8 v5, v5, 0x3c

    rem-int/lit8 v2, v5, 0x3c

    div-int/lit8 v0, v5, 0x3c

    invoke-static {v0, v2, v4, v3}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-direct {v7, p0, v6}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v7
.end method

.method public static getCustomTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .registers 12

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [I

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_35

    aget v3, v0, v8

    aget v4, v0, v9

    aget v5, v0, v10

    aget v6, v0, v7

    if-gez v6, :cond_33

    move v6, v8

    :goto_18
    invoke-static {v3, v4, v5, v6}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v2

    aget v3, v0, v7

    aget v4, v0, v8

    mul-int/lit8 v4, v4, 0x3c

    aget v5, v0, v9

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    aget v5, v0, v10

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    mul-int/lit16 v1, v3, 0x3e8

    new-instance v3, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-direct {v3, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    :goto_32
    return-object v3

    :cond_33
    move v6, v7

    goto :goto_18

    :cond_35
    const/4 v3, 0x0

    goto :goto_32
.end method

.method public static declared-synchronized getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 15

    const-class v9, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v9

    :try_start_3
    const-string v4, ""

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_3e

    const/4 v8, -0x1

    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v5

    const/4 v10, 0x4

    if-eq v5, v10, :cond_16

    const/4 v10, 0x6

    if-ne v5, v10, :cond_28

    :cond_16
    const/4 v10, 0x1

    sub-int v10, v5, v10

    invoke-virtual {v3, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v7

    if-ltz p1, :cond_28

    array-length v10, v7

    if-ge p1, v10, :cond_28

    aget v8, v7, p1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_45

    :cond_28
    if-ltz v8, :cond_3e

    :try_start_2a
    const-string v10, "com/ibm/icu/impl/data/icudt42b"

    const-string v11, "zoneinfo"

    sget-object v12, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v10, v11, v12}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    const-string v10, "Names"

    invoke-virtual {v6, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_45
    .catch Ljava/util/MissingResourceException; {:try_start_2a .. :try_end_3d} :catch_40

    move-result-object v4

    :cond_3e
    :goto_3e
    monitor-exit v9

    return-object v4

    :catch_40
    move-exception v10

    move-object v1, v10

    :try_start_42
    const-string v4, ""
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_45

    goto :goto_3e

    :catchall_45
    move-exception v10

    monitor-exit v9

    throw v10
.end method

.method public static getGMT()Lcom/ibm/icu/util/TimeZone;
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getID(I)Ljava/lang/String;
    .registers 6

    :try_start_0
    const-string v2, "com/ibm/icu/impl/data/icudt42b"

    const-string v3, "zoneinfo"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "Names"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v2

    :goto_16
    return-object v2

    :catch_17
    move-exception v2

    const/4 v2, 0x0

    goto :goto_16
.end method

.method public static getLocationFormat(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .registers 16

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return-object v8

    :cond_a
    aget-object v1, v3, v11

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    if-eqz v1, :cond_53

    :try_start_11
    const-string v8, "com/ibm/icu/impl/data/icudt42b"

    invoke-static {v8, p2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v6

    sget-object v8, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v6, v8}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4a

    invoke-virtual {v6}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xx_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    :try_end_49
    .catch Ljava/util/MissingResourceException; {:try_start_11 .. :try_end_49} :catch_a3

    move-result-object v0

    :cond_4a
    :goto_4a
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_53

    :cond_52
    move-object v0, v1

    :cond_53
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getSingleCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_71

    const-string v8, "regionFormat"

    invoke-static {p2, v8}, Lcom/ibm/icu/impl/ZoneMeta;->getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_63

    const-string v7, "{0}"

    :cond_63
    new-instance v4, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v4, v7}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v0, v8, v12

    invoke-virtual {v4, v8}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_71
    if-nez p1, :cond_87

    const/16 v8, 0x2f

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5f

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_87
    const-string v8, "fallbackFormat"

    invoke-static {p2, v8}, Lcom/ibm/icu/impl/ZoneMeta;->getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_91

    const-string v2, "{1} ({0})"

    :cond_91
    new-instance v4, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v4, v2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v12

    aput-object v0, v8, v11

    invoke-virtual {v4, v8}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_9

    :catch_a3
    move-exception v8

    goto :goto_4a
.end method

.method private static getMetaToOlsonMap()Ljava/util/Map;
    .registers 18

    const/4 v4, 0x0

    const-class v16, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v16

    :try_start_4
    sget-object v15, Lcom/ibm/icu/impl/ZoneMeta;->META_TO_OLSON_REF:Ljava/lang/ref/SoftReference;

    if-eqz v15, :cond_99

    sget-object v15, Lcom/ibm/icu/impl/ZoneMeta;->META_TO_OLSON_REF:Ljava/lang/ref/SoftReference;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/util/HashMap;

    move-object v4, v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_84

    move-object v5, v4

    :goto_13
    if-nez v5, :cond_97

    :try_start_15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_92

    const/4 v6, 0x0

    :try_start_1b
    const-string v15, "com/ibm/icu/impl/data/icudt42b"

    const-string v17, "supplementalData"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v11

    const-string v15, "mapTimezones"

    invoke-virtual {v11, v15}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v15, "metazones"

    invoke-virtual {v2, v15}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_84
    .catch Ljava/util/MissingResourceException; {:try_start_1b .. :try_end_31} :catch_95

    move-result-object v6

    :goto_32
    if-eqz v6, :cond_87

    :try_start_34
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v7

    :cond_38
    :goto_38
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_87

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v15, "meta:"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_49
    .catchall {:try_start_34 .. :try_end_49} :catchall_84

    move-result v15

    if-eqz v15, :cond_38

    const/4 v14, 0x0

    :try_start_4d
    invoke-virtual {v6, v9}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_84
    .catch Ljava/util/MissingResourceException; {:try_start_4d .. :try_end_50} :catch_90

    move-result-object v14

    :goto_51
    if-eqz v14, :cond_38

    const/16 v15, 0x5f

    :try_start_55
    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    if-lez v13, :cond_38

    const/4 v15, 0x5

    invoke-virtual {v9, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_76

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    new-instance v10, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;

    const/4 v15, 0x0

    invoke-direct {v10, v15}, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;-><init>(Lcom/ibm/icu/impl/ZoneMeta$1;)V

    iput-object v14, v10, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;->id:Ljava/lang/String;

    iput-object v12, v10, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;->territory:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :catchall_84
    move-exception v15

    :goto_85
    monitor-exit v16
    :try_end_86
    .catchall {:try_start_55 .. :try_end_86} :catchall_84

    throw v15

    :cond_87
    :try_start_87
    new-instance v15, Ljava/lang/ref/SoftReference;

    invoke-direct {v15, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v15, Lcom/ibm/icu/impl/ZoneMeta;->META_TO_OLSON_REF:Ljava/lang/ref/SoftReference;

    :goto_8e
    monitor-exit v16
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_84

    return-object v4

    :catch_90
    move-exception v15

    goto :goto_51

    :catchall_92
    move-exception v15

    move-object v4, v5

    goto :goto_85

    :catch_95
    move-exception v15

    goto :goto_32

    :cond_97
    move-object v4, v5

    goto :goto_8e

    :cond_99
    move-object v5, v4

    goto/16 :goto_13
.end method

.method public static getMetazoneID(Ljava/lang/String;J)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getOlsonToMetaMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1f

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :cond_1f
    if-eqz v2, :cond_3c

    const/4 v1, 0x0

    :goto_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;

    iget-wide v6, v4, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->from:J

    cmp-long v6, p1, v6

    if-ltz v6, :cond_3d

    iget-wide v6, v4, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->to:J

    cmp-long v6, p1, v6

    if-gez v6, :cond_3d

    iget-object v3, v4, Lcom/ibm/icu/impl/ZoneMeta$OlsonToMetaMappingEntry;->mzid:Ljava/lang/String;

    :cond_3c
    return-object v3

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method private static getOlsonMeta()Z
    .registers 4

    sget v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_START:I

    if-gez v1, :cond_13

    :try_start_4
    const-string v1, "com/ibm/icu/impl/data/icudt42b"

    const-string v2, "zoneinfo"

    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getOlsonMeta(Lcom/ibm/icu/impl/ICUResourceBundle;)Z
    :try_end_13
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_13} :catch_1b

    :cond_13
    :goto_13
    sget v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_START:I

    if-ltz v1, :cond_19

    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18

    :catch_1b
    move-exception v1

    goto :goto_13
.end method

.method private static getOlsonMeta(Lcom/ibm/icu/impl/ICUResourceBundle;)Z
    .registers 4

    const/4 v2, 0x0

    sget v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_START:I

    if-gez v1, :cond_16

    if-eqz p0, :cond_16

    :try_start_7
    const-string v1, "Zones"

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v1

    sput v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_COUNT:I

    const/4 v1, 0x0

    sput v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_START:I
    :try_end_16
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_16} :catch_1e

    :cond_16
    :goto_16
    sget v1, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_ZONE_START:I

    if-ltz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    move v1, v2

    goto :goto_1b

    :catch_1e
    move-exception v1

    goto :goto_16
.end method

.method static getOlsonToMetaMap()Ljava/util/Map;
    .registers 5

    const/4 v1, 0x0

    const-class v4, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v4

    :try_start_4
    sget-object v3, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_TO_META_REF:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_12

    sget-object v3, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_TO_META_REF:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v1, v0

    :cond_12
    if-nez v1, :cond_27

    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->createOlsonToMetaMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_20

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    :cond_20
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/ibm/icu/impl/ZoneMeta;->OLSON_TO_META_REF:Ljava/lang/ref/SoftReference;

    :cond_27
    monitor-exit v4

    return-object v1

    :catchall_29
    move-exception v3

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public static getSingleCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    aget-object v1, v0, v3

    if-eqz v1, :cond_18

    sget-object v1, Lcom/ibm/icu/impl/ZoneMeta;->multiZoneTerritories:Ljava/util/Set;

    aget-object v2, v0, v3

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    aget-object v1, v0, v3

    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static getSystemTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .registers 9

    sget-object v5, Lcom/ibm/icu/impl/ZoneMeta;->zoneCache:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v5, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZone;

    if-nez v3, :cond_26

    :try_start_a
    const-string v5, "com/ibm/icu/impl/data/icudt42b"

    const-string v6, "zoneinfo"

    sget-object v7, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    new-instance v4, Lcom/ibm/icu/impl/OlsonTimeZone;

    invoke-direct {v4, v2, v1}, Lcom/ibm/icu/impl/OlsonTimeZone;-><init>(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_2e

    :try_start_1d
    invoke-virtual {v4, p0}, Lcom/ibm/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    sget-object v5, Lcom/ibm/icu/impl/ZoneMeta;->zoneCache:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v5, p0, v4}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_32

    move-object v3, v4

    :cond_26
    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/TimeZone;

    move-object v5, p0

    :goto_2d
    return-object v5

    :catch_2e
    move-exception v5

    move-object v0, v5

    :goto_30
    const/4 v5, 0x0

    goto :goto_2d

    :catch_32
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    goto :goto_30
.end method

.method public static getTZLocalizationInfo(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoneStrings/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v2

    :goto_1e
    return-object v2

    :catch_1f
    move-exception v3

    move-object v1, v3

    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private static getZoneByName(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const-string v2, "Names"

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ibm/icu/impl/ZoneMeta;->findInStringArray(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "Names"

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1b
    const-string v2, "Zones"

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getZoneIdByMetazone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getMetaToOlsonMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_24

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;

    iget-object v5, v3, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;->territory:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v4, v3, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;->id:Ljava/lang/String;

    :cond_24
    return-object v4

    :cond_25
    iget-object v5, v3, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;->territory:Ljava/lang/String;

    const-string v6, "001"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v4, v3, Lcom/ibm/icu/impl/ZoneMeta$MetaToOlsonMappingEntry;->id:Ljava/lang/String;

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static openOlsonResource(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .registers 10

    const/4 v4, 0x0

    :try_start_1
    const-string v6, "com/ibm/icu/impl/data/icudt42b"

    const-string v7, "zoneinfo"

    sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v6, v7, v8}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-static {v5, p0}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneByName(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_2c

    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v6

    add-int/lit8 v2, v6, 0x0

    const-string v6, "Zones"

    invoke-virtual {v5, v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    move-object v4, v0
    :try_end_2c
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-object v4

    :catch_2d
    move-exception v6

    move-object v3, v6

    const/4 v4, 0x0

    goto :goto_2c
.end method

.method static parseCustomID(Ljava/lang/String;[I)Z
    .registers 13

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_16b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "GMT"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_16b

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    new-instance v5, Ljava/text/ParsePosition;

    const-string v0, "GMT"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_5b

    const/4 v0, -0x1

    move v7, v0

    :goto_38
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getInstance()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v3, p0, v5}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v4, :cond_6b

    const/4 p0, 0x0

    move p1, p0

    move-object p0, v3

    :goto_5a
    return p1

    :cond_5b
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_168

    const/4 p0, 0x0

    move p1, p0

    move-object p0, v2

    goto :goto_5a

    :cond_6b
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_130

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v2, 0x2

    if-gt v1, v2, :cond_8d

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_91

    :cond_8d
    const/4 p0, 0x0

    move p1, p0

    move-object p0, v3

    goto :goto_5a

    :cond_91
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v3, p0, v5}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v8, 0x2

    if-eq v1, v8, :cond_ae

    const/4 p0, 0x0

    move p1, p0

    move-object p0, v3

    goto :goto_5a

    :cond_ae
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_164

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_cc

    const/4 p0, 0x0

    move p1, p0

    move-object p0, v3

    goto :goto_5a

    :cond_cc
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v3, p0, v5}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v6, p0, :cond_ef

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    sub-int/2addr p0, v4

    const/4 v5, 0x2

    if-eq p0, v5, :cond_f4

    :cond_ef
    const/4 p0, 0x0

    move p1, p0

    move-object p0, v3

    goto/16 :goto_5a

    :cond_f4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    move v10, v4

    move v4, p0

    move-object p0, v2

    move v2, v10

    :goto_fc
    move v2, v4

    move-object v10, p0

    move p0, v0

    move v0, v1

    move-object v1, v10

    :goto_101
    const/16 v1, 0x17

    if-gt p0, v1, :cond_160

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_160

    const/16 v1, 0x3b

    if-gt v2, v1, :cond_160

    if-eqz p1, :cond_12b

    array-length v1, p1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_116

    const/4 v1, 0x0

    aput v7, p1, v1

    :cond_116
    array-length v1, p1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_11d

    const/4 v1, 0x1

    aput p0, p1, v1

    :cond_11d
    array-length p0, p1

    const/4 v1, 0x3

    if-lt p0, v1, :cond_124

    const/4 p0, 0x2

    aput v0, p1, p0

    :cond_124
    array-length p0, p1

    const/4 v0, 0x4

    if-lt p0, v0, :cond_12b

    const/4 p0, 0x3

    aput v2, p1, p0

    :cond_12b
    const/4 p0, 0x1

    move p1, p0

    move-object p0, v3

    goto/16 :goto_5a

    :cond_130
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    sub-int/2addr p0, v4

    if-lez p0, :cond_13a

    const/4 v4, 0x6

    if-ge v4, p0, :cond_13f

    :cond_13a
    const/4 p0, 0x0

    move p1, p0

    move-object p0, v3

    goto/16 :goto_5a

    :cond_13f
    packed-switch p0, :pswitch_data_16e

    move p0, v0

    move v0, v1

    move-object v1, v2

    move v2, v6

    goto :goto_101

    :pswitch_147
    move p0, v0

    move v0, v1

    move-object v1, v2

    move v2, v6

    goto :goto_101

    :pswitch_14c
    rem-int/lit8 v1, v0, 0x64

    div-int/lit8 p0, v0, 0x64

    move v0, v1

    move-object v1, v2

    move v2, v6

    goto :goto_101

    :pswitch_154
    rem-int/lit8 v4, v0, 0x64

    div-int/lit8 p0, v0, 0x64

    rem-int/lit8 v1, p0, 0x64

    div-int/lit16 p0, v0, 0x2710

    move v0, v1

    move-object v1, v2

    move v2, v4

    goto :goto_101

    :cond_160
    move-object p0, v3

    :goto_161
    const/4 p1, 0x0

    goto/16 :goto_5a

    :cond_164
    move-object p0, v2

    move v2, v4

    move v4, v6

    goto :goto_fc

    :cond_168
    move v7, v3

    goto/16 :goto_38

    :cond_16b
    move-object p0, v2

    goto :goto_161

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_147
        :pswitch_147
        :pswitch_14c
        :pswitch_14c
        :pswitch_154
        :pswitch_154
    .end packed-switch
.end method

.method static parseDate(Ljava/lang/String;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v11, 0x30

    const/16 v10, 0xa

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_a
    const/4 v9, 0x3

    if-gt v4, v9, :cond_26

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v7, v9, v11

    if-ltz v7, :cond_1e

    if-ge v7, v10, :cond_1e

    mul-int/lit8 v9, v8, 0xa

    add-int v8, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad year"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_26
    const/4 v4, 0x5

    :goto_27
    const/4 v9, 0x6

    if-gt v4, v9, :cond_43

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v7, v9, v11

    if-ltz v7, :cond_3b

    if-ge v7, v10, :cond_3b

    mul-int/lit8 v9, v6, 0xa

    add-int v6, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_3b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad month"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_43
    const/16 v4, 0x8

    :goto_45
    const/16 v9, 0x9

    if-gt v4, v9, :cond_62

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v7, v9, v11

    if-ltz v7, :cond_5a

    if-ge v7, v10, :cond_5a

    mul-int/lit8 v9, v2, 0xa

    add-int v2, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_5a
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad day"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_62
    const/16 v4, 0xb

    :goto_64
    const/16 v9, 0xc

    if-gt v4, v9, :cond_81

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v7, v9, v11

    if-ltz v7, :cond_79

    if-ge v7, v10, :cond_79

    mul-int/lit8 v9, v3, 0xa

    add-int v3, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_79
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad hour"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_81
    const/16 v4, 0xe

    :goto_83
    const/16 v9, 0xf

    if-gt v4, v9, :cond_a0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v7, v9, v11

    if-ltz v7, :cond_98

    if-ge v7, v10, :cond_98

    mul-int/lit8 v9, v5, 0xa

    add-int v5, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_98
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad minute"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a0
    const/4 v9, 0x1

    sub-int v9, v6, v9

    invoke-static {v8, v9, v2}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    mul-long/2addr v9, v11

    const v11, 0x36ee80

    mul-int/2addr v11, v3

    int-to-long v11, v11

    add-long/2addr v9, v11

    const v11, 0xea60

    mul-int/2addr v11, v5

    int-to-long v11, v11

    add-long v0, v9, v11

    return-wide v0
.end method
