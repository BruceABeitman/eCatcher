.class Lcom/pinguo/camera360/camera/controller/QRCamera$2;
.super Ljava/lang/Object;
.source "QRCamera.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/QRCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    return v0
.end method
