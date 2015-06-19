.class public Landroid/support/v7/app/aa;
.super Landroid/support/v7/app/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/z;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/aa;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/aa;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public k(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/aa;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    return-void
.end method

.method public l(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/aa;->k:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    return-void
.end method
