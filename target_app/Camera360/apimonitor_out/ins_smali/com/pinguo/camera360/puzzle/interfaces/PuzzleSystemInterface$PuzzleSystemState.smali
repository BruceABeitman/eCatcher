.class public final enum Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.super Ljava/lang/Enum;
.source "PuzzleSystemInterface.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.field public static final enum IDLE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.field public static final enum INITING:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.field public static final enum LOADING_TEMPLATE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.field public static final enum MARK_STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.field public static final enum STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
const-string/jumbo v1, "IDLE"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->IDLE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
new-instance v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
const-string/jumbo v1, "LOADING_TEMPLATE"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->LOADING_TEMPLATE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
new-instance v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
const-string/jumbo v1, "INITING"
invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->INITING:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
new-instance v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
const-string/jumbo v1, "STOPED"
invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
new-instance v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
const-string/jumbo v1, "MARK_STOPED"
invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->MARK_STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
const/4 v0, 0x5
new-array v0, v0, [Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
sget-object v1, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->IDLE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->LOADING_TEMPLATE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->INITING:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
aput-object v1, v0, v4
sget-object v1, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
aput-object v1, v0, v5
sget-object v1, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->MARK_STOPED:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
aput-object v1, v0, v6
sput-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->ENUM$VALUES:[Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.registers 2
const-class v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->ENUM$VALUES:[Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method