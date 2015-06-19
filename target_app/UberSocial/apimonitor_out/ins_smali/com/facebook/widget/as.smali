.class  Lcom/facebook/widget/as;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/facebook/widget/aq;
.method private constructor <init>(Lcom/facebook/widget/aq;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/as;->a:Lcom/facebook/widget/aq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/aq;Lcom/facebook/widget/aq$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/as;-><init>(Lcom/facebook/widget/aq;)V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 8
iget-object v0, p0, Lcom/facebook/widget/as;->a:Lcom/facebook/widget/aq;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/aq;->a(Ljava/lang/String;Z)V
return-void
.end method