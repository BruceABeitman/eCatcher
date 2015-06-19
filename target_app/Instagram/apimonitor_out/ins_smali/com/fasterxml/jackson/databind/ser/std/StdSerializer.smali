.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "StdSerializer.java"
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
.field protected final _handledType:Ljava/lang/Class;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;Z)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;
return-void
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 3
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;
return-void
.end method
.method protected createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method protected createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
const-string v1, "type"
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
return-object v0
.end method
.method protected createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v1
if-nez p2, :cond_e
const-string v2, "required"
if-nez p2, :cond_f
const/4 v0, 0x1
:goto_b
invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
:cond_e
return-object v1
:cond_f
const/4 v0, 0x0
goto :goto_b
.end method
.method protected findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
if-eqz v0, :cond_2e
if-eqz p2, :cond_2e
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2e
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-nez p3, :cond_28
invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object p3
:cond_28
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;
invoke-direct {v0, v1, v2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:goto_2d
return-object v0
:cond_2e
move-object v0, p3
goto :goto_2d
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 4
const-string v0, "string"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
return-object v0
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 7
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;
if-nez p3, :cond_10
const-string v2, "required"
if-nez p3, :cond_11
const/4 v1, 0x1
:goto_d
invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
:cond_10
return-object v0
:cond_11
const/4 v1, 0x0
goto :goto_d
.end method
.method public handledType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;
return-object v0
.end method
.method protected isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
.registers 4
if-eqz p1, :cond_10
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.end method
.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V
.registers 7
:goto_0
instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;
if-eqz v0, :cond_f
invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p2
goto :goto_0
:cond_f
instance-of v0, p2, Ljava/lang/Error;
if-eqz v0, :cond_16
check-cast p2, Ljava/lang/Error;
throw p2
:cond_16
if-eqz p1, :cond_20
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_2e
:cond_20
const/4 v0, 0x1
:goto_21
instance-of v1, p2, Ljava/io/IOException;
if-eqz v1, :cond_30
if-eqz v0, :cond_2b
instance-of v0, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;
if-nez v0, :cond_39
:cond_2b
check-cast p2, Ljava/io/IOException;
throw p2
:cond_2e
const/4 v0, 0x0
goto :goto_21
:cond_30
if-nez v0, :cond_39
instance-of v0, p2, Ljava/lang/RuntimeException;
if-eqz v0, :cond_39
check-cast p2, Ljava/lang/RuntimeException;
throw p2
:cond_39
invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
.registers 7
:goto_0
instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;
if-eqz v0, :cond_f
invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p2
goto :goto_0
:cond_f
instance-of v0, p2, Ljava/lang/Error;
if-eqz v0, :cond_16
check-cast p2, Ljava/lang/Error;
throw p2
:cond_16
if-eqz p1, :cond_20
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_2e
:cond_20
const/4 v0, 0x1
:goto_21
instance-of v1, p2, Ljava/io/IOException;
if-eqz v1, :cond_30
if-eqz v0, :cond_2b
instance-of v0, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;
if-nez v0, :cond_39
:cond_2b
check-cast p2, Ljava/io/IOException;
throw p2
:cond_2e
const/4 v0, 0x0
goto :goto_21
:cond_30
if-nez v0, :cond_39
instance-of v0, p2, Ljava/lang/RuntimeException;
if-eqz v0, :cond_39
check-cast p2, Ljava/lang/RuntimeException;
throw p2
:cond_39
invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method