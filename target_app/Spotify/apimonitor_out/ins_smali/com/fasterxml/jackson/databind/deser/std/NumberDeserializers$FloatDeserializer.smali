.class public final Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Float;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
return-void
.end method
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->_parseFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$FloatDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method