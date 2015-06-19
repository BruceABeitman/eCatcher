.class final Landroid/support/v4/widget/i;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;II)V
    .registers 3

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;F)Z
    .registers 3

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 3

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public static c(Ljava/lang/Object;)Z
    .registers 2

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method
