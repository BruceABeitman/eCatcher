.class  Lcom/twidroid/fragments/b$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/ui/a/c;
.field final synthetic b:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;Lcom/twidroid/ui/a/c;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b$13;->b:Lcom/twidroid/fragments/b;
iput-object p2, p0, Lcom/twidroid/fragments/b$13;->a:Lcom/twidroid/ui/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/b$13; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/b$13;->b:Lcom/twidroid/fragments/b;
iget-object v0, p0, Lcom/twidroid/fragments/b$13;->a:Lcom/twidroid/ui/a/c;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/c;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iput-object v0, v1, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;
const-string v1, " - Lcom/twidroid/fragments/b$13; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method