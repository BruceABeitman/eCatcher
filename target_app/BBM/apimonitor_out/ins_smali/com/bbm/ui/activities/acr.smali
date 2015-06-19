.class final Lcom/bbm/ui/activities/acr;
.super Lcom/bbm/ui/cj;
.source "ReceivedPendingGroupInviteActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/acr;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/acr;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 3
packed-switch p1, :pswitch_data_10
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/acr;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
goto :goto_3
:pswitch_a
iget-object v0, p0, Lcom/bbm/ui/activities/acr;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->c(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)V
goto :goto_3
:pswitch_data_10
.packed-switch 0x0
:pswitch_4
:pswitch_a
.end packed-switch
.end method