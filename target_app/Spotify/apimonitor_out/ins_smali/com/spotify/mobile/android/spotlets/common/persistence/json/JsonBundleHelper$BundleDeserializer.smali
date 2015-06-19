.class  Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper$BundleDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V
return-void
.end method
.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 9
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->fields()Ljava/util/Iterator;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v4
:goto_13
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;
const-string v5, "type"
invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4b
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;
const-string v5, "value"
invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
const-class v5, Ljava/lang/Object;
invoke-virtual {v4, v1, v5}, Lcom/fasterxml/jackson/core/ObjectCodec;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/io/Serializable;
:goto_41
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
goto :goto_13
:cond_4b
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/core/TreeNode;
const-class v5, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
invoke-virtual {v4, v1, v5}, Lcom/fasterxml/jackson/core/ObjectCodec;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/common/persistence/json/b;->a:Ljava/io/Serializable;
goto :goto_41
:cond_5c
return-object v2
.end method