.class public Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;
.super Ljava/lang/Object;
.source "TryEffectDict.java"
.field private static final TAG:Ljava/lang/String;
.field private mEffectMap:Ljava/util/Map;
.field private mEffectPackMap:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->mEffectPackMap:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->mEffectMap:Ljava/util/Map;
return-void
.end method
.method public getEffectMap()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->mEffectMap:Ljava/util/Map;
return-object v0
.end method
.method public getEffectPackMap()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->mEffectPackMap:Ljava/util/Map;
return-object v0
.end method