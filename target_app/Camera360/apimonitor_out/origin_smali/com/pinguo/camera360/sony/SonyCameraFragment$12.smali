.class Lcom/pinguo/camera360/sony/SonyCameraFragment$12;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;->prepareZoomInOrOutEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$12;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$12;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    const-string/jumbo v1, "out"

    const-string/jumbo v2, "start"

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->actZoom(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$16(Lcom/pinguo/camera360/sony/SonyCameraFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
