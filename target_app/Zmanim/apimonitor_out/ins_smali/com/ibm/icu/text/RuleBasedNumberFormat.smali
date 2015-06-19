.class public Lcom/ibm/icu/text/RuleBasedNumberFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "RuleBasedNumberFormat.java"
.field private static final DEBUG:Z = false
.field public static final DURATION:I = 0x3
.field private static final NO_SPELLOUT_PARSE_LANGUAGES:[Ljava/lang/String; = null
.field public static final NUMBERING_SYSTEM:I = 0x4
.field public static final ORDINAL:I = 0x2
.field public static final SPELLOUT:I = 0x1
.field private static final locnames:[Ljava/lang/String; = null
.field private static final rulenames:[Ljava/lang/String; = null
.field static final serialVersionUID:J = -0x6a5ce54888ed36fcL
.field private transient collator:Lcom/ibm/icu/text/Collator;
.field private transient decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
.field private transient decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
.field private transient defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
.field private lenientParse:Z
.field private transient lenientParseRules:Ljava/lang/String;
.field private locale:Lcom/ibm/icu/util/ULocale;
.field private noParse:Z
.field private transient postProcessRules:Ljava/lang/String;
.field private transient postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;
.field private publicRuleSetNames:[Ljava/lang/String;
.field private ruleSetDisplayNames:Ljava/util/Map;
.field private transient ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
const-string v0, "rbnf"
invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v0
sput-boolean v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->DEBUG:Z
new-array v0, v3, [Ljava/lang/String;
const-string v1, "ga"
aput-object v1, v0, v2
sput-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->NO_SPELLOUT_PARSE_LANGUAGES:[Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "SpelloutRules"
aput-object v1, v0, v2
const-string v1, "OrdinalRules"
aput-object v1, v0, v3
const-string v1, "DurationRules"
aput-object v1, v0, v4
const-string v1, "NumberingSystemRules"
aput-object v1, v0, v5
sput-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "SpelloutLocalizations"
aput-object v1, v0, v2
const-string v1, "OrdinalLocalizations"
aput-object v1, v0, v3
const-string v1, "DurationLocalizations"
aput-object v1, v0, v4
const-string v1, "NumberingSystemLocalizations"
aput-object v1, v0, v5
sput-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(I)V
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;I)V
.registers 16
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V
const/4 v10, 0x0
iput-object v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
const/4 v10, 0x0
iput-object v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
const/4 v10, 0x0
iput-object v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
const/4 v10, 0x0
iput-object v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
const/4 v10, 0x0
iput-object v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
const/4 v10, 0x0
iput-object v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
const/4 v10, 0x0
iput-boolean v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
const-string v10, "com/ibm/icu/impl/data/icudt42b/rbnf"
invoke-static {v10, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v0
check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;
move-result-object v9
invoke-virtual {p0, v9, v9}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
const-string v1, ""
const/4 v6, 0x0
check-cast v6, [[Ljava/lang/String;
:try_start_2e
sget-object v10, Lcom/ibm/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;
const/4 v11, 0x1
sub-int v11, p2, v11
aget-object v10, v10, v11
invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_38
.catch Ljava/util/MissingResourceException; {:try_start_2e .. :try_end_38} :catch_5b
move-result-object v1
:cond_39
:try_start_39
:goto_39
sget-object v10, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;
const/4 v11, 0x1
sub-int v11, p2, v11
aget-object v10, v10, v11
invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v7
invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I
move-result v10
new-array v6, v10, [[Ljava/lang/String;
const/4 v3, 0x0
:goto_4b
array-length v10, v6
if-ge v3, v10, :cond_8f
invoke-virtual {v7, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
move-result-object v10
invoke-virtual {v10}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;
move-result-object v10
aput-object v10, v6, v3
:try_end_58
.catch Ljava/util/MissingResourceException; {:try_start_39 .. :try_end_58} :catch_8e
add-int/lit8 v3, v3, 0x1
goto :goto_4b
:catch_5b
move-exception v10
move-object v2, v10
:try_start_5d
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "RBNFRules/"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
sget-object v11, Lcom/ibm/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;
const/4 v12, 0x1
sub-int v12, p2, v12
aget-object v11, v11, v12
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
move-result-object v8
invoke-virtual {v8}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
move-result-object v4
:goto_7f
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_39
invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
:try_end_8c
.catch Ljava/util/MissingResourceException; {:try_start_5d .. :try_end_8c} :catch_bf
move-result-object v1
goto :goto_7f
:catch_8e
move-exception v10
:cond_8f
invoke-direct {p0, v1, v6}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V
const/4 v10, 0x0
iput-boolean v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->noParse:Z
sget-object v10, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;
const/4 v11, 0x1
sub-int v11, p2, v11
aget-object v10, v10, v11
const-string v11, "SpelloutLocalizations"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_bb
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;
move-result-object v5
const/4 v3, 0x0
:goto_a9
sget-object v10, Lcom/ibm/icu/text/RuleBasedNumberFormat;->NO_SPELLOUT_PARSE_LANGUAGES:[Ljava/lang/String;
array-length v10, v10
if-ge v3, v10, :cond_bb
sget-object v10, Lcom/ibm/icu/text/RuleBasedNumberFormat;->NO_SPELLOUT_PARSE_LANGUAGES:[Ljava/lang/String;
aget-object v10, v10, v3
invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_bc
const/4 v10, 0x1
iput-boolean v10, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->noParse:Z
:cond_bb
return-void
:cond_bc
add-int/lit8 v3, v3, 0x1
goto :goto_a9
:catch_bf
move-exception v10
goto/16 :goto_39
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
check-cast v0, [[Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
check-cast v0, [[Ljava/lang/String;
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
.registers 4
invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
iput-object p3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Locale;I)V
.registers 4
invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, v0, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V
return-void
.end method
.method private extractSpecial(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v7, 0x1
const/4 v6, -0x1
const/4 v3, 0x0
invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;)I
move-result v0
if-eq v0, v6, :cond_41
if-eqz v0, :cond_15
sub-int v4, v0, v7
invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v4
const/16 v5, 0x3b
if-ne v4, v5, :cond_41
:cond_15
const-string v4, ";%"
invoke-static {p1, v4, v0}, Lcom/ibm/icu/impl/Utility;->indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
move-result v1
if-ne v1, v6, :cond_23
invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I
move-result v4
sub-int v1, v4, v7
:cond_23
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v4
add-int v2, v0, v4
:goto_29
if-ge v2, v1, :cond_38
invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v4
invoke-static {v4}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v4
if-eqz v4, :cond_38
add-int/lit8 v2, v2, 0x1
goto :goto_29
:cond_38
invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v3
add-int/lit8 v4, v1, 0x1
invoke-virtual {p1, v0, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
:cond_41
return-object v3
.end method
.method private format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x0
invoke-virtual {p3, p1, p2, v0, v1}, Lcom/ibm/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;I)V
invoke-direct {p0, v0, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/NFRuleSet;)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x0
invoke-virtual {p3, p1, p2, v0, v1}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V
invoke-direct {p0, v0, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/NFRuleSet;)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method private getNameListForLocale(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
.registers 9
if-eqz p1, :cond_3f
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;
if-eqz v5, :cond_3f
const/4 v5, 0x2
new-array v3, v5, [Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v6
aput-object v6, v3, v5
const/4 v5, 0x1
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v6
invoke-virtual {v6}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v6
aput-object v6, v3, v5
const/4 v1, 0x0
:goto_1c
array-length v5, v3
if-ge v1, v5, :cond_3f
aget-object v2, v3, v1
:goto_21
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_3c
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;
invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, [Ljava/lang/String;
move-object v0, v5
check-cast v0, [Ljava/lang/String;
move-object v4, v0
if-eqz v4, :cond_37
move-object v5, v4
:goto_36
return-object v5
:cond_37
invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_21
:cond_3c
add-int/lit8 v1, v1, 0x1
goto :goto_1c
:cond_3f
const/4 v5, 0x0
goto :goto_36
.end method
.method private init(Ljava/lang/String;[[Ljava/lang/String;)V
.registers 24
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V
invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v6
const-string v18, "%%lenient-parse:"
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;
const-string v18, "%%post-process:"
move-object/from16 v0, p0
move-object v1, v6
move-object/from16 v2, v18
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
const/4 v11, 0x0
const-string v18, ";%"
move-object v0, v6
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;)I
move-result v12
:goto_37
const/16 v18, -0x1
move v0, v12
move/from16 v1, v18
if-eq v0, v1, :cond_4d
add-int/lit8 v11, v11, 0x1
add-int/lit8 v12, v12, 0x1
const-string v18, ";%"
move-object v0, v6
move-object/from16 v1, v18
move v2, v12
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
move-result v12
goto :goto_37
:cond_4d
add-int/lit8 v11, v11, 0x1
move v0, v11
new-array v0, v0, [Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move v0, v11
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v16, v0
const/4 v3, 0x0
const/16 v17, 0x0
const-string v18, ";%"
move-object v0, v6
move-object/from16 v1, v18
invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;)I
move-result v12
:goto_6b
const/16 v18, -0x1
move v0, v12
move/from16 v1, v18
if-eq v0, v1, :cond_a1
add-int/lit8 v18, v12, 0x1
move-object v0, v6
move/from16 v1, v17
move/from16 v2, v18
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
move-result-object v18
aput-object v18, v16, v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
new-instance v19, Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v0, v19
move-object/from16 v1, v16
move v2, v3
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/NFRuleSet;-><init>([Ljava/lang/String;I)V
aput-object v19, v18, v3
add-int/lit8 v3, v3, 0x1
add-int/lit8 v17, v12, 0x1
const-string v18, ";%"
move-object v0, v6
move-object/from16 v1, v18
move/from16 v2, v17
invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
move-result v12
goto :goto_6b
:cond_a1
move-object v0, v6
move/from16 v1, v17
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;
move-result-object v18
aput-object v18, v16, v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
new-instance v19, Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v0, v19
move-object/from16 v1, v16
move v2, v3
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/NFRuleSet;-><init>([Ljava/lang/String;I)V
aput-object v19, v18, v3
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move v9, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v19, v0
move-object/from16 v0, v19
array-length v0, v0
move/from16 v19, v0
const/16 v20, 0x1
sub-int v19, v19, v20
aget-object v18, v18, v19
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
:cond_e4
add-int/lit8 v9, v9, -0x1
if-ltz v9, :cond_124
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v9
invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v4
const-string v18, "%spellout-numbering"
move-object v0, v4
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-nez v18, :cond_115
const-string v18, "%digits-ordinal"
move-object v0, v4
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-nez v18, :cond_115
const-string v18, "%duration"
move-object v0, v4
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_e4
:cond_115
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v9
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
const/4 v5, 0x1
:cond_124
if-nez v5, :cond_159
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
const/16 v19, 0x1
sub-int v7, v18, v19
:goto_135
if-ltz v7, :cond_159
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v7
invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v18
const-string v19, "%%"
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_184
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v7
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
:cond_159
const/4 v7, 0x0
:goto_15a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
move v0, v7
move/from16 v1, v18
if-ge v0, v1, :cond_187
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v7
aget-object v19, v16, v7
move-object/from16 v0, v18
move-object/from16 v1, v19
move-object/from16 v2, p0
invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedNumberFormat;)V
const/16 v18, 0x0
aput-object v18, v16, v7
add-int/lit8 v7, v7, 0x1
goto :goto_15a
:cond_184
add-int/lit8 v7, v7, -0x1
goto :goto_135
:cond_187
const/4 v13, 0x0
const/4 v7, 0x0
:goto_189
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
move v0, v7
move/from16 v1, v18
if-ge v0, v1, :cond_1b2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v7
invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v18
const-string v19, "%%"
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_1af
add-int/lit8 v13, v13, 0x1
:cond_1af
add-int/lit8 v7, v7, 0x1
goto :goto_189
:cond_1b2
new-array v15, v13, [Ljava/lang/String;
const/4 v13, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
const/16 v19, 0x1
sub-int v7, v18, v19
move v14, v13
:goto_1c5
if-ltz v7, :cond_1ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v7
invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v18
const-string v19, "%%"
invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v18
if-nez v18, :cond_266
add-int/lit8 v13, v14, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
move-object/from16 v18, v0
aget-object v18, v18, v7
invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v18
aput-object v18, v15, v14
:goto_1eb
add-int/lit8 v7, v7, -0x1
move v14, v13
goto :goto_1c5
:cond_1ef
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
move-object/from16 v18, v0
if-eqz v18, :cond_260
const/4 v7, 0x0
:goto_1f8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, v18
array-length v0, v0
move/from16 v18, v0
move v0, v7
move/from16 v1, v18
if-ge v0, v1, :cond_247
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
move-object/from16 v18, v0
aget-object v10, v18, v7
const/4 v8, 0x0
:goto_211
move-object v0, v15
array-length v0, v0
move/from16 v18, v0
move v0, v8
move/from16 v1, v18
if-ge v0, v1, :cond_22b
aget-object v18, v15, v8
move-object v0, v10
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v18
if-eqz v18, :cond_228
add-int/lit8 v7, v7, 0x1
goto :goto_1f8
:cond_228
add-int/lit8 v8, v8, 0x1
goto :goto_211
:cond_22b
new-instance v18, Ljava/lang/IllegalArgumentException;
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "did not find public rule set: "
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object v1, v10
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v18
:cond_247
move-object/from16 v0, p0
iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
move-object/from16 v18, v0
const/16 v19, 0x0
aget-object v18, v18, v19
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
:goto_25f
return-void
:cond_260
move-object v0, v15
move-object/from16 v1, p0
iput-object v0, v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
goto :goto_25f
:cond_266
move v13, v14
goto :goto_1eb
.end method
.method private initLocalizations([[Ljava/lang/String;)V
.registers 11
const/4 v8, 0x1
const/4 v7, 0x0
if-eqz p1, :cond_6a
aget-object v5, p1, v7
invoke-virtual {v5}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v5
check-cast v5, [Ljava/lang/String;
check-cast v5, [Ljava/lang/String;
iput-object v5, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const/4 v1, 0x1
:goto_16
array-length v5, p1
if-ge v1, v5, :cond_62
aget-object v0, p1, v1
aget-object v2, v0, v7
array-length v5, v0
sub-int/2addr v5, v8
new-array v4, v5, [Ljava/lang/String;
array-length v5, v4
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
array-length v6, v6
if-eq v5, v6, :cond_58
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "public name length: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
array-length v7, v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " != localized names["
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "] length: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
array-length v7, v4
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_58
array-length v5, v4
invoke-static {v0, v8, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_62
invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z
move-result v5
if-nez v5, :cond_6a
iput-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;
:cond_6a
return-void
.end method
.method private postProcess(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/NFRuleSet;)V
.registers 11
const/4 v7, 0x0
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
if-eqz v4, :cond_3d
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;
if-nez v4, :cond_38
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
const-string v5, ";"
invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
const/4 v4, -0x1
if-ne v2, v4, :cond_1a
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v2
:cond_1a
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
:try_start_25
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/ibm/icu/text/RBNFPostProcessor;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
invoke-interface {v4, p0, v5}, Lcom/ibm/icu/text/RBNFPostProcessor;->init(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
:cond_38
:try_end_38
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_3e
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;
invoke-interface {v4, p1, p2}, Lcom/ibm/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/NFRuleSet;)V
:goto_3d
:cond_3d
return-void
:catch_3e
move-exception v4
move-object v1, v4
sget-boolean v4, Lcom/ibm/icu/text/RuleBasedNumberFormat;->DEBUG:Z
if-eqz v4, :cond_7c
sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "could not locate "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", error "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_7c
iput-object v7, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;
iput-object v7, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;
goto :goto_3d
.end method
.method private readObject(Ljava/io/ObjectInputStream;)V
.registers 7
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;
move-result-object v0
:try_start_4
invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/ibm/icu/util/ULocale;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_28
:goto_a
new-instance v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;
invoke-direct {v3, v0, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
iget-object v4, v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
return-void
:catch_28
move-exception v4
move-object v1, v4
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v2
goto :goto_a
.end method
.method private stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuffer;
.registers 8
const/16 v5, 0x3b
const/4 v4, -0x1
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
:goto_9
if-eq v2, v4, :cond_56
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_56
:goto_11
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_24
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v3
if-eqz v3, :cond_24
add-int/lit8 v2, v2, 0x1
goto :goto_11
:cond_24
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_33
invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v5, :cond_33
add-int/lit8 v2, v2, 0x1
goto :goto_9
:cond_33
invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I
move-result v0
if-ne v0, v4, :cond_42
invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v2, -0x1
goto :goto_9
:cond_42
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-ge v0, v3, :cond_54
add-int/lit8 v3, v0, 0x1
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v0, 0x1
goto :goto_9
:cond_54
const/4 v2, -0x1
goto :goto_9
:cond_56
return-object v1
.end method
.method private writeObject(Ljava/io/ObjectOutputStream;)V
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x0
instance-of v3, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;
if-nez v3, :cond_7
move v3, v5
:goto_6
return v3
:cond_7
move-object v0, p1
check-cast v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;
move-object v2, v0
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
iget-object v4, v2, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v3, v4}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1b
iget-boolean v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
iget-boolean v4, v2, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
if-eq v3, v4, :cond_1d
:cond_1b
move v3, v5
goto :goto_6
:cond_1d
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v3, v3
iget-object v4, v2, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v4, v4
if-eq v3, v4, :cond_27
move v3, v5
goto :goto_6
:cond_27
const/4 v1, 0x0
:goto_28
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v3, v3
if-ge v1, v3, :cond_40
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v3, v3, v1
iget-object v4, v2, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v4, v4, v1
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/NFRuleSet;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_3d
move v3, v5
goto :goto_6
:cond_3d
add-int/lit8 v1, v1, 0x1
goto :goto_28
:cond_40
const/4 v3, 0x1
goto :goto_6
.end method
.method  findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
.registers 6
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v1, v1
if-ge v0, v1, :cond_1c
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v1, v1, v0
invoke-virtual {v1}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v1, v1, v0
return-object v1
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_1c
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "No rule set named "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public format(DLjava/lang/String;)Ljava/lang/String;
.registers 6
const-string v0, "%%"
invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can\'t use internal rule set"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-virtual {p0, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public format(JLjava/lang/String;)Ljava/lang/String;
.registers 6
const-string v0, "%%"
invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can\'t use internal rule set"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-virtual {p0, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-object p3
.end method
.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-object p3
.end method
.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 6
invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 5
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V
invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 5
new-instance v0, Lcom/ibm/icu/math/BigDecimal;
invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method  getCollator()Lcom/ibm/icu/text/Collator;
.registers 6
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
if-nez v3, :cond_39
iget-boolean v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
if-eqz v3, :cond_39
:try_start_8
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v3}, Lcom/ibm/icu/text/Collator;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/Collator;
move-result-object v2
check-cast v2, Lcom/ibm/icu/text/RuleBasedCollator;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2}, Lcom/ibm/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;
if-nez v4, :cond_3c
const-string v4, ""
:goto_23
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v3, Lcom/ibm/icu/text/RuleBasedCollator;
invoke-direct {v3, v1}, Lcom/ibm/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
const/16 v4, 0x11
invoke-virtual {v3, v4}, Lcom/ibm/icu/text/Collator;->setDecomposition(I)V
:cond_39
:goto_39
:try_end_39
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3f
iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
return-object v3
:try_start_3c
:cond_3c
iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3e} :catch_3f
goto :goto_23
:catch_3f
move-exception v3
move-object v0, v3
sget-boolean v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->DEBUG:Z
if-eqz v3, :cond_48
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_48
const/4 v3, 0x0
iput-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
goto :goto_39
.end method
.method  getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
if-nez v0, :cond_e
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
check-cast v0, Lcom/ibm/icu/text/DecimalFormat;
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
:cond_e
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;
return-object v0
.end method
.method  getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
if-nez v0, :cond_d
new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;
iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;
invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
:cond_d
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;
return-object v0
.end method
.method  getDefaultRuleSet()Lcom/ibm/icu/text/NFRuleSet;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
return-object v0
.end method
.method public getDefaultRuleSetName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->isPublic()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
const-string v0, ""
goto :goto_12
.end method
.method public getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRuleSetDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 9
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
const/4 v0, 0x0
:goto_3
array-length v3, v2
if-ge v0, v3, :cond_22
aget-object v3, v2, v0
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1f
invoke-direct {p0, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_17
aget-object v3, v1, v0
:goto_16
return-object v3
:cond_17
aget-object v3, v2, v0
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
goto :goto_16
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_22
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "unrecognized rule set name: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public getRuleSetDisplayNameLocales()[Lcom/ibm/icu/util/ULocale;
.registers 8
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;
if-eqz v5, :cond_34
iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;
invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->size()I
move-result v5
new-array v5, v5, [Ljava/lang/String;
invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
move-object v0, p0
check-cast v0, [Ljava/lang/String;
move-object v2, v0
sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
invoke-static {v2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
array-length v5, v2
new-array v3, v5, [Lcom/ibm/icu/util/ULocale;
const/4 v1, 0x0
:goto_23
array-length v5, v2
if-ge v1, v5, :cond_32
new-instance v5, Lcom/ibm/icu/util/ULocale;
aget-object v6, v2, v1
invoke-direct {v5, v6}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
aput-object v5, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_23
:cond_32
move-object v5, v3
:goto_33
return-object v5
:cond_34
const/4 v5, 0x0
goto :goto_33
.end method
.method public getRuleSetDisplayNames()[Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayNames(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRuleSetDisplayNames(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
.registers 6
invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_10
invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
move-object v2, p0
:goto_f
return-object v2
:cond_10
invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
:goto_15
array-length v2, v1
if-ge v0, v2, :cond_24
aget-object v2, v1, v0
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_24
move-object v2, v1
goto :goto_f
.end method
.method public getRuleSetNames()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
return-object p0
.end method
.method public lenientParseEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
return v0
.end method
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.registers 13
const-wide/16 v7, 0x0
const/4 v9, 0x0
iget-boolean v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->noParse:Z
if-eqz v6, :cond_d
new-instance v6, Ljava/lang/Long;
invoke-direct {v6, v7, v8}, Ljava/lang/Long;-><init>(J)V
:goto_c
return-object v6
:cond_d
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
new-instance v4, Ljava/text/ParsePosition;
invoke-direct {v4, v9}, Ljava/text/ParsePosition;-><init>(I)V
const/4 v3, 0x0
new-instance v2, Ljava/lang/Long;
invoke-direct {v2, v7, v8}, Ljava/lang/Long;-><init>(J)V
new-instance v0, Ljava/text/ParsePosition;
invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-direct {v0, v6}, Ljava/text/ParsePosition;-><init>(I)V
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v6, v6
const/4 v7, 0x1
sub-int v1, v6, v7
:goto_2f
if-ltz v1, :cond_71
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v6, v6, v1
invoke-virtual {v6}, Lcom/ibm/icu/text/NFRuleSet;->isPublic()Z
move-result v6
if-eqz v6, :cond_45
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v6, v6, v1
invoke-virtual {v6}, Lcom/ibm/icu/text/NFRuleSet;->isParseable()Z
move-result v6
if-nez v6, :cond_48
:goto_45
:cond_45
add-int/lit8 v1, v1, -0x1
goto :goto_2f
:cond_48
iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v6, v6, v1
const-wide v7, 0x7fefffffffffffffL
invoke-virtual {v6, v5, v4, v7, v8}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
move-result-object v3
invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I
move-result v7
if-le v6, v7, :cond_67
move-object v2, v3
invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V
:cond_67
invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v7
if-ne v6, v7, :cond_7f
:cond_71
invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I
move-result v6
invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I
move-result v7
add-int/2addr v6, v7
invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V
move-object v6, v2
goto :goto_c
:cond_7f
invoke-virtual {v4, v9}, Ljava/text/ParsePosition;->setIndex(I)V
goto :goto_45
.end method
.method public setDefaultRuleSet(Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_5c
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
array-length v2, v2
if-lez v2, :cond_13
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {p0, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
:cond_12
:goto_12
return-void
:cond_13
const/4 v2, 0x0
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v1, v2
:cond_19
add-int/lit8 v1, v1, -0x1
if-ltz v1, :cond_44
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v2, v2, v1
invoke-virtual {v2}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;
move-result-object v0
const-string v2, "%spellout-numbering"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3d
const-string v2, "%digits-ordinal"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3d
const-string v2, "%duration"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_19
:cond_3d
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v2, v2, v1
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
goto :goto_12
:cond_44
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v1, v2
:cond_47
add-int/lit8 v1, v1, -0x1
if-ltz v1, :cond_12
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v2, v2, v1
invoke-virtual {v2}, Lcom/ibm/icu/text/NFRuleSet;->isPublic()Z
move-result v2
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v2, v2, v1
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
goto :goto_12
:cond_5c
const-string v2, "%%"
invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_7d
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "cannot use private rule set: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_7d
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
move-result-object v2
iput-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;
goto :goto_12
.end method
.method public setLenientParseMode(Z)V
.registers 3
iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z
if-nez p1, :cond_7
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->collator:Lcom/ibm/icu/text/Collator;
:cond_7
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_6
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
array-length v2, v2
if-ge v0, v2, :cond_19
iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/ibm/icu/text/NFRuleSet;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_19
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method