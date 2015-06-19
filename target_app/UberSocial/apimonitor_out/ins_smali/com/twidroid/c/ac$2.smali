.class  Lcom/twidroid/c/ac$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/c/ac;
.method constructor <init>(Lcom/twidroid/c/ac;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/ac$2;->a:Lcom/twidroid/c/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/ac$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/ac$2;->a:Lcom/twidroid/c/ac;
iget-object v0, v0, Lcom/twidroid/c/ac;->b:Landroid/content/Context;
iget-object v1, p0, Lcom/twidroid/c/ac$2;->a:Lcom/twidroid/c/ac;
iget-object v1, v1, Lcom/twidroid/c/ac;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/c/ac$2;->a:Lcom/twidroid/c/ac;
iget-object v2, v2, Lcom/twidroid/c/ac;->c:Lcom/twidroid/net/c/a/f;
invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V
iget-object v0, p0, Lcom/twidroid/c/ac$2;->a:Lcom/twidroid/c/ac;
invoke-virtual {v0}, Lcom/twidroid/c/ac;->dismiss()V
const-string v1, " - Lcom/twidroid/c/ac$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method