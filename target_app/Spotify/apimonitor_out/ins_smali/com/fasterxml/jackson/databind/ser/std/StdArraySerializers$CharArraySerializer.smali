.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-class v0, [C
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private final _writeArrayContents(Lcom/fasterxml/jackson/core/JsonGenerator;[C)V
.registers 6
const/4 v0, 0x0
array-length v1, p2
:goto_2
if-ge v0, v1, :cond_b
const/4 v2, 0x1
invoke-virtual {p1, p2, v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_b
return-void
.end method
.method public final bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [C
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->isEmpty([C)Z
move-result v0
return v0
.end method
.method public final isEmpty([C)Z
.registers 3
if-eqz p1, :cond_5
array-length v0, p1
if-nez v0, :cond_7
:cond_5
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, [C
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->serialize([CLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public final serialize([CLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
invoke-direct {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lcom/fasterxml/jackson/core/JsonGenerator;[C)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
:goto_11
return-void
:cond_12
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V
goto :goto_11
.end method
.method public final bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 5
check-cast p1, [C
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->serializeWithType([CLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-void
.end method
.method public final serializeWithType([CLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 7
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
invoke-direct {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lcom/fasterxml/jackson/core/JsonGenerator;[C)V
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
:goto_11
return-void
:cond_12
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
goto :goto_11
.end method