.class public Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
.source "ObjectMapper.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _appliesFor:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
return-void
.end method
.method public buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.registers 5
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z
move-result v0
if-eqz v0, :cond_b
invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.registers 5
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z
move-result v0
if-eqz v0, :cond_b
invoke-super {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public useForType(Lcom/fasterxml/jackson/databind/JavaType;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper$2;->$SwitchMap$com$fasterxml$jackson$databind$ObjectMapper$DefaultTyping:[I
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;->_appliesFor:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_48
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
const-class v3, Ljava/lang/Object;
if-ne v2, v3, :cond_18
move v0, v1
:cond_18
:goto_18
return v0
:pswitch_19
:goto_19
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v2
if-eqz v2, :cond_24
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p1
goto :goto_19
:cond_24
:pswitch_24
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
const-class v3, Ljava/lang/Object;
if-eq v2, v3, :cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z
move-result v2
if-nez v2, :cond_18
:cond_32
move v0, v1
goto :goto_18
:pswitch_34
:goto_34
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v2
if-eqz v2, :cond_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p1
goto :goto_34
:cond_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z
move-result v2
if-nez v2, :cond_18
move v0, v1
goto :goto_18
nop
:pswitch_data_48
.packed-switch 0x1
:pswitch_19
:pswitch_24
:pswitch_34
.end packed-switch
.end method