.class Lcom/pinguo/camera360/sony/model/SonyCamera$5;
.super Ljava/lang/Object;
.source "SonyCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCamera;->fireCameraOpenFailListener(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

.field private final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/io/IOException;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$5;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$5;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$5;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$5;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$5;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onSonyCameraOpenFail(Ljava/io/IOException;)V

    :cond_13
    return-void
.end method
