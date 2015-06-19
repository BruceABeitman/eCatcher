.class Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;
.super Landroid/os/Handler;
.source "ChooseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/ChooseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseIdentityHandler"
.end annotation


# static fields
.field private static final MSG_DATA_CHANGED:I = 0x3

.field private static final MSG_PROGRESS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseIdentity;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseIdentity;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/ChooseIdentity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    :pswitch_13
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v0, v0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_5

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method

.method public progress(Z)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ChooseIdentity$ChooseIdentityHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method
