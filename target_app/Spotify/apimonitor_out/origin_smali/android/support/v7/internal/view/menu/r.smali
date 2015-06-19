.class public final Landroid/support/v7/internal/view/menu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/a/b;


# static fields
.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


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

.field private l:Landroid/support/v7/internal/view/menu/n;

.field private m:Landroid/support/v7/internal/view/menu/ag;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/support/v4/view/l;

.field private t:Landroid/support/v4/view/ac;

.field private u:Z

.field private v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/n;IIIILjava/lang/CharSequence;I)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->k:I

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/r;->u:Z

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    iput p3, p0, Landroid/support/v7/internal/view/menu/r;->a:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/r;->b:I

    iput p4, p0, Landroid/support/v7/internal/view/menu/r;->c:I

    iput p5, p0, Landroid/support/v7/internal/view/menu/r;->d:I

    iput-object p6, p0, Landroid/support/v7/internal/view/menu/r;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/a/a/b;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->a:I

    if-lez v0, :cond_17

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->j()V

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/l;)Landroid/support/v4/a/a/b;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    if-ne v0, p1, :cond_6

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/l;->a(Landroid/support/v4/view/n;)V

    :cond_11
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    if-eqz p1, :cond_5

    new-instance v0, Landroid/support/v7/internal/view/menu/r$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/r$1;-><init>(Landroid/support/v7/internal/view/menu/r;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/l;->a(Landroid/support/v4/view/n;)V

    goto :goto_5
.end method

.method final a(Landroid/support/v7/internal/view/menu/ad;)Ljava/lang/CharSequence;
    .registers 3

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/support/v7/internal/view/menu/ad;->b()Z

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

.method final a(Landroid/support/v7/internal/view/menu/ag;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/support/v7/internal/view/menu/ag;

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/r;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/ag;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method final a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final a()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->o()Landroid/support/v7/internal/view/menu/n;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    :cond_26
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->g:Landroid/content/Intent;

    if-eqz v1, :cond_3e

    :try_start_2a
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/r;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_35} :catch_36

    goto :goto_d

    :catch_36
    move-exception v0

    const-string v1, "MenuItemImpl"

    const-string v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    :cond_44
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->d:I

    return v0
.end method

.method final b(Z)V
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    if-eq v2, v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    :cond_16
    return-void

    :cond_17
    move v0, v1

    goto :goto_a
.end method

.method final c()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    return v0
.end method

.method final c(Z)Z
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_13

    move v0, v1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    if-eq v2, v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    const/16 v0, 0x8

    goto :goto_a
.end method

.method public final collapseActionView()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    if-nez v1, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->t:Landroid/support/v4/view/ac;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->t:Landroid/support/v4/view/ac;

    invoke-interface {v1}, Landroid/support/v4/view/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/support/v7/internal/view/menu/r;)Z

    move-result v0

    goto :goto_7
.end method

.method final d()Ljava/lang/String;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/internal/view/menu/r;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :sswitch_19
    sget-object v0, Landroid/support/v7/internal/view/menu/r;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :sswitch_1f
    sget-object v0, Landroid/support/v7/internal/view/menu/r;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :sswitch_25
    sget-object v0, Landroid/support/v7/internal/view/menu/r;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    nop

    :sswitch_data_2c
    .sparse-switch
        0x8 -> :sswitch_1f
        0xa -> :sswitch_19
        0x20 -> :sswitch_25
    .end sparse-switch
.end method

.method public final d(Z)V
    .registers 3

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    goto :goto_8
.end method

.method public final e(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/r;->u:Z

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    return-void
.end method

.method final e()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final expandActionView()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->t:Landroid/support/v4/view/ac;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r;->t:Landroid/support/v4/view/ac;

    invoke-interface {v1}, Landroid/support/v4/view/ac;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_18
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/r;)Z

    move-result v0

    goto :goto_b
.end method

.method public final f()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final g()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->p()Z

    move-result v0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    invoke-virtual {v0}, Landroid/support/v4/view/l;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getAlphabeticShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    return v0
.end method

.method public final getGroupId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/graphics/drawable/Drawable;

    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->k:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->d()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->k:I

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericShortcut()C
    .registers 2

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->h:C

    return v0
.end method

.method public final getOrder()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->c:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/support/v7/internal/view/menu/ag;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->f:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->e:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public final h()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

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

.method public final hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/support/v7/internal/view/menu/ag;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final i()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isActionViewExpanded()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/r;->u:Z

    return v0
.end method

.method public final isCheckable()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isChecked()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

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

.method public final isEnabled()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

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

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    :cond_6
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final j()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->q:I

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

.method public final k()Z
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->q:I

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

.method public final l()Landroid/support/v4/view/l;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->s:Landroid/support/v4/view/l;

    return-object v0
.end method

.method public final m()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->r:Landroid/view/View;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/view/View;)Landroid/support/v4/a/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/view/View;)Landroid/support/v4/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    goto :goto_4
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_a
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    if-eq v2, v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    :cond_16
    return-object p0

    :cond_17
    move v0, v1

    goto :goto_a
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .registers 3

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;)V

    :goto_b
    return-object p0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->b(Z)V

    goto :goto_b
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .registers 4

    if-eqz p1, :cond_f

    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    :goto_8
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    return-object p0

    :cond_f
    iget v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/internal/view/menu/r;->p:I

    goto :goto_8
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/internal/view/menu/r;->k:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 4

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/r;->k:I

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 4

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/r;->h:C

    if-ne v0, p1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/r;->h:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    goto :goto_4
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportOnActionExpandListener!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .registers 5

    iput-char p1, p0, Landroid/support/v7/internal/view/menu/r;->h:C

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/r;->i:C

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    iput p1, p0, Landroid/support/v7/internal/view/menu/r;->q:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->j()V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/r;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/support/v7/internal/view/menu/ag;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->m:Landroid/support/v7/internal/view/menu/ag;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/ag;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_11
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r;->f:Ljava/lang/CharSequence;

    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->e:Ljava/lang/CharSequence;

    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/r;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->l:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->i()V

    :cond_b
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
