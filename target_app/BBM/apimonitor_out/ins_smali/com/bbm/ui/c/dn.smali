.class final Lcom/bbm/ui/c/dn;
.super Ljava/lang/Object;
.source "GroupsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/g/ai;
.field final synthetic b:Lcom/bbm/ui/c/de;
.method constructor <init>(Lcom/bbm/ui/c/de;Lcom/bbm/g/ai;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/dn;->b:Lcom/bbm/ui/c/de;
iput-object p2, p0, Lcom/bbm/ui/c/dn;->a:Lcom/bbm/g/ai;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/dn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "createGroupRestoreContextSlideMenu BottomItem Clicked"
const-class v1, Lcom/bbm/ui/c/de;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/dn;->b:Lcom/bbm/ui/c/de;
invoke-virtual {v0}, Lcom/bbm/ui/c/de;->getActivity()Landroid/app/Activity;
move-result-object v0
if-eqz v0, :cond_23
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v1
if-nez v1, :cond_23
instance-of v1, v0, Lcom/bbm/ui/activities/MainActivity;
if-eqz v1, :cond_23
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
:cond_23
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/bbm/ui/c/do;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/do;-><init>(Lcom/bbm/ui/c/dn;)V
const-wide/16 v2, 0x12c
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
const-string v1, " - Lcom/bbm/ui/c/dn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method