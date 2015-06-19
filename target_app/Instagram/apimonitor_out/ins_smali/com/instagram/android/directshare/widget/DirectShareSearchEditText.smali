.class public Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
.super Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.source "DirectShareSearchEditText.java"
.implements Lcom/instagram/ui/c/b;
.field private a:Lcom/instagram/android/directshare/widget/g;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method private d()Z
.registers 5
const/4 v1, 0x1
:try_start_1
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "input_method"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const-class v2, Landroid/view/inputmethod/InputMethodManager;
const-string v3, "mCurId"
invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_2c
const-string v2, "com.google."
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
:try_end_26
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_26} :catch_2e
.catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_26} :catch_2b
move-result v0
if-eqz v0, :cond_2c
move v0, v1
:goto_2a
return v0
:catch_2b
move-exception v0
:goto_2c
:cond_2c
const/4 v0, 0x0
goto :goto_2a
:catch_2e
move-exception v0
goto :goto_2c
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->a:Lcom/instagram/android/directshare/widget/g;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->a:Lcom/instagram/android/directshare/widget/g;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/g;->a()V
:cond_9
return-void
.end method
.method public onCheckIsTextEditor()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.registers 4
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->d()Z
move-result v0
if-nez v0, :cond_1c
const/4 v0, 0x0
iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->onCheckIsTextEditor()Z
move-result v0
if-nez v0, :cond_11
const/4 v0, 0x0
:goto_10
return-object v0
:cond_11
new-instance v0, Lcom/instagram/ui/c/a;
new-instance v1, Lcom/instagram/android/directshare/widget/f;
invoke-direct {v1, p0, p0}, Lcom/instagram/android/directshare/widget/f;-><init>(Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;Landroid/view/View;)V
invoke-direct {v0, v1, p0}, Lcom/instagram/ui/c/a;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/instagram/ui/c/b;)V
goto :goto_10
:cond_1c
invoke-super {p0, p1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
move-result-object v0
goto :goto_10
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
const/16 v1, 0x43
if-ne v0, v1, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->a:Lcom/instagram/android/directshare/widget/g;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->a:Lcom/instagram/android/directshare/widget/g;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/g;->a()V
:cond_11
invoke-super {p0, p1, p2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/g;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->a:Lcom/instagram/android/directshare/widget/g;
return-void
.end method