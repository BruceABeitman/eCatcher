.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$1;
.super Landroid/os/Handler;
.source "OptionsAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    #getter for: Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->mProcessDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsAlbum;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgress(I)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
