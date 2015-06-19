.class Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$11;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->firePicturePostTakenListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$11;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$11;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$11;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onSonyPicturePostTaken()V

    :cond_11
    return-void
.end method
