.class final Lcom/bbm/ui/c/cn;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/c/ck;
.method constructor <init>(Lcom/bbm/ui/c/ck;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/cn; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const-string v0, "mOnItemLongClickListener onItemLongClick"
const-class v1, Lcom/bbm/ui/c/ck;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0, p3}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;I)I
iget-object v0, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0, v2}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Z)Z
iget-object v0, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->d(Lcom/bbm/ui/c/ck;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
const-string v1, " - Lcom/bbm/ui/c/cn; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
.end method