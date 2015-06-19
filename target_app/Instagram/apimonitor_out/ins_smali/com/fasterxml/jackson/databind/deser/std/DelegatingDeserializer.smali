.class public abstract Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "DelegatingDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.field private static final serialVersionUID:J = 0x1L
.field protected final _delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 3
invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_figureType(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Class;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method private static _figureType(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Class;
.registers 2
instance-of v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
if-eqz v0, :cond_b
check-cast p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;
move-result-object v0
:goto_a
return-object v0
:cond_b
const-class v0, Ljava/lang/Object;
goto :goto_a
.end method
.method protected _createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne p3, v0, :cond_5
:goto_4
return-object p0
:cond_5
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->newDelegatingInstance(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object p0
goto :goto_4
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v1, :cond_c
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:cond_c
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getDelegatee()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method public getEmptyValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getKnownPropertyNames()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getKnownPropertyNames()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public getNullValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-result-object v0
return-object v0
.end method
.method public isCachable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected abstract newDelegatingInstance(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.end method
.method public replaceDelegatee(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->newDelegatingInstance(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object p0
goto :goto_4
.end method
.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
instance-of v0, v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DelegatingDeserializer;->_delegatee:Lcom/fasterxml/jackson/databind/JsonDeserializer;
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:cond_d
return-void
.end method