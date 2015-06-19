.class public final enum Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.super Ljava/lang/Enum;
.source "Texture.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.field public static final enum FIRST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.field public static final enum LIST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.field public static final enum RANDOM:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.field private value:I
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
const-string/jumbo v1, "FIRST"
invoke-direct {v0, v1, v2, v2}, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->FIRST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
const-string/jumbo v1, "LIST"
invoke-direct {v0, v1, v3, v3}, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->LIST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
new-instance v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
const-string/jumbo v1, "RANDOM"
invoke-direct {v0, v1, v4, v4}, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->RANDOM:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
const/4 v0, 0x3
new-array v0, v0, [Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
sget-object v1, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->FIRST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->LIST:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->RANDOM:Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
aput-object v1, v0, v4
sput-object v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->ENUM$VALUES:[Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->value:I
iput p3, p0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->value:I
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.registers 2
const-class v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->ENUM$VALUES:[Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method
.method public value()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/effect/model/entity/Texture$Usage;->value:I
return v0
.end method