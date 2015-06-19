.class Lcom/pinguo/camera360/camera/controller/QRCamera$QRAnimationListener;
.super Ljava/lang/Object;
.source "QRCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/QRCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QRAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRAnimationListener;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$QRAnimationListener;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/QRCamera;->hideQRLayout()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$6(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
