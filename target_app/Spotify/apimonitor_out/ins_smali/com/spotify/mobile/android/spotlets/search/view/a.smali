.class public final Lcom/spotify/mobile/android/spotlets/search/view/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/view/d;
.field final a:Ljava/util/Set;
.field  b:Landroid/widget/EditText;
.field final c:Landroid/view/View;
.field final d:Landroid/graphics/drawable/Drawable;
.field  e:Z
.field private final f:Landroid/support/v7/app/ActionBar;
.field private final g:Landroid/content/Context;
.field private final h:Landroid/view/View;
.field private final i:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Z)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->g:Landroid/content/Context;
invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->f()Landroid/support/v7/app/ActionBar;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/ActionBar;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
const v1, 0x7f030018
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->h:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->h:Landroid/view/View;
const v1, 0x7f0a020d
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
if-eqz p2, :cond_45
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
const v1, 0x7f0f0322
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V
:cond_45
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->c:Landroid/view/View;
invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b001b
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
int-to-float v0, v0
new-instance v1, Lcom/spotify/android/paste/graphics/f;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->al:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v1, p1, v2, v0}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->i:Landroid/graphics/drawable/Drawable;
new-instance v1, Lcom/spotify/android/paste/graphics/f;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v1, p1, v2, v0}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
new-instance v1, Lcom/spotify/mobile/android/spotlets/search/view/a$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/view/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
new-instance v1, Lcom/spotify/mobile/android/spotlets/search/view/a$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/view/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
new-instance v1, Lcom/spotify/mobile/android/spotlets/search/view/a$4;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/view/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
new-instance v1, Lcom/spotify/mobile/android/spotlets/search/view/a$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/view/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Z)V
return-void
.end method
.method static a(Landroid/text/Editable;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_7
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_6
return-object v0
:cond_7
const-string v0, ""
goto :goto_6
.end method
.method final a()V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->length()I
move-result v0
if-lez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->d:Landroid/graphics/drawable/Drawable;
:goto_b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->i:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v3, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
:cond_13
move-object v0, v1
goto :goto_b
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/search/view/e;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 4
if-eqz p1, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->h:Landroid/view/View;
if-eq v0, v1, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->h:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V
:cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V
:goto_19
:cond_19
return-void
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->h:Landroid/view/View;
if-ne v0, v1, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V
goto :goto_19
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->a(Landroid/text/Editable;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/spotify/mobile/android/spotlets/search/view/e;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method final c()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->clear()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->d()V
return-void
.end method
.method public final d()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->g:Landroid/content/Context;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->b:Landroid/widget/EditText;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
return-void
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->h:Landroid/view/View;
if-ne v0, v1, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a;->f:Landroid/support/v7/app/ActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V
:cond_10
return-void
.end method