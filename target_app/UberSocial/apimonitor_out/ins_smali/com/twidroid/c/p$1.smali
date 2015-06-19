.class  Lcom/twidroid/c/p$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/c/p;
.method constructor <init>(Lcom/twidroid/c/p;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;
iput p2, p0, Lcom/twidroid/c/p$1;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/p$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;
iget-object v0, v0, Lcom/twidroid/c/p;->a:Lcom/twidroid/c/n;
invoke-static {v0}, Lcom/twidroid/c/n;->a(Lcom/twidroid/c/n;)Lcom/twidroid/c/o;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;
iget-object v0, v0, Lcom/twidroid/c/p;->a:Lcom/twidroid/c/n;
invoke-static {v0}, Lcom/twidroid/c/n;->a(Lcom/twidroid/c/n;)Lcom/twidroid/c/o;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;
iget v2, p0, Lcom/twidroid/c/p$1;->a:I
invoke-virtual {v1, v2}, Lcom/twidroid/c/p;->a(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/twidroid/c/o;->a(Ljava/lang/String;)V
:cond_1d
const-string v1, " - Lcom/twidroid/c/p$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method