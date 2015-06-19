.class public Lcom/pinguo/camera360/effect/model/EffectDict;
.super Ljava/lang/Object;
.source "EffectDict.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$pinguo$camera360$effect$model$IEffectModel$EffectTypeUsage:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$pinguo$camera360$effect$model$IEffectModel$EffectTypeUsage()[I
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/effect/model/EffectDict;->$SWITCH_TABLE$com$pinguo$camera360$effect$model$IEffectModel$EffectTypeUsage:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->values()[Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ALL:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;

    invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;

    invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->OTHER:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;

    invoke-virtual {v1}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/pinguo/camera360/effect/model/EffectDict;->$SWITCH_TABLE$com$pinguo$camera360$effect$model$IEffectModel$EffectTypeUsage:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/effect/model/EffectDict;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/effect/model/EffectDict;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectDict;->mEffectTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectDict;->mEffectMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEffectMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectDict;->mEffectMap:Ljava/util/Map;

    return-object v0
.end method

.method public getEffectTypeList(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectDict;->mEffectTypeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectDict;->$SWITCH_TABLE$com$pinguo$camera360$effect$model$IEffectModel$EffectTypeUsage()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_50

    goto :goto_f

    :pswitch_2d
    iget-object v3, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    const-string/jumbo v4, "_Other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :pswitch_3c
    iget-object v3, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    const-string/jumbo v4, "_Other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :pswitch_4b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_3c
        :pswitch_4b
    .end packed-switch
.end method

.method public getEffectTypeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/camera360/effect/model/entity/EffectType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectDict;->mEffectTypeMap:Ljava/util/Map;

    return-object v0
.end method
