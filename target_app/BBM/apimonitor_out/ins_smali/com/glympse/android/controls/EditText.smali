.class public Lcom/glympse/android/controls/EditText;
.super Landroid/widget/EditText;
.source "EditText.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/glympse/android/controls/R$attr;->glympseEditTextStyle:I
invoke-direct {p0, p1, p2, v0}, Lcom/glympse/android/controls/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Lcom/glympse/android/controls/R$styleable;->GlympseEditText:[I
const/4 v1, 0x0
invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.registers 5
invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
move-result-object v0
iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
and-int/lit16 v1, v1, 0xff
if-eqz v1, :cond_19
const/high16 v1, 0x2
iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I
and-int/2addr v1, v2
if-eqz v1, :cond_19
iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
const v2, -0x40000001
and-int/2addr v1, v2
iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I
:cond_19
return-object v0
.end method
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
invoke-virtual {p0}, Lcom/glympse/android/controls/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
invoke-virtual {p0, v0}, Lcom/glympse/android/controls/EditText;->setSelection(I)V
return-void
.end method