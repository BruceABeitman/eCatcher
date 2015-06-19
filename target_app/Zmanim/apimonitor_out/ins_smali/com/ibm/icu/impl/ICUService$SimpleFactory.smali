.class public Lcom/ibm/icu/impl/ICUService$SimpleFactory;
.super Ljava/lang/Object;
.source "ICUService.java"
.implements Lcom/ibm/icu/impl/ICUService$Factory;
.field protected id:Ljava/lang/String;
.field protected instance:Ljava/lang/Object;
.field protected visible:Z
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Z)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_7
if-nez p2, :cond_f
:cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Instance or id is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iput-object p1, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;
iput-object p2, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;
iput-boolean p3, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->visible:Z
return-void
.end method
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;
invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->instance:Ljava/lang/Object;
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
.registers 4
iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->visible:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
move-object v0, p1
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v1, ", id: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v1, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v1, ", visible: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-boolean v1, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->visible:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public updateVisibleIDs(Ljava/util/Map;)V
.registers 3
iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->visible:Z
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;
invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ibm/icu/impl/ICUService$SimpleFactory;->id:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method