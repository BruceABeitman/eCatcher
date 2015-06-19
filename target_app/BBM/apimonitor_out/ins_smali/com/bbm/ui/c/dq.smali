.class final Lcom/bbm/ui/c/dq;
.super Ljava/lang/Object;
.source "GroupsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.field final synthetic b:Lcom/bbm/g/a;
.field final synthetic c:Lcom/bbm/ui/c/de;
.method constructor <init>(Lcom/bbm/ui/c/de;Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/g/a;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/dq;->c:Lcom/bbm/ui/c/de;
iput-object p2, p0, Lcom/bbm/ui/c/dq;->a:Lcom/bbm/ui/activities/MainActivity;
iput-object p3, p0, Lcom/bbm/ui/c/dq;->b:Lcom/bbm/g/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/dq; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "createGroupContextSlideMenu BottomItem Clicked"
const-class v1, Lcom/bbm/ui/c/de;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/dq;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v0, Lcom/bbm/ui/activities/qn;
iget-object v1, p0, Lcom/bbm/ui/c/dq;->a:Lcom/bbm/ui/activities/MainActivity;
iget-object v2, p0, Lcom/bbm/ui/c/dq;->b:Lcom/bbm/g/a;
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/ui/activities/qn;-><init>(Landroid/app/Activity;Lcom/bbm/g/a;Z)V
invoke-virtual {v0}, Lcom/bbm/ui/activities/qn;->show()V
const-string v1, " - Lcom/bbm/ui/c/dq; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method