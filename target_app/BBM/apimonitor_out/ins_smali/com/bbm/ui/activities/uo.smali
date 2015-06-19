.class final Lcom/bbm/ui/activities/uo;
.super Lcom/bbm/ui/cj;
.source "InviteActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 7
const/4 v4, 0x1
packed-switch p1, :pswitch_data_4c
:goto_4
return-void
:pswitch_5
iget-object v0, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->h(Lcom/bbm/ui/activities/InviteActivity;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/InviteActivity;->y(Lcom/bbm/ui/activities/InviteActivity;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/InviteActivity;->z(Lcom/bbm/ui/activities/InviteActivity;)Ljava/lang/String;
move-result-object v3
iput-object v2, v0, Lcom/bbm/h/aq;->d:Ljava/lang/String;
iput-object v3, v0, Lcom/bbm/h/aq;->c:Ljava/lang/String;
invoke-static {v1, v4, v3, v4}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;Z)V
goto :goto_4
:cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;)V
goto :goto_4
:pswitch_37
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
const-class v2, Lcom/bbm/ui/activities/TapToInviteActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/InviteActivity;->startActivity(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/uo;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/InviteActivity;->finish()V
goto :goto_4
nop
:pswitch_data_4c
.packed-switch 0x0
:pswitch_5
:pswitch_37
.end packed-switch
.end method