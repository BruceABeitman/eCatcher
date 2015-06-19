.class  Lcom/twidroid/c/x$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/d/n;
.field final synthetic b:Lcom/twidroid/c/x;
.method constructor <init>(Lcom/twidroid/c/x;Lcom/twidroid/d/n;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iput-object p2, p0, Lcom/twidroid/c/x$1;->a:Lcom/twidroid/d/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/x$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
iget-object v1, p0, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iget-object v1, v1, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
const v2, 0x7f0c0159
invoke-static {v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
invoke-virtual {v0}, Lcom/twidroid/c/x;->dismiss()V
iget-object v0, p0, Lcom/twidroid/c/x$1;->a:Lcom/twidroid/d/n;
invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/c/x$1;->a:Lcom/twidroid/d/n;
invoke-virtual {v1}, Lcom/twidroid/d/n;->f()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/c/x$1;->b:Lcom/twidroid/c/x;
iget-object v2, v2, Lcom/twidroid/c/x;->f:Landroid/app/Activity;
new-instance v3, Lcom/twidroid/c/x$1$1;
invoke-direct {v3, p0}, Lcom/twidroid/c/x$1$1;-><init>(Lcom/twidroid/c/x$1;)V
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twidroid/d/a/b;)V
const-string v1, " - Lcom/twidroid/c/x$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method