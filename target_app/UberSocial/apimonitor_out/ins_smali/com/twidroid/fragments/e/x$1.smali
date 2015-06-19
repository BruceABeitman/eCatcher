.class  Lcom/twidroid/fragments/e/x$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic a:Lcom/twidroid/fragments/e/x;
.method constructor <init>(Lcom/twidroid/fragments/e/x;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/x$1; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p3}, Lcom/twidroid/fragments/e/aa;->a(I)Lcom/twidroid/fragments/e/aa;
move-result-object v0
const-string v1, "RetweetsAdapter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Item selected: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
invoke-static {v1, v0}, Lcom/twidroid/fragments/e/x;->a(Lcom/twidroid/fragments/e/x;Lcom/twidroid/fragments/e/aa;)Lcom/twidroid/fragments/e/aa;
sget-object v0, Lcom/twidroid/fragments/e/x$2;->a:[I
iget-object v1, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
invoke-static {v1}, Lcom/twidroid/fragments/e/x;->a(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/fragments/e/aa;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/fragments/e/aa;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_66
iget-object v0, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
iget-object v1, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
invoke-static {v1}, Lcom/twidroid/fragments/e/x;->d(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/x;->setListAdapter(Landroid/widget/ListAdapter;)V
:goto_47
iget-object v0, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/x;->b(Z)V
const-string v1, " - Lcom/twidroid/fragments/e/x$1; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_4e
iget-object v0, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
iget-object v1, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
invoke-static {v1}, Lcom/twidroid/fragments/e/x;->b(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/x;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_47
:pswitch_5a
iget-object v0, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
iget-object v1, p0, Lcom/twidroid/fragments/e/x$1;->a:Lcom/twidroid/fragments/e/x;
invoke-static {v1}, Lcom/twidroid/fragments/e/x;->c(Lcom/twidroid/fragments/e/x;)Lcom/twidroid/ui/a/z;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/x;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_47
:pswitch_data_66
.packed-switch 0x1
:pswitch_4e
:pswitch_5a
.end packed-switch
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/x$1; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/fragments/e/x$1; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method