.class public Lcom/pinguo/camera360/effect/model/EffectModel;
.super Ljava/lang/Object;
.source "EffectModel.java"
.implements Lcom/pinguo/camera360/effect/model/IEffectModel;
.field private static synthetic $SWITCH_TABLE$com$pinguo$camera360$effect$model$EffectModel$Filter:[I
.field private static sInstance:Lcom/pinguo/camera360/effect/model/EffectModel;
.field private static sSceneEffectConvertMap:Ljava/util/Map;
.field private static sSceneGPUEffectConvertMap:Ljava/util/Map;
.field private final TAG:Ljava/lang/String;
.field private mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
.field private mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
.field private mInitialized:Z
.method static synthetic $SWITCH_TABLE$com$pinguo$camera360$effect$model$EffectModel$Filter()[I
.registers 3
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->$SWITCH_TABLE$com$pinguo$camera360$effect$model$EffectModel$Filter:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->values()[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/EffectModel$Filter;
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23
:goto_15
sget-object v1, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->NO_SUPPORT_FOR_GPU:Lcom/pinguo/camera360/effect/model/EffectModel$Filter;
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21
:goto_1e
sput-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->$SWITCH_TABLE$com$pinguo$camera360$effect$model$EffectModel$Filter:[I
goto :goto_4
:catch_21
move-exception v1
goto :goto_1e
:catch_23
move-exception v1
goto :goto_15
.end method
.method static constructor <clinit>()V
.registers 5
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
sput-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectConvertMap:Ljava/util/Map;
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
sput-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneGPUEffectConvertMap:Ljava/util/Map;
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectOldValue:[Ljava/lang/String;
array-length v1, v2
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectOldValue:[Ljava/lang/String;
array-length v2, v2
sget-object v3, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectNewValue:[Ljava/lang/String;
array-length v3, v3
if-le v2, v3, :cond_1c
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectNewValue:[Ljava/lang/String;
array-length v1, v2
:cond_1c
const/4 v0, 0x0
:goto_1d
if-lt v0, v1, :cond_31
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneCPUEffectValue:[Ljava/lang/String;
array-length v1, v2
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneCPUEffectValue:[Ljava/lang/String;
array-length v2, v2
sget-object v3, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneGPUEffectValue:[Ljava/lang/String;
array-length v3, v3
if-le v2, v3, :cond_2d
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneGPUEffectValue:[Ljava/lang/String;
array-length v1, v2
:cond_2d
const/4 v0, 0x0
:goto_2e
if-lt v0, v1, :cond_41
return-void
:cond_31
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectConvertMap:Ljava/util/Map;
sget-object v3, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectOldValue:[Ljava/lang/String;
aget-object v3, v3, v0
sget-object v4, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectNewValue:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_1d
:cond_41
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneGPUEffectConvertMap:Ljava/util/Map;
sget-object v3, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneCPUEffectValue:[Ljava/lang/String;
aget-object v3, v3, v0
sget-object v4, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneGPUEffectValue:[Ljava/lang/String;
aget-object v4, v4, v0
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_2e
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/pinguo/camera360/effect/model/EffectModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mInitialized:Z
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/effect/model/EffectModel;)Lcom/pinguo/camera360/effect/model/EffectResourceManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
return-object v0
.end method
.method public static getEffectParam(Ljava/lang/String;)Ljava/lang/String;
.registers 2
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneGPUEffectConvertMap:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public static getEffectParamByOldParam(Ljava/lang/String;)Ljava/lang/String;
.registers 2
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->sSceneEffectConvertMap:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
.registers 3
const-class v1, Lcom/pinguo/camera360/effect/model/EffectModel;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->sInstance:Lcom/pinguo/camera360/effect/model/EffectModel;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/effect/model/EffectModel;
invoke-direct {v0}, Lcom/pinguo/camera360/effect/model/EffectModel;-><init>()V
sput-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->sInstance:Lcom/pinguo/camera360/effect/model/EffectModel;
:cond_e
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->sInstance:Lcom/pinguo/camera360/effect/model/EffectModel;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/effect/model/EffectModel;->init(Landroid/content/Context;)V
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectModel;->sInstance:Lcom/pinguo/camera360/effect/model/EffectModel;
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_1b
monitor-exit v1
return-object v0
:catchall_1b
move-exception v0
monitor-exit v1
throw v0
.end method
.method private isEffectFiltered(Lcom/pinguo/camera360/effect/model/entity/Effect;[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)Z
.registers 11
const/4 v3, 0x0
const/4 v1, 0x0
array-length v5, p2
move v4, v3
:goto_4
if-lt v4, v5, :cond_8
move v2, v1
:goto_7
return v2
:cond_8
aget-object v0, p2, v4
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->$SWITCH_TABLE$com$pinguo$camera360$effect$model$EffectModel$Filter()[I
move-result-object v6
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->ordinal()I
move-result v7
aget v6, v6, v7
packed-switch v6, :pswitch_data_34
:goto_17
if-eqz v1, :cond_30
move v2, v1
goto :goto_7
:pswitch_1b
invoke-virtual {p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z
move-result v6
if-eqz v6, :cond_23
move v1, v3
:goto_22
goto :goto_17
:cond_23
const/4 v1, 0x1
goto :goto_22
:pswitch_25
iget-object v6, p1, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
sget-object v7, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v7, v7, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_17
:cond_30
add-int/lit8 v4, v4, 0x1
goto :goto_4
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_1b
:pswitch_25
.end packed-switch
.end method
.method public clearEffectNewFlag(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v1, :cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_8
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v1
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
if-eqz v0, :cond_22
iput v2, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
new-instance v1, Lcom/pinguo/camera360/effect/model/EffectModel$2;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel$2;-><init>(Lcom/pinguo/camera360/effect/model/EffectModel;Ljava/lang/String;)V
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/effect/model/EffectModel$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_22
return-void
.end method
.method public clearEffectTypeNewFlag(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v1, :cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_8
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v1
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;
if-eqz v0, :cond_22
iput v2, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
new-instance v1, Lcom/pinguo/camera360/effect/model/EffectModel$1;
invoke-direct {v1, p0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel$1;-><init>(Lcom/pinguo/camera360/effect/model/EffectModel;Ljava/lang/String;)V
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/effect/model/EffectModel$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_22
return-void
.end method
.method public declared-synchronized destroy()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->destroy()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->invalidEffectDict(Z)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mInitialized:Z
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected doEffectTypeFilter(Lcom/pinguo/camera360/effect/model/entity/EffectType;[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 7
invoke-virtual {p1}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->clone()Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
iget-object v2, p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_11
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_18
return-object v1
:cond_18
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {p0, v0, p2}, Lcom/pinguo/camera360/effect/model/EffectModel;->isEffectFiltered(Lcom/pinguo/camera360/effect/model/entity/Effect;[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)Z
move-result v3
if-nez v3, :cond_11
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->addEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
goto :goto_11
.end method
.method public getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v1, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_7
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v1
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
:cond_18
return-object v0
.end method
.method public getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v2, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_7
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v2, :cond_28
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v2
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
if-eqz v0, :cond_28
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v2
iget-object v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;
:cond_28
return-object v1
.end method
.method public getEffectTypeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v1, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_7
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v1
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;
:cond_18
return-object v0
.end method
.method public getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v1, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_7
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeList(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v0
:cond_12
if-eqz v0, :cond_15
:goto_14
return-object v0
:cond_15
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_14
.end method
.method public getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)Ljava/util/List;
.registers 8
if-eqz p2, :cond_5
array-length v3, p2
if-nez v3, :cond_a
:cond_5
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v2
:cond_9
return-object v2
:cond_a
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_17
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_9
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v4, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
if-eqz v4, :cond_17
iget-object v4, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_17
invoke-virtual {p0, v1, p2}, Lcom/pinguo/camera360/effect/model/EffectModel;->doEffectTypeFilter(Lcom/pinguo/camera360/effect/model/entity/EffectType;[Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v0
if-eqz v0, :cond_17
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-lez v4, :cond_17
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
.end method
.method public getEffects(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
.registers 4
if-nez p1, :cond_8
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:cond_7
:goto_7
return-object v0
:cond_8
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v1, :cond_f
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_f
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v1, :cond_1a
iget-object v1, p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
:cond_1a
if-nez v0, :cond_7
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_7
.end method
.method public getEffectsByPackKey(Ljava/lang/String;)Ljava/util/List;
.registers 6
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v2, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v2
invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v2
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1e
:goto_1e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_25
:cond_24
return-object v1
:cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
if-eqz v3, :cond_1e
iget-object v3, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1e
.end method
.method public getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-nez v2, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:cond_7
const/4 v0, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz v2, :cond_1c
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v2
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;
if-eqz v1, :cond_1c
iget-object v0, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
:cond_1c
if-eqz v0, :cond_1f
:goto_1e
return-object v0
:cond_1f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_1e
.end method
.method public getInstalledDir()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getEffectInstalledDir()Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public getPackKeyListInEffectType(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
.registers 7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz p1, :cond_1f
iget-object v3, p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
if-eqz v3, :cond_1f
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
iget-object v3, p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_16
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_20
invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_1f
return-object v2
:cond_20
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_16
.end method
.method public getShaderDir()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getFrontImageFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected declared-synchronized init(Landroid/content/Context;)V
.registers 4
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mInitialized:Z
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "EffectModel already initialized"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_22
monitor-exit p0
return-void
:cond_f
:try_start_f
new-instance v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-direct {v0, p1, p0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/effect/model/EffectModel;)V
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->init()V
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mInitialized:Z
:try_end_21
.catchall {:try_start_f .. :try_end_21} :catchall_22
goto :goto_d
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method public install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v0
return v0
.end method
.method public declared-synchronized invalidEffectDict(Z)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "Invalid effect dict"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
if-eqz p1, :cond_11
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectModel;->loadEffectDict()V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
:cond_11
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected isInstallTimeInOrder(Ljava/util/List;Z)Z
.registers 13
const/4 v2, 0x1
if-nez p1, :cond_c
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Reorder list is null"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_b
:goto_b
return v2
:cond_c
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_15
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_46
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v5
if-le v5, v2, :cond_b
const/4 v0, 0x0
const/4 v1, 0x1
const/4 v2, 0x1
:goto_24
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v5
if-ge v1, v5, :cond_b
if-eqz p2, :cond_56
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Long;
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v6
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Long;
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v8
cmp-long v5, v6, v8
if-lez v5, :cond_70
const/4 v2, 0x0
goto :goto_b
:cond_46
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-wide v6, v4, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_15
:cond_56
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Long;
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v6
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Long;
invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
move-result-wide v8
cmp-long v5, v6, v8
if-gez v5, :cond_70
const/4 v2, 0x0
goto :goto_b
:cond_70
add-int/lit8 v0, v0, 0x1
add-int/lit8 v1, v1, 0x1
goto :goto_24
.end method
.method protected declared-synchronized loadEffectDict()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Load effect dict"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->loadEffectDict(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/EffectDict;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectDict:Lcom/pinguo/camera360/effect/model/EffectDict;
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_17
monitor-exit p0
return-void
:catchall_17
move-exception v1
monitor-exit p0
throw v1
.end method
.method public uninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->uninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Z
move-result v0
return v0
.end method
.method public updateEffectTypeList(Ljava/util/List;Ljava/util/List;)Z
.registers 12
const/4 v7, 0x1
const/4 v6, 0x0
sget-object v8, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {p0, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v8
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v4
if-nez p1, :cond_1f
move v3, v6
:goto_f
if-nez p2, :cond_24
move v5, v6
:goto_12
add-int v2, v3, v5
if-eq v4, v2, :cond_29
iget-object v7, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v8, "Effect type number not equal after reorder"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_1e
return v6
:cond_1f
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
goto :goto_f
:cond_24
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v5
goto :goto_12
:cond_29
if-eqz p2, :cond_48
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v8
if-eqz v8, :cond_48
move v1, v6
:goto_32
invoke-virtual {p0, p1, v7}, Lcom/pinguo/camera360/effect/model/EffectModel;->isInstallTimeInOrder(Ljava/util/List;Z)Z
move-result v0
if-nez v0, :cond_3b
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectLayFunction(I)V
:cond_3b
if-eqz v1, :cond_4a
if-eqz v0, :cond_4a
iget-object v7, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v8, "Reorder has no change and do nothing update"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1e
:cond_48
move v1, v7
goto :goto_32
:cond_4a
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v6, p1, p2}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->doUpdateEffectTypeList(Ljava/util/List;Ljava/util/List;)Z
move-result v6
goto :goto_1e
.end method
.method public updateFrontImage(Ljava/lang/String;Ljava/lang/String;)Z
.registers 12
const/4 v5, 0x0
new-instance v3, Ljava/io/File;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v6
const-string/jumbo v7, "frontImage.jpg"
invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Update front image from url : "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " to : "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v8}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getFrontImageFile()Ljava/io/File;
move-result-object v8
invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " by tmp file: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_start_4a
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v6
invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v6
invoke-static {p1, v3, v6}, Lcom/pinguo/lib/util/DownloadFileUtils;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCRC32forFile(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_a9
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Copy from: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " to: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v8}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getFrontImageFile()Ljava/io/File;
move-result-object v8
invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v6}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getFrontImageFile()Ljava/io/File;
move-result-object v6
invoke-static {v3, v6}, Lcom/pinguo/lib/util/FileUtils;->copySingleFile(Ljava/io/File;Ljava/io/File;)V
:try_end_9e
.catchall {:try_start_4a .. :try_end_9e} :catchall_107
.catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_9e} :catch_d7
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_9e} :catch_ef
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_a7
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:cond_a7
const/4 v5, 0x1
:goto_a8
:cond_a8
return v5
:try_start_a9
:cond_a9
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Verify crc32 failed! Signature:"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " but crc32:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_cd
.catchall {:try_start_a9 .. :try_end_cd} :catchall_107
.catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_cd} :catch_d7
.catch Ljava/io/IOException; {:try_start_a9 .. :try_end_cd} :catch_ef
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_a8
invoke-virtual {v3}, Ljava/io/File;->delete()Z
goto :goto_a8
:catch_d7
move-exception v2
:try_start_d8
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v7, "Update front image failed!"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
invoke-static {v6, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_e5
.catchall {:try_start_d8 .. :try_end_e5} :catchall_107
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_a8
invoke-virtual {v3}, Ljava/io/File;->delete()Z
goto :goto_a8
:catch_ef
move-exception v2
:try_start_f0
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
const-string/jumbo v7, "Update front image failed!"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/EffectModel;->TAG:Ljava/lang/String;
invoke-static {v6, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_fd
.catchall {:try_start_f0 .. :try_end_fd} :catchall_107
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_a8
invoke-virtual {v3}, Ljava/io/File;->delete()Z
goto :goto_a8
:catchall_107
move-exception v5
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_111
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:cond_111
throw v5
.end method