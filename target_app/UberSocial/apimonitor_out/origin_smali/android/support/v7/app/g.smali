.class Landroid/support/v7/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;


# instance fields
.field final synthetic a:Landroid/support/v7/app/f;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/f;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/f;Landroid/support/v7/app/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/f;)V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->c:Landroid/support/v7/app/ActionBarActivity;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/f;

    invoke-virtual {v2}, Landroid/support/v7/app/f;->i()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public setActionBarDescription(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->l(I)V

    :cond_b
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/f;

    invoke-virtual {v0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->f(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->l(I)V

    :cond_e
    return-void
.end method
