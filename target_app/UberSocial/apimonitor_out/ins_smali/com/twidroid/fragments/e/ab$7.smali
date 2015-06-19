.class  Lcom/twidroid/fragments/e/ab$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/fragments/e/ab;
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/ab$7;->a:Lcom/twidroid/fragments/e/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/ab$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$7;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$7;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->b(Lcom/twidroid/fragments/e/ab;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
if-gt v1, v2, :cond_1f
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$7;->a:Lcom/twidroid/fragments/e/ab;
iget-object v1, v1, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;
invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I
move-result v1
const v2, 0x7f0900e4
if-ne v1, v2, :cond_24
:cond_1f
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$7;->a:Lcom/twidroid/fragments/e/ab;
invoke-static {v1, v0}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Ljava/lang/String;)V
:cond_24
const-string v1, " - Lcom/twidroid/fragments/e/ab$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method