.class public Lcom/ibm/icu/util/RuleBasedTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# static fields
.field private static final serialVersionUID:J = 0x693487808c366c3fL


# instance fields
.field private finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private historicRules:Ljava/util/List;

.field private transient historicTransitions:Ljava/util/List;

.field private final initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private transient upToDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V
    .registers 3

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    return-void
.end method

.method private complete()V
    .registers 30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    move v10, v0

    if-eqz v10, :cond_8

    :goto_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    const/4 v11, 0x1

    aget-object v10, v10, v11

    if-nez v10, :cond_21

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Incomplete final rules"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move-object v10, v0

    if-nez v10, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    if-eqz v10, :cond_1a0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object/from16 v17, v0

    const-wide v6, -0x28ec76c40e65000L

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move-object v10, v0

    if-eqz v10, :cond_e9

    new-instance v21, Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v0, v21

    move v1, v10

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    :goto_52
    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    const-wide v25, 0x28d47dbbf19b000L

    const/16 v24, 0x0

    const/16 v22, 0x0

    :goto_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_c7

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_7a

    :cond_77
    :goto_77
    add-int/lit8 v22, v22, 0x1

    goto :goto_63

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/TimeZoneRule;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v18

    if-nez v18, :cond_93

    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->set(I)V

    goto :goto_77

    :cond_93
    move-object v0, v5

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_77

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v11

    if-ne v10, v11, :cond_ba

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v11

    if-eq v10, v11, :cond_77

    :cond_ba
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    cmp-long v10, v27, v25

    if-gez v10, :cond_77

    move-wide/from16 v25, v27

    move-object/from16 v24, v5

    goto :goto_77

    :cond_c7
    if-nez v24, :cond_1ac

    const/16 v16, 0x1

    const/16 v23, 0x0

    :goto_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v0, v23

    move v1, v10

    if-ge v0, v1, :cond_e7

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_1a8

    const/16 v16, 0x0

    :cond_e7
    if-eqz v16, :cond_1ac

    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    if-eqz v10, :cond_1a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    if-nez v10, :cond_101

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    const/4 v15, 0x0

    move-wide v11, v6

    invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    const/4 v15, 0x0

    move-wide v11, v6

    invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_21a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    new-instance v11, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object v0, v11

    move-wide v1, v12

    move-object/from16 v3, v17

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    new-instance v11, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v15, v0

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a0
    :goto_1a0
    const/4 v10, 0x1

    move v0, v10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    goto/16 :goto_7

    :cond_1a8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_cd

    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    if-eqz v10, :cond_1ed

    const/16 v22, 0x0

    :goto_1b5
    const/4 v10, 0x2

    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_1ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    aget-object v10, v10, v22

    move-object v0, v10

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1ca

    :cond_1c7
    :goto_1c7
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b5

    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    aget-object v10, v10, v22

    const/4 v15, 0x0

    move-wide v11, v6

    move v13, v8

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v18

    if-eqz v18, :cond_1c7

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    cmp-long v10, v27, v25

    if-gez v10, :cond_1c7

    move-wide/from16 v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    aget-object v24, v10, v22

    goto :goto_1c7

    :cond_1ed
    if-eqz v24, :cond_e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    if-nez v10, :cond_200

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    new-instance v11, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object v0, v11

    move-wide/from16 v1, v25

    move-object/from16 v3, v17

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v6, v25

    move-object/from16 v17, v24

    goto/16 :goto_52

    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    new-instance v11, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v14, v0

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object v0, v11

    move-wide v1, v12

    move-object/from16 v3, v17

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v10, v0

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v13, v0

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v14, v0

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v10, v0

    new-instance v11, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v14, v0

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a0
.end method

