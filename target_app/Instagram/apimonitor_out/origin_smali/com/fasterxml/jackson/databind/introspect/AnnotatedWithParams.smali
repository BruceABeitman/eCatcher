.class public abstract Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.source "AnnotatedWithParams.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-void
.end method


# virtual methods
.method public final addOrOverrideParam(ILjava/lang/annotation/Annotation;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aget-object v0, v0, p1

    if-nez v0, :cond_f

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aput-object v0, v1, p1

    :cond_f
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->add(Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public abstract call()Ljava/lang/Object;
.end method

.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract call1(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getAnnotationCount()I
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->size()I

    move-result v0

    return v0
.end method

.method public abstract getGenericParameterType(I)Ljava/lang/reflect/Type;
.end method

.method public final getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .registers 5

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;I)V

    return-object v0
.end method

.method public final getParameterAnnotations(I)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    array-length v0, v0

    if-gt p1, v0, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aget-object v0, v0, p1

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public abstract getParameterCount()I
.end method

.method public abstract getRawParameterType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method protected getType(Lcom/fasterxml/jackson/databind/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p2, :cond_33

    array-length v0, p2

    if-lez v0, :cond_33

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->childInstance()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object p1

    array-length v3, p2

    move v1, v2

    :goto_c
    if-ge v1, v3, :cond_33

    aget-object v4, p2, v1

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_23
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_2e
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_23

    :cond_33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected replaceParameterAnnotations(ILcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    aput-object p2, v0, p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    return-object v0
.end method

.method public final resolveParameterType(ILcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getGenericParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
