.class Lcom/ibm/icu/util/EasterRule;
.super Ljava/lang/Object;
.source "EasterHoliday.java"

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# static fields
.field private static gregorian:Lcom/ibm/icu/util/GregorianCalendar;

.field private static orthodox:Lcom/ibm/icu/util/GregorianCalendar;


# instance fields
.field private calendar:Lcom/ibm/icu/util/GregorianCalendar;

.field private daysAfterEaster:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/EasterRule;->gregorian:Lcom/ibm/icu/util/GregorianCalendar;

    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/EasterRule;->orthodox:Lcom/ibm/icu/util/GregorianCalendar;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ibm/icu/util/EasterRule;->gregorian:Lcom/ibm/icu/util/GregorianCalendar;

    iput-object v0, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    iput p1, p0, Lcom/ibm/icu/util/EasterRule;->daysAfterEaster:I

    if-eqz p2, :cond_1e

    sget-object v0, Lcom/ibm/icu/util/EasterRule;->orthodox:Lcom/ibm/icu/util/GregorianCalendar;

    new-instance v1, Ljava/util/Date;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    sget-object v0, Lcom/ibm/icu/util/EasterRule;->orthodox:Lcom/ibm/icu/util/GregorianCalendar;

    iput-object v0, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    :cond_1e
    return-void
.end method

.method private computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;
    .registers 20

    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    move-object/from16 p2, v0

    :cond_8
    monitor-enter p2

    :try_start_9
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v12, 0x1

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v11

    rem-int/lit8 v5, v11, 0x13

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_ad

    div-int/lit8 v3, v11, 0x64

    div-int/lit8 v12, v3, 0x4

    sub-int v12, v3, v12

    mul-int/lit8 v13, v3, 0x8

    add-int/lit8 v13, v13, 0xd

    div-int/lit8 v13, v13, 0x19

    sub-int/2addr v12, v13

    mul-int/lit8 v13, v5, 0x13

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0xf

    rem-int/lit8 v6, v12, 0x1e

    div-int/lit8 v12, v6, 0x1c

    const/4 v13, 0x1

    div-int/lit8 v14, v6, 0x1c

    const/16 v15, 0x1d

    add-int/lit8 v16, v6, 0x1

    div-int v15, v15, v16

    mul-int/2addr v14, v15

    const/16 v15, 0x15

    sub-int/2addr v15, v5

    div-int/lit8 v15, v15, 0xb

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    sub-int v7, v6, v12

    div-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v11

    add-int/2addr v12, v7

    add-int/lit8 v12, v12, 0x2

    sub-int/2addr v12, v3

    div-int/lit8 v13, v3, 0x4

    add-int/2addr v12, v13

    rem-int/lit8 v8, v12, 0x7

    :goto_60
    sub-int v9, v7, v8

    add-int/lit8 v12, v9, 0x28

    div-int/lit8 v12, v12, 0x2c

    add-int/lit8 v10, v12, 0x3

    add-int/lit8 v12, v9, 0x1c

    div-int/lit8 v13, v10, 0x4

    mul-int/lit8 v13, v13, 0x1f

    sub-int v4, v12, v13

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/GregorianCalendar;->clear()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v12, 0x1

    move-object/from16 v0, p2

    move v1, v12

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v12, 0x2

    const/4 v13, 0x1

    sub-int v13, v10, v13

    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    const/4 v12, 0x5

    move-object/from16 v0, p2

    move v1, v12

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->set(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/EasterRule;->daysAfterEaster:I

    move v13, v0

    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/GregorianCalendar;->add(II)V

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v12

    monitor-exit p2

    return-object v12

    :cond_ad
    mul-int/lit8 v12, v5, 0x13

    add-int/lit8 v12, v12, 0xf

    rem-int/lit8 v7, v12, 0x1e

    div-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v11

    add-int/2addr v12, v7

    rem-int/lit8 v8, v12, 0x7

    goto :goto_60

    :catchall_ba
    move-exception v12

    monitor-exit p2
    :try_end_bc
    .catchall {:try_start_9 .. :try_end_bc} :catchall_ba

    throw v12
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 8

    iget-object v1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/util/GregorianCalendar;->add(II)V

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v2}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v0

    :cond_2d
    if-eqz p2, :cond_39

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    :goto_38
    return-object v1

    :cond_39
    monitor-exit v1

    move-object v1, v0

    goto :goto_38

    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v2
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/EasterRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isOn(Ljava/util/Date;)Z
    .registers 7

    iget-object v1, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    iget-object v3, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-virtual {v3}, Lcom/ibm/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Lcom/ibm/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    iget-object v2, p0, Lcom/ibm/icu/util/EasterRule;->calendar:Lcom/ibm/icu/util/GregorianCalendar;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne v2, v0, :cond_2c

    const/4 v2, 0x1

    :goto_2a
    monitor-exit v1

    return v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2a

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2
.end method
