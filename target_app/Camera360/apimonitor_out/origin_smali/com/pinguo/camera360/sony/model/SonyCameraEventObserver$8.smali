.class Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;
.super Ljava/lang/Object;
.source "SonyCameraEventObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->fireZoomInformationChangeListener(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

.field private final synthetic val$zoomPosition:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    iput p2, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;->val$zoomPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;->this$0:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;->access$22(Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$8;->val$zoomPosition:I

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->onZoomPositionChanged(I)V

    :cond_13
    return-void
.end method