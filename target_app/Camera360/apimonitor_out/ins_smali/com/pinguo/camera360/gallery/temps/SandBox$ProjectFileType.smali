.class public final enum Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.super Ljava/lang/Enum;
.source "SandBox.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.field public static final enum photo:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.field public static final enum photo_org:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.field public static final enum share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.field public static final enum share_org:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.field public static final enum thumb:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
const-string/jumbo v1, "share"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
new-instance v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
const-string/jumbo v1, "share_org"
invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share_org:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
new-instance v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
const-string/jumbo v1, "thumb"
invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->thumb:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
new-instance v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
const-string/jumbo v1, "photo"
invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->photo:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
new-instance v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
const-string/jumbo v1, "photo_org"
invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->photo_org:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
const/4 v0, 0x5
new-array v0, v0, [Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share_org:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->thumb:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
aput-object v1, v0, v4
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->photo:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
aput-object v1, v0, v5
sget-object v1, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->photo_org:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
aput-object v1, v0, v6
sput-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->ENUM$VALUES:[Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.registers 2
const-class v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->ENUM$VALUES:[Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method