.class final Lcom/bbm/ui/activities/aby;
.super Ljava/lang/Object;
.source "ProfileActivity.java"
.implements Lcom/bbm/ui/fs;
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 8
const v5, 0x7f0a0242
const/4 v4, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Landroid/app/FragmentTransaction;)V
packed-switch p1, :pswitch_data_ba
:goto_16
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->e(Lcom/bbm/ui/activities/ProfileActivity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1, p1}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;I)I
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
iget-object v0, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileActivity;->invalidateOptionsMenu()V
return-void
:pswitch_37
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "user_uri"
iget-object v3, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ProfileActivity;->g(Lcom/bbm/ui/activities/ProfileActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->h(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/ff;
move-result-object v2
if-nez v2, :cond_59
iget-object v2, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
new-instance v3, Lcom/bbm/ui/c/ff;
invoke-direct {v3}, Lcom/bbm/ui/c/ff;-><init>()V
invoke-static {v2, v3}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/ui/c/ff;)Lcom/bbm/ui/c/ff;
:cond_59
iget-object v2, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->h(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/ff;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/bbm/ui/c/ff;->setArguments(Landroid/os/Bundle;)V
const-string v1, "profile details selected"
const-class v2, Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->h(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/ff;
move-result-object v1
invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
goto :goto_16
:pswitch_73
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "user_uri"
iget-object v3, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ProfileActivity;->g(Lcom/bbm/ui/activities/ProfileActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->i(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/fh;
move-result-object v2
if-nez v2, :cond_95
iget-object v2, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
new-instance v3, Lcom/bbm/ui/c/fh;
invoke-direct {v3}, Lcom/bbm/ui/c/fh;-><init>()V
invoke-static {v2, v3}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/ui/c/fh;)Lcom/bbm/ui/c/fh;
:cond_95
iget-object v2, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ProfileActivity;->i(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/fh;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/bbm/ui/c/fh;->setArguments(Landroid/os/Bundle;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
const-string v1, "profile updates selected"
const-class v2, Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aby;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->i(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/fh;
move-result-object v1
invoke-virtual {v0, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
goto/16 :goto_16
nop
:pswitch_data_ba
.packed-switch 0x0
:pswitch_37
:pswitch_73
.end packed-switch
.end method