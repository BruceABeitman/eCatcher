.class public final Landroid/support/v4/view/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/r;

    invoke-direct {v0}, Landroid/support/v4/view/r;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/p;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0}, Landroid/support/v4/view/q;-><init>()V

    sput-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/p;

    goto :goto_d
.end method

.method public static a(II)I
    .registers 3

    sget-object v0, Landroid/support/v4/view/o;->a:Landroid/support/v4/view/p;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/p;->a(II)I

    move-result v0

    return v0
.end method
