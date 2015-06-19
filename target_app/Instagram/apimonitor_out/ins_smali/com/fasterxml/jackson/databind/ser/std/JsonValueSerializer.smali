.class public Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "JsonValueSerializer.java"
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.field protected final _accessorMethod:Ljava/lang/reflect/Method;
.field protected final _forceTypeInformation:Z
.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;
.field protected final _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->handledType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_notNullClass(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_forceTypeInformation:Z
return-void
.end method
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 4
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_forceTypeInformation:Z
return-void
.end method
.method private static final _notNullClass(Ljava/lang/Class;)Ljava/lang/Class;
.registers 1
if-nez p0, :cond_4
const-class p0, Ljava/lang/Object;
:cond_4
return-object p0
.end method
.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_31
if-nez p2, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-interface {v0}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p2
:cond_10
if-nez p2, :cond_20
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p2
:cond_20
invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_31
invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectAnyFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonAnyFormatVisitor;
:goto_30
return-void
:cond_31
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
goto :goto_30
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_3a
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z
move-result v0
if-eqz v0, :cond_39
:cond_1c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->isNaturalTypeWithStdHandling(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
move-result v0
invoke-virtual {p0, p2, v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
move-result-object p0
:cond_39
:goto_39
return-object p0
:cond_3a
instance-of v1, v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
if-eqz v1, :cond_39
check-cast v0, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;->createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_forceTypeInformation:Z
invoke-virtual {p0, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
move-result-object p0
goto :goto_39
.end method
.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
check-cast v0, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;->getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
:goto_f
return-object v0
:cond_10
invoke-static {}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;->getDefaultSchemaNode()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
goto :goto_f
.end method
.method protected isNaturalTypeWithStdHandling(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
.registers 5
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z
move-result v1
if-eqz v1, :cond_14
sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-eq p1, v1, :cond_24
sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-eq p1, v1, :cond_24
sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-eq p1, v1, :cond_24
:cond_13
:goto_13
return v0
:cond_14
const-class v1, Ljava/lang/String;
if-eq p1, v1, :cond_24
const-class v1, Ljava/lang/Integer;
if-eq p1, v1, :cond_24
const-class v1, Ljava/lang/Boolean;
if-eq p1, v1, :cond_24
const-class v1, Ljava/lang/Double;
if-ne p1, v1, :cond_13
:cond_24
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->isDefaultSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Z
move-result v0
goto :goto_13
.end method
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 8
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_f
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_1e
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const/4 v2, 0x1
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v0, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_1e
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:try_end_21
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_58
goto :goto_e
:catch_22
move-exception v0
throw v0
:goto_24
instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v1, :cond_33
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_33
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_24
:cond_33
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_3a
check-cast v0, Ljava/lang/Error;
throw v0
:cond_3a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_58
move-exception v0
goto :goto_24
.end method
.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
.registers 8
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_f
invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/a/h;)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_23
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
invoke-virtual {p3, v0, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
:cond_1d
invoke-virtual {v0, v1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
:try_end_20
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_31
goto :goto_e
:catch_21
move-exception v0
throw v0
:cond_23
:try_start_23
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_forceTypeInformation:Z
if-eqz v2, :cond_1d
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/fasterxml/jackson/a/h;)V
:try_end_30
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_21
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_31
goto :goto_e
:catch_31
move-exception v0
:goto_32
instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v1, :cond_41
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_41
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_32
:cond_41
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_48
check-cast v0, Ljava/lang/Error;
throw v0
:cond_48
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "(@JsonValue serializer for method "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "#"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_accessorMethod:Ljava/lang/reflect/Method;
invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne v0, p1, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
if-ne v0, p2, :cond_d
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;->_forceTypeInformation:Z
if-ne p3, v0, :cond_d
:goto_c
return-object p0
:cond_d
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Z)V
move-object p0, v0
goto :goto_c
.end method