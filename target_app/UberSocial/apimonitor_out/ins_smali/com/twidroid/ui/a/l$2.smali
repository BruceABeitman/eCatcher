.class  Lcom/twidroid/ui/a/l$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/ui/c/h;
.field final synthetic b:Lcom/twidroid/ui/a/l;
.method constructor <init>(Lcom/twidroid/ui/a/l;Lcom/twidroid/ui/c/h;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/l$2;->b:Lcom/twidroid/ui/a/l;
iput-object p2, p0, Lcom/twidroid/ui/a/l$2;->a:Lcom/twidroid/ui/c/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/ui/a/l$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ui/a/l$2;->b:Lcom/twidroid/ui/a/l;
invoke-static {v0}, Lcom/twidroid/ui/a/l;->a(Lcom/twidroid/ui/a/l;)Lcom/twidroid/ui/c/g;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/a/l$2;->a:Lcom/twidroid/ui/c/h;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/g;->c(Lcom/twidroid/ui/c/h;)V
iget-object v0, p0, Lcom/twidroid/ui/a/l$2;->b:Lcom/twidroid/ui/a/l;
invoke-virtual {v0}, Lcom/twidroid/ui/a/l;->notifyDataSetChanged()V
const-string v1, " - Lcom/twidroid/ui/a/l$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method