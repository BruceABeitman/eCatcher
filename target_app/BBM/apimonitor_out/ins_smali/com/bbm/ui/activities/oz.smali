.class final Lcom/bbm/ui/activities/oz;
.super Ljava/lang/Object;
.source "GroupListsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/g/w;
.field final synthetic b:Lcom/bbm/ui/activities/GroupListsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsActivity;Lcom/bbm/g/w;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/oz;->b:Lcom/bbm/ui/activities/GroupListsActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/oz;->a:Lcom/bbm/g/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/oz; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "menu delete onClick"
const-class v1, Lcom/bbm/ui/activities/GroupListsActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oz;->b:Lcom/bbm/ui/activities/GroupListsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListsActivity;->a:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/oz;->a:Lcom/bbm/g/w;
iget-object v1, v1, Lcom/bbm/g/w;->f:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/g/an;->d(Ljava/lang/String;)Lcom/bbm/g/bq;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
iget-object v0, p0, Lcom/bbm/ui/activities/oz;->b:Lcom/bbm/ui/activities/GroupListsActivity;
iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
const-string v1, " - Lcom/bbm/ui/activities/oz; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method