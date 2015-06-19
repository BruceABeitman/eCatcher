.class final Lcom/bbm/ui/e/bv;
.super Ljava/lang/Object;
.source "SharedAdHolder.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Lcom/bbm/ui/e/bt;
.method constructor <init>(Lcom/bbm/ui/e/bt;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/bv;->a:Lcom/bbm/ui/e/bt;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/bv; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
instance-of v0, p1, Lcom/bbm/ui/LinkifyTextView;
if-eqz v0, :cond_11
move-object v0, p1
check-cast v0, Lcom/bbm/ui/LinkifyTextView;
iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z
if-nez v0, :cond_11
check-cast p1, Lcom/bbm/ui/LinkifyTextView;
invoke-virtual {p1, v1}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V
:cond_11
move v2, v1
const-string v1, " - Lcom/bbm/ui/e/bv; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
.end method