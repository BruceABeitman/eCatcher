.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.field protected final _factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.field protected final _resolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getEnumClass()Ljava/lang/Class;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_resolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-void
.end method
.method public _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
if-eqz v0, :cond_f
:try_start_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->call1(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b
move-result-object v0
:cond_a
return-object v0
:catch_b
move-exception v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V
:cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_resolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
if-nez v0, :cond_a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-nez v1, :cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_keyClass:Ljava/lang/Class;
const-string v1, "not one of values for Enum class"
invoke-virtual {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method