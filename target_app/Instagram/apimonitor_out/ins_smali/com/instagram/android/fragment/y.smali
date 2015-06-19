.class public final Lcom/instagram/android/fragment/y;
.super Lcom/instagram/base/a/b;
.source "CompositeSearchFragment.java"
.implements Lcom/instagram/a/b;
.field public static a:I
.field private b:Lcom/instagram/android/fragment/ee;
.field private c:Lcom/instagram/android/fragment/ek;
.field private d:Lcom/instagram/android/fragment/em;
.field private e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.field private f:Ljava/lang/String;
.field private g:Z
.field private h:I
.method static constructor <clinit>()V
.registers 1
sget v0, Lcom/instagram/android/fragment/ei;->b:I
sput v0, Lcom/instagram/android/fragment/y;->a:I
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/fragment/y;->g:Z
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/y;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/fragment/y;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;
return-object p1
.end method
.method private a(Lcom/instagram/android/fragment/ee;)V
.registers 5
iget-object v1, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->isFocused()Z
move-result v0
if-eqz v0, :cond_34
const/4 v0, 0x1
:goto_f
iput-object p1, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
iget-object v2, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
invoke-virtual {v2}, Lcom/instagram/android/fragment/ee;->V()V
iget-object v2, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
if-eq v1, v2, :cond_1d
invoke-virtual {v1}, Lcom/instagram/android/fragment/ee;->W()V
:cond_1d
iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
if-eqz v1, :cond_33
iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iget-object v2, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
invoke-virtual {v2}, Lcom/instagram/android/fragment/ee;->U()I
move-result v2
invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setHint(I)V
if-nez v0, :cond_33
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->clearFocus()V
:cond_33
return-void
:cond_34
const/4 v0, 0x0
goto :goto_f
.end method
.method static synthetic b(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ee;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/fragment/y;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/em;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/em;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/fragment/y;)Lcom/instagram/android/fragment/ek;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/ek;
return-object v0
.end method
.method private f(I)Lcom/instagram/android/fragment/ee;
.registers 3
sget v0, Lcom/instagram/android/fragment/ei;->b:I
if-ne p1, v0, :cond_7
iget-object v0, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/em;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/ek;
goto :goto_6
.end method
.method public final E()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I
move-result v0
iput v0, p0, Lcom/instagram/android/fragment/y;->h:I
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
iget-object v0, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/ee;)V
return-void
.end method
.method public final F()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;
move-result-object v0
iget v1, p0, Lcom/instagram/android/fragment/y;->h:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
iput-object v2, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/av;->frame_layout:I
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V
return-object v0
.end method
.method public final a(I)V
.registers 3
sget v0, Lcom/instagram/android/fragment/y;->a:I
if-eq v0, p1, :cond_f
sput p1, Lcom/instagram/android/fragment/y;->a:I
sget v0, Lcom/instagram/android/fragment/y;->a:I
invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->f(I)Lcom/instagram/android/fragment/ee;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->a(Lcom/instagram/android/fragment/ee;)V
:cond_f
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/android/fragment/ek;
invoke-direct {v0}, Lcom/instagram/android/fragment/ek;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/ek;
new-instance v0, Lcom/instagram/android/fragment/em;
invoke-direct {v0}, Lcom/instagram/android/fragment/em;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/em;
sget v0, Lcom/instagram/android/fragment/y;->a:I
invoke-direct {p0, v0}, Lcom/instagram/android/fragment/y;->f(I)Lcom/instagram/android/fragment/ee;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->q()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;
move-result-object v0
sget v1, Lcom/facebook/av;->frame_layout:I
iget-object v2, p0, Lcom/instagram/android/fragment/y;->c:Lcom/instagram/android/fragment/ek;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
move-result-object v0
sget v1, Lcom/facebook/av;->frame_layout:I
iget-object v2, p0, Lcom/instagram/android/fragment/y;->d:Lcom/instagram/android/fragment/em;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->x()V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
invoke-interface {p1}, Lcom/instagram/a/a;->a()Lcom/instagram/ui/widget/searchedittext/SearchEditText;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iget-object v1, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iget-object v1, p0, Lcom/instagram/android/fragment/y;->f:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setSelection(I)V
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
new-instance v1, Lcom/instagram/android/fragment/z;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/z;-><init>(Lcom/instagram/android/fragment/y;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setOnFilterTextListener(Lcom/instagram/ui/widget/searchedittext/b;)V
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
iget-object v1, p0, Lcom/instagram/android/fragment/y;->b:Lcom/instagram/android/fragment/ee;
invoke-virtual {v1}, Lcom/instagram/android/fragment/ee;->U()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->setHint(I)V
iget-boolean v0, p0, Lcom/instagram/android/fragment/y;->g:Z
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->requestFocus()Z
invoke-virtual {p0}, Lcom/instagram/android/fragment/y;->n()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;Landroid/view/View;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/fragment/y;->g:Z
:cond_46
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/y;->e:Lcom/instagram/ui/widget/searchedittext/SearchEditText;
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "search"
return-object v0
.end method