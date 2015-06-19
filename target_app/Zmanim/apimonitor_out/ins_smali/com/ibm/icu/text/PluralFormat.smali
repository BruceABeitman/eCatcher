.class public Lcom/ibm/icu/text/PluralFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "PluralFormat.java"
.field private static final serialVersionUID:J = 0x1L
.field private numberFormat:Lcom/ibm/icu/text/NumberFormat;
.field private parsedValues:Ljava/util/Map;
.field private pattern:Ljava/lang/String;
.field private pluralRules:Lcom/ibm/icu/text/PluralRules;
.field private ulocale:Lcom/ibm/icu/util/ULocale;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, v1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/text/PluralRules;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/text/PluralRules;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
invoke-virtual {p0, p2}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-direct {p0, p2, p1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-direct {p0, p2, p1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
invoke-virtual {p0, p3}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
invoke-virtual {p0, p2}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v0
invoke-direct {p0, v1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V
return-void
.end method
.method private checkSufficientDefinition()V
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
const-string v1, "other"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_f
const-string v0, "Malformed formatting expression.\nValue for case \"other\" was not defined."
invoke-direct {p0, v0}, Lcom/ibm/icu/text/PluralFormat;->parsingFailure(Ljava/lang/String;)V
:cond_f
return-void
.end method
.method private init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
.registers 5
const/4 v1, 0x0
iput-object p2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
if-nez p1, :cond_1a
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
move-result-object v0
:goto_b
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
return-void
:cond_1a
move-object v0, p1
goto :goto_b
.end method
.method private insertFormattedNumber(DLjava/lang/String;)Ljava/lang/String;
.registers 10
if-nez p3, :cond_5
const-string v5, ""
:goto_4
return-object v5
:cond_5
iget-object v5, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v5, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->format(D)Ljava/lang/String;
move-result-object v1
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
const/4 v4, 0x0
const/4 v2, 0x0
:goto_13
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v5
if-ge v2, v5, :cond_38
invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C
move-result v5
sparse-switch v5, :sswitch_data_4e
:goto_20
:cond_20
add-int/lit8 v2, v2, 0x1
goto :goto_13
:sswitch_23
add-int/lit8 v0, v0, 0x1
goto :goto_20
:sswitch_26
add-int/lit8 v0, v0, -0x1
goto :goto_20
:sswitch_29
if-nez v0, :cond_20
invoke-virtual {p3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v4, v2, 0x1
invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_20
:cond_38
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v5
if-ge v4, v5, :cond_49
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_49
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_4
:sswitch_data_4e
.sparse-switch
0x23 -> :sswitch_29
0x7b -> :sswitch_23
0x7d -> :sswitch_26
.end sparse-switch
.end method
.method private parsingFailure(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public applyPattern(Ljava/lang/String;)V
.registers 13
const/4 v10, 0x0
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object p1
iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
const/4 v0, 0x0
iget-object v8, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v8}, Lcom/ibm/icu/text/PluralRules;->getKeywords()Ljava/util/Set;
move-result-object v5
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
iput-object v8, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
const/4 v6, 0x0
new-instance v7, Ljava/lang/StringBuffer;
invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
:goto_1e
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v8
if-ge v3, v8, :cond_118
invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
packed-switch v6, :pswitch_data_124
:goto_2b
:cond_2b
add-int/lit8 v3, v3, 0x1
goto :goto_1e
:pswitch_2e
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
if-nez v8, :cond_35
const/4 v4, 0x0
:cond_35
invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v8
if-eqz v8, :cond_43
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
if-lez v8, :cond_2b
const/4 v4, 0x1
goto :goto_2b
:cond_43
const/16 v8, 0x7b
if-ne v1, v8, :cond_b7
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v8
sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_7d
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Malformed formatting expression. Unknown keyword \""
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\" at position "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "."
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/ibm/icu/text/PluralFormat;->parsingFailure(Ljava/lang/String;)V
:cond_7d
iget-object v8, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
if-eqz v8, :cond_ab
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Malformed formatting expression. Text for case \""
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\" at position "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " already defined!"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/ibm/icu/text/PluralFormat;->parsingFailure(Ljava/lang/String;)V
:cond_ab
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
invoke-virtual {v7, v10, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
const/4 v6, 0x1
goto/16 :goto_2b
:cond_b7
if-eqz v4, :cond_df
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Malformed formatting expression. Invalid keyword definition. Character \""
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\" at position "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " not expected!"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {p0, v8}, Lcom/ibm/icu/text/PluralFormat;->parsingFailure(Ljava/lang/String;)V
:cond_df
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto/16 :goto_2b
:pswitch_e4
packed-switch v1, :pswitch_data_12c
:pswitch_e7
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto/16 :goto_2b
:pswitch_ec
add-int/lit8 v0, v0, 0x1
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto/16 :goto_2b
:pswitch_f3
add-int/lit8 v0, v0, -0x1
if-nez v0, :cond_10a
iget-object v8, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v9
invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I
move-result v8
invoke-virtual {v7, v10, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
const/4 v6, 0x0
goto/16 :goto_2b
:cond_10a
if-gez v0, :cond_113
const-string v8, "Malformed formatting expression. Braces do not match."
invoke-direct {p0, v8}, Lcom/ibm/icu/text/PluralFormat;->parsingFailure(Ljava/lang/String;)V
goto/16 :goto_2b
:cond_113
invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto/16 :goto_2b
:cond_118
if-eqz v0, :cond_11f
const-string v8, "Malformed formatting expression. Braces do not match."
invoke-direct {p0, v8}, Lcom/ibm/icu/text/PluralFormat;->parsingFailure(Ljava/lang/String;)V
:cond_11f
invoke-direct {p0}, Lcom/ibm/icu/text/PluralFormat;->checkSufficientDefinition()V
return-void
nop
:pswitch_data_124
.packed-switch 0x0
:pswitch_2e
:pswitch_e4
.end packed-switch
:pswitch_data_12c
.packed-switch 0x7b
:pswitch_ec
:pswitch_e7
:pswitch_f3
.end packed-switch
.end method
.method public equals(Lcom/ibm/icu/text/PluralFormat;)Z
.registers 4
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
iget-object v1, p1, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
iget-object v1, p1, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
iget-object v1, p1, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Lcom/ibm/icu/text/PluralFormat;
if-eqz v0, :cond_e
check-cast p1, Lcom/ibm/icu/text/PluralFormat;
invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralFormat;->equals(Lcom/ibm/icu/text/PluralFormat;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final format(D)Ljava/lang/String;
.registers 7
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
if-nez v2, :cond_b
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->format(D)Ljava/lang/String;
move-result-object v2
:goto_a
return-object v2
:cond_b
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_25
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
const-string v3, "other"
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:cond_25
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/PluralFormat;->insertFormattedNumber(DLjava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_a
.end method
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.registers 7
instance-of v0, p1, Ljava/lang/Number;
if-eqz v0, :cond_12
check-cast p1, Ljava/lang/Number;
invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/PluralFormat;->format(D)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
return-object p2
:cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' is not a Number"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->hashCode()I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public setLocale(Lcom/ibm/icu/util/ULocale;)V
.registers 3
if-nez p1, :cond_6
invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;
move-result-object p1
:cond_6
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/util/ULocale;)V
return-void
.end method
.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
.registers 2
iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
return-void
.end method
.method public toPattern()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "locale="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", rules=\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", pattern=\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", parsedValues=\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, ", format=\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method