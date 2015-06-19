.class public Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected final _properties:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
return-void
.end method
.method public addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
.registers 9
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
move v1, v0
:goto_8
if-ge v1, v2, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v3
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, v3, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_8
:cond_20
return-object p3
.end method
.method public renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 6
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v2
if-eqz v2, :cond_38
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v3
if-eq v3, v2, :cond_38
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
:cond_38
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_3e
return-void
.end method