.method private findRuleInFinal(JZII)Lcom/ibm/icu/util/TimeZoneRule;
    .registers 20

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    move-wide v9, p1

    if-eqz p3, :cond_c9

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v11

    int-to-long v3, v11

    sub-long v1, v9, v3

    :goto_4c
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v12

    move-wide v1, p1

    if-eqz p3, :cond_99

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v11

    int-to-long v3, v11

    sub-long/2addr v1, v3

    :cond_99
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto/16 :goto_19

    :cond_c2
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto/16 :goto_19

    :cond_c9
    move-wide v1, v9

    goto :goto_4c
.end method

.method private static getLocalDelta(IIIIII)I
    .registers 14

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v0, 0x0

    add-int v3, p0, p1

    add-int v2, p2, p3

    if-eqz p1, :cond_24

    if-nez p3, :cond_24

    move v1, v6

    :goto_d
    if-nez p1, :cond_26

    if-eqz p3, :cond_26

    move v4, v6

    :goto_12
    sub-int v5, v2, v3

    if-ltz v5, :cond_40

    and-int/lit8 v5, p4, 0x3

    if-ne v5, v6, :cond_1c

    if-nez v1, :cond_22

    :cond_1c
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v7, :cond_28

    if-eqz v4, :cond_28

    :cond_22
    move v0, v3

    :goto_23
    return v0

    :cond_24
    move v1, v5

    goto :goto_d

    :cond_26
    move v4, v5

    goto :goto_12

    :cond_28
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v6, :cond_2e

    if-nez v4, :cond_34

    :cond_2e
    and-int/lit8 v5, p4, 0x3

    if-ne v5, v7, :cond_36

    if-eqz v1, :cond_36

    :cond_34
    move v0, v2

    goto :goto_23

    :cond_36
    and-int/lit8 v5, p4, 0xc

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3e

    move v0, v3

    goto :goto_23

    :cond_3e
    move v0, v2

    goto :goto_23

    :cond_40
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v6, :cond_46

    if-nez v1, :cond_4c

    :cond_46
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v7, :cond_4e

    if-eqz v4, :cond_4e

    :cond_4c
    move v0, v2

    goto :goto_23

    :cond_4e
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v6, :cond_54

    if-nez v4, :cond_5a

    :cond_54
    and-int/lit8 v5, p5, 0x3

    if-ne v5, v7, :cond_5c

    if-eqz v1, :cond_5c

    :cond_5a
    move v0, v3

    goto :goto_23

    :cond_5c
    and-int/lit8 v5, p5, 0xc

    const/4 v6, 0x4

    if-ne v5, v6, :cond_63

    move v0, v3

    goto :goto_23

    :cond_63
    move v0, v2

    goto :goto_23
.end method

