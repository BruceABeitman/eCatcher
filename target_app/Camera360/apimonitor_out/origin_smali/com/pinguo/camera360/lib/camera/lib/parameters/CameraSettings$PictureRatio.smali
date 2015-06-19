.class public final enum Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
.super Ljava/lang/Enum;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_16X10:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_16X9:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_1X1:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_3X2:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_4X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_5X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

.field public static final enum RATIO_OTHER:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_16X9"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X9:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_4X3"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_4X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_16X10"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X10:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_5X3"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_5X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_3X2"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_3X2:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_1X1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_1X1:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const-string/jumbo v1, "RATIO_OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_OTHER:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X9:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_4X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_16X10:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_5X3:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_3X2:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_1X1:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->RATIO_OTHER:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$PictureRatio;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
