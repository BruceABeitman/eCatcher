.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"
.field private a:I
.field private b:Landroid/support/v7/widget/SearchView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I
return-void
.end method
.method private a()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method static synthetic a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
.registers 2
invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a()Z
move-result v0
return v0
.end method
.method public enoughToFilter()Z
.registers 2
iget v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I
if-lez v0, :cond_a
invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->g()V
return-void
.end method
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x4
if-ne p1, v1, :cond_41
invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-nez v1, :cond_1a
invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v1
if-nez v1, :cond_1a
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
:goto_19
:cond_19
return v0
:cond_1a
invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_41
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
move-result-object v1
if-eqz v1, :cond_29
invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V
:cond_29
invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z
move-result v1
if-eqz v1, :cond_41
invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z
move-result v1
if-nez v1, :cond_41
iget-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;
invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->clearFocus()V
iget-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;
const/4 v2, 0x0
invoke-static {v1, v2}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;Z)V
goto :goto_19
:cond_41
invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_19
.end method
.method public onWindowFocusChanged(Z)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V
if-eqz p1, :cond_33
iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z
move-result v0
if-eqz v0, :cond_33
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I
move-result v0
if-nez v0, :cond_33
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const/4 v1, 0x0
invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_33
sget-object v0, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/d;
const/4 v1, 0x1
invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/d;->a(Landroid/widget/AutoCompleteTextView;Z)V
:cond_33
return-void
.end method
.method public performCompletion()V
.registers 1
return-void
.end method
.method protected replaceText(Ljava/lang/CharSequence;)V
.registers 2
return-void
.end method
.method  setSearchView(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->b:Landroid/support/v7/widget/SearchView;
return-void
.end method
.method public setThreshold(I)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V
iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I
return-void
.end method