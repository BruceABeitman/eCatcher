.class public interface abstract Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.super Ljava/lang/Object;
.source "TypeIdResolver.java"
.method public abstract getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
.end method
.method public abstract idFromBaseType()Ljava/lang/String;
.end method
.method public abstract idFromValue(Ljava/lang/Object;)Ljava/lang/String;
.end method
.method public abstract idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
.end method
.method public abstract init(Lcom/fasterxml/jackson/databind/JavaType;)V
.end method
.method public abstract typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
.end method