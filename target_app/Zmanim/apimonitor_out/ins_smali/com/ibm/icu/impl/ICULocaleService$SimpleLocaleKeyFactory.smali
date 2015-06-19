.class public Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"
.field private final id:Ljava/lang/String;
.field private final kind:I
.field private final obj:Ljava/lang/Object;
.method public constructor <init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZLjava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZLjava/lang/String;)V
.registers 7
invoke-direct {p0, p4, p5}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(ZLjava/lang/String;)V
iput-object p1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;
invoke-virtual {p2}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;
iput p3, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I
return-void
.end method
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
.registers 8
move-object v0, p1
check-cast v0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;
move-object v2, v0
iget v3, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I
const/4 v4, -0x1
if-eq v3, v4, :cond_11
iget v3, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I
invoke-virtual {v2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I
move-result v4
if-ne v3, v4, :cond_20
:cond_11
invoke-virtual {v2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
iget-object v3, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;
:goto_1f
return-object v3
:cond_20
const/4 v3, 0x0
goto :goto_1f
.end method
.method protected isSupportedID(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-super {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v1, ", id: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, ", kind: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget v1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateVisibleIDs(Ljava/util/Map;)V
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->visible:Z
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;
invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method