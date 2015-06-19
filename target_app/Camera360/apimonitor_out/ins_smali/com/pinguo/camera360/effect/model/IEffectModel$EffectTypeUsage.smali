.class public final enum Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.super Ljava/lang/Enum;
.source "IEffectModel.java"
.field public static final enum ALL:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.field public static final enum EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.field public static final enum OTHER:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
const-string/jumbo v1, "EFFECT"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
new-instance v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
const-string/jumbo v1, "OTHER"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->OTHER:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
new-instance v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
const-string/jumbo v1, "ALL"
invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ALL:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
const/4 v0, 0x3
new-array v0, v0, [Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->OTHER:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ALL:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
aput-object v1, v0, v4
sput-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ENUM$VALUES:[Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.registers 2
const-class v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->ENUM$VALUES:[Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method