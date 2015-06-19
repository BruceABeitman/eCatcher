.class public final Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;
.source "BooleanSerializer.java"
.field final _forPrimitive:Z
.method public constructor <init>(Z)V
.registers 3
const-class v0, Ljava/lang/Boolean;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V
iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;->_forPrimitive:Z
return-void
.end method
.method public final acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 3
if-eqz p1, :cond_5
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectBooleanFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonBooleanFormatVisitor;
:cond_5
return-void
.end method
.method public final getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
const-string v1, "boolean"
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;->_forPrimitive:Z
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_7
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_7
.end method
.method public final serialize(Ljava/lang/Boolean;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V
return-void
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;->serialize(Ljava/lang/Boolean;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method