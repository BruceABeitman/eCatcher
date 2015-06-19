.class final Lcom/bbm/ui/activities/qf;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Lcom/bbm/ui/c/fq;
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
.registers 7
const/4 v3, 0x1
iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I
packed-switch v0, :pswitch_data_c4
:goto_6
:pswitch_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->c(Lcom/bbm/ui/activities/GroupLobbyActivity;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->b(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
goto :goto_6
:cond_1e
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->d(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
goto :goto_6
:pswitch_2d
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v0, Lcom/bbm/ui/b/k;
iget-object v1, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0521
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V
const v1, 0x7f0e0453
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->c(I)V
const/16 v1, 0x100
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(I)V
new-instance v1, Lcom/bbm/ui/activities/qg;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/qg;-><init>(Lcom/bbm/ui/activities/qf;Lcom/bbm/ui/b/k;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V
goto :goto_6
:pswitch_5a
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const-class v2, Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "addpic"
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_6
:pswitch_80
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupListsActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V
goto/16 :goto_6
:pswitch_94
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->e(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
goto/16 :goto_6
:pswitch_a4
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->b()V
goto/16 :goto_6
:pswitch_b4
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/qf;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->f(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
goto/16 :goto_6
:pswitch_data_c4
.packed-switch 0x7f0a0067
:pswitch_94
:pswitch_80
:pswitch_5a
:pswitch_7
:pswitch_6
:pswitch_2d
:pswitch_a4
:pswitch_b4
.end packed-switch
.end method