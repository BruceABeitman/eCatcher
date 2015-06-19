.class final Lcom/bbm/h/k;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Lcom/bbm/b/a;
.field final synthetic b:Lcom/bbm/h/a;
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/b/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/h/k;->b:Lcom/bbm/h/a;
iput-object p2, p0, Lcom/bbm/h/k;->a:Lcom/bbm/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/h/k; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/h/k;->a:Lcom/bbm/b/a;
iget-object v0, p0, Lcom/bbm/h/k;->b:Lcom/bbm/h/a;
invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;Lcom/bbm/ui/activities/MainActivity;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/h/k; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method