.class public final Lcom/fasterxml/jackson/databind/SerializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SerializationConfig.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x7ace4b0d59bb8a49L
.field protected final _filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
.field protected final _serFeatures:I
.field protected _serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput p3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
.registers 4
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/util/Map;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/util/Map;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
iput-object v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-void
.end method
.method private final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
move-object p0, v0
goto :goto_4
.end method
.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
if-eqz v0, :cond_d
invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-static {}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
goto :goto_c
.end method
.method public getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.registers 3
invoke-super {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v1
if-nez v1, :cond_12
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
:cond_12
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_IS_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v1
if-nez v1, :cond_20
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withIsGetterVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
:cond_20
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_FIELDS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v1
if-nez v1, :cond_2e
sget-object v1, Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;->NONE:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->withFieldVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
:cond_2e
return-object v0
.end method
.method public getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
return-object v0
.end method
.method public final getSerializationFeatures()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
return v0
.end method
.method public getSerializationInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
goto :goto_6
.end method
.method public final hasSerializationFeatures(I)Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
and-int/2addr v0, p1
if-ne v0, p1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
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
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[SerializationConfig: flags=0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
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
.method public useRootWrapping()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Ljava/lang/String;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Ljava/lang/String;
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
sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
goto :goto_d
.end method
.method public with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 6
if-eqz p2, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I
move-result v1
or-int/2addr v0, v1
:goto_9
iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
if-ne v0, v1, :cond_18
:goto_d
return-object p0
:cond_e
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
goto :goto_9
:cond_18
new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-direct {v1, p0, v0, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v1
goto :goto_d
.end method
.method public with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v1
or-int/2addr v1, v0
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
if-ne v1, v0, :cond_c
:goto_b
return-object p0
:cond_c
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_b
.end method
.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 7
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v1
or-int/2addr v1, v0
array-length v2, p2
const/4 v0, 0x0
:goto_9
if-ge v0, v2, :cond_15
aget-object v3, p2, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v3
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_15
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
if-ne v1, v0, :cond_1a
:goto_19
return-object p0
:cond_1a
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_19
.end method
.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
move-object p0, v0
goto :goto_4
.end method
.method public with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
move-object p0, v0
goto :goto_4
.end method
.method public with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeResolverBuilder(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
if-nez p1, :cond_14
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
:goto_13
return-object v0
:cond_14
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
goto :goto_13
.end method
.method public with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public varargs with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
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
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
if-ne v1, v0, :cond_15
:goto_14
return-object p0
:cond_15
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_14
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
array-length v2, p1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_10
aget-object v3, p1, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v3
or-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_10
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
if-ne v1, v0, :cond_15
:goto_14
return-object p0
:cond_15
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_14
.end method
.method public withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
move-object p0, v0
goto :goto_4
.end method
.method public withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
if-nez p1, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Ljava/lang/String;
if-nez v0, :cond_f
:goto_6
:cond_6
return-object p0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_6
:cond_f
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/String;)V
move-object p0, v0
goto :goto_6
.end method
.method public bridge synthetic withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public withSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serializationInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)V
move-object p0, v0
goto :goto_4
.end method
.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_view:Ljava/lang/Class;
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V
move-object p0, v0
goto :goto_4
.end method
.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 5
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v1, v0
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
if-ne v1, v0, :cond_e
:goto_d
return-object p0
:cond_e
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_d
.end method
.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 7
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v1, v0
array-length v2, p2
const/4 v0, 0x0
:goto_b
if-ge v0, v2, :cond_19
aget-object v3, p2, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v3
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_19
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
if-ne v1, v0, :cond_1e
:goto_1d
return-object p0
:cond_1e
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_1d
.end method
.method public varargs without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
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
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
if-ne v1, v0, :cond_17
:goto_16
return-object p0
:cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_16
.end method
.method public bridge synthetic without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
move-result-object v0
return-object v0
.end method
.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
.registers 6
iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
array-length v2, p1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_12
aget-object v3, p1, v0
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I
move-result v3
xor-int/lit8 v3, v3, -0x1
and-int/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_12
iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I
if-ne v1, v0, :cond_17
:goto_16
return-object p0
:cond_17
new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;
iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:I
invoke-direct {v0, p0, v2, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;II)V
move-object p0, v0
goto :goto_16
.end method