.class public final Landroid/support/v4/view/af;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/ah;

    invoke-direct {v0}, Landroid/support/v4/view/ah;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ai;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0}, Landroid/support/v4/view/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ai;

    goto :goto_d
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .registers 3

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
