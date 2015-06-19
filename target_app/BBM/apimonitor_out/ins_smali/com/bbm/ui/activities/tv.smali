.class final Lcom/bbm/ui/activities/tv;
.super Lcom/bbm/ui/cj;
.source "GroupsIconActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupsIconActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupsIconActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/tv;->a:Lcom/bbm/ui/activities/GroupsIconActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 6
packed-switch p1, :pswitch_data_34
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/tv;->a:Lcom/bbm/ui/activities/GroupsIconActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->a(Lcom/bbm/ui/activities/GroupsIconActivity;)V
goto :goto_3
:pswitch_a
iget-object v0, p0, Lcom/bbm/ui/activities/tv;->a:Lcom/bbm/ui/activities/GroupsIconActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->b(Lcom/bbm/ui/activities/GroupsIconActivity;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/bbm/ui/activities/tv;->a:Lcom/bbm/ui/activities/GroupsIconActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->c(Lcom/bbm/ui/activities/GroupsIconActivity;)V
goto :goto_3
:cond_18
iget-object v0, p0, Lcom/bbm/ui/activities/tv;->a:Lcom/bbm/ui/activities/GroupsIconActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->d(Lcom/bbm/ui/activities/GroupsIconActivity;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/tv;->a:Lcom/bbm/ui/activities/GroupsIconActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupsIconActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0507
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x7d0
const/16 v3, 0x11
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V
goto :goto_3
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_4
:pswitch_a
.end packed-switch
.end method