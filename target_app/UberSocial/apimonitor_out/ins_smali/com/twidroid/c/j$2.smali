.class  Lcom/twidroid/c/j$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/twidroid/ui/a/d;
.field final synthetic b:Lcom/twidroid/c/j;
.method constructor <init>(Lcom/twidroid/c/j;Lcom/twidroid/ui/a/d;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/c/j$2;->b:Lcom/twidroid/c/j;
iput-object p2, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/c/j$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_d
:cond_c
:goto_c
const-string v1, " - Lcom/twidroid/c/j$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_d
iget-object v1, p0, Lcom/twidroid/c/j$2;->b:Lcom/twidroid/c/j;
iget-object v0, p0, Lcom/twidroid/c/j$2;->a:Lcom/twidroid/ui/a/d;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/d;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/twidroid/c/j;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/j$2;->b:Lcom/twidroid/c/j;
invoke-virtual {v0}, Lcom/twidroid/c/j;->dismiss()V
goto :goto_c
.end method