.method private getOffset(JZII[I)V
    .registers 15

    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v6, :cond_18

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    :goto_9
    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v7

    aput v7, p6, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v7

    aput v7, p6, v6

    return-void

    :cond_18
    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v0, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_2c

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    goto :goto_9

    :cond_2c
    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v1, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v2

    cmp-long v6, p1, v2

    if-lez v6, :cond_5d

    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v6, :cond_4e

    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    goto :goto_9

    :cond_4e
    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    goto :goto_9

    :cond_5b
    add-int/lit8 v0, v0, -0x1

    :cond_5d
    if-ltz v0, :cond_6f

    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-static {v1, p3, p4, p5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-ltz v6, :cond_5b

    :cond_6f
    iget-object v6, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    goto :goto_9
.end method

.method private static getTransitionTime(Lcom/ibm/icu/util/TimeZoneTransition;ZII)J
    .registers 12

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v6

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    :cond_2e
    return-wide v6
.end method


# virtual methods
.method public addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ibm/icu/util/TimeZoneRule;->isTransitionRule()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Rule must be a transition rule"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    instance-of v1, p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_48

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-nez v1, :cond_33

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iput-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    check-cast p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object p1, v1, v3

    :goto_30
    iput-boolean v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void

    :cond_33
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    check-cast p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aput-object p1, v1, v4

    goto :goto_30

    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too many final rules"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v1, :cond_53

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    :cond_53
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/RuleBasedTimeZone;

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    :cond_16
    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, [Lcom/ibm/icu/util/AnnualTimeZoneRule;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    check-cast p0, [Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iput-object p0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    :cond_26
    return-object v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 26

    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_c

    const/4 v5, 0x0

    :goto_b
    return-object v5

    :cond_c
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v21 .. v21}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v19

    cmp-long v5, v19, p1

    if-gtz v5, :cond_28

    if-eqz p3, :cond_4c

    cmp-long v5, v19, p1

    if-nez v5, :cond_4c

    :cond_28
    move-object/from16 v15, v21

    :goto_2a
    if-eqz v15, :cond_14e

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v11

    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v18

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    if-ne v5, v6, :cond_14e

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-ne v5, v6, :cond_14e

    if-eqz v13, :cond_141

    const/4 v5, 0x0

    goto :goto_b

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v12, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v21 .. v21}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v19

    if-eqz p3, :cond_70

    cmp-long v5, v19, p1

    if-nez v5, :cond_70

    move-object/from16 v15, v21

    goto :goto_2a

    :cond_70
    cmp-long v5, v19, p1

    if-gtz v5, :cond_11a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v5, v0

    if-eqz v5, :cond_117

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    move-wide/from16 v6, p1

    move/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    move-wide/from16 v6, p1

    move/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_f8

    new-instance v21, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object/from16 v0, v21

    move-wide v1, v5

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    :goto_f3
    move-object/from16 v15, v21

    const/4 v13, 0x1

    goto/16 :goto_2a

    :cond_f8
    new-instance v21, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object/from16 v0, v21

    move-wide v1, v5

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_f3

    :cond_117
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_11a
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v14, v21

    :goto_11e
    if-lez v12, :cond_139

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual/range {v21 .. v21}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v19

    cmp-long v5, v19, p1

    if-ltz v5, :cond_139

    if-nez p3, :cond_13c

    cmp-long v5, v19, p1

    if-nez v5, :cond_13c

    :cond_139
    move-object v15, v14

    goto/16 :goto_2a

    :cond_13c
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v14, v21

    goto :goto_11e

    :cond_141
    invoke-virtual {v15}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v15

    :cond_14e
    move-object v5, v15

    goto/16 :goto_b
.end method

.method public getOffset(IIIIII)I
    .registers 16

    const/4 v3, 0x1

    if-nez p1, :cond_5

    sub-int p2, v3, p2

    :cond_5
    invoke-static {p2, p3, p4}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v4, v7

    int-to-long v7, p6

    add-long v1, v4, v7

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v4, 0x3

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    const/4 v0, 0x0

    aget v0, v6, v0

    aget v3, v6, v3

    add-int/2addr v0, v3

    return v0
.end method

.method public getOffset(JZ[I)V
    .registers 12

    const/4 v4, 0x4

    const/16 v5, 0xc

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .registers 13

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 19

    invoke-direct {p0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->complete()V

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    if-eqz p3, :cond_47

    cmp-long v0, v12, p1

    if-nez v0, :cond_47

    move-object v8, v14

    :goto_1e
    if-eqz v8, :cond_45

    invoke-virtual {v8}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v8}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v11

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_45

    invoke-virtual {v6}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-ne v0, v1, :cond_45

    invoke-virtual {v8}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v8

    :cond_45
    move-object v0, v8

    goto :goto_8

    :cond_47
    cmp-long v0, v12, p1

    if-ltz v0, :cond_4d

    const/4 v0, 0x0

    goto :goto_8

    :cond_4d
    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v7, v0, v1

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    if-eqz p3, :cond_6a

    cmp-long v0, v12, p1

    if-nez v0, :cond_6a

    move-object v8, v14

    goto :goto_1e

    :cond_6a
    cmp-long v0, v12, p1

    if-gez v0, :cond_e0

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    move-wide/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v9

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v3

    iget-object v1, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    move-wide/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_cc

    new-instance v14, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    :cond_c9
    :goto_c9
    move-object v8, v14

    goto/16 :goto_1e

    :cond_cc
    new-instance v14, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_c9

    :cond_e0
    add-int/lit8 v7, v7, -0x1

    :goto_e2
    if-ltz v7, :cond_fa

    iget-object v0, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v14}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v0, v12, p1

    if-ltz v0, :cond_fa

    if-eqz p3, :cond_fd

    cmp-long v0, v12, p1

    if-nez v0, :cond_fd

    :cond_fa
    move-object v8, v14

    goto/16 :goto_1e

    :cond_fd
    add-int/lit8 v7, v7, -0x1

    goto :goto_e2
.end method

.method public getRawOffset()I
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v3, v2, v4

    return v3
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    :cond_e
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v6

    if-eqz v4, :cond_3e

    add-int/lit8 v3, v3, 0x2

    :cond_1a
    :goto_1a
    new-array v2, v3, [Lcom/ibm/icu/util/TimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    aput-object v4, v2, v7

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v4, :cond_41

    :goto_25
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_41

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    sub-int v5, v0, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/TimeZoneRule;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_41
    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_5a

    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v7

    aput-object v4, v2, v0

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v6

    if-eqz v4, :cond_59

    iget-object v4, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v4, v4, v6

    aput-object v4, v2, v1

    :cond_59
    move v0, v1

    :cond_5a
    return-object v2
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .registers 13

    const/4 v10, 0x0

    instance-of v8, p1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    if-nez v8, :cond_7

    move v8, v10

    :goto_6
    return v8

    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/RuleBasedTimeZone;

    move-object v6, v0

    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    iget-object v9, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual {v8, v9}, Lcom/ibm/icu/util/InitialTimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v8

    if-nez v8, :cond_17

    move v8, v10

    goto :goto_6

    :cond_17
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v8, :cond_50

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v8, :cond_50

    const/4 v2, 0x0

    :goto_20
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    array-length v8, v8

    if-ge v2, v8, :cond_5a

    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    if-nez v8, :cond_34

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    if-nez v8, :cond_34

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_34
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    if-eqz v8, :cond_4e

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    if-eqz v8, :cond_4e

    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v8, v8, v2

    iget-object v9, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v8

    if-nez v8, :cond_31

    :cond_4e
    move v8, v10

    goto :goto_6

    :cond_50
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-nez v8, :cond_58

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->finalRules:[Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v8, :cond_5a

    :cond_58
    move v8, v10

    goto :goto_6

    :cond_5a
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v8, :cond_a3

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v8, :cond_a3

    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_72

    move v8, v10

    goto :goto_6

    :cond_72
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ibm/icu/util/TimeZoneRule;

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v1, 0x0

    :cond_8b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/TimeZoneRule;

    invoke-virtual {v7, v5}, Lcom/ibm/icu/util/TimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z

    move-result v8

    if-eqz v8, :cond_8b

    const/4 v1, 0x1

    :cond_9e
    if-nez v1, :cond_78

    move v8, v10

    goto/16 :goto_6

    :cond_a3
    iget-object v8, p0, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v8, :cond_ab

    iget-object v8, v6, Lcom/ibm/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v8, :cond_ae

    :cond_ab
    move v8, v10

    goto/16 :goto_6

    :cond_ae
    const/4 v8, 0x1

    goto/16 :goto_6
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v1, v0, v4

    if-eqz v1, :cond_12

    move v1, v4

    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public setRawOffset(I)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRawOffset in RuleBasedTimeZone is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useDaylightTime()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x2

    new-array v2, v4, [I

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    aget v4, v2, v6

    if-eqz v4, :cond_12

    move v4, v6

    :goto_11
    return v4

    :cond_12
    invoke-virtual {p0, v0, v1, v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_24

    move v4, v6

    goto :goto_11

    :cond_24
    move v4, v5

    goto :goto_11
.end method
