.class  Lcom/twidroid/c/f$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/c/f;
.method constructor <init>(Lcom/twidroid/c/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/f$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->h(Lcom/twidroid/c/f;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
const-string v1, " - Lcom/twidroid/c/f$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
iget-object v0, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
new-instance v1, Lcom/twidroid/c/g;
iget-object v2, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
invoke-direct {v1, v2}, Lcom/twidroid/c/g;-><init>(Lcom/twidroid/c/f;)V
invoke-static {v0, v1}, Lcom/twidroid/c/f;->a(Lcom/twidroid/c/f;Lcom/twidroid/c/g;)Lcom/twidroid/c/g;
const/4 v0, 0x1
new-array v0, v0, [Lcom/twidroid/c/h;
const/4 v1, 0x0
new-instance v2, Lcom/twidroid/c/h;
iget-object v3, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
iget-object v4, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
invoke-static {v4}, Lcom/twidroid/c/f;->c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
move-result-object v4
invoke-direct {v2, v3, v4, p3}, Lcom/twidroid/c/h;-><init>(Lcom/twidroid/c/f;Lcom/twidroid/activity/r;I)V
aput-object v2, v0, v1
iget-object v1, p0, Lcom/twidroid/c/f$3;->a:Lcom/twidroid/c/f;
invoke-static {v1}, Lcom/twidroid/c/f;->e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/c/g;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_8
.end method