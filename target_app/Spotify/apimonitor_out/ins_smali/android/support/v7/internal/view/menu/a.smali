.class public final Landroid/support/v7/internal/view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/a/a/b;
.field private final a:I
.field private final b:I
.field private final c:I
.field private final d:I
.field private e:Ljava/lang/CharSequence;
.field private f:Ljava/lang/CharSequence;
.field private g:Landroid/content/Intent;
.field private h:C
.field private i:C
.field private j:Landroid/graphics/drawable/Drawable;
.field private k:I
.field private l:Landroid/content/Context;
.field private m:Landroid/view/MenuItem$OnMenuItemClickListener;
.field private n:I
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Landroid/support/v7/internal/view/menu/a;->k:I
const/16 v0, 0x10
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;
const v0, 0x102002c
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->a:I
iput v1, p0, Landroid/support/v7/internal/view/menu/a;->b:I
iput v1, p0, Landroid/support/v7/internal/view/menu/a;->c:I
iput v1, p0, Landroid/support/v7/internal/view/menu/a;->d:I
iput-object p2, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;
return-void
.end method
.method public final a(Landroid/support/v4/view/l;)Landroid/support/v4/a/a/b;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final collapseActionView()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final expandActionView()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getActionProvider()Landroid/view/ActionProvider;
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final getActionView()Landroid/view/View;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getAlphabeticShortcut()C
.registers 2
iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->i:C
return v0
.end method
.method public final getGroupId()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->b:I
return v0
.end method
.method public final getIcon()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public final getIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;
return-object v0
.end method
.method public final getItemId()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->a:I
return v0
.end method
.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getNumericShortcut()C
.registers 2
iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->h:C
return v0
.end method
.method public final getOrder()I
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->d:I
return v0
.end method
.method public final getSubMenu()Landroid/view/SubMenu;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;
return-object v0
.end method
.method public final getTitleCondensed()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->f:Ljava/lang/CharSequence;
return-object v0
.end method
.method public final hasSubMenu()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isActionViewExpanded()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isCheckable()Z
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isChecked()Z
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isEnabled()Z
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v0, v0, 0x10
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final isVisible()Z
.registers 2
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v0, v0, 0x8
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final synthetic setActionView(I)Landroid/view/MenuItem;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
.registers 2
iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->i:C
return-object p0
.end method
.method public final setCheckable(Z)Landroid/view/MenuItem;
.registers 4
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v1, v0, -0x2
if-eqz p1, :cond_b
const/4 v0, 0x1
:goto_7
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
return-object p0
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method public final setChecked(Z)Landroid/view/MenuItem;
.registers 4
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v1, v0, -0x3
if-eqz p1, :cond_b
const/4 v0, 0x2
:goto_7
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
return-object p0
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method public final setEnabled(Z)Landroid/view/MenuItem;
.registers 4
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v1, v0, -0x11
if-eqz p1, :cond_c
const/16 v0, 0x10
:goto_8
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
return-object p0
:cond_c
const/4 v0, 0x0
goto :goto_8
.end method
.method public final setIcon(I)Landroid/view/MenuItem;
.registers 3
iput p1, p0, Landroid/support/v7/internal/view/menu/a;->k:I
iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;
return-object p0
.end method
.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->k:I
return-object p0
.end method
.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;
return-object p0
.end method
.method public final setNumericShortcut(C)Landroid/view/MenuItem;
.registers 2
iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->h:C
return-object p0
.end method
.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->m:Landroid/view/MenuItem$OnMenuItemClickListener;
return-object p0
.end method
.method public final setShortcut(CC)Landroid/view/MenuItem;
.registers 3
iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->h:C
iput-char p2, p0, Landroid/support/v7/internal/view/menu/a;->i:C
return-object p0
.end method
.method public final setShowAsAction(I)V
.registers 2
return-void
.end method
.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/a;->setShowAsAction(I)V
return-object p0
.end method
.method public final setTitle(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->f:Ljava/lang/CharSequence;
return-object p0
.end method
.method public final setVisible(Z)Landroid/view/MenuItem;
.registers 4
iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
and-int/lit8 v1, v0, 0x8
if-eqz p1, :cond_b
const/4 v0, 0x0
:goto_7
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I
return-object p0
:cond_b
const/16 v0, 0x8
goto :goto_7
.end method