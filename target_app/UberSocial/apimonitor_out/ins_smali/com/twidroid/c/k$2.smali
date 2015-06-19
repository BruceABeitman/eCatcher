.class  Lcom/twidroid/c/k$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/ui/a/e;
.field final synthetic b:Lcom/twidroid/c/k;
.method constructor <init>(Lcom/twidroid/c/k;Lcom/twidroid/ui/a/e;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/c/k$2;->b:Lcom/twidroid/c/k;
iput-object p2, p0, Lcom/twidroid/c/k$2;->a:Lcom/twidroid/ui/a/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/k$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/c/k$2;->b:Lcom/twidroid/c/k;
iget-object v0, p0, Lcom/twidroid/c/k$2;->a:Lcom/twidroid/ui/a/e;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/e;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/twidroid/c/k;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/k$2;->b:Lcom/twidroid/c/k;
invoke-virtual {v0}, Lcom/twidroid/c/k;->dismiss()V
const-string v1, " - Lcom/twidroid/c/k$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method