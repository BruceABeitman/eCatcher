.class  Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"
.field final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
.registers 2
iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->clear()V
return-void
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljava/util/Map$Entry;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
move-result-object v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;
invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;-><init>(Lcom/google/gson/internal/LinkedTreeMap$EntrySet;)V
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v3, p1, Ljava/util/Map$Entry;
if-nez v3, :cond_7
:goto_6
:cond_6
return v1
:cond_7
iget-object v3, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {v3, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
move-result-object v0
if-eqz v0, :cond_6
iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
move v1, v2
goto :goto_6
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->size:I
return v0
.end method