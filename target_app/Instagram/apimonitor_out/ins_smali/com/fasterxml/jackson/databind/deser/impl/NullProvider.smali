.class public final Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;
.super Ljava/lang/Object;
.source "NullProvider.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field private final _isPrimitive:Z
.field private final _nullValue:Ljava/lang/Object;
.field private final _rawType:Ljava/lang/Class;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->_nullValue:Ljava/lang/Object;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->_isPrimitive:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->_rawType:Ljava/lang/Class;
return-void
.end method
.method public final nullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->_isPrimitive:Z
if-eqz v0, :cond_2c
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NULL_FOR_PRIMITIVES:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Can not map JSON null into type "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->_rawType:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to \'false\' to allow)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->_nullValue:Ljava/lang/Object;
return-object v0
.end method