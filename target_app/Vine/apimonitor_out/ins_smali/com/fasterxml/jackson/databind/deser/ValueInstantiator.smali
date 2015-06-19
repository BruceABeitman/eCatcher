.class public abstract Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.super Ljava/lang/Object;
.source "ValueInstantiator.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public canCreateFromBoolean()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canCreateFromDouble()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canCreateFromInt()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canCreateFromLong()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canCreateFromObjectWith()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canCreateFromString()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canCreateUsingDefault()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public canCreateUsingDelegate()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canInstantiate()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromLong()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromDouble()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromBoolean()Z
move-result v0
if-eqz v0, :cond_32
:cond_30
const/4 v0, 0x1
:goto_31
return v0
:cond_32
const/4 v0, 0x0
goto :goto_31
.end method
.method public createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Boolean value ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
.registers 7
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Floating-point number ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", double)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Integer number ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", int)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
.registers 7
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from Integer number ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", long)"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " with arguments"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " from String value \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; no default creator found"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not instantiate value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " using delegate"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getValueTypeDesc()Ljava/lang/String;
.end method
.method public getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.registers 2
const/4 v0, 0x0
return-object v0
.end method