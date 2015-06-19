.class final Lcom/bbm/ui/activities/oa;
.super Ljava/lang/Object;
.source "GroupListItemsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/g/y;
.field final synthetic b:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;Lcom/bbm/g/y;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/oa;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/oa;->a:Lcom/bbm/g/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/oa; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const-string v0, "ContextSlideMenu Bottom item Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oa;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/oa;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/oa;->a:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bv;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/bbm/g/bv;->a(Z)Lcom/bbm/g/bv;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oa;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
const-string v1, " - Lcom/bbm/ui/activities/oa; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method