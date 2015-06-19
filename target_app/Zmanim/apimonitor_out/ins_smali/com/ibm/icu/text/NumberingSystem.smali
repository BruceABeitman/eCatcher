.class  Lcom/ibm/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source "NumberingSystem.java"
.field private algorithmic:Z
.field private desc:Ljava/lang/String;
.field private radix:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0xa
iput v0, p0, Lcom/ibm/icu/text/NumberingSystem;->radix:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z
const-string v0, "0123456789"
iput-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;
return-void
.end method
.method public static getAvailableNames()[Ljava/lang/String;
.registers 8
const-string v6, "com/ibm/icu/impl/data/icudt42b"
const-string v7, "numberingSystems"
invoke-static {v6, v7}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v3
const-string v6, "numberingSystems"
invoke-virtual {v3, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v1
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
move-result-object v0
:goto_17
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_29
invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_29
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v6, v6, [Ljava/lang/String;
invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
check-cast v0, [Ljava/lang/String;
return-object v0
.end method
.method public static getInstance()Lcom/ibm/icu/text/NumberingSystem;
.registers 1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v0
return-object v0
.end method
.method public static getInstance(IZLjava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
.registers 6
const/4 v1, 0x2
if-ge p0, v1, :cond_b
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Invalid radix for numbering system"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_b
if-nez p1, :cond_21
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
if-ne v1, p0, :cond_19
invoke-static {p2}, Lcom/ibm/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_21
:cond_19
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Invalid digit string for numbering system"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_21
new-instance v0, Lcom/ibm/icu/text/NumberingSystem;
invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V
iput p0, v0, Lcom/ibm/icu/text/NumberingSystem;->radix:I
iput-boolean p1, v0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z
iput-object p2, v0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;
return-object v0
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
.registers 7
const-string v5, "numbers"
invoke-virtual {p0, v5}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_10
invoke-static {v3}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v2
if-eqz v2, :cond_10
move-object v5, v2
:goto_f
return-object v5
:cond_10
:try_start_10
const-string v5, "com/ibm/icu/impl/data/icudt42b"
invoke-static {v5, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
check-cast v4, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v5, "defaultNumberingSystem"
invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_1d
.catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_1d} :catch_26
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v2
if-eqz v2, :cond_2e
move-object v5, v2
goto :goto_f
:catch_26
move-exception v5
move-object v1, v5
new-instance v5, Lcom/ibm/icu/text/NumberingSystem;
invoke-direct {v5}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V
goto :goto_f
:cond_2e
new-instance v5, Lcom/ibm/icu/text/NumberingSystem;
invoke-direct {v5}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V
goto :goto_f
.end method
.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberingSystem;
.registers 2
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v0
return-object v0
.end method
.method public static getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
.registers 14
const/4 v12, 0x1
:try_start_1
const-string v10, "com/ibm/icu/impl/data/icudt42b"
const-string v11, "numberingSystems"
invoke-static {v10, v11}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v8
const-string v10, "numberingSystems"
invoke-virtual {v8, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v5
invoke-virtual {v5, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
const-string v10, "desc"
invoke-virtual {v7, v10}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v10, "radix"
invoke-virtual {v7, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v6
const-string v10, "algorithmic"
invoke-virtual {v7, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v4
invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I
move-result v9
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I
:try_end_2c
.catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_2c} :catch_38
move-result v0
if-ne v0, v12, :cond_35
move v3, v12
:goto_30
invoke-static {v9, v3, v1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(IZLjava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
move-result-object v10
:goto_34
return-object v10
:cond_35
const/4 v10, 0x0
move v3, v10
goto :goto_30
:catch_38
move-exception v10
move-object v2, v10
const/4 v10, 0x0
goto :goto_34
.end method
.method public static isValidDigitString(Ljava/lang/String;)Z
.registers 7
const/4 v5, 0x0
const/4 v3, 0x0
const/4 v1, 0x0
invoke-static {p0}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;
move-result-object v2
invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->setToStart()V
:goto_a
invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I
move-result v0
const/4 v4, -0x1
if-eq v0, v4, :cond_2d
invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I
move-result v4
if-eq v4, v1, :cond_19
move v4, v5
:goto_18
return v4
:cond_19
if-eqz v3, :cond_21
add-int/lit8 v4, v3, 0x1
if-eq v0, v4, :cond_21
move v4, v5
goto :goto_18
:cond_21
invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isSupplementary(I)Z
move-result v4
if-eqz v4, :cond_29
move v4, v5
goto :goto_18
:cond_29
add-int/lit8 v1, v1, 0x1
move v3, v0
goto :goto_a
:cond_2d
const/4 v4, 0x1
goto :goto_18
.end method
.method public getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;
return-object v0
.end method
.method public getRadix()I
.registers 2
iget v0, p0, Lcom/ibm/icu/text/NumberingSystem;->radix:I
return v0
.end method
.method public isAlgorithmic()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z
return v0
.end method