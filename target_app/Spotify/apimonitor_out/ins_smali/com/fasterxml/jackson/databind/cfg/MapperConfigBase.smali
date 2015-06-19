.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final DEFAULT_MAPPER_FEATURES:I = 0x0
.field private static final serialVersionUID:J = -0x744574246f52876fL
.field protected final _mixInAnnotations:Ljava/util/Map;
.field protected final _rootName:Ljava/lang/String;
.field protected final _subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.field protected final _view:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->collectFeatureDefaults(Ljava/lang/Class;)I
move-result v0
sput v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->DEFAULT_MAPPER_FEATURES:I
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Ljava/util/Map;)V
.registers 6
const/4 v1, 0x0
sget v0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->DEFAULT_MAPPER_FEATURES:I
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;I)V
iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V
.registers 3
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;I)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;I)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;
return-void
.end method
.method public final findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_mixInAnnotations:Ljava/util/Map;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
goto :goto_5
.end method
.method public final getActiveView()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_view:Ljava/lang/Class;
return-object v0
.end method
.method public final getRootName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_rootName:Ljava/lang/String;
return-object v0
.end method
.method public final getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
return-object v0
.end method