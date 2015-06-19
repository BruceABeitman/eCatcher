.class final Lcom/facebook/model/JsonUtil$JSONObjectEntry;
.super Ljava/lang/Object;
.source "JsonUtil.java"
.implements Ljava/util/Map$Entry;
.field private final key:Ljava/lang/String;
.field private final value:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->key:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->value:Ljava/lang/Object;
return-void
.end method
.method public bridge synthetic getKey()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->getKey()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->key:Ljava/lang/String;
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/model/JsonUtil$JSONObjectEntry;->value:Ljava/lang/Object;
return-object v0
.end method
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "JSONObjectEntry is immutable"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method