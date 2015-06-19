.class public final Landroid/support/v4/view/a/h;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# static fields
.field private static final b:Landroid/support/v4/view/a/i;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/view/a/l;

    invoke-direct {v0}, Landroid/support/v4/view/a/l;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->b:Landroid/support/v4/view/a/i;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0}, Landroid/support/v4/view/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->b:Landroid/support/v4/view/a/i;

    goto :goto_d

    :cond_1c
    new-instance v0, Landroid/support/v4/view/a/n;

    invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/h;->b:Landroid/support/v4/view/a/i;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/view/a/h;->b:Landroid/support/v4/view/a/i;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/i;->a(Landroid/support/v4/view/a/h;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/h;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()Landroid/support/v4/view/a/a;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static c()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/a/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
