.class final Lcom/bbm/ui/c/ax;
.super Ljava/lang/Object;
.source "ChatsFragment.java"
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.field final synthetic a:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ax;->a:Lcom/bbm/ui/c/at;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onGroupCollapse(I)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/ax; onGroupCollapse "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/ax;->a:Lcom/bbm/ui/c/at;
invoke-static {v0, v1}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;Z)V
iget-object v0, p0, Lcom/bbm/ui/c/ax;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/bbm/ui/e/cd;->getChildrenCount(I)I
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Lcom/bbm/ui/c/ax;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
move-result-object v0
invoke-virtual {v0, p1, v1}, Lcom/bbm/ui/e/cd;->getChild(II)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gl;
iget-object v1, p0, Lcom/bbm/ui/c/ax;->a:Lcom/bbm/ui/c/at;
invoke-static {v1}, Lcom/bbm/ui/c/at;->b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/gl;->a:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/bbm/ui/b/ai;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
:cond_29
const-string v1, " - Lcom/bbm/ui/c/ax; onGroupCollapse"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method