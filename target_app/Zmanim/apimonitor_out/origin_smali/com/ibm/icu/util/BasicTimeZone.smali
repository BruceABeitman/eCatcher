.class public abstract Lcom/ibm/icu/util/BasicTimeZone;
.super Lcom/ibm/icu/util/TimeZone;
.source "BasicTimeZone.java"


# static fields
.field protected static final FORMER_LATTER_MASK:I = 0xc

.field public static final LOCAL_DST:I = 0x3

.field public static final LOCAL_FORMER:I = 0x4

.field public static final LOCAL_LATTER:I = 0xc

.field public static final LOCAL_STD:I = 0x1

.field private static final MILLIS_PER_YEAR:J = 0x757b12c00L

.field protected static final STD_DST_MASK:I = 0x3

.field private static final serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ibm/icu/util/TimeZone;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
.end method

.method public getOffsetFromLocal(JII[I)V
    .registers 8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
.end method

.method public getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 30

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_29c

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v20

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v18

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v22

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_3f

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_53

    :cond_3f
    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_26b

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_26b

    :cond_53
    const-wide v9, 0x757b12c00L

    add-long v9, v9, p1

    cmp-long v6, v9, v22

    if-lez v6, :cond_26b

    const/4 v6, 0x2

    new-array v15, v6, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    int-to-long v9, v6

    add-long v9, v9, v22

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    const/4 v6, 0x0

    invoke-static {v9, v10, v6}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v17

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v8, 0x2

    aget v8, v17, v8

    invoke-static {v6, v7, v8}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v7

    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v8, 0x3

    aget v8, v17, v8

    const/4 v9, 0x5

    aget v9, v17, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    const/4 v6, 0x0

    new-instance v8, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x0

    aget v13, v17, v12

    const v14, 0x7fffffff

    move-object v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    aput-object v8, v15, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v26

    const/4 v8, 0x0

    if-eqz v26, :cond_1a2

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_df

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_f3

    :cond_df
    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_1a2

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_1a2

    :cond_f3
    const-wide v9, 0x757b12c00L

    add-long v9, v9, v22

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-lez v6, :cond_1a2

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v9

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    move-wide v0, v9

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v17

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v8, 0x2

    aget v8, v17, v8

    invoke-static {v6, v7, v8}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v7

    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v8, 0x3

    aget v8, v17, v8

    const/4 v9, 0x5

    aget v9, v17, v9

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    new-instance v8, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v12, 0x1

    sub-int v13, v6, v12

    const v14, 0x7fffffff

    move-object v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    const/4 v13, 0x1

    move-wide/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v16

    if-eqz v16, :cond_1a2

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v6, v9, p1

    if-gtz v6, :cond_1a2

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_1a2

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_1a2

    const/4 v6, 0x1

    aput-object v8, v15, v6

    :cond_1a2
    const/4 v6, 0x1

    aget-object v6, v15, v6

    if-nez v6, :cond_265

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_265

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_1c7

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_1db

    :cond_1c7
    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_265

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_265

    :cond_1db
    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v9

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v9, v11

    move-wide v0, v9

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v17

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v8, 0x2

    aget v8, v17, v8

    invoke-static {v6, v7, v8}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v7

    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v6, 0x1

    aget v10, v17, v6

    const/4 v6, 0x3

    aget v12, v17, v6

    const/4 v6, 0x5

    aget v13, v17, v6

    const/4 v14, 0x0

    move-object v9, v5

    move v11, v7

    invoke-direct/range {v9 .. v14}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    new-instance v8, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v6

    const/4 v12, 0x1

    sub-int v13, v6, v12

    const v14, 0x7fffffff

    move-object v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    const/4 v13, 0x0

    move-wide/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v6, v9, v22

    if-lez v6, :cond_265

    const/4 v6, 0x1

    aput-object v8, v15, v6

    :cond_265
    const/4 v6, 0x1

    aget-object v6, v15, v6

    if-nez v6, :cond_286

    const/4 v15, 0x0

    :cond_26b
    :goto_26b
    new-instance v21, Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    :goto_278
    const/16 v25, 0x0

    if-nez v15, :cond_2f1

    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Lcom/ibm/icu/util/TimeZoneRule;

    move-object/from16 v25, v0

    const/4 v6, 0x0

    aput-object v21, v25, v6

    :goto_285
    return-object v25

    :cond_286
    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v19

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v20

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v18

    goto :goto_26b

    :cond_29c
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v26

    if-eqz v26, :cond_2cb

    new-instance v21, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    goto :goto_278

    :cond_2cb
    const/4 v6, 0x2

    move v0, v6

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v6

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    new-instance v21, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v24, v7

    const/4 v8, 0x1

    aget v8, v24, v8

    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    goto :goto_278

    :cond_2f1
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [Lcom/ibm/icu/util/TimeZoneRule;

    move-object/from16 v25, v0

    const/4 v6, 0x0

    aput-object v21, v25, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget-object v7, v15, v7

    aput-object v7, v25, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget-object v7, v15, v7

    aput-object v7, v25, v6

    goto/16 :goto_285
.end method

.method public abstract getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
.end method

.method public getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 44

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v17

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v40

    if-nez v40, :cond_13

    move-object/from16 v6, v17

    :goto_12
    return-object v6

    :cond_13
    new-instance v29, Ljava/util/BitSet;

    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v29

    move v1, v6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v24, Ljava/util/LinkedList;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedList;-><init>()V

    new-instance v28, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    move-object/from16 v0, v28

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object/from16 v0, v29

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v26, 0x1

    :goto_56
    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    move/from16 v0, v26

    move v1, v6

    if-ge v0, v1, :cond_7c

    aget-object v5, v17, v26

    invoke-virtual/range {v28 .. v28}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual/range {v28 .. v28}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    const/4 v10, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v22

    if-nez v22, :cond_79

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_79
    add-int/lit8 v26, v26, 0x1

    goto :goto_56

    :cond_7c
    move-wide/from16 v35, p1

    const/16 v21, 0x0

    const/16 v20, 0x0

    :cond_82
    :goto_82
    if-eqz v21, :cond_86

    if-nez v20, :cond_92

    :cond_86
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v40

    if-nez v40, :cond_a6

    :cond_92
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    new-array v0, v0, [Lcom/ibm/icu/util/TimeZoneRule;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v6, v31

    goto/16 :goto_12

    :cond_a6
    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v35

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v39

    const/16 v30, 0x1

    :goto_b0
    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_c4

    aget-object v6, v17, v30

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    :cond_c4
    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    move/from16 v0, v30

    move v1, v6

    if-lt v0, v1, :cond_d8

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "The rule was not found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d5
    add-int/lit8 v30, v30, 0x1

    goto :goto_b0

    :cond_d8
    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_82

    move-object/from16 v0, v39

    instance-of v0, v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move v6, v0

    if-eqz v6, :cond_1a9

    move-object/from16 v0, v39

    check-cast v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v34, v0

    move-wide/from16 v32, p1

    :goto_ed
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v40

    if-nez v40, :cond_127

    :cond_f9
    if-eqz v40, :cond_122

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    move-object/from16 v0, v34

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-lez v6, :cond_139

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_122
    :goto_122
    invoke-virtual/range {v29 .. v30}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_82

    :cond_127
    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f9

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v32

    goto :goto_ed

    :cond_139
    invoke-virtual/range {v34 .. v34}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    move-result-object v38

    invoke-virtual/range {v34 .. v34}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v37

    const/16 v27, 0x0

    :goto_143
    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    move/from16 v0, v27

    move v1, v6

    if-ge v0, v1, :cond_170

    aget-wide v32, v38, v27

    const/4 v6, 0x1

    move/from16 v0, v37

    move v1, v6

    if-ne v0, v1, :cond_15f

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    int-to-long v6, v6

    sub-long v32, v32, v6

    :cond_15f
    if-nez v37, :cond_16c

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    int-to-long v6, v6

    sub-long v32, v32, v6

    :cond_16c
    cmp-long v6, v32, p1

    if-lez v6, :cond_1a6

    :cond_170
    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    sub-int v19, v6, v27

    if-lez v19, :cond_122

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object v9, v0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v27

    move-object v2, v9

    move v3, v6

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    invoke-virtual/range {v34 .. v34}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v7

    invoke-virtual/range {v34 .. v34}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    move-result v8

    invoke-virtual/range {v34 .. v34}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v10

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_122

    :cond_1a6
    add-int/lit8 v27, v27, 0x1

    goto :goto_143

    :cond_1a9
    move-object/from16 v0, v39

    instance-of v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move v6, v0

    if-eqz v6, :cond_122

    move-object/from16 v0, v39

    check-cast v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object/from16 v18, v0

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    move-object/from16 v0, v18

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1f4

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e1
    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v6

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_122

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_227

    const/16 v21, 0x1

    goto/16 :goto_122

    :cond_1f4
    const/4 v6, 0x6

    move v0, v6

    new-array v0, v0, [I

    move-object/from16 v23, v0

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    new-instance v10, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v13

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v14

    const/4 v6, 0x0

    aget v15, v23, v6

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v16

    invoke-direct/range {v10 .. v16}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e1

    :cond_227
    const/16 v20, 0x1

    goto/16 :goto_122
.end method

.method public hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJ)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/BasicTimeZone;->hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJZ)Z

    move-result v0

    return v0
.end method

.method public hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJZ)Z
    .registers 24

    invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/util/BasicTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_7
    return v13

    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ibm/icu/util/BasicTimeZone;

    move v13, v0

    if-nez v13, :cond_11

    const/4 v13, 0x0

    goto :goto_7

    :cond_11
    const/4 v13, 0x2

    new-array v7, v13, [I

    const/4 v13, 0x2

    new-array v8, v13, [I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v13

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move v3, v13

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    if-eqz p6, :cond_53

    const/4 v13, 0x0

    aget v13, v7, v13

    const/4 v14, 0x1

    aget v14, v7, v14

    add-int/2addr v13, v14

    const/4 v14, 0x0

    aget v14, v8, v14

    const/4 v15, 0x1

    aget v15, v8, v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_51

    const/4 v13, 0x1

    aget v13, v7, v13

    if-eqz v13, :cond_47

    const/4 v13, 0x1

    aget v13, v8, v13

    if-eqz v13, :cond_51

    :cond_47
    const/4 v13, 0x1

    aget v13, v7, v13

    if-nez v13, :cond_65

    const/4 v13, 0x1

    aget v13, v8, v13

    if-eqz v13, :cond_65

    :cond_51
    const/4 v13, 0x0

    goto :goto_7

    :cond_53
    const/4 v13, 0x0

    aget v13, v7, v13

    const/4 v14, 0x0

    aget v14, v8, v14

    if-ne v13, v14, :cond_63

    const/4 v13, 0x1

    aget v13, v7, v13

    const/4 v14, 0x1

    aget v14, v8, v14

    if-eq v13, v14, :cond_65

    :cond_63
    const/4 v13, 0x0

    goto :goto_7

    :cond_65
    move-wide/from16 v9, p2

    :goto_67
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-wide v1, v9

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v11

    move-object/from16 v0, p1

    check-cast v0, Lcom/ibm/icu/util/BasicTimeZone;

    move-object/from16 p2, v0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-wide v1, v9

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v12

    if-eqz p6, :cond_10f

    if-eqz v11, :cond_c8

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_c8

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_c8

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_c8

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v11

    :cond_c8
    if-eqz v12, :cond_10f

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_10f

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_10f

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_10f

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v12

    :cond_10f
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v11, :cond_11c

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    cmp-long v13, v13, p4

    if-gtz v13, :cond_11c

    const/4 v5, 0x1

    :cond_11c
    if-eqz v12, :cond_127

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    cmp-long v13, v13, p4

    if-gtz v13, :cond_127

    const/4 v6, 0x1

    :cond_127
    if-nez v5, :cond_12e

    if-nez v6, :cond_12e

    const/4 v13, 0x1

    goto/16 :goto_7

    :cond_12e
    if-eqz v5, :cond_132

    if-nez v6, :cond_135

    :cond_132
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_135
    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_144

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_144
    if-eqz p6, :cond_195

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_192

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_17e

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_192

    :cond_17e
    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-nez v13, :cond_1bc

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_1bc

    :cond_192
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_195
    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    if-ne v13, v14, :cond_1b9

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    invoke-virtual {v12}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    if-eq v13, v14, :cond_1bc

    :cond_1b9
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_1bc
    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v9

    goto/16 :goto_67
.end method
