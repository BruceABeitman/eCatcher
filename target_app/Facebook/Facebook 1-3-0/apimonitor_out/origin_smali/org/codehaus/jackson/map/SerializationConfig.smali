.class public Lorg/codehaus/jackson/map/SerializationConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/SerializationConfig$Feature;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURE_FLAGS:I


# instance fields
.field protected _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field protected _classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected _dateFormat:Ljava/text/DateFormat;

.field protected _featureFlags:I

.field protected _serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->collectDefaults()I

    move-result v0

    sput v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->instance:Lorg/codehaus/jackson/map/util/StdDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_dateFormat:Ljava/text/DateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iput-object p2, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/SerializationConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/codehaus/jackson/map/SerializationConfig;->DEFAULT_FEATURE_FLAGS:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->instance:Lorg/codehaus/jackson/map/util/StdDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_dateFormat:Ljava/text/DateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iget v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_dateFormat:Ljava/text/DateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_dateFormat:Ljava/text/DateFormat;

    iget-object v0, p1, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    iput-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    return-void
.end method


# virtual methods
.method public createUnshared()Lorg/codehaus/jackson/map/SerializationConfig;
    .registers 2

    new-instance v0, Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/SerializationConfig;-><init>(Lorg/codehaus/jackson/map/SerializationConfig;)V

    return-object v0
.end method

.method public disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V
    .registers 4

    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    return-void
.end method

.method public enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V
    .registers 4

    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    return-void
.end method

.method public fromAnnotations(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_17

    sget-object v2, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    :cond_17
    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eq v0, v1, :cond_25

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    :cond_25
    return-void
.end method

.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getSerializationInclusion()Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_6

    :cond_12
    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    goto :goto_6
.end method

.method public introspect(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/ClassIntrospector;->forSerialization(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .registers 4

    iget v0, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V
    .registers 3

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    goto :goto_5
.end method

.method public setAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .registers 4

    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_dateFormat:Ljava/text/DateFormat;

    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    if-nez p1, :cond_b

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->set(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)V

    return-void

    :cond_b
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public setIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ClassIntrospector",
            "<+",
            "Lorg/codehaus/jackson/map/BeanDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;

    return-void
.end method

.method public setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    .registers 3

    iput-object p1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_serializationInclusion:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    sget-object v0, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    if-ne p1, v0, :cond_c

    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->disable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_NULL_PROPERTIES:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/SerializationConfig;->enable(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)V

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codehaus/jackson/map/SerializationConfig;->_featureFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
