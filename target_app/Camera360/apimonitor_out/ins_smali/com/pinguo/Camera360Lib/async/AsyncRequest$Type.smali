.class public final enum Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.super Ljava/lang/Enum;
.source "AsyncRequest.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.field public static final enum LONG:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.field public static final enum SHORT:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.field public static final enum UNKNOWN:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
const-string/jumbo v1, "SHORT"
invoke-direct {v0, v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->SHORT:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
const-string/jumbo v1, "LONG"
invoke-direct {v0, v1, v3}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->LONG:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
const-string/jumbo v1, "UNKNOWN"
invoke-direct {v0, v1, v4}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->UNKNOWN:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
const/4 v0, 0x3
new-array v0, v0, [Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->SHORT:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->LONG:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->UNKNOWN:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
aput-object v1, v0, v4
sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->ENUM$VALUES:[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.registers 2
const-class v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
return-object v0
.end method
.method public static values()[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;->ENUM$VALUES:[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/Camera360Lib/async/AsyncRequest$Type;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method