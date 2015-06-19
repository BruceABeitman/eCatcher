.class public final Landroid/support/v4/view/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Landroid/support/v4/view/bk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/bl;

    invoke-direct {v0}, Landroid/support/v4/view/bl;-><init>()V

    sput-object v0, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/bk;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/view/bj;

    invoke-direct {v0}, Landroid/support/v4/view/bj;-><init>()V

    sput-object v0, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/bk;

    goto :goto_d

    :cond_1a
    const/16 v1, 0xb

    if-lt v0, v1, :cond_26

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    sput-object v0, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/bk;

    goto :goto_d

    :cond_26
    new-instance v0, Landroid/support/v4/view/bm;

    invoke-direct {v0}, Landroid/support/v4/view/bm;-><init>()V

    sput-object v0, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/bk;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .registers 2

    sget-object v0, Landroid/support/v4/view/bh;->a:Landroid/support/v4/view/bk;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bk;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
