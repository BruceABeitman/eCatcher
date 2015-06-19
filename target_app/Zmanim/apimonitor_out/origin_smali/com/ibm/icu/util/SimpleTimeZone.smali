.class public Lcom/ibm/icu/util/SimpleTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = -0x61a030c4b2083e91L

.field private static final staticMonthLength:[B


# instance fields
.field private dst:I

.field private transient dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private transient firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private raw:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private transient stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private transient transitionRulesInitialized:Z

.field private useDaylight:Z

.field private xinfo:Lcom/ibm/icu/util/STZInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    return-void

    :array_a
    .array-data 0x1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 16

    const v12, 0x36ee80

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    iput v12, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    invoke-super {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .registers 24

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const v0, 0x36ee80

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    const/4 v6, 0x0

    const/4 v11, 0x0

    const v12, 0x36ee80

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    invoke-super {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .registers 25

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const v0, 0x36ee80

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    invoke-super {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .registers 27

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const v0, 0x36ee80

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    invoke-super {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    return-void
.end method

.method private compareToRule(IIIIIIIIIIII)I
    .registers 19

    add-int/2addr p6, p7

    :cond_1
    :goto_1
    const v3, 0x5265c00

    if-lt p6, v3, :cond_16

    const v3, 0x5265c00

    sub-int/2addr p6, v3

    add-int/lit8 p4, p4, 0x1

    rem-int/lit8 v3, p5, 0x7

    add-int/lit8 p5, v3, 0x1

    if-le p4, p2, :cond_1

    const/4 p4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_16
    :goto_16
    if-gez p6, :cond_2b

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 v3, p5, 0x5

    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 p5, v3, 0x1

    const/4 v3, 0x1

    if-ge p4, v3, :cond_26

    move p4, p3

    add-int/lit8 p1, p1, -0x1

    :cond_26
    const v3, 0x5265c00

    add-int/2addr p6, v3

    goto :goto_16

    :cond_2b
    if-ge p1, p9, :cond_2f

    const/4 v3, -0x1

    :goto_2e
    return v3

    :cond_2f
    if-le p1, p9, :cond_33

    const/4 v3, 0x1

    goto :goto_2e

    :cond_33
    const/4 v2, 0x0

    move/from16 v0, p11

    move v1, p2

    if-le v0, v1, :cond_3b

    move/from16 p11, p2

    :cond_3b
    packed-switch p8, :pswitch_data_98

    :goto_3e
    if-ge p4, v2, :cond_83

    const/4 v3, -0x1

    goto :goto_2e

    :pswitch_42
    move/from16 v2, p11

    goto :goto_3e

    :pswitch_45
    if-lez p11, :cond_5a

    const/4 v3, 0x1

    sub-int v3, p11, v3

    mul-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, p10, 0x7

    sub-int v5, p5, p4

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x7

    add-int v2, v3, v4

    goto :goto_3e

    :cond_5a
    add-int/lit8 v3, p11, 0x1

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, p2

    add-int v4, p5, p2

    sub-int/2addr v4, p4

    add-int/lit8 v4, v4, 0x7

    sub-int v4, v4, p10

    rem-int/lit8 v4, v4, 0x7

    sub-int v2, v3, v4

    goto :goto_3e

    :pswitch_6b
    add-int/lit8 v3, p10, 0x31

    sub-int v3, v3, p11

    sub-int/2addr v3, p5

    add-int/2addr v3, p4

    rem-int/lit8 v3, v3, 0x7

    add-int v2, p11, v3

    goto :goto_3e

    :pswitch_76
    const/16 v3, 0x31

    sub-int v3, v3, p10

    add-int v3, v3, p11

    add-int/2addr v3, p5

    sub-int/2addr v3, p4

    rem-int/lit8 v3, v3, 0x7

    sub-int v2, p11, v3

    goto :goto_3e

    :cond_83
    if-le p4, v2, :cond_87

    const/4 v3, 0x1

    goto :goto_2e

    :cond_87
    move v0, p6

    move/from16 v1, p12

    if-ge v0, v1, :cond_8e

    const/4 v3, -0x1

    goto :goto_2e

    :cond_8e
    move v0, p6

    move/from16 v1, p12

    if-le v0, v1, :cond_95

    const/4 v3, 0x1

    goto :goto_2e

    :cond_95
    const/4 v3, 0x0

    goto :goto_2e

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_42
        :pswitch_45
        :pswitch_6b
        :pswitch_76
    .end packed-switch
.end method

.method private construct(IIIIIIIIIIII)V
    .registers 15

    const/4 v1, 0x1

    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    iput p6, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    iput p7, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iput p8, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iput p9, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iput p10, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    iput p11, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    iput p12, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeRules()V

    if-gtz p12, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2b
    return-void
.end method

.method private decodeEndRule()V
    .registers 6

    const v4, 0x5265c00

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_2e

    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1a

    iput v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    :cond_1a
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_28

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_e

    :cond_30
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_40

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-gt v0, v4, :cond_40

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ltz v0, :cond_40

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-le v0, v3, :cond_46

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_46
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_60

    iput v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    :cond_4c
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_87

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_5a

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_9b

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_60
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_71

    iput v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    :goto_66
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_4c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_71
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_7e

    const/4 v0, 0x3

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_66

    :cond_7e
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_66

    :cond_87
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-lt v0, v2, :cond_95

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    sget-object v1, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_9b

    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9b
    return-void
.end method

.method private decodeRules()V
    .registers 1

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeStartRule()V

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeEndRule()V

    return-void
.end method

.method private decodeStartRule()V
    .registers 6

    const v4, 0x5265c00

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_2e

    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1a

    iput v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    :cond_1a
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_28

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_30

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_e

    :cond_30
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_40

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-gt v0, v4, :cond_40

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ltz v0, :cond_40

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-le v0, v3, :cond_46

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_46
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_60

    iput v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    :cond_4c
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_87

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_5a

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_9b

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_60
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_71

    iput v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    :goto_66
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_4c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_71
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_7e

    const/4 v0, 0x3

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_66

    :cond_7e
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_66

    :cond_87
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-lt v0, v2, :cond_95

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    sget-object v1, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_9b

    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9b
    return-void
.end method

.method private getSTZInfo()Lcom/ibm/icu/util/STZInfo;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ibm/icu/util/STZInfo;

    invoke-direct {v0}, Lcom/ibm/icu/util/STZInfo;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    return-object v0
.end method

.method private idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private declared-synchronized initTransitionRules()V
    .registers 23

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    move v6, v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_118

    if-eqz v6, :cond_a

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    move v6, v0

    if-eqz v6, :cond_25e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11b

    const/4 v6, 0x1

    move v10, v6

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    move v6, v0

    packed-switch v6, :pswitch_data_274

    :goto_24
    new-instance v11, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(DST)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move-object v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19c

    const/4 v6, 0x1

    move v10, v6

    :goto_73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    move v6, v0

    packed-switch v6, :pswitch_data_280

    :goto_7b
    new-instance v11, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(STD)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move-object v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v6, v20, v18

    if-gez v6, :cond_21d

    new-instance v6, Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(DST)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v6, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v8, v0

    move-object v0, v6

    move-wide/from16 v1, v20

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    :goto_110
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_116
    .catchall {:try_start_a .. :try_end_116} :catchall_118

    goto/16 :goto_8

    :catchall_118
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_11b
    :try_start_11b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_127

    const/4 v6, 0x2

    move v10, v6

    goto/16 :goto_1c

    :cond_127
    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_1c

    :pswitch_12b
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move v8, v0

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    goto/16 :goto_24

    :pswitch_141
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    goto/16 :goto_24

    :pswitch_15c
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move v14, v0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move/from16 v16, v0

    move-object v11, v5

    move/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_24

    :pswitch_17c
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move/from16 v16, v0

    move-object v11, v5

    move/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_24

    :cond_19c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1a8

    const/4 v6, 0x2

    move v10, v6

    goto/16 :goto_73

    :cond_1a8
    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_73

    :pswitch_1ac
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move v8, v0

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    goto/16 :goto_7b

    :pswitch_1c2
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    goto/16 :goto_7b

    :pswitch_1dd
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move v14, v0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move/from16 v16, v0

    move-object v11, v5

    move/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_7b

    :pswitch_1fd
    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move/from16 v16, v0

    move-object v11, v5

    move/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_7b

    :cond_21d
    new-instance v6, Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(STD)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v6, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v8, v0

    move-object v0, v6

    move-wide/from16 v1, v18

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto/16 :goto_110

    :cond_25e
    new-instance v6, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;
    :try_end_271
    .catchall {:try_start_11b .. :try_end_271} :catchall_118

    goto/16 :goto_110

    nop

    :pswitch_data_274
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_141
        :pswitch_15c
        :pswitch_17c
    .end packed-switch

    :pswitch_data_280
    .packed-switch 0x1
        :pswitch_1ac
        :pswitch_1c2
        :pswitch_1dd
        :pswitch_1fd
    .end packed-switch
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

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/STZInfo;->applyTo(Lcom/ibm/icu/util/SimpleTimeZone;)V

    :cond_c
    return-void
.end method

.method private setEndRule(IIIII)V
    .registers 7

    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeEndRule()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private setEndRule(IIIIIZ)V
    .registers 13

    if-eqz p6, :cond_c

    move v2, p2

    :goto_3
    neg-int v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void

    :cond_c
    neg-int v0, p2

    move v2, v0

    goto :goto_3
.end method

.method private setStartRule(IIIII)V
    .registers 7

    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeStartRule()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

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

    check-cast v0, Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v1, v0

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    if-ne v2, v3, :cond_8d

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_8d

    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_8a

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v2, v3, :cond_8d

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_8d

    :cond_8a
    move v2, v5

    goto/16 :goto_5

    :cond_8d
    move v2, v4

    goto/16 :goto_5
.end method

.method public getDSTSavings()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    return v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 15

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_7

    move-object v0, v10

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    cmp-long v0, p1, v7

    if-ltz v0, :cond_1a

    if-eqz p3, :cond_1d

    cmp-long v0, p1, v7

    if-nez v0, :cond_1d

    :cond_1a
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_6

    :cond_1d
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v9

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    if-eqz v9, :cond_5d

    if-eqz v6, :cond_4f

    invoke-virtual {v9, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_4f
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_6

    :cond_5d
    if-eqz v6, :cond_75

    if-eqz v9, :cond_67

    invoke-virtual {v6, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_67
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_6

    :cond_75
    move-object v0, v10

    goto :goto_6
.end method

.method public getOffset(IIIIII)I
    .registers 15

    if-ltz p3, :cond_6

    const/16 v0, 0xb

    if-le p3, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIIII)I
    .registers 17

    if-ltz p3, :cond_6

    const/16 v0, 0xb

    if-le p3, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->previousMonthLength(II)I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    move-result v0

    return v0
.end method

.method getOffset(IIIIIIII)I
    .registers 29

    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-eq v0, v1, :cond_8

    if-nez p1, :cond_4f

    :cond_8
    if-ltz p3, :cond_4f

    const/16 v2, 0xb

    move/from16 v0, p3

    move v1, v2

    if-gt v0, v1, :cond_4f

    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-lt v0, v1, :cond_4f

    move/from16 v0, p4

    move/from16 v1, p7

    if-gt v0, v1, :cond_4f

    const/4 v2, 0x1

    move/from16 v0, p5

    move v1, v2

    if-lt v0, v1, :cond_4f

    const/4 v2, 0x7

    move/from16 v0, p5

    move v1, v2

    if-gt v0, v1, :cond_4f

    if-ltz p6, :cond_4f

    const v2, 0x5265c00

    move/from16 v0, p6

    move v1, v2

    if-ge v0, v1, :cond_4f

    const/16 v2, 0x1c

    move/from16 v0, p7

    move v1, v2

    if-lt v0, v1, :cond_4f

    const/16 v2, 0x1f

    move/from16 v0, p7

    move v1, v2

    if-gt v0, v1, :cond_4f

    const/16 v2, 0x1c

    move/from16 v0, p8

    move v1, v2

    if-lt v0, v1, :cond_4f

    const/16 v2, 0x1f

    move/from16 v0, p8

    move v1, v2

    if-le v0, v1, :cond_55

    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_55
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    move v2, v0

    if-eqz v2, :cond_72

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    move v2, v0

    move/from16 v0, p2

    move v1, v2

    if-lt v0, v1, :cond_72

    const/4 v2, 0x1

    move/from16 v0, p1

    move v1, v2

    if-eq v0, v1, :cond_75

    :cond_72
    move/from16 v17, v16

    :goto_74
    return v17

    :cond_75
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move v3, v0

    if-le v2, v3, :cond_116

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    move v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    move v2, v0

    neg-int v2, v2

    move v9, v2

    :goto_93
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move v14, v0

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v14}, Lcom/ibm/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v19

    const/4 v15, 0x0

    if-ltz v19, :cond_11f

    const/4 v2, 0x1

    :goto_c2
    move/from16 v0, v18

    move v1, v2

    if-eq v0, v1, :cond_ff

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    move v2, v0

    if-nez v2, :cond_121

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    move v2, v0

    move v9, v2

    :goto_d4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move v14, v0

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v14}, Lcom/ibm/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v15

    :cond_ff
    if-nez v18, :cond_105

    if-ltz v19, :cond_105

    if-ltz v15, :cond_10b

    :cond_105
    if-eqz v18, :cond_112

    if-gez v19, :cond_10b

    if-gez v15, :cond_112

    :cond_10b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    move v2, v0

    add-int v16, v16, v2

    :cond_112
    move/from16 v17, v16

    goto/16 :goto_74

    :cond_116
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_84

    :cond_11b
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_93

    :cond_11f
    const/4 v2, 0x0

    goto :goto_c2

    :cond_121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    move v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_131

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    move v2, v0

    neg-int v2, v2

    move v9, v2

    goto :goto_d4

    :cond_131
    const/4 v2, 0x0

    move v9, v2

    goto :goto_d4
.end method

.method public getOffsetFromLocal(JII[I)V
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v1

    aput v1, p5, v0

    const/4 v0, 0x6

    new-array v7, v0, [I

    invoke-static {p1, p2, v7}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v8, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    aput v0, p5, v8

    const/4 v8, 0x0

    const/4 v0, 0x1

    aget v0, p5, v0

    if-lez v0, :cond_68

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    and-int/lit8 v0, p3, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    and-int/lit8 v0, p3, 0xc

    const/16 v1, 0xc

    if-eq v0, v1, :cond_46

    :cond_3f
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const/4 v8, 0x1

    :cond_46
    :goto_46
    if-eqz v8, :cond_67

    invoke-static {p1, p2, v7}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v8, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    aput v0, p5, v8

    :cond_67
    return-void

    :cond_68
    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_77

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    and-int/lit8 v0, p4, 0xc

    const/4 v1, 0x4

    if-ne v0, v1, :cond_46

    :cond_77
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const/4 v8, 0x1

    goto :goto_46
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 15

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v0, :cond_7

    move-object v0, v10

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v7

    cmp-long v0, p1, v7

    if-ltz v0, :cond_1a

    if-nez p3, :cond_1c

    cmp-long v0, p1, v7

    if-nez v0, :cond_1c

    :cond_1a
    move-object v0, v10

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v9

    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    move-wide v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v6

    if-eqz v9, :cond_5c

    if-eqz v6, :cond_4e

    invoke-virtual {v9, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_4e
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_6

    :cond_5c
    if-eqz v6, :cond_74

    if-eqz v9, :cond_66

    invoke-virtual {v6, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_66
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_6

    :cond_74
    move-object v0, v10

    goto :goto_6
.end method

.method public getRawOffset()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    return v0
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 6

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_1f

    const/4 v2, 0x3

    move v1, v2

    :goto_a
    new-array v0, v1, [Lcom/ibm/icu/util/TimeZoneRule;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    aput-object v3, v0, v2

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object v2, v0, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object v3, v0, v2

    :cond_1e
    return-object v0

    :cond_1f
    move v1, v4

    goto :goto_a
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .registers 7

    const/4 v4, 0x0

    instance-of v2, p1, Lcom/ibm/icu/util/SimpleTimeZone;

    if-nez v2, :cond_7

    move v2, v4

    :goto_6
    return v2

    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/SimpleTimeZone;

    move-object v1, v0

    if-eqz v1, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    if-ne v2, v3, :cond_73

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_71

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v2, v3, :cond_73

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_73

    :cond_71
    const/4 v2, 0x1

    goto :goto_6

    :cond_73
    move v2, v4

    goto :goto_6
.end method

.method public hashCode()I
    .registers 5

    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    ushr-int/lit8 v2, v2, 0x8

    iget-boolean v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v3, :cond_88

    const/4 v3, 0x0

    :goto_10
    add-int/2addr v2, v3

    xor-int v0, v1, v2

    iget-boolean v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_87

    iget v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    ushr-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    ushr-int/lit8 v2, v2, 0xb

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    ushr-int/lit8 v2, v2, 0xc

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    ushr-int/lit8 v2, v2, 0xd

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    ushr-int/lit8 v2, v2, 0xe

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    ushr-int/lit8 v2, v2, 0xf

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    ushr-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    ushr-int/lit8 v2, v2, 0x11

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    ushr-int/lit8 v2, v2, 0x12

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    ushr-int/lit8 v2, v2, 0x13

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    ushr-int/lit8 v2, v2, 0x14

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    ushr-int/lit8 v2, v2, 0x15

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    ushr-int/lit8 v2, v2, 0x16

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    ushr-int/lit8 v2, v2, 0x17

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_87
    return v0

    :cond_88
    const/4 v3, 0x1

    goto :goto_10
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 4

    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/GregorianCalendar;->inDaylightTime()Z

    move-result v1

    return v1
.end method

.method public setDSTSavings(I)V
    .registers 3

    if-gtz p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setEndRule(III)V
    .registers 11

    const/4 v6, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    move v1, p1

    move v3, v2

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/STZInfo;->setEnd(IIIIIZ)V

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    return-void
.end method

.method public setEndRule(IIII)V
    .registers 12

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/STZInfo;->setEnd(IIIIIZ)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void
.end method

.method public setEndRule(IIIIZ)V
    .registers 13

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    const/4 v2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->setEndRule(IIIIIZ)V

    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setRawOffset(I)V
    .registers 3

    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public setStartRule(III)V
    .registers 13

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    move v1, p1

    move v3, v2

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/STZInfo;->setStart(IIIIIZ)V

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v7, p3

    move v8, v6

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void
.end method

.method public setStartRule(IIII)V
    .registers 12

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/STZInfo;->setStart(IIIIIZ)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void
.end method

.method public setStartRule(IIIIZ)V
    .registers 13

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    const/4 v2, -0x1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/STZInfo;->setStart(IIIIIZ)V

    if-eqz p5, :cond_19

    move v2, p2

    :goto_10
    neg-int v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    :cond_19
    neg-int v0, p2

    move v2, v0

    goto :goto_10
.end method

.method public setStartYear(I)V
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    iput p1, v0, Lcom/ibm/icu/util/STZInfo;->sy:I

    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTimeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
