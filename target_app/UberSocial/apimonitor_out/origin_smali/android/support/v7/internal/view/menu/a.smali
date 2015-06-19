.class public Landroid/support/v7/internal/view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static final n:I = 0x0

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x4

.field private static final s:I = 0x8

.field private static final t:I = 0x10


# instance fields
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

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->k:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;

    iput p3, p0, Landroid/support/v7/internal/view/menu/a;->a:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/a;->b:I

    iput p4, p0, Landroid/support/v7/internal/view/menu/a;->c:I

    iput p5, p0, Landroid/support/v7/internal/view/menu/a;->d:I

    iput-object p6, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Z)Landroid/support/v7/internal/view/menu/a;
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/a;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/a;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/a;->setShowAsAction(I)V

    return-object p0
.end method

.method public collapseActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->i:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->h:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->d:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isVisible()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/a;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/a;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2

    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->i:C

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_c

    const/16 v0, 0x10

    :goto_8
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    return-object p0

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setIcon(I)Landroid/view/MenuItem;
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

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->k:I

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2

    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->h:C

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3

    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->h:C

    iput-char p2, p0, Landroid/support/v7/internal/view/menu/a;->i:C

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2

    return-void
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/a;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->o:I

    return-object p0

    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method
