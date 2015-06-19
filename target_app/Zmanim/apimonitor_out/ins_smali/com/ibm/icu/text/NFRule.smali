.class final Lcom/ibm/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"
.field public static final IMPROPER_FRACTION_RULE:I = -0x2
.field public static final MASTER_RULE:I = -0x4
.field public static final NEGATIVE_NUMBER_RULE:I = -0x1
.field public static final PROPER_FRACTION_RULE:I = -0x3
.field private baseValue:J
.field private exponent:S
.field private formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
.field private radix:I
.field private ruleText:Ljava/lang/String;
.field private sub1:Lcom/ibm/icu/text/NFSubstitution;
.field private sub2:Lcom/ibm/icu/text/NFSubstitution;
.method public constructor <init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0xa
iput v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I
const/4 v0, 0x0
iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
iput-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
iput-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
iput-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
iput-object v1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
iput-object p1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
return-void
.end method
.method private allIgnorable(Ljava/lang/String;)Z
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v5, -0x1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_b
move v4, v7
:goto_a
return v4
:cond_b
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z
move-result v4
if-eqz v4, :cond_3a
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getCollator()Lcom/ibm/icu/text/Collator;
move-result-object p0
check-cast p0, Lcom/ibm/icu/text/RuleBasedCollator;
move-object v0, p0
check-cast v0, Lcom/ibm/icu/text/RuleBasedCollator;
move-object v1, v0
invoke-virtual {v1, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
move-result-object v2
invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v3
:goto_27
if-eq v3, v5, :cond_34
invoke-static {v3}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I
move-result v4
if-nez v4, :cond_34
invoke-virtual {v2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v3
goto :goto_27
:cond_34
if-ne v3, v5, :cond_38
move v4, v7
goto :goto_a
:cond_38
move v4, v6
goto :goto_a
:cond_3a
move v4, v6
goto :goto_a
.end method
.method private expectedExponent()S
.registers 6
iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I
if-eqz v1, :cond_c
iget-wide v1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v3, 0x1
cmp-long v1, v1, v3
if-gez v1, :cond_e
:cond_c
const/4 v1, 0x0
:goto_d
return v1
:cond_e
iget-wide v1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
long-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D
move-result-wide v1
iget v3, p0, Lcom/ibm/icu/text/NFRule;->radix:I
int-to-double v3, v3
invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D
move-result-wide v3
div-double/2addr v1, v3
double-to-int v1, v1
int-to-short v0, v1
iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I
int-to-double v1, v1
add-int/lit8 v3, v0, 0x1
int-to-double v3, v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
move-result-wide v1
iget-wide v3, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
long-to-double v3, v3
cmpg-double v1, v1, v3
if-gtz v1, :cond_34
add-int/lit8 v1, v0, 0x1
int-to-short v1, v1
goto :goto_d
:cond_34
move v1, v0
goto :goto_d
.end method
.method private extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)Lcom/ibm/icu/text/NFSubstitution;
.registers 14
const/4 v5, 0x1
const/4 v9, 0x0
const/4 v4, -0x1
const/4 v7, 0x0
const/16 v1, 0xb
new-array v1, v1, [Ljava/lang/String;
const-string v2, "<<"
aput-object v2, v1, v9
const-string v2, "<%"
aput-object v2, v1, v5
const/4 v2, 0x2
const-string v3, "<#"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "<0"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, ">>"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, ">%"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, ">#"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string v3, ">0"
aput-object v3, v1, v2
const/16 v2, 0x8
const-string v3, "=%"
aput-object v3, v1, v2
const/16 v2, 0x9
const-string v3, "=#"
aput-object v3, v1, v2
const/16 v2, 0xa
const-string v3, "=0"
aput-object v3, v1, v2
invoke-direct {p0, v1}, Lcom/ibm/icu/text/NFRule;->indexOfAny([Ljava/lang/String;)I
move-result v0
if-ne v0, v4, :cond_57
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
const-string v5, ""
move-object v1, p0
move-object v2, p2
move-object v3, p1
move-object v4, p3
invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/NFSubstitution;->makeSubstitution(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Lcom/ibm/icu/text/NFSubstitution;
move-result-object v1
:goto_56
return-object v1
:cond_57
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const-string v2, ">>>"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7a
add-int/lit8 v8, v0, 0x2
:cond_67
:goto_67
if-ne v8, v4, :cond_a4
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
const-string v5, ""
move-object v1, p0
move-object v2, p2
move-object v3, p1
move-object v4, p3
invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/NFSubstitution;->makeSubstitution(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Lcom/ibm/icu/text/NFSubstitution;
move-result-object v1
goto :goto_56
:cond_7a
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v6
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
add-int/lit8 v2, v0, 0x1
invoke-virtual {v1, v6, v2}, Ljava/lang/String;->indexOf(II)I
move-result v8
const/16 v1, 0x3c
if-ne v6, v1, :cond_67
if-eq v8, v4, :cond_67
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
sub-int/2addr v1, v5
if-ge v8, v1, :cond_67
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
add-int/lit8 v2, v8, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
if-ne v1, v6, :cond_67
add-int/lit8 v8, v8, 0x1
goto :goto_67
:cond_a4
iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
add-int/lit8 v2, v8, 0x1
invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
move-object v1, p0
move-object v2, p2
move-object v3, p1
move-object v4, p3
invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/NFSubstitution;->makeSubstitution(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Lcom/ibm/icu/text/NFSubstitution;
move-result-object v7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
add-int/lit8 v3, v8, 0x1
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
move-object v1, v7
goto :goto_56
.end method
.method private extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)Lcom/ibm/icu/text/NFSubstitution;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)Lcom/ibm/icu/text/NFSubstitution;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
return-void
.end method
.method private findText(Ljava/lang/String;Ljava/lang/String;I)[I
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x2
iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z
move-result v2
if-nez v2, :cond_1a
new-array v2, v3, [I
invoke-virtual {p1, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v3
aput v3, v2, v4
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v3
aput v3, v2, v5
:goto_19
return-object v2
:cond_1a
move v1, p3
const/4 v0, 0x0
:goto_1c
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_38
if-nez v0, :cond_38
invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2, p2}, Lcom/ibm/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_35
new-array v2, v3, [I
aput v1, v2, v4
aput v0, v2, v5
goto :goto_19
:cond_35
add-int/lit8 v1, v1, 0x1
goto :goto_1c
:cond_38
new-array v2, v3, [I
fill-array-data v2, :array_3e
goto :goto_19
:array_3e
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method private indexOfAny([Ljava/lang/String;)I
.registers 8
const/4 v5, -0x1
const/4 v2, -0x1
const/4 v0, 0x0
:goto_3
array-length v3, p1
if-ge v0, v3, :cond_18
iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
aget-object v4, p1, v0
invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v5, :cond_15
if-eq v2, v5, :cond_14
if-ge v1, v2, :cond_15
:cond_14
move v2, v1
:cond_15
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_18
return v2
.end method
.method public static makeRules(Ljava/lang/String;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)Ljava/lang/Object;
.registers 15
new-instance v2, Lcom/ibm/icu/text/NFRule;
invoke-direct {v2, p3}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
invoke-direct {v2, p0}, Lcom/ibm/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
const-string v0, "["
invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const-string v1, "]"
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
const/4 v3, -0x1
if-eq v0, v3, :cond_31
const/4 v3, -0x1
if-eq v1, v3, :cond_31
if-gt v0, v1, :cond_31
invoke-virtual {v2}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v3
const-wide/16 v5, -0x3
cmp-long v3, v3, v5
if-eqz v3, :cond_31
invoke-virtual {v2}, Lcom/ibm/icu/text/NFRule;->getBaseValue()J
move-result-wide v3
const-wide/16 v5, -0x1
cmp-long v3, v3, v5
if-nez v3, :cond_38
:cond_31
iput-object p0, v2, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-direct {v2, p1, p2, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
move-object p0, v2
:goto_37
return-object p0
:cond_38
const/4 v3, 0x0
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, 0x0
cmp-long v5, v5, v7
if-lez v5, :cond_5a
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
long-to-double v5, v5
iget v7, v2, Lcom/ibm/icu/text/NFRule;->radix:I
int-to-double v7, v7
iget-short v9, v2, Lcom/ibm/icu/text/NFRule;->exponent:S
int-to-double v9, v9
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
rem-double/2addr v5, v7
const-wide/16 v7, 0x0
cmpl-double v5, v5, v7
if-eqz v5, :cond_6a
:cond_5a
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, -0x2
cmp-long v5, v5, v7
if-eqz v5, :cond_6a
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, -0x4
cmp-long v5, v5, v7
if-nez v5, :cond_b2
:cond_6a
new-instance v3, Lcom/ibm/icu/text/NFRule;
invoke-direct {v3, p3}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, 0x0
cmp-long v5, v5, v7
if-ltz v5, :cond_e6
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
iput-wide v5, v3, Lcom/ibm/icu/text/NFRule;->baseValue:J
invoke-virtual {p1}, Lcom/ibm/icu/text/NFRuleSet;->isFractionSet()Z
move-result v5
if-nez v5, :cond_88
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, 0x1
add-long/2addr v5, v7
iput-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
:cond_88
:goto_88
iget v5, v2, Lcom/ibm/icu/text/NFRule;->radix:I
iput v5, v3, Lcom/ibm/icu/text/NFRule;->radix:I
iget-short v5, v2, Lcom/ibm/icu/text/NFRule;->exponent:S
iput-short v5, v3, Lcom/ibm/icu/text/NFRule;->exponent:S
const/4 v5, 0x0
invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v5, v1, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
if-ge v5, v6, :cond_a9
add-int/lit8 v5, v1, 0x1
invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_a9
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
iput-object v5, v3, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-direct {v3, p1, p2, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
:cond_b2
const/4 v5, 0x0
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V
const/4 v5, 0x0
invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v1, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-ge v0, v5, :cond_d8
add-int/lit8 v0, v1, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_d8
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object p0
iput-object p0, v2, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-direct {v2, p1, p2, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
if-nez v3, :cond_104
move-object p0, v2
goto/16 :goto_37
:cond_e6
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, -0x2
cmp-long v5, v5, v7
if-nez v5, :cond_f3
const-wide/16 v5, -0x3
iput-wide v5, v3, Lcom/ibm/icu/text/NFRule;->baseValue:J
goto :goto_88
:cond_f3
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v7, -0x4
cmp-long v5, v5, v7
if-nez v5, :cond_88
iget-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
iput-wide v5, v3, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v5, -0x2
iput-wide v5, v2, Lcom/ibm/icu/text/NFRule;->baseValue:J
goto :goto_88
:cond_104
const/4 p0, 0x2
new-array p0, p0, [Lcom/ibm/icu/text/NFRule;
const/4 p1, 0x0
aput-object v3, p0, p1
const/4 p1, 0x1
aput-object v2, p0, p1
goto/16 :goto_37
.end method
.method private matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;D)Ljava/lang/Number;
.registers 30
move-object/from16 v0, p0
move-object/from16 v1, p5
invoke-direct {v0, v1}, Lcom/ibm/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_82
new-instance v6, Ljava/text/ParsePosition;
const/4 v4, 0x0
invoke-direct {v6, v4}, Ljava/text/ParsePosition;-><init>(I)V
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p5
move/from16 v3, p2
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;I)[I
move-result-object v18
const/4 v4, 0x0
aget v16, v18, v4
const/4 v4, 0x1
aget v15, v18, v4
:goto_22
if-ltz v16, :cond_73
const/4 v4, 0x0
move-object/from16 v0, p1
move v1, v4
move/from16 v2, v16
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_5b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z
move-result v11
move-object/from16 v4, p7
move-wide/from16 v7, p3
move-wide/from16 v9, p8
invoke-virtual/range {v4 .. v11}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
move-result-object v19
invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
move v0, v4
move/from16 v1, v16
if-ne v0, v1, :cond_5b
add-int v4, v16, v15
move-object/from16 v0, p6
move v1, v4
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v4, v19
:goto_5a
return-object v4
:cond_5b
const/4 v4, 0x0
invoke-virtual {v6, v4}, Ljava/text/ParsePosition;->setIndex(I)V
add-int v4, v16, v15
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p5
move v3, v4
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;I)[I
move-result-object v18
const/4 v4, 0x0
aget v16, v18, v4
const/4 v4, 0x1
aget v15, v18, v4
goto :goto_22
:cond_73
const/4 v4, 0x0
move-object/from16 v0, p6
move v1, v4
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
new-instance v4, Ljava/lang/Long;
const-wide/16 v7, 0x0
invoke-direct {v4, v7, v8}, Ljava/lang/Long;-><init>(J)V
goto :goto_5a
:cond_82
new-instance v6, Ljava/text/ParsePosition;
const/4 v4, 0x0
invoke-direct {v6, v4}, Ljava/text/ParsePosition;-><init>(I)V
new-instance v17, Ljava/lang/Long;
const-wide/16 v7, 0x0
move-object/from16 v0, v17
move-wide v1, v7
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z
move-result v14
move-object/from16 v7, p7
move-object/from16 v8, p1
move-object v9, v6
move-wide/from16 v10, p3
move-wide/from16 v12, p8
invoke-virtual/range {v7 .. v14}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
move-result-object v19
invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-nez v4, :cond_b4
invoke-virtual/range {p7 .. p7}, Lcom/ibm/icu/text/NFSubstitution;->isNullSubstitution()Z
move-result v4
if-eqz v4, :cond_c2
:cond_b4
invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
move-object/from16 v0, p6
move v1, v4
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
if-eqz v19, :cond_c2
move-object/from16 v17, v19
:cond_c2
move-object/from16 v4, v17
goto :goto_5a
.end method
.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/4 v10, 0x1
const/16 v9, 0x39
const/16 v8, 0x30
const/16 v7, 0x3e
const/4 v6, 0x0
const-string v4, ":"
invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
const/4 v4, -0x1
if-ne v2, v4, :cond_29
const-wide/16 v4, 0x0
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V
:cond_16
:goto_16
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_28
invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x27
if-ne v4, v5, :cond_28
invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p1
:cond_28
return-object p1
:cond_29
invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
add-int/lit8 v2, v2, 0x1
:goto_2f
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_42
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v4
if-eqz v4, :cond_42
add-int/lit8 v2, v2, 0x1
goto :goto_2f
:cond_42
invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p1
const-string v4, "-x"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_54
const-wide/16 v4, -0x1
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V
goto :goto_16
:cond_54
const-string v4, "x.x"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_62
const-wide/16 v4, -0x2
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V
goto :goto_16
:cond_62
const-string v4, "0.x"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_70
const-wide/16 v4, -0x3
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V
goto :goto_16
:cond_70
const-string v4, "x.0"
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_7e
const-wide/16 v4, -0x4
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V
goto :goto_16
:cond_7e
invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C
move-result v4
if-lt v4, v8, :cond_16
invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C
move-result v4
if-gt v4, v9, :cond_16
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
const/16 v0, 0x20
:goto_92
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_ac
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-lt v0, v8, :cond_a6
if-gt v0, v9, :cond_a6
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_a3
add-int/lit8 v2, v2, 0x1
goto :goto_92
:cond_a6
const/16 v4, 0x2f
if-eq v0, v4, :cond_ac
if-ne v0, v7, :cond_d4
:cond_ac
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V
const/16 v4, 0x2f
if-ne v0, v4, :cond_11e
invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V
add-int/lit8 v2, v2, 0x1
:goto_c0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_ec
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-lt v0, v8, :cond_ea
if-gt v0, v9, :cond_ea
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_d1
add-int/lit8 v2, v2, 0x1
goto :goto_c0
:cond_d4
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v4
if-nez v4, :cond_a3
const/16 v4, 0x2c
if-eq v0, v4, :cond_a3
const/16 v4, 0x2e
if-eq v0, v4, :cond_a3
new-instance v4, Ljava/lang/IllegalArgumentException;
const-string v5, "Illegal character in rule descriptor"
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_ea
if-ne v0, v7, :cond_102
:cond_ec
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
iput v4, p0, Lcom/ibm/icu/text/NFRule;->radix:I
iget v4, p0, Lcom/ibm/icu/text/NFRule;->radix:I
if-nez v4, :cond_118
new-instance v4, Ljava/lang/IllegalArgumentException;
const-string v5, "Rule can\'t have radix of 0"
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_102
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v4
if-nez v4, :cond_d1
const/16 v4, 0x2c
if-eq v0, v4, :cond_d1
const/16 v4, 0x2e
if-eq v0, v4, :cond_d1
new-instance v4, Ljava/lang/IllegalArgumentException;
const-string v5, "Illegal character is rule descriptor"
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_118
invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S
move-result v4
iput-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
:cond_11e
if-ne v0, v7, :cond_16
:goto_120
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_16
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-ne v0, v7, :cond_139
iget-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
if-lez v4, :cond_139
iget-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
sub-int/2addr v4, v10
int-to-short v4, v4
iput-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
add-int/lit8 v2, v2, 0x1
goto :goto_120
:cond_139
new-instance v4, Ljava/lang/IllegalArgumentException;
const-string v5, "Illegal character in rule descriptor"
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
.end method
.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
.registers 13
const/4 v9, 0x0
const/4 v8, -0x1
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v6
if-nez v6, :cond_a
move v6, v9
:goto_9
return v6
:cond_a
iget-object v6, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {v6}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z
move-result v6
if-eqz v6, :cond_6b
iget-object v6, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-virtual {v6}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getCollator()Lcom/ibm/icu/text/Collator;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/RuleBasedCollator;
invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
move-result-object v5
invoke-virtual {v0, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;
move-result-object v3
invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
invoke-virtual {v3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v1
:goto_2a
if-eq v1, v8, :cond_48
:goto_2c
invoke-static {v2}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I
move-result v6
if-nez v6, :cond_39
if-eq v2, v8, :cond_39
invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
goto :goto_2c
:goto_39
:cond_39
invoke-static {v1}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I
move-result v6
if-nez v6, :cond_46
if-eq v1, v8, :cond_46
invoke-virtual {v3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v1
goto :goto_39
:cond_46
if-ne v1, v8, :cond_52
:cond_48
invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I
move-result v4
if-eq v2, v8, :cond_50
add-int/lit8 v4, v4, -0x1
:cond_50
move v6, v4
goto :goto_9
:cond_52
if-ne v2, v8, :cond_56
move v6, v9
goto :goto_9
:cond_56
invoke-static {v2}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I
move-result v6
invoke-static {v1}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I
move-result v7
if-eq v6, v7, :cond_62
move v6, v9
goto :goto_9
:cond_62
invoke-virtual {v5}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v2
invoke-virtual {v3}, Lcom/ibm/icu/text/CollationElementIterator;->next()I
move-result v1
goto :goto_2a
:cond_6b
invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_76
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v6
goto :goto_9
:cond_76
move v6, v9
goto :goto_9
.end method
.method private stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
.registers 6
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_8
move-object v1, p1
:goto_7
return-object v1
:cond_8
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I
move-result v1
add-int/2addr v1, v0
invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
goto :goto_7
:cond_1b
move-object v1, p1
goto :goto_7
.end method
.method public doFormat(DLjava/lang/StringBuffer;I)V
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V
return-void
.end method
.method public doFormat(JLjava/lang/StringBuffer;I)V
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {p3, p4, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;I)V
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;I)V
return-void
.end method
.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
.registers 33
new-instance v10, Ljava/text/ParsePosition;
const/4 v4, 0x0
invoke-direct {v10, v4}, Ljava/text/ParsePosition;-><init>(I)V
new-instance v5, Ljava/lang/String;
move-object v0, v5
move-object/from16 v1, p1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
move-object v4, v0
const/4 v6, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v7, v0
invoke-virtual {v7}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v7
invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
move-object v1, v5
move-object v2, v4
move-object v3, v10
invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
move-result-object v5
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v6
sub-int v22, v4, v6
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-nez v4, :cond_50
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v4
if-eqz v4, :cond_50
new-instance v4, Ljava/lang/Long;
const-wide/16 v18, 0x0
move-object v0, v4
move-wide/from16 v1, v18
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
:goto_4f
return-object v4
:cond_50
const/16 v21, 0x0
const-wide/16 v23, 0x0
const/4 v6, 0x0
const-wide/16 v18, 0x0
move-object/from16 v0, p0
iget-wide v0, v0, Lcom/ibm/icu/text/NFRule;->baseValue:J
move-wide/from16 v25, v0
move-wide/from16 v0, v18
move-wide/from16 v2, v25
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v18
move-wide/from16 v0, v18
long-to-double v0, v0
move-wide v7, v0
:cond_69
const/4 v4, 0x0
invoke-virtual {v10, v4}, Ljava/text/ParsePosition;->setIndex(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v9, v0
invoke-virtual {v9}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
move-object v11, v0
invoke-virtual {v11}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v11
invoke-virtual {v4, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v11, v0
move-object/from16 v4, p0
move-wide/from16 v12, p4
invoke-direct/range {v4 .. v13}, Lcom/ibm/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;D)Ljava/lang/Number;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D
move-result-wide v14
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-nez v4, :cond_aa
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->isNullSubstitution()Z
move-result v4
if-eqz v4, :cond_113
:cond_aa
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v12
new-instance v17, Ljava/text/ParsePosition;
const/4 v4, 0x0
move-object/from16 v0, v17
move v1, v4
invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V
const/4 v13, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
move-object v9, v0
invoke-virtual {v9}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v9
invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
move-object/from16 v18, v0
move-object/from16 v11, p0
move-wide/from16 v19, p4
invoke-direct/range {v11 .. v20}, Lcom/ibm/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;D)Ljava/lang/Number;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D
move-result-wide v14
invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-nez v4, :cond_f5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->isNullSubstitution()Z
move-result v4
if-eqz v4, :cond_113
:cond_f5
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
add-int v4, v4, v22
invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I
move-result v9
add-int/2addr v4, v9
move v0, v4
move/from16 v1, v21
if-le v0, v1, :cond_113
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
add-int v4, v4, v22
invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I
move-result v9
add-int v21, v4, v9
move-wide/from16 v23, v14
:cond_113
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
move-object v9, v0
invoke-virtual {v9}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v9
if-eq v4, v9, :cond_13d
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-lez v4, :cond_13d
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v9
if-ge v4, v9, :cond_13d
invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I
move-result v4
if-ne v4, v6, :cond_69
:cond_13d
move-object/from16 v0, p2
move/from16 v1, v21
invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V
if-eqz p3, :cond_157
if-lez v21, :cond_157
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
move-object v4, v0
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->isNullSubstitution()Z
move-result v4
if-eqz v4, :cond_157
const-wide/high16 v18, 0x3ff0
div-double v23, v18, v23
:cond_157
move-wide/from16 v0, v23
double-to-long v0, v0
move-wide/from16 v18, v0
move-wide/from16 v0, v18
long-to-double v0, v0
move-wide/from16 v18, v0
cmpl-double v4, v23, v18
if-nez v4, :cond_174
new-instance v4, Ljava/lang/Long;
move-wide/from16 v0, v23
double-to-long v0, v0
move-wide/from16 v18, v0
move-object v0, v4
move-wide/from16 v1, v18
invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
goto/16 :goto_4f
:cond_174
new-instance v4, Ljava/lang/Double;
move-object v0, v4
move-wide/from16 v1, v23
invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
goto/16 :goto_4f
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v6, 0x0
instance-of v2, p1, Lcom/ibm/icu/text/NFRule;
if-eqz v2, :cond_3f
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/NFRule;
move-object v1, v0
iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
iget-wide v4, v1, Lcom/ibm/icu/text/NFRule;->baseValue:J
cmp-long v2, v2, v4
if-nez v2, :cond_3d
iget v2, p0, Lcom/ibm/icu/text/NFRule;->radix:I
iget v3, v1, Lcom/ibm/icu/text/NFRule;->radix:I
if-ne v2, v3, :cond_3d
iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
iget-short v3, v1, Lcom/ibm/icu/text/NFRule;->exponent:S
if-ne v2, v3, :cond_3d
iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
iget-object v3, v1, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
iget-object v3, v1, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
iget-object v3, v1, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
const/4 v2, 0x1
:goto_3c
return v2
:cond_3d
move v2, v6
goto :goto_3c
:cond_3f
move v2, v6
goto :goto_3c
.end method
.method public final getBaseValue()J
.registers 3
iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
return-wide v0
.end method
.method public getDivisor()D
.registers 5
iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I
int-to-double v0, v0
iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
int-to-double v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
return-wide v0
.end method
.method public final setBaseValue(J)V
.registers 8
const/16 v4, 0xa
iput-wide p1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v2, 0x1
cmp-long v0, v0, v2
if-ltz v0, :cond_2f
iput v4, p0, Lcom/ibm/icu/text/NFRule;->radix:I
invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S
move-result v0
iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I
iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/NFSubstitution;->setDivisor(II)V
:cond_21
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I
iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/NFSubstitution;->setDivisor(II)V
:goto_2e
:cond_2e
return-void
:cond_2f
iput v4, p0, Lcom/ibm/icu/text/NFRule;->radix:I
const/4 v0, 0x0
iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
goto :goto_2e
.end method
.method public shouldRollBack(D)Z
.registers 12
const/4 v8, 0x0
const-wide/16 v6, 0x0
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->isModulusSubstitution()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->isModulusSubstitution()Z
move-result v0
if-eqz v0, :cond_39
:cond_13
iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I
int-to-double v0, v0
iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
int-to-double v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
rem-double v0, p1, v0
cmpl-double v0, v0, v6
if-nez v0, :cond_37
iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
long-to-double v0, v0
iget v2, p0, Lcom/ibm/icu/text/NFRule;->radix:I
int-to-double v2, v2
iget-short v4, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
int-to-double v4, v4
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
rem-double/2addr v0, v2
cmpl-double v0, v0, v6
if-eqz v0, :cond_37
const/4 v0, 0x1
:goto_36
return v0
:cond_37
move v0, v8
goto :goto_36
:cond_39
move v0, v8
goto :goto_36
.end method
.method public toString()Ljava/lang/String;
.registers 9
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v6, -0x1
cmp-long v4, v4, v6
if-nez v4, :cond_63
const-string v4, "-x: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_12
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_2d
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
if-eqz v4, :cond_28
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v4
if-eqz v4, :cond_2d
:cond_28
const-string v4, "\'"
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_2d
new-instance v3, Ljava/lang/StringBuffer;
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;
invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v4
iget-object v5, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v5}, Lcom/ibm/icu/text/NFSubstitution;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v4}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I
move-result v4
iget-object v5, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;
invoke-virtual {v5}, Lcom/ibm/icu/text/NFSubstitution;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/16 v4, 0x3b
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:cond_63
iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v6, -0x2
cmp-long v4, v4, v6
if-nez v4, :cond_71
const-string v4, "x.x: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_12
:cond_71
iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v6, -0x3
cmp-long v4, v4, v6
if-nez v4, :cond_7f
const-string v4, "0.x: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_12
:cond_7f
iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
const-wide/16 v6, -0x4
cmp-long v4, v4, v6
if-nez v4, :cond_8d
const-string v4, "x.0: "
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_12
:cond_8d
iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v4, p0, Lcom/ibm/icu/text/NFRule;->radix:I
const/16 v5, 0xa
if-eq v4, v5, :cond_aa
const/16 v4, 0x2f
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
iget v4, p0, Lcom/ibm/icu/text/NFRule;->radix:I
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_aa
invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S
move-result v4
iget-short v5, p0, Lcom/ibm/icu/text/NFRule;->exponent:S
sub-int v1, v4, v5
const/4 v0, 0x0
:goto_b3
if-ge v0, v1, :cond_bd
const/16 v4, 0x3e
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_b3
:cond_bd
const-string v4, ": "
invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto/16 :goto_12
.end method