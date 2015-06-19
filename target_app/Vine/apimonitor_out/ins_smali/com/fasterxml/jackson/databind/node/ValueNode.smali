.class public abstract Lcom/fasterxml/jackson/databind/node/ValueNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "ValueNode.java"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V
return-void
.end method
.method protected _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
move-result-object v0
return-object v0
.end method
.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 1
return-object p0
.end method
.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method public final findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.registers 3
return-object p2
.end method
.method public final findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.registers 3
return-object p2
.end method
.method public final findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.registers 3
return-object p2
.end method
.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public final get(I)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final has(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final has(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final hasNonNull(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final hasNonNull(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->path(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public final path(I)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
move-result-object v0
return-object v0
.end method
.method public final path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
move-result-object v0
return-object v0
.end method
.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 4
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/ValueNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;->asText()Ljava/lang/String;
move-result-object v0
return-object v0
.end method