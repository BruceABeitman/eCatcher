.class final Lcom/bbm/ui/c/hi;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StoreFragment.java"
.field final synthetic a:Lcom/bbm/l/b/j;
.field final synthetic b:Lcom/bbm/ui/c/hh;
.method constructor <init>(Lcom/bbm/ui/c/hh;Lcom/bbm/l/b/j;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/hi;->b:Lcom/bbm/ui/c/hh;
iput-object p2, p0, Lcom/bbm/ui/c/hi;->a:Lcom/bbm/l/b/j;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/hi; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/hi;->a:Lcom/bbm/l/b/j;
if-eqz v0, :cond_9f
iget-object v0, p0, Lcom/bbm/ui/c/hi;->a:Lcom/bbm/l/b/j;
iget-object v0, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_9f
new-instance v4, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/c/hi;->b:Lcom/bbm/ui/c/hh;
iget-object v1, v1, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-virtual {v1}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v1
const-class v2, Lcom/bbm/ui/activities/StickerDetailsActivity;
invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "pack_id"
invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v2, -0x1
iget-object v0, p0, Lcom/bbm/ui/c/hi;->b:Lcom/bbm/ui/c/hh;
iget-object v0, v0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
iget-object v0, v0, Lcom/bbm/ui/c/gz;->b:Lcom/bbm/d/b/f;
invoke-virtual {v0}, Lcom/bbm/d/b/f;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_32
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a8
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/gp;
iget-object v1, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;
check-cast v1, Lcom/bbm/ui/c/hg;
sget-object v6, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;
invoke-virtual {v1, v6}, Lcom/bbm/ui/c/hg;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_32
iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move v1, v2
:cond_51
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/hf;
add-int/lit8 v1, v1, 0x1
iget-object v2, p0, Lcom/bbm/ui/c/hi;->a:Lcom/bbm/l/b/j;
iget-object v0, v0, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;
invoke-virtual {v2, v0}, Lcom/bbm/l/b/j;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
:goto_69
:cond_69
iget-object v0, p0, Lcom/bbm/ui/c/hi;->b:Lcom/bbm/ui/c/hh;
iget-object v0, v0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-virtual {v0}, Lcom/bbm/ui/c/gz;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-nez v0, :cond_a1
move v0, v3
:goto_74
const-string v2, "updateAfterPurchase"
invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "storeGridLocation"
invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v0, "viewSource"
sget-object v1, Lcom/bbm/c/q;->b:Lcom/bbm/c/q;
invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/c/hi;->b:Lcom/bbm/ui/c/hh;
iget-object v0, v0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-virtual {v0, v4, v3}, Lcom/bbm/ui/c/gz;->startActivityForResult(Landroid/content/Intent;I)V
iget-object v0, p0, Lcom/bbm/ui/c/hi;->a:Lcom/bbm/l/b/j;
invoke-virtual {v0}, Lcom/bbm/l/b/j;->c()V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/q;->b:Lcom/bbm/c/q;
iget-object v2, p0, Lcom/bbm/ui/c/hi;->a:Lcom/bbm/l/b/j;
iget-object v2, v2, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Lcom/bbm/c/c;->a(Lcom/bbm/c/q;Ljava/lang/String;Ljava/lang/String;)V
:cond_9f
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/c/hi; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_a1
const-string v2, "updateAfterPurchase"
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
goto :goto_74
:cond_a8
move v1, v2
goto :goto_69
.end method