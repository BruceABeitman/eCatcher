.class Lcom/tencent/weibo/sdk/android/component/Authorize$1;
.super Landroid/os/Handler;
.source "Authorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/weibo/sdk/android/component/Authorize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/Authorize;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$1;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/Authorize$1;->this$0:Lcom/tencent/weibo/sdk/android/component/Authorize;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/sdk/android/component/Authorize;->showDialog(I)V

    goto :goto_8

    :pswitch_data_10
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method
