.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;
.source "SourceFile"
.field private static final VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-class v0, [F
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$TypedPrimitiveArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-void
.end method
.method public final _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
return-object v0
.end method
.method public final bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [F
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->hasSingleElement([F)Z
move-result v0
return v0
.end method
.method public final hasSingleElement([F)Z
.registers 4
const/4 v0, 0x1
array-length v1, p1
if-ne v1, v0, :cond_5
:goto_4
return v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method
.method public final bridge synthetic isEmpty(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [F
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->isEmpty([F)Z
move-result v0
return v0
.end method
.method public final isEmpty([F)Z
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
.method public final bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, [F
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->serializeContents([FLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public final serializeContents([FLcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 9
const/4 v4, 0x0
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
if-eqz v1, :cond_1d
array-length v1, p1
:goto_7
if-ge v0, v1, :cond_28
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
invoke-virtual {v2, v4, p2, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Class;)V
aget v2, p1, v0
invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$FloatArraySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
invoke-virtual {v2, v4, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1d
array-length v1, p1
:goto_1e
if-ge v0, v1, :cond_28
aget v2, p1, v0
invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
add-int/lit8 v0, v0, 0x1
goto :goto_1e
:cond_28
return-void
.end method