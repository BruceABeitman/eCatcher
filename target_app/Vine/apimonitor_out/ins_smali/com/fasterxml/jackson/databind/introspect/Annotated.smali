.class public abstract Lcom/fasterxml/jackson/databind/introspect/Annotated;
.super Ljava/lang/Object;
.source "Annotated.java"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract annotations()Ljava/lang/Iterable;
.end method
.method protected abstract getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.end method
.method public abstract getAnnotated()Ljava/lang/reflect/AnnotatedElement;
.end method
.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end method
.method public abstract getGenericType()Ljava/lang/reflect/Type;
.end method
.method protected abstract getModifiers()I
.end method
.method public abstract getName()Ljava/lang/String;
.end method
.method public abstract getRawType()Ljava/lang/Class;
.end method
.method public getType(Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getGenericType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public final hasAnnotation(Ljava/lang/Class;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isPublic()Z
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
move-result v0
return v0
.end method
.method public abstract withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
.end method
.method public final withFallBackAnnotationsFrom(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->merge(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
move-result-object v0
return-object v0
.end method