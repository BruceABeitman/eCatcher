.class public final enum Lcom/pinguo/camera360/gallery/ActivityState$State;
.super Ljava/lang/Enum;
.source "ActivityState.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/gallery/ActivityState$State;
.field public static final enum Normal:Lcom/pinguo/camera360/gallery/ActivityState$State;
.field public static final enum ResetUI:Lcom/pinguo/camera360/gallery/ActivityState$State;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/gallery/ActivityState$State;
const-string/jumbo v1, "Normal"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ActivityState$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/ActivityState$State;->Normal:Lcom/pinguo/camera360/gallery/ActivityState$State;
new-instance v0, Lcom/pinguo/camera360/gallery/ActivityState$State;
const-string/jumbo v1, "ResetUI"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/gallery/ActivityState$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/ActivityState$State;->ResetUI:Lcom/pinguo/camera360/gallery/ActivityState$State;
const/4 v0, 0x2
new-array v0, v0, [Lcom/pinguo/camera360/gallery/ActivityState$State;
sget-object v1, Lcom/pinguo/camera360/gallery/ActivityState$State;->Normal:Lcom/pinguo/camera360/gallery/ActivityState$State;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/gallery/ActivityState$State;->ResetUI:Lcom/pinguo/camera360/gallery/ActivityState$State;
aput-object v1, v0, v3
sput-object v0, Lcom/pinguo/camera360/gallery/ActivityState$State;->ENUM$VALUES:[Lcom/pinguo/camera360/gallery/ActivityState$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/gallery/ActivityState$State;
.registers 2
const-class v0, Lcom/pinguo/camera360/gallery/ActivityState$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ActivityState$State;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/gallery/ActivityState$State;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/gallery/ActivityState$State;->ENUM$VALUES:[Lcom/pinguo/camera360/gallery/ActivityState$State;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/gallery/ActivityState$State;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method