.class public interface abstract Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.super Ljava/lang/Object;
.source "SourceFile"
.method public abstract buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.end method
.method public abstract buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
.end method
.method public abstract defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.end method
.method public abstract getDefaultImpl()Ljava/lang/Class;
.end method
.method public abstract inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.end method
.method public abstract init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.end method
.method public abstract typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.end method
.method public abstract typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.end method