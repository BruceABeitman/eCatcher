.class final Landroid/support/v4/view/z;
.super Landroid/support/v4/view/y;
.source "KeyEventCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final c(I)Z
    .registers 3

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method