.class public Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
.super Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;
.source "ResourceBasedPeriodFormatterDataService.java"


# static fields
.field private static final PATH:Ljava/lang/String; = "data/"

.field private static final singleton:Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;


# instance fields
.field private availableLocales:Ljava/util/Collection;

.field private cache:Ljava/util/Map;

.field private lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

.field private lastLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    invoke-direct {v0}, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;-><init>()V

    iput-object v5, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    iput-object v5, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "data/index.txt"

    invoke-static {v5, v6}, Lcom/ibm/icu/impl/ICUData;->getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :try_start_1e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x0

    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_46} :catch_47

    goto :goto_2b

    :catch_47
    move-exception v5

    move-object v1, v5

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO Error reading data/index.txt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_66
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-void
.end method

.method public static getInstance()Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;
    .registers 1

    sget-object v0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->singleton:Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;
    .registers 13

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/16 v8, 0x40

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_e

    invoke-virtual {p1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_e
    monitor-enter p0

    :try_start_f
    iget-object v8, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    monitor-exit p0

    :goto_1e
    return-object v8

    :cond_1f
    iget-object v8, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    if-nez v4, :cond_c8

    move-object v5, p1

    :goto_2a
    iget-object v8, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    invoke-interface {v8, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v9, :cond_40

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2a

    :cond_40
    const-string v8, "test"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    const-string v5, "test"

    goto :goto_2a

    :cond_4b
    const/4 v5, 0x0

    :cond_4c
    if-eqz v5, :cond_d0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data/pfd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_f .. :try_end_66} :catchall_a9

    move-result-object v6

    :try_start_67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_ac

    new-instance v8, Ljava/util/MissingResourceException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no resource named "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v9, v6, v10}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_a9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception v8

    move-object v1, v8

    :try_start_8e
    new-instance v8, Ljava/util/MissingResourceException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled Encoding for resource "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v8, v9, v6, v10}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :catchall_a9
    move-exception v8

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_8e .. :try_end_ab} :catchall_a9

    throw v8

    :cond_ac
    :try_start_ac
    new-instance v8, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lcom/ibm/icu/impl/duration/impl/XMLRecordReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v5, v8}, Lcom/ibm/icu/impl/duration/impl/DataRecord;->read(Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/RecordReader;)Lcom/ibm/icu/impl/duration/impl/DataRecord;

    move-result-object v0

    if-eqz v0, :cond_c3

    new-instance v4, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    invoke-direct {v4, p1, v0}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;-><init>(Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/DataRecord;)V
    :try_end_c3
    .catchall {:try_start_ac .. :try_end_c3} :catchall_a9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ac .. :try_end_c3} :catch_8c

    :cond_c3
    :try_start_c3
    iget-object v8, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->cache:Ljava/util/Map;

    invoke-interface {v8, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    iput-object v4, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastData:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->lastLocale:Ljava/lang/String;

    monitor-exit p0

    move-object v8, v4

    goto/16 :goto_1e

    :cond_d0
    new-instance v8, Ljava/util/MissingResourceException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duration data not found for  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "data/"

    invoke-direct {v8, v9, v10, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_eb
    .catchall {:try_start_c3 .. :try_end_eb} :catchall_a9
.end method

.method public getAvailableLocales()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->availableLocales:Ljava/util/Collection;

    return-object v0
.end method
