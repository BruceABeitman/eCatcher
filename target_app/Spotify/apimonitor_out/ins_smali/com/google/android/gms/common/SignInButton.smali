.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.implements Landroid/view/View$OnClickListener;
.field private a:I
.field private b:I
.field private c:Landroid/view/View;
.field private d:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;
const-string v0, "Unknown button size 0"
invoke-static {v2, v0}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
const-string v0, "Unknown color scheme 0"
invoke-static {v2, v0}, Lcom/google/android/gms/internal/hh;->a(ZLjava/lang/Object;)V
iput v1, p0, Lcom/google/android/gms/common/SignInButton;->a:I
iput v1, p0, Lcom/google/android/gms/common/SignInButton;->b:I
invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
invoke-virtual {p0, v1}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V
:try_start_23
:cond_23
iget v1, p0, Lcom/google/android/gms/common/SignInButton;->a:I
iget v2, p0, Lcom/google/android/gms/common/SignInButton;->b:I
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/hj;->a(Landroid/content/Context;II)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
:try_end_2d
.catch Lcom/google/android/gms/dynamic/g$a; {:try_start_23 .. :try_end_2d} :catch_41
:goto_2d
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:catch_41
move-exception v1
const-string v1, "SignInButton"
const-string v2, "Sign in button not found, using placeholder instead"
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget v1, p0, Lcom/google/android/gms/common/SignInButton;->a:I
iget v2, p0, Lcom/google/android/gms/common/SignInButton;->b:I
new-instance v3, Lcom/google/android/gms/internal/fs;
invoke-direct {v3, v0}, Lcom/google/android/gms/internal/fs;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/gms/internal/fs;->a(Landroid/content/res/Resources;II)V
iput-object v3, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
goto :goto_2d
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/common/SignInButton; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
if-ne p1, v0, :cond_d
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;
invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_d
const-string v1, " - Lcom/google/android/gms/common/SignInButton; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final setEnabled(Z)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V
return-void
.end method
.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_b
return-void
.end method