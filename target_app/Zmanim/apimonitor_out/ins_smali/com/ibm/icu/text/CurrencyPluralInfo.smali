.class public Lcom/ibm/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.field private static final defaultCurrencyPluralPattern:Ljava/lang/String; = null
.field private static final defaultCurrencyPluralPatternChar:[C = null
.field private static final serialVersionUID:J = 0x1L
.field private static final tripleCurrencySign:[C
.field private static final tripleCurrencyStr:Ljava/lang/String;
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
.field private pluralRules:Lcom/ibm/icu/text/PluralRules;
.field private ulocale:Lcom/ibm/icu/util/ULocale;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x3
new-array v0, v0, [C
fill-array-data v0, :array_24
sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C
new-instance v0, Ljava/lang/String;
sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;
const/16 v0, 0x8
new-array v0, v0, [C
fill-array-data v0, :array_2c
sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C
new-instance v0, Ljava/lang/String;
sget-object v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
sput-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;
return-void
:array_24
.array-data 0x2
0xa4t 0x0t
0xa4t 0x0t
0xa4t 0x0t
.end array-data
nop
:array_2c
.array-data 0x2
0x0t 0x0t
0x2et 0x0t
0x23t 0x0t
0x23t 0x0t
0x20t 0x0t
0xa4t 0x0t
0xa4t 0x0t
0xa4t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Locale;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public static getInstance()Lcom/ibm/icu/text/CurrencyPluralInfo;
.registers 1
new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;
invoke-direct {v0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>()V
return-object v0
.end method
.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/CurrencyPluralInfo;
.registers 2
new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;
invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Lcom/ibm/icu/util/ULocale;)V
return-object v0
.end method
.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/CurrencyPluralInfo;
.registers 2
new-instance v0, Lcom/ibm/icu/text/CurrencyPluralInfo;
invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V
return-object v0
.end method
.method private initialize(Lcom/ibm/icu/util/ULocale;)V
.registers 3
iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method private setupCurrencyPluralPattern(Lcom/ibm/icu/util/ULocale;)V
.registers 24
new-instance v20, Ljava/util/HashMap;
invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
new-instance v15, Ljava/util/HashSet;
invoke-direct {v15}, Ljava/util/HashSet;-><init>()V
move-object/from16 v10, p1
const/16 v20, 0x0
move-object/from16 v0, p1
move/from16 v1, v20
invoke-static {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;
move-result-object v9
const-string v20, ";"
move-object v0, v9
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v18
const/4 v5, 0x0
const/16 v20, -0x1
move/from16 v0, v18
move/from16 v1, v20
if-eq v0, v1, :cond_42
add-int/lit8 v20, v18, 0x1
move-object v0, v9
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
const/16 v20, 0x0
move-object v0, v9
move/from16 v1, v20
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v9
:goto_42
:cond_42
if-eqz v10, :cond_e6
:try_start_44
const-string v20, "com/ibm/icu/impl/data/icudt42b"
move-object/from16 v0, v20
move-object v1, v10
invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v17
check-cast v17, Lcom/ibm/icu/impl/ICUResourceBundle;
const-string v20, "CurrencyUnitPatterns"
move-object/from16 v0, v17
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v3
invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I
move-result v19
const/4 v4, 0x0
:goto_5e
move v0, v4
move/from16 v1, v19
if-ge v0, v1, :cond_e0
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;
move-result-object v14
invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v20
if-eqz v20, :cond_74
:goto_71
add-int/lit8 v4, v4, 0x1
goto :goto_5e
:cond_74
invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;
move-result-object v11
const-string v20, "{0}"
move-object v0, v11
move-object/from16 v1, v20
move-object v2, v9
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const-string v20, "{1}"
sget-object v21, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;
move-object v0, v13
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const/16 v20, -0x1
move/from16 v0, v18
move/from16 v1, v20
if-eq v0, v1, :cond_ce
move-object v6, v11
const-string v20, "{0}"
move-object v0, v6
move-object/from16 v1, v20
move-object v2, v5
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v20, "{1}"
sget-object v21, Lcom/ibm/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;
move-object v0, v8
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
new-instance v16, Ljava/lang/StringBuffer;
move-object/from16 v0, v16
move-object v1, v12
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v20, ";"
move-object/from16 v0, v16
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-object/from16 v0, v16
move-object v1, v7
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v12
:cond_ce
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
move-object/from16 v20, v0
move-object/from16 v0, v20
move-object v1, v14
move-object v2, v12
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_de
.catch Ljava/util/MissingResourceException; {:try_start_44 .. :try_end_de} :catch_df
goto :goto_71
:catch_df
move-exception v20
:cond_e0
invoke-virtual {v10}, Lcom/ibm/icu/util/ULocale;->getFallback()Lcom/ibm/icu/util/ULocale;
move-result-object v10
goto/16 :goto_42
:cond_e6
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 7
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/ibm/icu/text/CurrencyPluralInfo;
iget-object v5, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->clone()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/ibm/icu/util/ULocale;
iput-object v5, v3, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
iput-object v5, v3, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
iget-object v5, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_21
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_43
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
iget-object v5, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, v3, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_3a
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3a} :catch_3b
goto :goto_21
:catch_3b
move-exception v5
move-object v1, v5
new-instance v5, Ljava/lang/IllegalStateException;
invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V
throw v5
:cond_43
return-object v3
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v4, 0x0
instance-of v2, p1, Lcom/ibm/icu/text/CurrencyPluralInfo;
if-eqz v2, :cond_21
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/CurrencyPluralInfo;
move-object v1, v0
iget-object v2, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iget-object v3, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v2, v3}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z
move-result v2
if-eqz v2, :cond_1f
iget-object v2, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
iget-object v3, v1, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
:goto_1e
return v2
:cond_1f
move v2, v4
goto :goto_1e
:cond_21
move v2, v4
goto :goto_1e
.end method
.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_20
const-string v1, "other"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1c
iget-object v1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
const-string v2, "other"
invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:cond_1c
if-nez v0, :cond_20
sget-object v0, Lcom/ibm/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;
:cond_20
return-object v0
.end method
.method public getLocale()Lcom/ibm/icu/util/ULocale;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
return-object v0
.end method
.method public getPluralRules()Lcom/ibm/icu/text/PluralRules;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
return-object v0
.end method
.method  pluralPatternIterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method  select(D)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public setCurrencyPluralPattern(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public setLocale(Lcom/ibm/icu/util/ULocale;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-direct {p0, p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->initialize(Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public setPluralRules(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->createRules(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/CurrencyPluralInfo;->pluralRules:Lcom/ibm/icu/text/PluralRules;
return-void
.end method