.class final Lcom/bbm/ui/activities/y;
.super Ljava/lang/Object;
.source "AvatarViewerActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/AvatarViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AvatarViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/y;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/y; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "bottom item onItemClick"
const-class v1, Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/y;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/y;->a:Lcom/bbm/ui/activities/AvatarViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AvatarViewerActivity;->a(Lcom/bbm/ui/activities/AvatarViewerActivity;)Lcom/bbm/d/a;
move-result-object v0
const-string v1, ""
const-string v2, ""
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cu;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
const-string v1, " - Lcom/bbm/ui/activities/y; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method