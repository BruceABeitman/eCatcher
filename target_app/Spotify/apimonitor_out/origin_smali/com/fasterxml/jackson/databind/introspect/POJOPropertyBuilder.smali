.class public Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
.super Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected _ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            ">;"
        }
    .end annotation
.end field

.field protected _fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected final _forSerialization:Z

.field protected _getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _internalName:Ljava/lang/String;

.field protected final _name:Ljava/lang/String;

.field protected _setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;-><init>()V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    return-void
.end method

.method private _anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private _anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_b

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isMarkedIgnored:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private _anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_b

    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->isVisible:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private varargs _mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;"
        }
    .end annotation

    aget-object v0, p2, p1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    add-int/lit8 v0, p1, 0x1

    :goto_c
    array-length v2, p2

    if-ge v0, v2, :cond_1f

    aget-object v2, p2, v0

    if-eqz v2, :cond_1c

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->merge(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1f
    move-object v0, v1

    goto :goto_1b
.end method

.method private _removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutIgnored()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_2
.end method

.method private _removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withoutNonVisible()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_2
.end method

.method private _trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->trimByVisibility()Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_2
.end method

.method private findRenamed(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<+",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    move-object v1, p1

    :goto_2
    if-eqz v1, :cond_5f

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    if-nez v0, :cond_16

    move-object v0, v1

    :cond_13
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_2

    :cond_16
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting property name definitions: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") vs \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' (for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5f
    return-object v0
.end method

.method private static merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    goto :goto_2

    :cond_7
    #calls: Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->append(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->access$000(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->merge(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public addCtor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
    .registers 11

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public addField(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
    .registers 11

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public addGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .registers 11

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public addSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
    .registers 11

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public anyIgnorals()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyIgnorals(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public anyVisible()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public compareTo(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)I
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_10

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->compareTo(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)I

    move-result v0

    return v0
.end method

.method public findNewName()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findRenamed(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findRenamed(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findRenamed(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findRenamed(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v1

    if-nez v1, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->explicitName:Ljava/lang/String;

    goto :goto_1b
.end method

.method public findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$2;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$2;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    return-object v0
.end method

.method public findViews()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$1;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method protected fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_17
    :goto_17
    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_27
    return-object v0

    :cond_28
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_36

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_36
    if-nez v0, :cond_17

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;->withMember(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17
.end method

.method public getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v1, v0

    :goto_9
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    instance-of v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    goto :goto_5

    :cond_1a
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    goto :goto_5

    :cond_25
    move-object v1, v0

    goto :goto_9
.end method

.method public getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :cond_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v2, v1

    move-object v1, v0

    :goto_12
    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_33

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :goto_28
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v2, v1

    move-object v1, v0

    goto :goto_12

    :cond_2d
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_68

    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Multiple fields representing property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    move-object v0, v1

    goto :goto_28
.end method

.method public getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :cond_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v2, v1

    move-object v1, v0

    :goto_12
    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_33

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :goto_28
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v2, v1

    move-object v1, v0

    goto :goto_12

    :cond_2d
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_68

    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting getter definitions for property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    move-object v0, v1

    goto :goto_28
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_forSerialization:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    goto :goto_8
.end method

.method public getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :cond_5
    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v2, v1

    move-object v1, v0

    :goto_12
    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_33

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :goto_28
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-object v2, v1

    move-object v1, v0

    goto :goto_12

    :cond_2d
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_68

    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting setter definitions for property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    move-object v0, v1

    goto :goto_28
.end method

.method public hasConstructorParameter()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasField()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasGetter()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasSetter()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isExplicitlyIncluded()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_anyExplicitNames(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isTypeId()Z
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$3;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$3;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->fromMemberAnnotations(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public mergeAnnotations(Z)V
    .registers 8

    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5d

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_34

    new-array v0, v1, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v5

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_33

    new-array v0, v5, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_33

    :cond_5d
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_8a

    new-array v0, v1, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v5

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_33

    :cond_8a
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_b3

    new-array v0, v5, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto :goto_33

    :cond_b3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_33

    new-array v0, v4, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_mergeAnnotations(I[Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->withValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    goto/16 :goto_33
.end method

.method public removeIgnored()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeIgnored(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public removeNonVisible()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_removeNonVisible(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    :cond_24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; ctors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", field(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setter(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimByVisibility()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_fields:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_getters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_setters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_trimByVisibility(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->_ctorParameters:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method

.method public withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;Ljava/lang/String;)V

    return-object v0
.end method