.class public Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "EnumDeserializer.java"
.field private static final serialVersionUID:J = -0x6be6cf070bde139aL
.field protected final _enumClass:Ljava/lang/Class;
.field protected final _factory:Ljava/lang/reflect/Method;
.field protected final _inputType:Ljava/lang/Class;
.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/Class;)V
.registers 5
const-class v0, Ljava/lang/Enum;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;
return-void
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;
if-nez v0, :cond_17
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
:goto_8
:try_start_8
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_3c
move-result-object v0
return-object v0
:cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;
const-class v1, Ljava/lang/Integer;
if-ne v0, v1, :cond_26
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_8
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;
const-class v1, Ljava/lang/Long;
if-ne v0, v1, :cond_35
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_8
:cond_35
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_3c
move-exception v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
instance-of v1, v0, Ljava/io/IOException;
if-eqz v1, :cond_48
check-cast v0, Ljava/io/IOException;
throw v0
:cond_48
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method