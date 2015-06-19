.class public final Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;
.source "StdArraySerializers.java"
.field private static final VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method public constructor <init>()V
.registers 3
const-class v0, [I
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-void
.end method
.method public final _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 2
return-object p0
.end method
.method public final acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
if-eqz p1, :cond_d
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectArrayFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
move-result-object v0
if-eqz v0, :cond_d
sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;->itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
:cond_d
return-void
.end method
.method public final getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->VALUE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public final getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 6
const-string v0, "array"
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
const-string v1, "items"
const-string v2, "integer"
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method public final bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
.registers 3
check-cast p1, [I
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->hasSingleElement([I)Z
move-result v0
return v0
.end method
.method public final hasSingleElement([I)Z
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
check-cast p1, [I
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->isEmpty([I)Z
move-result v0
return v0
.end method
.method public final isEmpty([I)Z
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
.method public final bridge synthetic serializeContents(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, [I
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers$IntArraySerializer;->serializeContents([ILcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public final serializeContents([ILcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 7
const/4 v0, 0x0
array-length v1, p1
:goto_2
if-ge v0, v1, :cond_c
aget v2, p1, v0
invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_c
return-void
.end method