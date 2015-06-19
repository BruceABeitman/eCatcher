.class public Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
.super Lcom/ibm/icu/impl/ICUService$Key;
.source "ICULocaleService.java"
.field public static final KIND_ANY:I = -0x1
.field private currentID:Ljava/lang/String;
.field private fallbackID:Ljava/lang/String;
.field private kind:I
.field private primaryID:Ljava/lang/String;
.field private varstart:I
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 8
invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V
iput p4, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I
if-nez p2, :cond_1e
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
:goto_b
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
const-string v1, ""
if-ne v0, v1, :cond_2b
const/4 v0, 0x0
iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
:goto_14
iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
const/4 v1, -0x1
if-ne v0, v1, :cond_3d
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
:goto_1b
iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
return-void
:cond_1e
iput-object p2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
const/16 v1, 0x40
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
iput v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
goto :goto_b
:cond_2b
if-eqz p3, :cond_35
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
:cond_35
const-string v0, ""
iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
goto :goto_14
:cond_3a
iput-object p3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
goto :goto_14
:cond_3d
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
const/4 v1, 0x0
iget v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method
.method public static createWithCanonical(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
.registers 5
if-nez p0, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
invoke-direct {v1, v0, v0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
goto :goto_3
.end method
.method public static createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
.registers 3
const/4 v0, -0x1
invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
move-result-object v0
return-object v0
.end method
.method public static createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
.registers 5
if-nez p0, :cond_4
const/4 v1, 0x0
:goto_3
return-object v1
:cond_4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_c
const-string p0, "root"
:cond_c
invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
invoke-direct {v1, p0, v0, p1, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
goto :goto_3
.end method
.method public canonicalID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
return-object v0
.end method
.method public canonicalLocale()Lcom/ibm/icu/util/ULocale;
.registers 3
new-instance v0, Lcom/ibm/icu/util/ULocale;
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public currentDescriptor()Ljava/lang/String;
.registers 6
const/4 v3, -0x1
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_38
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iget v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I
if-eq v2, v3, :cond_17
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->prefix()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
const/16 v2, 0x2f
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
if-eq v2, v3, :cond_34
iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
iget v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
iget-object v4, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_34
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
:cond_38
return-object v1
.end method
.method public currentID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
return-object v0
.end method
.method public currentLocale()Lcom/ibm/icu/util/ULocale;
.registers 5
iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
const/4 v1, -0x1
if-ne v0, v1, :cond_d
new-instance v0, Lcom/ibm/icu/util/ULocale;
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
:goto_c
return-object v0
:cond_d
new-instance v0, Lcom/ibm/icu/util/ULocale;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->primaryID:Ljava/lang/String;
iget v3, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->varstart:I
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V
goto :goto_c
.end method
.method public fallback()Z
.registers 7
const/4 v5, 0x0
const/16 v2, 0x5f
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_26
:cond_e
add-int/lit8 v0, v0, -0x1
if-ltz v0, :cond_1a
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
if-eq v1, v2, :cond_e
:cond_1a
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
add-int/lit8 v2, v0, 0x1
invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
move v1, v4
:goto_25
return v1
:cond_26
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
if-eqz v1, :cond_43
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_3a
const-string v1, "root"
iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
iput-object v5, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
:goto_38
move v1, v4
goto :goto_25
:cond_3a
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
const-string v1, ""
iput-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->fallbackID:Ljava/lang/String;
goto :goto_38
:cond_43
iput-object v5, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID:Ljava/lang/String;
move v1, v3
goto :goto_25
.end method
.method public isFallbackOf(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->canonicalID()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/ibm/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public kind()I
.registers 2
iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I
return v0
.end method
.method public prefix()Ljava/lang/String;
.registers 3
iget v0, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x0
:goto_6
return-object v0
:cond_7
invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method