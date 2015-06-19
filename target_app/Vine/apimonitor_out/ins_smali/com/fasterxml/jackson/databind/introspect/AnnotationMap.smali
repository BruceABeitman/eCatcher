.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.super Ljava/lang/Object;
.source "AnnotationMap.java"
.implements Lcom/fasterxml/jackson/databind/util/Annotations;
.field protected _annotations:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private constructor <init>(Ljava/util/HashMap;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
return-void
.end method
.method public static merge(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
.registers 6
if-eqz p0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_10
:cond_e
move-object p0, p1
:cond_f
:goto_f
return-object p0
:cond_10
if-eqz p1, :cond_f
iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-eqz v0, :cond_f
iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_f
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/annotation/Annotation;
invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2d
:cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_4b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/annotation/Annotation;
invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4b
:cond_5f
new-instance p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>(Ljava/util/HashMap;)V
goto :goto_f
.end method
.method protected final _add(Ljava/lang/annotation/Annotation;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public add(Ljava/lang/annotation/Annotation;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_add(Ljava/lang/annotation/Annotation;)V
return-void
.end method
.method public addIfNotPresent(Ljava/lang/annotation/Annotation;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13
:cond_10
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_add(Ljava/lang/annotation/Annotation;)V
:cond_13
return-void
.end method
.method public annotations()Ljava/lang/Iterable;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v0
if-nez v0, :cond_11
:cond_c
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
goto :goto_10
.end method
.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/annotation/Annotation;
goto :goto_5
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v0
goto :goto_5
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
if-nez v0, :cond_7
const-string v0, "[null]"
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method