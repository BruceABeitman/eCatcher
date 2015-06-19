.class public final Landroid/support/v7/internal/view/menu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenuItem;


# static fields
.field private static F:Ljava/lang/String; = null

.field private static G:Ljava/lang/String; = null

.field private static H:Ljava/lang/String; = null

.field private static I:Ljava/lang/String; = null

.field static final a:I = 0x0

.field private static final b:Ljava/lang/String; = "MenuItemImpl"

.field private static final c:I = 0x3

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x4

.field private static final w:I = 0x8

.field private static final x:I = 0x10

.field private static final y:I = 0x20


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/support/v4/view/ActionProvider;

.field private C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

.field private D:Z

.field private E:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Landroid/content/Intent;

.field private k:C

.field private l:C

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Landroid/support/v7/internal/view/menu/n;

.field private p:Landroid/support/v7/internal/view/menu/ah;

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private s:I

.field private z:I


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/n;IIIILjava/lang/CharSequence;I)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->n:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/r;->D:Z

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    iput p3, p0, Landroid/support/v7/internal/view/menu/r;->d:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/r;->e:I

    iput p4, p0, Landroid/support/v7/internal/view/menu/r;->f:I

    iput p5, p0, Landroid/support/v7/internal/view/menu/r;->g:I

    iput-object p6, p0, Landroid/support/v7/internal/view/menu/r;->h:Ljava/lang/CharSequence;

    iput p7, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/r;)Landroid/support/v7/internal/view/menu/n;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->d:I

    if-lez v0, :cond_17

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)V

    return-object p0
.end method

.method public a(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method a(Landroid/support/v7/internal/view/menu/ae;)Ljava/lang/CharSequence;
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/support/v7/internal/view/menu/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method a(Landroid/support/v7/internal/view/menu/ah;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->p:Landroid/support/v7/internal/view/menu/ah;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ah;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->q()Landroid/support/v7/internal/view/menu/n;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->q:Ljava/lang/Runnable;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->q:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :cond_26
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/content/Intent;

    if-eqz v1, :cond_3e

    :try_start_2a
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_d

    :catch_36
    move-exception v1

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v1}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_4a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->g:I

    return v0
.end method

.method public b(I)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->setShowAsAction(I)V

    return-object p0
.end method

.method b(Z)V
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    if-eq v2, v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    :cond_16
    return-void

    :cond_17
    move v0, v1

    goto :goto_a
.end method

.method c()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method c(Z)Z
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_13

    move v0, v1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    if-eq v2, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public collapseActionView()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    if-nez v1, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->d(Landroid/support/v7/internal/view/menu/r;)Z

    move-result v0

    goto :goto_7
.end method

.method d()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->l:C

    return v0
.end method

.method public d(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    goto :goto_8
.end method

.method e()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->d()C

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/internal/view/menu/r;->F:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :sswitch_1b
    sget-object v0, Landroid/support/v7/internal/view/menu/r;->G:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :sswitch_21
    sget-object v0, Landroid/support/v7/internal/view/menu/r;->H:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :sswitch_27
    sget-object v0, Landroid/support/v7/internal/view/menu/r;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    nop

    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_21
        0xa -> :sswitch_1b
        0x20 -> :sswitch_27
    .end sparse-switch
.end method

.method public e(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/r;->D:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    return-void
.end method

.method public expandActionView()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_18
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->c(Landroid/support/v7/internal/view/menu/r;)Z

    move-result v0

    goto :goto_b
.end method

.method f()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->d()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public g()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->l:C

    return v0
.end method

.method public getGroupId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->e:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/graphics/drawable/Drawable;

    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->n:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->e()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->n:I

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->d:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->E:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->k:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->f:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->p:Landroid/support/v7/internal/view/menu/ah;

    return-object v0
.end method

.method public getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->i:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->h:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)V

    return-void
.end method

.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->p:Landroid/support/v7/internal/view/menu/ah;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->r()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/r;->D:Z

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isChecked()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

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
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1d

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c

    :cond_1f
    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1c

    move v0, v1

    goto :goto_1c
.end method

.method public j()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public k()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public m()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public n()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->a(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/view/View;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->l:C

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/r;->l:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    goto :goto_4
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    if-eq v2, v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    :cond_16
    return-object p0

    :cond_17
    move v0, v1

    goto :goto_a
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;)V

    :goto_b
    return-object p0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->b(Z)V

    goto :goto_b
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    if-eqz p1, :cond_f

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    :goto_8
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    return-object p0

    :cond_f
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->s:I

    goto :goto_8
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/internal/view/menu/r;->n:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->n:I

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->k:C

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/r;->k:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    goto :goto_4
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportOnActionExpandListener!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 5

    iput-char p1, p0, Landroid/support/v7/internal/view/menu/r;->k:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/r;->l:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    iput p1, p0, Landroid/support/v7/internal/view/menu/r;->z:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->b(I)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    if-ne v0, p1, :cond_6

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/r;->A:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    :cond_11
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->B:Landroid/support/v4/view/ActionProvider;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    if-eqz p1, :cond_5

    new-instance v0, Landroid/support/v7/internal/view/menu/r$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/r$1;-><init>(Landroid/support/v7/internal/view/menu/r;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    goto :goto_5
.end method

.method public setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->C:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/r;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->h:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->p:Landroid/support/v7/internal/view/menu/ah;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->p:Landroid/support/v7/internal/view/menu/ah;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ah;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_11
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->i:Ljava/lang/CharSequence;

    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->h:Ljava/lang/CharSequence;

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/r;)V

    :cond_b
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
