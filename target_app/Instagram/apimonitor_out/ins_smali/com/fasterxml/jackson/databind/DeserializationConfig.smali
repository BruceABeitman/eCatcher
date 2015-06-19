.class public final Lcom/fasterxml/jackson/databind/DeserializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "DeserializationConfig.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x3aab0708427a1a1fL
.field protected final _deserFeatures:I
.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
.field protected final _problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V
iput p3, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/String;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Map;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/util/Map;)V
iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
return-void
.end method
.method private final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
move-object p0, v0
goto :goto_4
.end method
.method public final getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
if-eqz v0, :cond_d
invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
:goto_c
return-object v0
:cond_d
sget-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;
goto :goto_c
.end method
.method protected final getBaseSettings()Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
return-object v0
.end method
.method public final getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.registers 3
invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v1
if-nez v1, :cond_12
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withSetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
:cond_12
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_CREATORS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v1
if-nez v1, :cond_20
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withCreatorVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
:cond_20
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v1
if-nez v1, :cond_2e
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
:cond_2e
return-object v0
.end method
.method public final getDeserializationFeatures()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
return v0
.end method
.method public final getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
return-object v0
.end method
.method public final getProblemHandlers()Lcom/fasterxml/jackson/databind/util/LinkedNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
return-object v0
.end method
.method public final introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
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
.method public final useRootWrapping()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Ljava/lang/String;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
:cond_10
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
goto :goto_d
.end method
.method public final with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v1
or-int/2addr v1, v0
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
if-ne v1, v0, :cond_c
:goto_b
return-object p0
:cond_c
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_b
.end method
.method public final varargs with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 7
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v1
or-int/2addr v1, v0
array-length v2, p2
const/4 v0, 0x0
:goto_9
if-ge v0, v2, :cond_15
aget-object v3, p2, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v3
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_15
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
if-ne v1, v0, :cond_1a
:goto_19
return-object p0
:cond_1a
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_19
.end method
.method public final with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
move-object p0, v0
goto :goto_4
.end method
.method public final with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
move-object p0, v0
goto :goto_4
.end method
.method public final with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final varargs with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
array-length v2, p1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_10
aget-object v3, p1, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I
move-result v3
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_10
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
if-ne v1, v0, :cond_15
:goto_14
return-object p0
:cond_15
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_14
.end method
.method public final bridge synthetic with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/a/a;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final varargs withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
array-length v2, p1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_10
aget-object v3, p1, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v3
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_10
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
if-ne v1, v0, :cond_15
:goto_14
return-object p0
:cond_15
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_14
.end method
.method public final withHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->contains(Lcom/fasterxml/jackson/databind/util/LinkedNode;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
new-instance v1, Lcom/fasterxml/jackson/databind/util/LinkedNode;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
move-object p0, v0
goto :goto_8
.end method
.method public final withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
if-nez v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
move-object p0, v0
goto :goto_4
.end method
.method public final withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
if-nez p1, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Ljava/lang/String;
if-nez v0, :cond_f
:goto_6
:cond_6
return-object p0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_6
:cond_f
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/String;)V
move-object p0, v0
goto :goto_6
.end method
.method public final bridge synthetic withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_view:Ljava/lang/Class;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
move-object p0, v0
goto :goto_4
.end method
.method public final bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v1, v0
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
if-ne v1, v0, :cond_e
:goto_d
return-object p0
:cond_e
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_d
.end method
.method public final varargs without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 7
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v1, v0
array-length v2, p2
const/4 v0, 0x0
:goto_b
if-ge v0, v2, :cond_19
aget-object v3, p2, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v3
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_19
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
if-ne v1, v0, :cond_1e
:goto_1d
return-object p0
:cond_1e
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_1d
.end method
.method public final varargs without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
array-length v2, p1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_12
aget-object v3, p1, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I
move-result v3
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_12
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
if-ne v1, v0, :cond_17
:goto_16
return-object p0
:cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_16
.end method
.method public final bridge synthetic without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
return-object v0
.end method
.method public final varargs withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
array-length v2, p1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_12
aget-object v3, p1, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I
move-result v3
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_12
iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I
if-ne v1, v0, :cond_17
:goto_16
return-object p0
:cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;II)V
move-object p0, v0
goto :goto_16
.end method