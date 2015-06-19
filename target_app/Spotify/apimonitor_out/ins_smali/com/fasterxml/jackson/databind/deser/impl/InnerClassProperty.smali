.class public final Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field protected final _creator:Ljava/lang/reflect/Constructor;
.field protected final _delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
return-void
.end method
.method public final deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
.registers 8
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_18
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;
if-nez v1, :cond_11
:goto_d
invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/NullProvider;->nullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_d
:cond_18
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-eqz v1, :cond_25
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
goto :goto_d
:cond_25
:try_start_25
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p3, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_30
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_37
move-result-object v0
:goto_31
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
:catch_37
move-exception v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to instantiate class "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;
invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", problem: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
goto :goto_31
.end method
.method public final deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v0
return-object v0
.end method
.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
move-result-object v0
return-object v0
.end method
.method public final withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Ljava/lang/String;)V
return-object v0
.end method
.method public final bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
move-result-object v0
return-object v0
.end method
.method public final withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-object v0
.end method