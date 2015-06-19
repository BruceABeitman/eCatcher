.class public final Landroid/support/v4/content/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/content/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/content/j;

    invoke-direct {v0}, Landroid/support/v4/content/j;-><init>()V

    sput-object v0, Landroid/support/v4/content/f;->a:Landroid/support/v4/content/g;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/content/i;

    invoke-direct {v0}, Landroid/support/v4/content/i;-><init>()V

    sput-object v0, Landroid/support/v4/content/f;->a:Landroid/support/v4/content/g;

    goto :goto_d

    :cond_1a
    new-instance v0, Landroid/support/v4/content/h;

    invoke-direct {v0}, Landroid/support/v4/content/h;-><init>()V

    sput-object v0, Landroid/support/v4/content/f;->a:Landroid/support/v4/content/g;

    goto :goto_d
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    sget-object v0, Landroid/support/v4/content/f;->a:Landroid/support/v4/content/g;

    invoke-interface {v0, p0}, Landroid/support/v4/content/g;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
