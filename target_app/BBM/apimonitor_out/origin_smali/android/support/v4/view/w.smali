.class public final Landroid/support/v4/view/w;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/aa;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0}, Landroid/support/v4/view/z;-><init>()V

    sput-object v0, Landroid/support/v4/view/w;->a:Landroid/support/v4/view/aa;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/w;->a:Landroid/support/v4/view/aa;

    goto :goto_d
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3

    sget-object v0, Landroid/support/v4/view/w;->a:Landroid/support/v4/view/aa;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/aa;->b(I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)Z
    .registers 3

    sget-object v0, Landroid/support/v4/view/w;->a:Landroid/support/v4/view/aa;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/aa;->c(I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/KeyEvent;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/w;->a:Landroid/support/v4/view/aa;

    invoke-interface {v0, p0}, Landroid/support/v4/view/aa;->a(Landroid/view/KeyEvent;)V

    return-void
.end method
