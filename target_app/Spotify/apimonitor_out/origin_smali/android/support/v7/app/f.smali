.class Landroid/support/v7/app/f;
.super Landroid/support/v7/app/d;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ab;
.implements Landroid/support/v7/internal/view/menu/o;


# static fields
.field private static final d:[I


# instance fields
.field private e:Landroid/support/v7/internal/widget/ActionBarView;

.field private f:Landroid/support/v7/internal/view/menu/l;

.field private g:Landroid/support/v7/internal/view/menu/n;

.field private h:Landroid/support/v7/b/a;

.field private i:Z

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/a/c;->i:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/f;->d:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method

.method private n()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v7/app/f;->n:Z

    if-eqz v2, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Landroid/support/v7/app/f;->o:Z

    if-eqz v2, :cond_53

    :cond_10
    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    if-nez v2, :cond_2a

    new-instance v2, Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {p0}, Landroid/support/v7/app/f;->l()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/o;)V

    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    if-nez v2, :cond_2a

    move v0, v1

    goto :goto_7

    :cond_2a
    iget-object v2, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2, v3, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/ab;)V

    :cond_35
    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->g()V

    iget-object v2, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_51

    iput-object v4, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/ab;)V

    :cond_4f
    move v0, v1

    goto :goto_7

    :cond_51
    iput-boolean v1, p0, Landroid/support/v7/app/f;->o:Z

    :cond_53
    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->g()V

    iget-object v2, p0, Landroid/support/v7/app/f;->p:Landroid/os/Bundle;

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    iget-object v3, p0, Landroid/support/v7/app/f;->p:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/n;->b(Landroid/os/Bundle;)V

    iput-object v4, p0, Landroid/support/v7/app/f;->p:Landroid/os/Bundle;

    :cond_65
    iget-object v2, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v2, v1, v4, v3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_7f

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_78

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v4, p0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/ab;)V

    :cond_78
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->h()V

    move v0, v1

    goto :goto_7

    :cond_7f
    iget-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->h()V

    iput-boolean v0, p0, Landroid/support/v7/app/f;->n:Z

    goto :goto_7
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/f;->m()V

    new-instance v0, Landroid/support/v7/app/l;

    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/l;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/f;->m()V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->f()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->e()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->b()Z

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->d()Z

    goto :goto_21

    :cond_28
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->close()V

    goto :goto_21
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/app/f;->m:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->m:Z

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/f;->m:Z

    goto :goto_4
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/f;->m()V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v7/app/f;->m()V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->b(Ljava/lang/CharSequence;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Landroid/support/v7/app/f;->j:Ljava/lang/CharSequence;

    goto :goto_9
.end method

.method public final a(ILandroid/view/Menu;)Z
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final a(ILandroid/view/MenuItem;)Z
    .registers 4

    if-nez p1, :cond_6

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_11

    invoke-direct {p0}, Landroid/support/v7/app/f;->n()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    if-nez v2, :cond_12

    :goto_f
    check-cast v0, Landroid/view/View;

    :cond_11
    return-object v0

    :cond_12
    iget-object v0, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/internal/view/menu/l;

    if-nez v0, :cond_47

    sget-object v0, Landroid/support/v7/a/k;->o:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    sget v3, Landroid/support/v7/a/j;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/internal/view/menu/l;

    sget v3, Landroid/support/v7/a/h;->m:I

    invoke-direct {v0, v3, v2}, Landroid/support/v7/internal/view/menu/l;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/internal/view/menu/l;

    iget-object v0, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/support/v7/internal/view/menu/ab;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    iget-object v2, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/aa;)V

    :goto_3b
    iget-object v0, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/internal/view/menu/l;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ac;

    move-result-object v0

    goto :goto_f

    :cond_47
    iget-object v0, p0, Landroid/support/v7/app/f;->f:Landroid/support/v7/internal/view/menu/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/l;->c(Z)V

    goto :goto_3b
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v7/app/f;->m()V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/n;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/app/f;->b:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/v7/app/f;->i:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/l;

    invoke-virtual {v0}, Landroid/support/v7/app/l;->d()V

    :cond_11
    return-void
.end method

.method public final e()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/l;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/l;->d(Z)V

    :cond_c
    return-void
