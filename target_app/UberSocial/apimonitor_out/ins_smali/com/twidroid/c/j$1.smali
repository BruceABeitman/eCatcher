.class  Lcom/twidroid/c/j$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/twidroid/c/j;
.method constructor <init>(Lcom/twidroid/c/j;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/j$1;->a:Lcom/twidroid/c/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x6
if-ne p2, v0, :cond_1b
iget-object v0, p0, Lcom/twidroid/c/j$1;->a:Lcom/twidroid/c/j;
iget-object v1, p0, Lcom/twidroid/c/j$1;->a:Lcom/twidroid/c/j;
iget-object v1, v1, Lcom/twidroid/c/j;->b:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/j;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/c/j$1;->a:Lcom/twidroid/c/j;
invoke-virtual {v0}, Lcom/twidroid/c/j;->dismiss()V
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method