.class  Lco/vine/android/widget/PopupEditText$PopupInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "PopupEditText.java"
.field final synthetic this$0:Lco/vine/android/widget/PopupEditText;
.method public constructor <init>(Lco/vine/android/widget/PopupEditText;Landroid/view/inputmethod/InputConnection;Z)V
.registers 4
iput-object p1, p0, Lco/vine/android/widget/PopupEditText$PopupInputConnection;->this$0:Lco/vine/android/widget/PopupEditText;
invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V
return-void
.end method
.method public deleteSurroundingText(II)Z
.registers 6
iget-object v0, p0, Lco/vine/android/widget/PopupEditText$PopupInputConnection;->this$0:Lco/vine/android/widget/PopupEditText;
#getter for: Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;
invoke-static {v0}, Lco/vine/android/widget/PopupEditText;->access$100(Lco/vine/android/widget/PopupEditText;)Lco/vine/android/api/VineEntity;
move-result-object v0
if-eqz v0, :cond_19
if-lez p1, :cond_19
if-nez p2, :cond_19
new-instance v0, Landroid/view/KeyEvent;
const/4 v1, 0x0
const/16 v2, 0x43
invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V
invoke-virtual {p0, v0}, Lco/vine/android/widget/PopupEditText$PopupInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
:goto_18
return v0
:cond_19
invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z
move-result v0
goto :goto_18
.end method
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lco/vine/android/widget/PopupEditText$PopupInputConnection;->this$0:Lco/vine/android/widget/PopupEditText;
#getter for: Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;
invoke-static {v1}, Lco/vine/android/widget/PopupEditText;->access$100(Lco/vine/android/widget/PopupEditText;)Lco/vine/android/api/VineEntity;
move-result-object v1
if-eqz v1, :cond_25
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-nez v1, :cond_25
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v1
const/16 v2, 0x43
if-ne v1, v2, :cond_25
iget-object v1, p0, Lco/vine/android/widget/PopupEditText$PopupInputConnection;->this$0:Lco/vine/android/widget/PopupEditText;
iget-object v2, p0, Lco/vine/android/widget/PopupEditText$PopupInputConnection;->this$0:Lco/vine/android/widget/PopupEditText;
#getter for: Lco/vine/android/widget/PopupEditText;->mSelectedEntity:Lco/vine/android/api/VineEntity;
invoke-static {v2}, Lco/vine/android/widget/PopupEditText;->access$100(Lco/vine/android/widget/PopupEditText;)Lco/vine/android/api/VineEntity;
move-result-object v2
iget v2, v2, Lco/vine/android/api/VineEntity;->start:I
invoke-virtual {v1, v2, v0}, Lco/vine/android/widget/PopupEditText;->clearSelectedEntity(IZ)Z
:goto_24
return v0
:cond_25
invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
goto :goto_24
.end method