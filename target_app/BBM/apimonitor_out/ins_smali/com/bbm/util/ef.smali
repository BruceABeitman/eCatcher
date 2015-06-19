.class final Lcom/bbm/util/ef;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/app/Activity;
.field final synthetic b:Lcom/bbm/d/fy;
.field final synthetic c:Lcom/bbm/d/ec;
.method constructor <init>(Landroid/app/Activity;Lcom/bbm/d/fy;Lcom/bbm/d/ec;)V
.registers 4
iput-object p1, p0, Lcom/bbm/util/ef;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/bbm/util/ef;->b:Lcom/bbm/d/fy;
iput-object p3, p0, Lcom/bbm/util/ef;->c:Lcom/bbm/d/ec;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/ef; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x1
iget-object v0, p0, Lcom/bbm/util/ef;->a:Landroid/app/Activity;
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v7}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/util/ef;->b:Lcom/bbm/d/fy;
iget-object v1, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;
invoke-static {v1, v7}, Lcom/bbm/d/z;->a(Ljava/lang/String;Z)Lcom/bbm/d/am;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/util/ef;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/util/ef;->a:Landroid/app/Activity;
const v2, 0x7f0e072f
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/bbm/util/ef;->a:Landroid/app/Activity;
const v6, 0x7f0e072e
invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
iget-object v4, p0, Lcom/bbm/util/ef;->c:Lcom/bbm/d/ec;
iget-object v4, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;
aput-object v4, v3, v7
invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/util/ef;->a:Landroid/app/Activity;
const v3, 0x7f0e0293
invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/bbm/util/eg;
invoke-direct {v3, p0}, Lcom/bbm/util/eg;-><init>(Lcom/bbm/util/ef;)V
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/bbm/util/ef; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method