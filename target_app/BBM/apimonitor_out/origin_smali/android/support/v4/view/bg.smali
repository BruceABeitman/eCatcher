.class public final Landroid/support/v4/view/bg;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/bj;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/bk;

    invoke-direct {v0}, Landroid/support/v4/view/bk;-><init>()V

    sput-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    sput-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    goto :goto_d

    :cond_1a
    const/16 v1, 0xb

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0}, Landroid/support/v4/view/bh;-><init>()V

    sput-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    goto :goto_d

    :cond_26
    new-instance v0, Landroid/support/v4/view/bl;

    invoke-direct {v0}, Landroid/support/v4/view/bl;-><init>()V

    sput-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/bg;->a:Landroid/support/v4/view/bj;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bj;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
