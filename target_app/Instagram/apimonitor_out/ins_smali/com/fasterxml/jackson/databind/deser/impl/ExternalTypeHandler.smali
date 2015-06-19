.class public Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"
.field private final _nameToPropertyIndex:Ljava/util/HashMap;
.field private final _properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
.field private final _tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.field private final _typeIds:[Ljava/lang/String;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
array-length v0, v0
new-array v1, v0, [Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
new-array v0, v0, [Lcom/fasterxml/jackson/databind/util/TokenBuffer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
return-void
.end method
.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/HashMap;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/TokenBuffer;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
return-void
.end method
.method protected final _deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;
.registers 7
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v1, v1, p3
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, p3
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
invoke-virtual {v1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected final _deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
invoke-virtual {v0, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v1, v1, p4
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, p4
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
return-void
.end method
.method public complete(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
.registers 11
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
array-length v3, v0
new-array v4, v3, [Ljava/lang/Object;
move v2, v1
:goto_7
if-ge v2, v3, :cond_8b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
aget-object v0, v0, v2
if-nez v0, :cond_53
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v0, v0, v2
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z
move-result v0
if-nez v0, :cond_41
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Missing external type id property \'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, v2
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;
move-result-object v0
:cond_49
invoke-virtual {p0, p1, p2, v2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;
move-result-object v0
aput-object v0, v4, v2
:cond_4f
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_7
:cond_53
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v5, v5, v2
if-nez v5, :cond_49
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Missing property \'"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' for external type id \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, v2
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_8b
move v0, v1
:goto_8c
if-ge v0, v3, :cond_ac
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v2, v2, v0
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {p4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v5
if-eqz v5, :cond_a9
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v2
aget-object v5, v4, v0
invoke-virtual {p3, v2, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
:cond_a9
add-int/lit8 v0, v0, 0x1
goto :goto_8c
:cond_ac
invoke-virtual {p4, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
move-result-object v2
move v0, v1
:goto_b1
if-ge v0, v3, :cond_cd
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, v0
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {p4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v5
if-nez v5, :cond_ca
aget-object v5, v4, v0
invoke-virtual {v1, v2, v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_ca
add-int/lit8 v0, v0, 0x1
goto :goto_b1
:cond_cd
return-object v2
.end method
.method public complete(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 11
const/4 v4, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
array-length v6, v0
:goto_4
if-ge v4, v6, :cond_b2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
aget-object v0, v0, v4
if-nez v0, :cond_7a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v1, v1, v4
if-eqz v1, :cond_3a
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->firstToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
if-eqz v2, :cond_71
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/r;->d()Z
move-result v2
if-eqz v2, :cond_71
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, v4
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-static {v0, p2, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeIfNatural(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3d
invoke-virtual {v1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:cond_3a
:goto_3a
add-int/lit8 v4, v4, 0x1
goto :goto_4
:cond_3d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v4
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z
move-result v0
if-nez v0, :cond_69
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Missing external type id property \'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, v4
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v4
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;
move-result-object v0
:cond_71
move-object v5, v0
:goto_72
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
goto :goto_3a
:cond_7a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v1, v1, v4
if-nez v1, :cond_b3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v4
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Missing property \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\' for external type id \'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v1, v1, v4
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_b2
return-object p3
:cond_b3
move-object v5, v0
goto :goto_72
.end method
.method public handlePropertyValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
.registers 13
const/4 v7, 0x0
const/4 v6, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;
invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_e
:goto_d
return v1
:cond_e
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v4
invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
if-eqz p4, :cond_47
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v0, v0, v4
if-eqz v0, :cond_47
move v0, v6
:goto_30
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
aget-object v5, v0, v4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
aput-object v7, v0, v4
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p4
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aput-object v7, v0, v4
:cond_45
move v1, v6
goto :goto_d
:cond_47
move v0, v1
goto :goto_30
:cond_49
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v2
invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/a/s;)V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aput-object v0, v2, v4
if-eqz p4, :cond_62
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
aget-object v0, v0, v4
if-eqz v0, :cond_62
move v1, v6
:cond_62
move v0, v1
goto :goto_30
.end method
.method public handleTypePropertyValue(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
.registers 12
const/4 v6, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/HashMap;
invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_e
move v0, v1
:goto_d
return v0
:cond_e
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
aget-object v0, v0, v4
invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e
move v0, v1
goto :goto_d
:cond_1e
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v5
if-eqz p4, :cond_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
aget-object v0, v0, v4
if-eqz v0, :cond_2b
move v1, v6
:cond_2b
if-eqz v1, :cond_3b
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p4
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;
const/4 v1, 0x0
aput-object v1, v0, v4
:goto_39
move v0, v6
goto :goto_d
:cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;
aput-object v5, v0, v4
goto :goto_39
.end method
.method public start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V
return-object v0
.end method