.class public Lit/sephiroth/android/library/a/b/a;
.super Lit/sephiroth/android/library/a/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/a/c;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/a/b/a;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/a/b/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method
