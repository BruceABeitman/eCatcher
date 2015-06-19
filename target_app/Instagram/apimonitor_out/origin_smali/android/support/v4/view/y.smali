.class final Landroid/support/v4/view/y;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# direct methods
.method public static a(I)I
    .registers 2

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method

.method public static a(II)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static b(I)Z
    .registers 2

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method
