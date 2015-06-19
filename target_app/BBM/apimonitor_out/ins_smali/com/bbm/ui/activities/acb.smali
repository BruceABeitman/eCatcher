.class final Lcom/bbm/ui/activities/acb;
.super Lcom/bbm/ui/cj;
.source "ProfileActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileActivity;->h()V
return-void
.end method
.method public final a(I)V
.registers 6
packed-switch p1, :pswitch_data_7a
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
const/16 v1, 0x3e8
iget-object v2, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->g(Lcom/bbm/ui/activities/ProfileActivity;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V
goto :goto_3
:pswitch_12
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "from_conv"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileActivity;->finish()V
goto :goto_3
:cond_27
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->g(Lcom/bbm/ui/activities/ProfileActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_3
:pswitch_33
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->k(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->g(Lcom/bbm/ui/activities/ProfileActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->k(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/a;
move-result-object v1
new-instance v2, Lcom/bbm/d/bg;
invoke-direct {v2}, Lcom/bbm/d/bg;-><init>()V
invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/bg;->c(Ljava/lang/String;)Lcom/bbm/d/bg;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ProfileActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e04a5
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/d/bg;->a(Ljava/lang/String;)Lcom/bbm/d/bg;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/acb;->a:Lcom/bbm/ui/activities/ProfileActivity;
const v2, 0x7f0e047f
invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ProfileActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_3
nop
:pswitch_data_7a
.packed-switch 0x0
:pswitch_4
:pswitch_12
:pswitch_33
.end packed-switch
.end method