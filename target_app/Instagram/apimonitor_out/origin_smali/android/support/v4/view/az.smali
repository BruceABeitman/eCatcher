.class public final Landroid/support/v4/view/az;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/bc;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/az;->a:Landroid/support/v4/view/bc;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0}, Landroid/support/v4/view/ba;-><init>()V

    sput-object v0, Landroid/support/v4/view/az;->a:Landroid/support/v4/view/bc;

    goto :goto_d
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 2

    sget-object v0, Landroid/support/v4/view/az;->a:Landroid/support/v4/view/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bc;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
