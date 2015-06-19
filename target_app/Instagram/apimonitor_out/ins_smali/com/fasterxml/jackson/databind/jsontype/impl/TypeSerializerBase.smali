.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;
.super Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.source "TypeSerializerBase.java"
.field protected final _idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
return-void
.end method
.method public getPropertyName()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
return-object v0
.end method
.method public abstract getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method
.method protected idFromValue(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method