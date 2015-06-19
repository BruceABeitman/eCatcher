.class final Lcom/bbm/ui/activities/acw;
.super Lcom/bbm/ui/cj;
.source "ReceivedPendingInviteActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/acw;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/acw;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 3
packed-switch p1, :pswitch_data_10
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/acw;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
goto :goto_3
:pswitch_a
iget-object v0, p0, Lcom/bbm/ui/activities/acw;->a:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->b(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)V
goto :goto_3
:pswitch_data_10
.packed-switch 0x0
:pswitch_4
:pswitch_a
.end packed-switch
.end method