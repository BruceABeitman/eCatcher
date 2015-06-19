.class Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$2;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings;->filterPictureSize(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .registers 6

    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettings$2;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
