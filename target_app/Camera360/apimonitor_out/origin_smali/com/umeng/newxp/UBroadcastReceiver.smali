.class public Lcom/umeng/newxp/UBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "boradcast_action_key"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_f
    return-void

    :pswitch_10
    invoke-virtual {p0}, Lcom/umeng/newxp/UBroadcastReceiver;->onShow()V

    goto :goto_f

    :pswitch_14
    invoke-virtual {p0}, Lcom/umeng/newxp/UBroadcastReceiver;->onDismiss()V

    goto :goto_f

    :pswitch_data_18
    .packed-switch 0x11
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public onShow()V
    .registers 1

    return-void
.end method
