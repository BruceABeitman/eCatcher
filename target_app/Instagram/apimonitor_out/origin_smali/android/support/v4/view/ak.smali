.class public final Landroid/support/v4/view/ak;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/at;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/as;

    invoke-direct {v0}, Landroid/support/v4/view/as;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/ar;

    invoke-direct {v0}, Landroid/support/v4/view/ar;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    goto :goto_d

    :cond_1a
    const/16 v1, 0x10

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/support/v4/view/aq;

    invoke-direct {v0}, Landroid/support/v4/view/aq;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    goto :goto_d

    :cond_26
    const/16 v1, 0xe

    if-lt v0, v1, :cond_32

    new-instance v0, Landroid/support/v4/view/ap;

    invoke-direct {v0}, Landroid/support/v4/view/ap;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    goto :goto_d

    :cond_32
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    new-instance v0, Landroid/support/v4/view/ao;

    invoke-direct {v0}, Landroid/support/v4/view/ao;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    goto :goto_d

    :cond_3e
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4a

    new-instance v0, Landroid/support/v4/view/an;

    invoke-direct {v0}, Landroid/support/v4/view/an;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    goto :goto_d

    :cond_4a
    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    goto :goto_d
.end method

.method public static a(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/at;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/at;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .registers 3

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->b(Landroid/view/View;)V

    return-void
.end method

.method public static c(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/at;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/ak;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method
