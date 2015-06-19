.class  Lcom/twidroid/fragments/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/twidroid/fragments/b/c;
.method constructor <init>(Lcom/twidroid/fragments/b/c;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b/c$1;->b:Lcom/twidroid/fragments/b/c;
iput-object p2, p0, Lcom/twidroid/fragments/b/c$1;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/b/c$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/b/c$1;->a:Landroid/view/View;
const v1, 0x7f0901d3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/fragments/b/c$1;->b:Lcom/twidroid/fragments/b/c;
invoke-static {v1}, Lcom/twidroid/fragments/b/c;->a(Lcom/twidroid/fragments/b/c;)Lcom/twidroid/fragments/b/d;
move-result-object v1
if-eqz v1, :cond_24
iget-object v1, p0, Lcom/twidroid/fragments/b/c$1;->b:Lcom/twidroid/fragments/b/c;
invoke-static {v1}, Lcom/twidroid/fragments/b/c;->a(Lcom/twidroid/fragments/b/c;)Lcom/twidroid/fragments/b/d;
move-result-object v1
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/twidroid/fragments/b/d;->c(Ljava/lang/String;)V
:cond_24
const-string v1, " - Lcom/twidroid/fragments/b/c$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method