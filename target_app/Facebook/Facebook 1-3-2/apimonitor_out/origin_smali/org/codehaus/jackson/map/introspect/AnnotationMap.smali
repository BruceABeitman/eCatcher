.class public final Lorg/codehaus/jackson/map/introspect/AnnotationMap;
.super Ljava/lang/Object;


# instance fields
.field _annotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final _add(Ljava/lang/annotation/Annotation;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljava/lang/annotation/Annotation;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public addIfNotPresent(Ljava/lang/annotation/Annotation;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_10
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_add(Ljava/lang/annotation/Annotation;)V

    :cond_13
    return-void
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    move-object v0, p0

    goto :goto_5
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    if-nez v0, :cond_7

    const-string v0, "[null]"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/AnnotationMap;->_annotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
