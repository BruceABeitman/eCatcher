.class final Lcom/bbm/ui/c/eg;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/d/ec;
.field final synthetic b:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;Lcom/bbm/d/ec;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/eg;->b:Lcom/bbm/ui/c/du;
iput-object p2, p0, Lcom/bbm/ui/c/eg;->a:Lcom/bbm/d/ec;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/eg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "bottomItem Clicked"
const-class v1, Lcom/bbm/ui/c/du;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/eg;->b:Lcom/bbm/ui/c/du;
invoke-static {v0}, Lcom/bbm/ui/c/du;->g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v0
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/c/eg;->a:Lcom/bbm/d/ec;
iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/bbm/ui/c/eg;->a:Lcom/bbm/d/ec;
iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/c/eg;->b:Lcom/bbm/ui/c/du;
invoke-static {v1}, Lcom/bbm/ui/c/du;->g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Landroid/app/Activity;)V
:goto_28
const-string v1, " - Lcom/bbm/ui/c/eg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_29
iget-object v0, p0, Lcom/bbm/ui/c/eg;->a:Lcom/bbm/d/ec;
iget-object v1, p0, Lcom/bbm/ui/c/eg;->b:Lcom/bbm/ui/c/du;
invoke-static {v1}, Lcom/bbm/ui/c/du;->g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;Landroid/app/Activity;)V
goto :goto_28
.end method