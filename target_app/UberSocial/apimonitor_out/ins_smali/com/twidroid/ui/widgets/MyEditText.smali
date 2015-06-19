.class public Lcom/twidroid/ui/widgets/MyEditText;
.super Landroid/widget/EditText;
.source "SourceFile"
.field public a:I
.field  b:Lcom/twidroid/d/v;
.field private c:Ljava/lang/Object;
.field private d:Z
.field private e:Lcom/twidroid/ui/widgets/h;
.field private f:Lcom/twidroid/ui/widgets/j;
.field private g:Lcom/twidroid/ui/widgets/i;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->e:Lcom/twidroid/ui/widgets/h;
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->f:Lcom/twidroid/ui/widgets/j;
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->g:Lcom/twidroid/ui/widgets/i;
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->b:Lcom/twidroid/d/v;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->e:Lcom/twidroid/ui/widgets/h;
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->f:Lcom/twidroid/ui/widgets/j;
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->g:Lcom/twidroid/ui/widgets/i;
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->b:Lcom/twidroid/d/v;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->e:Lcom/twidroid/ui/widgets/h;
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->f:Lcom/twidroid/ui/widgets/j;
iput-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->g:Lcom/twidroid/ui/widgets/i;
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p1}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->b:Lcom/twidroid/d/v;
return-void
.end method
.method public a()V
.registers 6
const v4, 0x7f0c0152
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
rsub-int v0, v0, 0x8c
iget v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->a:I
sub-int/2addr v0, v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
if-eqz v0, :cond_65
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
const/16 v2, 0x8c
if-gt v0, v2, :cond_65
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
instance-of v0, v0, Landroid/widget/TextView;
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
check-cast v0, Landroid/widget/TextView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-boolean v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
if-eqz v1, :cond_66
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_5a
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_65
:goto_65
return-void
:cond_66
const-string v1, ""
goto :goto_5a
:cond_69
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
instance-of v0, v0, Landroid/view/MenuItem;
if-eqz v0, :cond_65
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-boolean v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
if-eqz v1, :cond_ab
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_9f
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
goto :goto_65
:cond_ab
const-string v1, ""
goto :goto_9f
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
return v0
.end method
.method public c()V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setSelection(II)V
return-void
.end method
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.registers 5
invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->b:Lcom/twidroid/d/v;
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/twidroid/ui/widgets/MyEditText;->b:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->H()Z
move-result v1
if-eqz v1, :cond_11
:goto_10
:cond_10
return-object v0
:cond_11
iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
and-int/lit16 v1, v1, 0xff
and-int/lit8 v2, v1, 0x4
if-eqz v2, :cond_24
iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
xor-int/2addr v1, v2
iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
or-int/lit8 v1, v1, 0x4
iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
:cond_24
iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
const/high16 v2, 0x4000
and-int/2addr v1, v2
if-eqz v1, :cond_10
iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
const v2, -0x40000001
and-int/2addr v1, v2
iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
goto :goto_10
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 8
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V
if-le p4, p3, :cond_47
:try_start_5
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_47
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_47
const-string v0, "MyEditText"
const-string v1, "AT Char detected"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->e:Lcom/twidroid/ui/widgets/h;
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->e:Lcom/twidroid/ui/widgets/h;
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/h;->a(Ljava/lang/String;)V
:cond_47
if-le p4, p3, :cond_8b
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_8b
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "#"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8b
const-string v0, "MyEditText"
const-string v1, "Hash detected"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->f:Lcom/twidroid/ui/widgets/j;
if-eqz v0, :cond_8b
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->f:Lcom/twidroid/ui/widgets/j;
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/j;->a(Ljava/lang/String;)V
:cond_8b
if-le p3, p4, :cond_9f
if-nez p4, :cond_9f
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->g:Lcom/twidroid/ui/widgets/i;
if-eqz v0, :cond_9f
const-string v0, "TweetEntryField"
const-string v1, "Reset reply status"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/twidroid/ui/widgets/MyEditText;->g:Lcom/twidroid/ui/widgets/i;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/i;->a()V
:cond_9f
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/MyEditText;->a()V
:goto_a2
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a2} :catch_a3
return-void
:catch_a3
move-exception v0
goto :goto_a2
.end method
.method public setATKeyListener(Lcom/twidroid/ui/widgets/h;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/MyEditText;->e:Lcom/twidroid/ui/widgets/h;
return-void
.end method
.method public setAppendCharLeftText(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/ui/widgets/MyEditText;->d:Z
return-void
.end method
.method public setCharCounterText(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/MyEditText;->c:Ljava/lang/Object;
return-void
.end method
.method public setEmptyFieldListener(Lcom/twidroid/ui/widgets/i;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/MyEditText;->g:Lcom/twidroid/ui/widgets/i;
return-void
.end method
.method public setHashKeyListener(Lcom/twidroid/ui/widgets/j;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/MyEditText;->f:Lcom/twidroid/ui/widgets/j;
return-void
.end method