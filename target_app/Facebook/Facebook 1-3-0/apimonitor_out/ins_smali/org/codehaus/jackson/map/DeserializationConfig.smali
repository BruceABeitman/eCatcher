.class public Lorg/codehaus/jackson/map/DeserializationConfig;
.super Ljava/lang/Object;
.field protected static final DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;
.field protected static final DEFAULT_FEATURE_FLAGS:I
.field protected _annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
.field protected _classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
.field protected _dateFormat:Ljava/text/DateFormat;
.field protected _featureFlags:I
.field protected _problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->collectDefaults()I
move-result v0
sput v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I
sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->instance:Lorg/codehaus/jackson/map/util/StdDateFormat;
sput-object v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/map/ClassIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I
iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_dateFormat:Ljava/text/DateFormat;
iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
iput-object p2, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
return-void
.end method
.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_FEATURE_FLAGS:I
iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig;->DEFAULT_DATE_FORMAT:Ljava/text/DateFormat;
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_dateFormat:Ljava/text/DateFormat;
iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
iget v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
iget-object v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->_dateFormat:Ljava/text/DateFormat;
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_dateFormat:Ljava/text/DateFormat;
return-void
.end method
.method public addHandler(Lorg/codehaus/jackson/map/DeserializationProblemHandler;)V
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/LinkedNode;->contains(Lorg/codehaus/jackson/map/util/LinkedNode;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Lorg/codehaus/jackson/map/util/LinkedNode;
iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/util/LinkedNode;-><init>(Ljava/lang/Object;Lorg/codehaus/jackson/map/util/LinkedNode;)V
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
:cond_11
return-void
.end method
.method public clearHandlers()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
return-void
.end method
.method public createUnshared()Lorg/codehaus/jackson/map/DeserializationConfig;
.registers 2
new-instance v0, Lorg/codehaus/jackson/map/DeserializationConfig;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/DeserializationConfig;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
return-object v0
.end method
.method public disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
.registers 4
iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
return-void
.end method
.method public enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
.registers 4
iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
return-void
.end method
.method public fromAnnotations(Ljava/lang/Class;)V
.registers 5
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-static {p1, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/introspect/AnnotatedClass;
move-result-object v0
iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
move-result-object v1
if-eqz v1, :cond_17
sget-object v2, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-virtual {p0, v2, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
:cond_17
iget-object v1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCreatorAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_28
sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
:cond_28
return-void
.end method
.method public getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
return-object v0
.end method
.method public getBase64Variant()Lorg/codehaus/jackson/Base64Variant;
.registers 2
invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;
move-result-object v0
return-object v0
.end method
.method public getDateFormat()Ljava/text/DateFormat;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_dateFormat:Ljava/text/DateFormat;
return-object v0
.end method
.method public getProblemHandlers()Lorg/codehaus/jackson/map/util/LinkedNode;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_problemHandlers:Lorg/codehaus/jackson/map/util/LinkedNode;
return-object v0
.end method
.method public introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/ClassIntrospector;->forDeserialization(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public introspectClassAnnotations(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/ClassIntrospector;->forClassAnnotations(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public introspectForCreation(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/map/ClassIntrospector;->forCreation(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
.registers 4
iget v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_featureFlags:I
invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I
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
.method public set(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)V
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->enable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
:goto_5
return-void
:cond_6
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->disable(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)V
goto :goto_5
.end method
.method public setAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
.registers 2
iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_annotationIntrospector:Lorg/codehaus/jackson/map/AnnotationIntrospector;
return-void
.end method
.method public setDateFormat(Ljava/text/DateFormat;)V
.registers 3
if-nez p1, :cond_7
sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->instance:Lorg/codehaus/jackson/map/util/StdDateFormat;
:goto_4
iput-object v0, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_dateFormat:Ljava/text/DateFormat;
return-void
:cond_7
move-object v0, p1
goto :goto_4
.end method
.method public setIntrospector(Lorg/codehaus/jackson/map/ClassIntrospector;)V
.registers 2
iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationConfig;->_classIntrospector:Lorg/codehaus/jackson/map/ClassIntrospector;
return-void
.end method