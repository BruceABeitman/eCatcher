.class Lcom/pinguo/camera360/sony/model/SonyCamera$7;
.super Ljava/lang/Object;
.source "SonyCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$7;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$7;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$7;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onSonyPicturePostTaken()V

    :cond_11
    return-void
.end method
