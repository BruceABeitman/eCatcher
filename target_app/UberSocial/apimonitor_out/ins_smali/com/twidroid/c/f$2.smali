.class  Lcom/twidroid/c/f$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/f;
.method constructor <init>(Lcom/twidroid/c/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/f$2;->a:Lcom/twidroid/c/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/f$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/f$2;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
move-result-object v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/twidroid/c/f$2;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/c/g;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v0, v1, :cond_28
iget-object v0, p0, Lcom/twidroid/c/f$2;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->g(Lcom/twidroid/c/f;)Landroid/content/Context;
move-result-object v0
const v1, 0x7f0c007c
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_27
const-string v1, " - Lcom/twidroid/c/f$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_28
iget-object v0, p0, Lcom/twidroid/c/f$2;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->i(Lcom/twidroid/c/f;)V
goto :goto_27
.end method