.class public final Landroid/support/v7/internal/view/menu/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Menu;)Landroid/view/Menu;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v7/internal/view/menu/af;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/af;-><init>(Landroid/view/Menu;)V

    move-object p0, v0

    :cond_c
    return-object p0
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    new-instance v0, Landroid/support/v7/internal/view/menu/w;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/view/MenuItem;)V

    move-object p0, v0

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v7/internal/view/menu/s;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/view/MenuItem;)V

    move-object p0, v0

    goto :goto_c
.end method
