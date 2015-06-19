.class public interface abstract Lcom/fasterxml/jackson/databind/BeanProperty;
.super Ljava/lang/Object;
.source "BeanProperty.java"
.implements Lcom/fasterxml/jackson/databind/util/Named;
.method public abstract depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
.end method
.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end method
.method public abstract getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end method
.method public abstract getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method
.method public abstract getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method
.method public abstract getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end method
.method public abstract getName()Ljava/lang/String;
.end method
.method public abstract getType()Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method public abstract getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method
.method public abstract isRequired()Z
.end method