.class  Lcom/ibm/icu/text/PluralRules$RuleChain;
.super Ljava/lang/Object;
.source "PluralRules.java"
.implements Lcom/ibm/icu/text/PluralRules$RuleList;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private final next:Lcom/ibm/icu/text/PluralRules$RuleChain;
.field private final rule:Lcom/ibm/icu/text/PluralRules$Rule;
.method public constructor <init>(Lcom/ibm/icu/text/PluralRules$Rule;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/PluralRules$RuleChain;-><init>(Lcom/ibm/icu/text/PluralRules$Rule;Lcom/ibm/icu/text/PluralRules$RuleChain;)V
return-void
.end method
.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$Rule;Lcom/ibm/icu/text/PluralRules$RuleChain;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->rule:Lcom/ibm/icu/text/PluralRules$Rule;
iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
return-void
.end method
.method private selectRule(D)Lcom/ibm/icu/text/PluralRules$Rule;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
if-eqz v1, :cond_b
iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
invoke-direct {v1, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleChain;->selectRule(D)Lcom/ibm/icu/text/PluralRules$Rule;
move-result-object v0
:cond_b
if-nez v0, :cond_17
iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->rule:Lcom/ibm/icu/text/PluralRules$Rule;
invoke-interface {v1, p1, p2}, Lcom/ibm/icu/text/PluralRules$Rule;->appliesTo(D)Z
move-result v1
if-eqz v1, :cond_17
iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->rule:Lcom/ibm/icu/text/PluralRules$Rule;
:cond_17
return-object v0
.end method
.method public addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleChain;
.registers 3
new-instance v0, Lcom/ibm/icu/text/PluralRules$RuleChain;
invoke-direct {v0, p1, p0}, Lcom/ibm/icu/text/PluralRules$RuleChain;-><init>(Lcom/ibm/icu/text/PluralRules$Rule;Lcom/ibm/icu/text/PluralRules$RuleChain;)V
return-object v0
.end method
.method public getKeywords()Ljava/util/Set;
.registers 4
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
const-string v2, "other"
invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move-object v0, p0
:goto_b
if-eqz v0, :cond_19
iget-object v2, v0, Lcom/ibm/icu/text/PluralRules$RuleChain;->rule:Lcom/ibm/icu/text/PluralRules$Rule;
invoke-interface {v2}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, v0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
goto :goto_b
:cond_19
return-object v1
.end method
.method public getRepeatLimit()I
.registers 4
const/4 v1, 0x0
move-object v0, p0
:goto_2
if-eqz v0, :cond_d
iget-object v2, v0, Lcom/ibm/icu/text/PluralRules$RuleChain;->rule:Lcom/ibm/icu/text/PluralRules$Rule;
invoke-interface {v2, v1}, Lcom/ibm/icu/text/PluralRules$Rule;->updateRepeatLimit(I)I
move-result v1
iget-object v0, v0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
goto :goto_2
:cond_d
return v1
.end method
.method public select(D)Ljava/lang/String;
.registers 5
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleChain;->selectRule(D)Lcom/ibm/icu/text/PluralRules$Rule;
move-result-object v0
if-nez v0, :cond_9
const-string v1, "other"
:goto_8
return-object v1
:cond_9
invoke-interface {v0}, Lcom/ibm/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;
move-result-object v1
goto :goto_8
.end method
.method public toString()Ljava/lang/String;
.registers 4
iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->rule:Lcom/ibm/icu/text/PluralRules$Rule;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
if-eqz v1, :cond_27
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$RuleChain;->next:Lcom/ibm/icu/text/PluralRules$RuleChain;
invoke-virtual {v2}, Lcom/ibm/icu/text/PluralRules$RuleChain;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_27
return-object v0
.end method