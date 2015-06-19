.class public abstract Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.super Lcom/fasterxml/jackson/databind/JsonNode;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonNode;-><init>()V
return-void
.end method
.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method