.class  Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;
.super Ljava/lang/Object;
.source "Currency.java"
.implements Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;
.field private resultList:Ljava/util/ArrayList;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/ibm/icu/util/Currency$1;)V
.registers 2
invoke-direct {p0}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;-><init>()V
return-void
.end method
.method  getMatchedCurrencyNames()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
goto :goto_d
.end method
.method public handlePrefixMatch(ILjava/util/Iterator;)Z
.registers 8
iget-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
if-nez v3, :cond_b
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
:cond_b
:goto_b
invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_19
invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
if-nez v1, :cond_1b
:cond_19
const/4 v3, 0x1
return v3
:cond_1b
const/4 v0, 0x0
:goto_1c
iget-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v0, v3, :cond_45
iget-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;
invoke-static {v1}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$100(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object v3
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;
invoke-static {v2}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$100(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object v4
if-ne v3, v4, :cond_53
#calls: Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getCurrencyString()Ljava/lang/String;
invoke-static {v2}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->access$200(Lcom/ibm/icu/util/Currency$CurrencyStringInfo;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-le p1, v3, :cond_45
iget-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:cond_45
iget-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ne v0, v3, :cond_b
iget-object v3, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->resultList:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_53
add-int/lit8 v0, v0, 0x1
goto :goto_1c
.end method