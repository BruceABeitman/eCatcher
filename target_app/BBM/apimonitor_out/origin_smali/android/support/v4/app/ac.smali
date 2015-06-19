.class public final Landroid/support/v4/app/ac;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Landroid/support/v4/app/ai;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/app/an;

    invoke-direct {v0}, Landroid/support/v4/app/an;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ai;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroid/support/v4/app/am;

    invoke-direct {v0}, Landroid/support/v4/app/am;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ai;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroid/support/v4/app/al;

    invoke-direct {v0}, Landroid/support/v4/app/al;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ai;

    goto :goto_d

    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_38

    new-instance v0, Landroid/support/v4/app/ak;

    invoke-direct {v0}, Landroid/support/v4/app/ak;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ai;

    goto :goto_d

    :cond_38
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0}, Landroid/support/v4/app/aj;-><init>()V

    sput-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ai;

    goto :goto_d
.end method

.method static synthetic a()Landroid/support/v4/app/ai;
    .registers 1

    sget-object v0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/ai;

    return-object v0
.end method
