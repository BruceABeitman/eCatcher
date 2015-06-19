.class public Lcom/ibm/icu/util/AnnualTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source "AnnualTimeZoneRule.java"
.field public static final MAX_YEAR:I = 0x7fffffff
.field private static final serialVersionUID:J = -0x7b1af05f36c7b6e0L
.field private final dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
.field private final endYear:I
.field private final startYear:I
.method public constructor <init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V
.registers 8
const v0, 0x7fffffff
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V
iput-object p4, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
iput p5, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
if-le p6, v0, :cond_f
:goto_c
iput v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
return-void
:cond_f
move v0, p6
goto :goto_c
.end method
.method public getEndYear()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
return v0
.end method
.method public getFinalStart(II)Ljava/util/Date;
.registers 5
iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
const v1, 0x7fffffff
if-ne v0, v1, :cond_9
const/4 v0, 0x0
:goto_8
return-object v0
:cond_9
iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;
move-result-object v0
goto :goto_8
.end method
.method public getFirstStart(II)Ljava/util/Date;
.registers 4
iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public getNextStart(JIIZ)Ljava/util/Date;
.registers 11
const/4 v3, 0x0
invoke-static {p1, p2, v3}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I
move-result-object v1
const/4 v3, 0x0
aget v2, v1, v3
iget v3, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
if-ge v2, v3, :cond_11
invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;
move-result-object v3
:goto_10
return-object v3
:cond_11
invoke-virtual {p0, v2, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;
move-result-object v0
if-eqz v0, :cond_2f
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v3, v3, p1
if-ltz v3, :cond_29
if-nez p5, :cond_2f
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v3, v3, p1
if-nez v3, :cond_2f
:cond_29
add-int/lit8 v3, v2, 0x1
invoke-virtual {p0, v3, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;
move-result-object v0
:cond_2f
move-object v3, v0
goto :goto_10
.end method
.method public getPreviousStart(JIIZ)Ljava/util/Date;
.registers 11
const/4 v3, 0x0
invoke-static {p1, p2, v3}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I
move-result-object v1
const/4 v3, 0x0
aget v2, v1, v3
iget v3, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
if-le v2, v3, :cond_11
invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFinalStart(II)Ljava/util/Date;
move-result-object v3
:goto_10
return-object v3
:cond_11
invoke-virtual {p0, v2, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;
move-result-object v0
if-eqz v0, :cond_30
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v3, v3, p1
if-gtz v3, :cond_29
if-nez p5, :cond_30
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v3
cmp-long v3, v3, p1
if-nez v3, :cond_30
:cond_29
const/4 v3, 0x1
sub-int v3, v2, v3
invoke-virtual {p0, v3, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;
move-result-object v0
:cond_30
move-object v3, v0
goto :goto_10
.end method
.method public getRule()Lcom/ibm/icu/util/DateTimeRule;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
return-object v0
.end method
.method public getStartInYear(III)Ljava/util/Date;
.registers 22
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
move v14, v0
move/from16 v0, p1
move v1, v14
if-lt v0, v1, :cond_14
move-object/from16 v0, p0
iget v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
move v14, v0
move/from16 v0, p1
move v1, v14
if-le v0, v1, :cond_16
:cond_14
const/4 v14, 0x0
:goto_15
return-object v14
:cond_16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I
move-result v12
if-nez v12, :cond_77
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I
move-result v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v15, v0
invoke-virtual {v15}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I
move-result v15
move/from16 v0, p1
move v1, v14
move v2, v15
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J
move-result-wide v8
:goto_3b
const-wide/32 v14, 0x5265c00
mul-long/2addr v14, v8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I
move-result v16
move/from16 v0, v16
int-to-long v0, v0
move-wide/from16 v16, v0
add-long v10, v14, v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I
move-result v14
const/4 v15, 0x2
if-eq v14, v15, :cond_61
move/from16 v0, p2
int-to-long v0, v0
move-wide v14, v0
sub-long/2addr v10, v14
:cond_61
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I
move-result v14
if-nez v14, :cond_71
move/from16 v0, p3
int-to-long v0, v0
move-wide v14, v0
sub-long/2addr v10, v14
:cond_71
new-instance v14, Ljava/util/Date;
invoke-direct {v14, v10, v11}, Ljava/util/Date;-><init>(J)V
goto :goto_15
:cond_77
const/4 v3, 0x1
const/4 v14, 0x1
if-ne v12, v14, :cond_e1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I
move-result v13
if-lez v13, :cond_b8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I
move-result v14
const/4 v15, 0x1
move/from16 v0, p1
move v1, v14
move v2, v15
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J
move-result-wide v8
const/4 v14, 0x1
sub-int v14, v13, v14
mul-int/lit8 v14, v14, 0x7
int-to-long v14, v14
add-long/2addr v8, v14
:goto_9f
invoke-static {v8, v9}, Lcom/ibm/icu/impl/Grego;->dayOfWeek(J)I
move-result v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I
move-result v14
sub-int v4, v14, v6
if-eqz v3, :cond_10f
if-gez v4, :cond_b5
add-int/lit8 v14, v4, 0x7
move v4, v14
:goto_b5
:cond_b5
int-to-long v14, v4
add-long/2addr v8, v14
goto :goto_3b
:cond_b8
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I
move-result v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v15, v0
invoke-virtual {v15}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I
move-result v15
move/from16 v0, p1
move v1, v15
invoke-static {v0, v1}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I
move-result v15
move/from16 v0, p1
move v1, v14
move v2, v15
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J
move-result-wide v8
add-int/lit8 v14, v13, 0x1
mul-int/lit8 v14, v14, 0x7
int-to-long v14, v14
add-long/2addr v8, v14
goto :goto_9f
:cond_e1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I
move-result v7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
move-object v14, v0
invoke-virtual {v14}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I
move-result v5
const/4 v14, 0x3
if-ne v12, v14, :cond_106
const/4 v3, 0x0
const/4 v14, 0x1
if-ne v7, v14, :cond_106
const/16 v14, 0x1d
if-ne v5, v14, :cond_106
invoke-static/range {p1 .. p1}, Lcom/ibm/icu/impl/Grego;->isLeapYear(I)Z
move-result v14
if-nez v14, :cond_106
add-int/lit8 v5, v5, -0x1
:cond_106
move/from16 v0, p1
move v1, v7
move v2, v5
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J
move-result-wide v8
goto :goto_9f
:cond_10f
if-lez v4, :cond_115
const/4 v14, 0x7
sub-int v14, v4, v14
move v4, v14
:cond_115
goto :goto_b5
.end method
.method public getStartYear()I
.registers 2
iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
return v0
.end method
.method public isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z
.registers 7
const/4 v4, 0x0
instance-of v2, p1, Lcom/ibm/icu/util/AnnualTimeZoneRule;
if-nez v2, :cond_7
move v2, v4
:goto_6
return v2
:cond_7
move-object v0, p1
check-cast v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;
move-object v1, v0
iget v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
iget v3, v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
if-ne v2, v3, :cond_26
iget v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
iget v3, v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
if-ne v2, v3, :cond_26
iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
iget-object v3, v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
invoke-super {p0, p1}, Lcom/ibm/icu/util/TimeZoneRule;->isEquivalentTo(Lcom/ibm/icu/util/TimeZoneRule;)Z
move-result v2
goto :goto_6
:cond_26
move v2, v4
goto :goto_6
.end method
.method public isTransitionRule()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-super {p0}, Lcom/ibm/icu/util/TimeZoneRule;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", rule={"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "}"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", startYear="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, ", endYear="
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v1, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
const v2, 0x7fffffff
if-ne v1, v2, :cond_58
const-string v1, "max"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_53
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_58
iget v1, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
goto :goto_53
.end method