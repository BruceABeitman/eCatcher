.class public Lcom/instagram/android/directshare/widget/DirectShareRecipientView;
.super Lcom/instagram/common/ui/widget/imageview/CircularImageView;
.source "DirectShareRecipientView.java"
.implements Lcom/instagram/ui/c/b;
.field private b:Landroid/view/View$OnFocusChangeListener;
.field private c:Lcom/instagram/android/directshare/widget/d;
.field private d:Lcom/instagram/ui/f/b;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d:Lcom/instagram/ui/f/b;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/android/directshare/widget/d;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b:Landroid/view/View$OnFocusChangeListener;
return-object v0
.end method
.method private d()V
.registers 3
const/4 v0, 0x1
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setClickable(Z)V
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setFocusable(Z)V
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setFocusableInTouchMode(Z)V
new-instance v0, Lcom/instagram/android/directshare/widget/e;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/widget/e;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;B)V
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
new-instance v0, Lcom/instagram/android/directshare/widget/a;
invoke-direct {v0, p0}, Lcom/instagram/android/directshare/widget/a;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
invoke-super {p0, v0}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;
invoke-interface {v0, p0}, Lcom/instagram/android/directshare/widget/d;->a(Landroid/view/View;)V
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
const/4 v0, 0x0
iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->onCheckIsTextEditor()Z
move-result v0
if-nez v0, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
new-instance v0, Lcom/instagram/ui/c/a;
new-instance v1, Lcom/instagram/android/directshare/widget/c;
invoke-direct {v1, p0, p0}, Lcom/instagram/android/directshare/widget/c;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;Landroid/view/View;)V
invoke-direct {v0, v1, p0}, Lcom/instagram/ui/c/a;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/instagram/ui/c/b;)V
goto :goto_a
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v0
const/16 v1, 0x43
if-ne v0, v1, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;
invoke-interface {v0, p0}, Lcom/instagram/android/directshare/widget/d;->a(Landroid/view/View;)V
:cond_11
invoke-super {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public setOnDeleteKeyListener(Lcom/instagram/android/directshare/widget/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c:Lcom/instagram/android/directshare/widget/d;
return-void
.end method
.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->b:Landroid/view/View$OnFocusChangeListener;
return-void
.end method
.method public setTooltipString(Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/instagram/ui/g/a;
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/ui/g/a;-><init>(Landroid/view/LayoutInflater;Landroid/util/DisplayMetrics;)V
invoke-virtual {v0, p1}, Lcom/instagram/ui/g/a;->a(Ljava/lang/String;)V
new-instance v1, Lcom/instagram/android/directshare/widget/b;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/widget/b;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/g/a;->b(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/instagram/ui/f/a;->a()Lcom/instagram/ui/f/a;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/instagram/ui/f/a;->a(Landroid/view/View;)Lcom/instagram/ui/f/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/ui/f/a;->a(Lcom/instagram/ui/f/f;)Lcom/instagram/ui/f/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/f/a;->a(Landroid/content/Context;)Lcom/instagram/ui/f/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->d:Lcom/instagram/ui/f/b;
return-void
.end method