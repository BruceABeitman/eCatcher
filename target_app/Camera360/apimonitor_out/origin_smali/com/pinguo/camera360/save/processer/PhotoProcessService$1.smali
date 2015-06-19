.class Lcom/pinguo/camera360/save/processer/PhotoProcessService$1;
.super Landroid/os/Handler;
.source "PhotoProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$1;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :pswitch_8
    return-void

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
