.class public final enum Lcom/pinguo/camera360/lib/feedback/FeventId$other;
.super Ljava/lang/Enum;
.source "FeventId.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/FeventId$other;
.field public static final enum id_10_1:Lcom/pinguo/camera360/lib/feedback/FeventId$other;
.field public static final enum id_10_2:Lcom/pinguo/camera360/lib/feedback/FeventId$other;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;
const-string/jumbo v1, "id_10_1"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FeventId$other;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;->id_10_1:Lcom/pinguo/camera360/lib/feedback/FeventId$other;
new-instance v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;
const-string/jumbo v1, "id_10_2"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/lib/feedback/FeventId$other;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;->id_10_2:Lcom/pinguo/camera360/lib/feedback/FeventId$other;
const/4 v0, 0x2
new-array v0, v0, [Lcom/pinguo/camera360/lib/feedback/FeventId$other;
sget-object v1, Lcom/pinguo/camera360/lib/feedback/FeventId$other;->id_10_1:Lcom/pinguo/camera360/lib/feedback/FeventId$other;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/lib/feedback/FeventId$other;->id_10_2:Lcom/pinguo/camera360/lib/feedback/FeventId$other;
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/FeventId$other;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/lib/feedback/FeventId$other;
.registers 2
const-class v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/lib/feedback/FeventId$other;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/lib/feedback/FeventId$other;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/FeventId$other;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/lib/feedback/FeventId$other;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method