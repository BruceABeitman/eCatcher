.class final Lcom/bbm/ui/activities/afe;
.super Lcom/bbm/ui/cj;
.source "SentPendingInviteActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/SentPendingInviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SentPendingInviteActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/afe;->a:Lcom/bbm/ui/activities/SentPendingInviteActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/afe;->a:Lcom/bbm/ui/activities/SentPendingInviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 3
packed-switch p1, :pswitch_data_a
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/afe;->a:Lcom/bbm/ui/activities/SentPendingInviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SentPendingInviteActivity;->a(Lcom/bbm/ui/activities/SentPendingInviteActivity;)V
goto :goto_3
:pswitch_data_a
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method