.end method

.method public final f()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/l;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/l;->d(Z)V

    :cond_c
    return-void
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_20

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_16

    iput-object v0, p0, Landroid/support/v7/app/f;->p:Landroid/os/Bundle;

    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->g()V

    iget-object v0, p0, Landroid/support/v7/app/f;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->clear()V

    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->o:Z

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/f;->n:Z

    invoke-direct {p0}, Landroid/support/v7/app/f;->n()Z

    :cond_2d
    return-void
.end method

.method public final h()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/app/f;->h:Landroid/support/v7/b/a;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/app/f;->h:Landroid/support/v7/b/a;

    invoke-virtual {v1}, Landroid/support/v7/b/a;->a()V

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->k()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->l()V

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method final i()I
    .registers 2

    sget v0, Landroid/support/v7/a/c;->i:I

    return v0
.end method

.method public final j()V
    .registers 1

    return-void
.end method

.method final m()V
    .registers 13

    const/4 v5, 0x0

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-boolean v0, p0, Landroid/support/v7/app/f;->i:Z

    if-nez v0, :cond_148

    iget-boolean v0, p0, Landroid/support/v7/app/f;->b:Z

    if-eqz v0, :cond_165

    iget-boolean v0, p0, Landroid/support/v7/app/f;->c:Z

    if-eqz v0, :cond_149

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/a/h;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    :goto_18
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/a/f;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/Window$Callback;)V

    iget-boolean v0, p0, Landroid/support/v7/app/f;->k:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->h()V

    :cond_34
    iget-boolean v0, p0, Landroid/support/v7/app/f;->l:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i()V

    :cond_3d
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/app/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    move v2, v0

    :goto_56
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/a/f;->C:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_84

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->a(Z)V

    iget-object v1, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v6}, Landroid/support/v7/internal/widget/ActionBarView;->b(Z)V

    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v7, Landroid/support/v7/a/f;->h:I

    invoke-virtual {v1, v7}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Z)V

    invoke-virtual {v1, v6}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Z)V

    :cond_84
    :goto_84
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/a/f;->b:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Landroid/support/v7/app/f;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Landroid/support/v7/app/f;->e:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/app/f;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->b(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Landroid/support/v7/app/f;->j:Ljava/lang/CharSequence;

    :cond_ab
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/a/k;->c:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_19e

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :goto_c3
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19b

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6, v10, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :goto_d1
    invoke-virtual {v6, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_198

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6, v11, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :goto_df
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_ef

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_ef
    iget-object v7, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v7}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v8, v9, :cond_100

    const/4 v5, 0x1

    :cond_100
    if-eqz v5, :cond_16e

    :goto_102
    if-eqz v1, :cond_195

    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_195

    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_170

    invoke-virtual {v1, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    :goto_112
    if-eqz v5, :cond_181

    :goto_114
    if-eqz v2, :cond_193

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_193

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_183

    invoke-virtual {v2, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_123
    if-ne v1, v4, :cond_127

    if-eq v0, v4, :cond_130

    :cond_127
    iget-object v2, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_130
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/f;->i:Z

    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v7/app/f$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/f$1;-><init>(Landroid/support/v7/app/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_148
    return-void

    :cond_149
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/a/h;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    goto/16 :goto_18

    :cond_152
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/a/k;->c:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v0

    goto/16 :goto_56

    :cond_165
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/a/h;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    goto/16 :goto_84

    :cond_16e
    move-object v1, v0

    goto :goto_102

    :cond_170
    iget v0, v1, Landroid/util/TypedValue;->type:I

    if-ne v0, v11, :cond_195

    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    invoke-virtual {v1, v0, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_112

    :cond_181
    move-object v2, v3

    goto :goto_114

    :cond_183
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v11, :cond_193

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v3, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_123

    :cond_193
    move v0, v4

    goto :goto_123

    :cond_195
    move v1, v4

    goto/16 :goto_112

    :cond_198
    move-object v2, v3

    goto/16 :goto_df

    :cond_19b
    move-object v1, v3

    goto/16 :goto_d1

    :cond_19e
    move-object v0, v3

    goto/16 :goto_c3
.end method
