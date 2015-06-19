.class Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;
.super Ljava/lang/Object;
.source "QRCamera.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/QRCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "onLayoutChange"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/QRCamera;->showQRLayout()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$7(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    return-void
.end method
