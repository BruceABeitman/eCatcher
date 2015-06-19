.class  Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;
.super Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "LinkedTreeMap.java"
.field final synthetic this$1:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$EntrySet;)V
.registers 4
iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->this$1:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->this$0:Lcom/google/gson/internal/LinkedTreeMap;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedTreeMap;Lcom/google/gson/internal/LinkedTreeMap$1;)V
return-void
.end method
.method public bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->next()Ljava/util/Map$Entry;
move-result-object v0
return-object v0
.end method
.method public next()Ljava/util/Map$Entry;
.registers 2
invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->nextNode()Lcom/google/gson/internal/LinkedTreeMap$Node;
move-result-object v0
return-object v0
.end method