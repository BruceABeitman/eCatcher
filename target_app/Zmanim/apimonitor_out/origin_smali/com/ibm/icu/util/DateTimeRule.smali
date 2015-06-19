.class public Lcom/ibm/icu/util/DateTimeRule;
.super Ljava/lang/Object;
.source "DateTimeRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DOM:I = 0x0

.field public static final DOW:I = 0x1

.field private static final DOWSTR:[Ljava/lang/String; = null

.field public static final DOW_GEQ_DOM:I = 0x2

.field public static final DOW_LEQ_DOM:I = 0x3

.field private static final MONSTR:[Ljava/lang/String; = null

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = 0x1e4bc5ae0dd30373L


# instance fields
.field private final dateRuleType:I

.field private final dayOfMonth:I

.field private final dayOfWeek:I

.field private final millisInDay:I

.field private final month:I

.field private final timeRuleType:I

.field private final weekInMonth:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Sun"

    aput-object v1, v0, v4

    const-string v1, "Mon"

    aput-object v1, v0, v5

    const-string v1, "Tue"

    aput-object v1, v0, v6

    const-string v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    iput p5, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    return-void
.end method

.method public constructor <init>(IIIZII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_16

    const/4 v0, 0x2

    :goto_6
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    iput p5, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    iput p6, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return-void

    :cond_16
    const/4 v0, 0x3

    goto :goto_6
.end method


# virtual methods
.method public getDateRuleType()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    return v0
.end method

.method public getRuleDayOfMonth()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    return v0
.end method

.method public getRuleDayOfWeek()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    return v0
.end method

.method public getRuleMillisInDay()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    return v0
.end method

.method public getRuleMonth()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    return v0
.end method

.method public getRuleWeekInMonth()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return v0
.end method

.method public getTimeRuleType()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v8, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    packed-switch v8, :pswitch_data_100

    :goto_7
    iget v8, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    packed-switch v8, :pswitch_data_10c

    :goto_c
    iget v7, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    rem-int/lit16 v2, v7, 0x3e8

    div-int/lit16 v7, v7, 0x3e8

    rem-int/lit8 v6, v7, 0x3c

    div-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v3, v7, 0x3c

    div-int/lit8 v1, v7, 0x3c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "month="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Lcom/ibm/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    iget v9, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    aget-object v8, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ", date="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ", time="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    div-int/lit8 v8, v3, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    rem-int/lit8 v8, v3, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    div-int/lit8 v8, v6, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    rem-int/lit8 v8, v6, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    div-int/lit8 v8, v2, 0x64

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    div-int/lit8 v8, v2, 0xa

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    rem-int/lit8 v8, v2, 0xa

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, "("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :pswitch_83
    iget v8, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :pswitch_8b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v10, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :pswitch_aa
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v10, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :pswitch_cf
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v10, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :pswitch_f4
    const-string v5, "WALL"

    goto/16 :goto_c

    :pswitch_f8
    const-string v5, "STD"

    goto/16 :goto_c

    :pswitch_fc
    const-string v5, "UTC"

    goto/16 :goto_c

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_83
        :pswitch_8b
        :pswitch_aa
        :pswitch_cf
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_f8
        :pswitch_fc
    .end packed-switch
.end method
