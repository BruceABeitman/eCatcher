.class public Lcom/ibm/icu/impl/data/HolidayBundle_en_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_CA.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Lcom/ibm/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v5, 0x4

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    aput-object v1, v0, v6

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v2, 0x13

    const-string v3, "Victoria Day"

    invoke-direct {v1, v5, v2, v6, v3}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v2, 0x6

    const-string v3, "Canada Day"

    invoke-direct {v1, v2, v7, v6, v3}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v8

    const/4 v1, 0x3

    new-instance v2, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v3, 0x7

    const-string v4, "Civic Holiday"

    invoke-direct {v2, v3, v7, v8, v4}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const-string v2, "Labor Day"

    invoke-direct {v1, v9, v7, v8, v2}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-instance v2, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v3, 0x9

    const-string v4, "Thanksgiving"

    invoke-direct {v2, v3, v9, v8, v4}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v3, 0xa

    const/16 v4, 0xb

    const-string v5, "Remembrance Day"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu/util/SimpleHoliday;->CHRISTMAS:Lcom/ibm/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->BOXING_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    aput-object v1, v0, v9

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Lcom/ibm/icu/util/SimpleHoliday;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    new-array v0, v8, [[Ljava/lang/Object;

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "holidays"

    aput-object v2, v1, v6

    sget-object v2, Lcom/ibm/icu/impl/data/HolidayBundle_en_CA;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Labor Day"

    aput-object v2, v1, v6

    const-string v2, "Labour Day"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_en_CA;->fContents:[[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method