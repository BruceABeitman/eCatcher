.class public final enum Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.super Ljava/lang/Enum;
.source "SandBoxConstants.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.field public static final enum photo:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.field public static final enum photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.field public static final enum share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.field public static final enum share_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.field public static final enum thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
const-string/jumbo v1, "share"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
const-string/jumbo v1, "share_org"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
const-string/jumbo v1, "thumb"
invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
const-string/jumbo v1, "photo"
invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
new-instance v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
const-string/jumbo v1, "photo_org"
invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
const/4 v0, 0x5
new-array v0, v0, [Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->share_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->thumb:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
aput-object v1, v0, v4
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
aput-object v1, v0, v5
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->photo_org:Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
aput-object v1, v0, v6
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->ENUM$VALUES:[Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.registers 2
const-class v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;->ENUM$VALUES:[Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/save/sandbox/SandBoxConstants$SandBoxPictureType;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method