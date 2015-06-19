.class public abstract Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ContainerSerializer.java"
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_handledType:Ljava/lang/Class;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected constructor <init>(Ljava/lang/Class;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V
return-void
.end method
.method protected abstract _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.end method
.method public abstract getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
.end method
.method public abstract getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.end method
.method protected hasContentTypeAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Z
.registers 6
if-eqz p2, :cond_18
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
if-eqz v0, :cond_18
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public abstract hasSingleElement(Ljava/lang/Object;)Z
.end method
.method public abstract isEmpty(Ljava/lang/Object;)Z
.end method
.method public withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 2
if-nez p1, :cond_3
:goto_2
return-object p0
:cond_3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
move-result-object p0
goto :goto_2
.end method