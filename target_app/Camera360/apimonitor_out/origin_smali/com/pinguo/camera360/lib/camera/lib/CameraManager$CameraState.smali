.class public final enum Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
.super Ljava/lang/Enum;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

.field public static final enum IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

.field public static final enum PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

.field public static final enum SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    const-string/jumbo v1, "CAMERA_STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    const-string/jumbo v1, "PREVIEW_STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    const-string/jumbo v1, "SNAP_IN_PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->SNAP_IN_PROGRESS:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
