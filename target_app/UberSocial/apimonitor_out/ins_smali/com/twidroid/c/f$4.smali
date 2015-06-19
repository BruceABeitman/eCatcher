.class  Lcom/twidroid/c/f$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field final synthetic a:Lcom/twidroid/c/f;
.method constructor <init>(Lcom/twidroid/c/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDismiss()V
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->j(Lcom/twidroid/c/f;)Landroid/os/Handler$Callback;
move-result-object v0
if-eqz v0, :cond_97
new-instance v3, Landroid/os/Message;
invoke-direct {v3}, Landroid/os/Message;-><init>()V
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->k(Lcom/twidroid/c/f;)Z
move-result v0
if-eqz v0, :cond_98
move v0, v1
:goto_18
iput v0, v3, Landroid/os/Message;->arg2:I
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
move-result-object v0
if-eqz v0, :cond_86
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->l(Lcom/twidroid/c/f;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ltz v0, :cond_45
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/activity/r;->c()I
move-result v0
iget-object v4, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v4}, Lcom/twidroid/c/f;->l(Lcom/twidroid/c/f;)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
if-eq v0, v4, :cond_45
move v2, v1
:cond_45
iput v2, v3, Landroid/os/Message;->arg1:I
iget v0, v3, Landroid/os/Message;->arg1:I
if-ne v0, v1, :cond_86
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->l(Lcom/twidroid/c/f;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-lez v0, :cond_73
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "filtertype"
iget-object v2, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v2}, Lcom/twidroid/c/f;->l(Lcom/twidroid/c/f;)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "imageFilterApplied"
invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
invoke-interface {v0}, Ljava/util/Map;->clear()V
:cond_73
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v1}, Lcom/twidroid/c/f;->l(Lcom/twidroid/c/f;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/r;->a(I)V
:cond_86
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
move-result-object v0
iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, p0, Lcom/twidroid/c/f$4;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->j(Lcom/twidroid/c/f;)Landroid/os/Handler$Callback;
move-result-object v0
invoke-interface {v0, v3}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
:cond_97
return-void
:cond_98
move v0, v2
goto/16 :goto_18
.end method