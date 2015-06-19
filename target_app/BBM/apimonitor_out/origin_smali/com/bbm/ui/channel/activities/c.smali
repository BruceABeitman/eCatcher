.class final Lcom/bbm/ui/channel/activities/c;
.super Lcom/bbm/ui/cj;
.source "ChannelInviteToBBM.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;


# direct methods
.method constructor <init>(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/channel/activities/c;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/channel/activities/c;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-virtual {v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 6

    sparse-switch p1, :sswitch_data_32

    :goto_3
    :sswitch_3
    return-void

    :sswitch_4
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/channel/activities/c;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-static {v1}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->b(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/channel/activities/c;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    const-class v3, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_1b
    const-string v2, "conversation_uri"

    invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_2c

    :goto_26
    iget-object v0, p0, Lcom/bbm/ui/channel/activities/c;->a:Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :catch_2c
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_26

    nop

    :sswitch_data_32
    .sparse-switch
        0x7f0a0056 -> :sswitch_4
        0x7f0a00fe -> :sswitch_3
    .end sparse-switch
.end method

.method public final b()V
    .registers 1

    return-void
.end method
