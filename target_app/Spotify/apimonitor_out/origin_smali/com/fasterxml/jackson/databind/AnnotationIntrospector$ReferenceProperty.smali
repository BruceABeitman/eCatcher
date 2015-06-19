.class public Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_name:Ljava/lang/String;

    return-void
.end method

.method public static back(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public static managed(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public isBackReference()Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isManagedReference()Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->_type:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
