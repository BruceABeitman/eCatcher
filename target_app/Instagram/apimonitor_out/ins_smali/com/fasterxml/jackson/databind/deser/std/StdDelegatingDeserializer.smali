.class public Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "StdDelegatingDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.field private static final serialVersionUID:J = 0x1L
.field protected final _converter:Lcom/fasterxml/jackson/databind/util/Converter;
.field protected final _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _delegateType:Lcom/fasterxml/jackson/databind/JavaType;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/Converter;)V
.registers 4
const/4 v1, 0x0
const-class v0, Ljava/lang/Object;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 4
invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method protected convertValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/util/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eq v0, v1, :cond_1e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->withDelegate(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
move-result-object p0
:goto_1e
:cond_1e
return-object p0
:cond_1f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v1
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_converter:Lcom/fasterxml/jackson/databind/util/Converter;
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->withDelegate(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
move-result-object p0
goto :goto_1e
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_9
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_9
.end method
.method public getDelegatee()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:cond_11
return-void
.end method
.method protected withDelegate(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
.registers 7
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
if-eq v0, v1, :cond_2b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Sub-class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " must override \'withDelegate\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
invoke-direct {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-object v0
.end method