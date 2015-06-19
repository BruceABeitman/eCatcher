.class Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;
.super Ljava/lang/Object;
.source "BasicPeriodFormatter.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/PeriodFormatter;


# instance fields
.field private customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

.field private factory:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->factory:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;

    iput-object p2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    iput-object p4, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    return-void
.end method

.method private format(IZ[I)Ljava/lang/String;
    .registers 40

    const/16 v28, 0x0

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    move/from16 v0, v23

    move v1, v4

    if-ge v0, v1, :cond_19

    aget v4, p3, v23

    if-lez v4, :cond_16

    const/4 v4, 0x1

    shl-int v4, v4, v23

    or-int v28, v28, v4

    :cond_16
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v4

    if-nez v4, :cond_47

    const/16 v23, 0x0

    const/16 v27, 0x1

    :goto_28
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    move/from16 v0, v23

    move v1, v4

    if-ge v0, v1, :cond_43

    and-int v4, v28, v27

    if-eqz v4, :cond_3e

    aget v4, p3, v23

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e

    xor-int/lit8 v4, v27, -0x1

    and-int v28, v28, v4

    :cond_3e
    add-int/lit8 v23, v23, 0x1

    shl-int/lit8 v27, v27, 0x1

    goto :goto_28

    :cond_43
    if-nez v28, :cond_47

    const/4 v4, 0x0

    :goto_46
    return-object v4

    :cond_47
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x1

    sget-object v5, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    iget-byte v5, v5, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v4, v5

    and-int v4, v4, v28

    if-eqz v4, :cond_7e

    sget-object v4, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    move-object v0, v4

    iget-byte v0, v0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    move/from16 v34, v0

    sget-object v4, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    move-object v0, v4

    iget-byte v0, v0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    move/from16 v31, v0

    const/4 v4, 0x1

    shl-int v32, v4, v34

    const/4 v4, 0x1

    shl-int v29, v4, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v4

    packed-switch v4, :pswitch_data_20e

    :cond_7e
    :goto_7e
    const/16 v21, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    sub-int v26, v4, v5

    :goto_87
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    move/from16 v0, v21

    move v1, v4

    if-ge v0, v1, :cond_cb

    const/4 v4, 0x1

    shl-int v4, v4, v21

    and-int v4, v4, v28

    if-nez v4, :cond_cb

    add-int/lit8 v21, v21, 0x1

    goto :goto_87

    :pswitch_9a
    and-int v4, v28, v32

    if-eqz v4, :cond_7e

    aget v4, p3, v34

    aget v5, p3, v31

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    aput v4, p3, v34

    xor-int/lit8 v4, v29, -0x1

    and-int v28, v28, v4

    const/16 v22, 0x1

    goto :goto_7e

    :pswitch_b0
    and-int v4, v28, v32

    if-nez v4, :cond_b9

    or-int v28, v28, v32

    const/4 v4, 0x1

    aput v4, p3, v34

    :cond_b9
    aget v4, p3, v34

    aget v5, p3, v31

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    aput v4, p3, v34

    xor-int/lit8 v4, v29, -0x1

    and-int v28, v28, v4

    const/16 v22, 0x1

    goto :goto_7e

    :cond_cb
    :goto_cb
    move/from16 v0, v26

    move/from16 v1, v21

    if-le v0, v1, :cond_db

    const/4 v4, 0x1

    shl-int v4, v4, v26

    and-int v4, v4, v28

    if-nez v4, :cond_db

    add-int/lit8 v26, v26, -0x1

    goto :goto_cb

    :cond_db
    const/16 v24, 0x1

    move/from16 v23, v21

    :goto_df
    move/from16 v0, v23

    move/from16 v1, v26

    if-gt v0, v1, :cond_f3

    const/4 v4, 0x1

    shl-int v4, v4, v23

    and-int v4, v4, v28

    if-eqz v4, :cond_160

    aget v4, p3, v23

    const/4 v5, 0x1

    if-le v4, v5, :cond_160

    const/16 v24, 0x0

    :cond_f3
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    if-eqz v4, :cond_103

    if-eqz v24, :cond_105

    :cond_103
    const/16 p1, 0x0

    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    if-eqz v4, :cond_110

    if-eqz v24, :cond_164

    :cond_110
    const/16 v35, 0x0

    :goto_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    move/from16 v2, v35

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendPrefix(IILjava/lang/StringBuffer;)Z

    move-result v10

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_16e

    const/4 v4, 0x1

    move v11, v4

    :goto_129
    const/4 v13, 0x1

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v4, v0

    iget-byte v4, v4, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v4, :cond_171

    const/4 v4, 0x1

    move v9, v4

    :goto_137
    move/from16 v23, v21

    move/from16 v25, v23

    :goto_13b
    move/from16 v0, v23

    move/from16 v1, v26

    if-gt v0, v1, :cond_1fa

    if-eqz v33, :cond_14e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendSkippedUnit(Ljava/lang/StringBuffer;)V

    const/16 v33, 0x0

    const/4 v13, 0x1

    :cond_14e
    :goto_14e
    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_174

    const/4 v4, 0x1

    shl-int v4, v4, v25

    and-int v4, v4, v28

    if-nez v4, :cond_174

    const/16 v33, 0x1

    goto :goto_14e

    :cond_160
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_df

    :cond_164
    if-eqz p2, :cond_16a

    const/4 v4, 0x2

    move/from16 v35, v4

    :goto_169
    goto :goto_112

    :cond_16a
    const/4 v4, 0x1

    move/from16 v35, v4

    goto :goto_169

    :cond_16e
    const/4 v4, 0x0

    move v11, v4

    goto :goto_129

    :cond_171
    const/4 v4, 0x0

    move v9, v4

    goto :goto_137

    :cond_174
    sget-object v4, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    aget-object v5, v4, v23

    aget v4, p3, v23

    const/4 v6, 0x1

    sub-int v6, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v4, v0

    iget-byte v7, v4, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e7

    if-eqz v22, :cond_18d

    const/4 v7, 0x5

    :cond_18d
    :goto_18d
    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e9

    const/4 v4, 0x1

    move v12, v4

    :goto_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v8, v0

    iget-byte v8, v8, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    invoke-virtual/range {v4 .. v14}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendUnit(Lcom/ibm/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z

    move-result v30

    or-int v33, v33, v30

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v4, v0

    iget-byte v4, v4, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v4, :cond_1f8

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_1f8

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_1ec

    const/4 v4, 0x1

    move/from16 v18, v4

    :goto_1c0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f0

    const/4 v4, 0x1

    move/from16 v19, v4

    :goto_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-object v4, v0

    iget-byte v4, v4, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1f4

    const/4 v4, 0x1

    move/from16 v17, v4

    :goto_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v15, v0

    move-object/from16 v16, v5

    move-object/from16 v20, v14

    invoke-virtual/range {v15 .. v20}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendUnitSeparator(Lcom/ibm/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z

    move-result v10

    :goto_1e3
    move/from16 v23, v25

    goto/16 :goto_13b

    :cond_1e7
    const/4 v7, 0x0

    goto :goto_18d

    :cond_1e9
    const/4 v4, 0x0

    move v12, v4

    goto :goto_195

    :cond_1ec
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_1c0

    :cond_1f0
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_1c9

    :cond_1f4
    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_1d6

    :cond_1f8
    const/4 v10, 0x0

    goto :goto_1e3

    :cond_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    move/from16 v2, v35

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;->appendSuffix(IILjava/lang/StringBuffer;)V

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_46

    :pswitch_data_20e
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_9a
    .end packed-switch
.end method


# virtual methods
.method public format(Lcom/ibm/icu/impl/duration/Period;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/ibm/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-byte v0, p1, Lcom/ibm/icu/impl/duration/Period;->timeLimit:B

    iget-boolean v1, p1, Lcom/ibm/icu/impl/duration/Period;->inFuture:Z

    iget-object v2, p1, Lcom/ibm/icu/impl/duration/Period;->counts:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->format(IZ[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatter;
    .registers 6

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->factory:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->getData(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;

    iget-object v2, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->factory:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object v3, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;->customs:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    :goto_17
    return-object v1

    :cond_18
    move-object v1, p0

    goto :goto_17
.end method
