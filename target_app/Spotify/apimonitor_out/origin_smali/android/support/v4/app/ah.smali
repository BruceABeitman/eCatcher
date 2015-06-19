.class public final Landroid/support/v4/app/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/support/v4/app/an;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/app/as;

    invoke-direct {v0}, Landroid/support/v4/app/as;-><init>()V

    sput-object v0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/an;

    :goto_d
    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c

    new-instance v0, Landroid/support/v4/app/ar;

    invoke-direct {v0}, Landroid/support/v4/app/ar;-><init>()V

    sput-object v0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/an;

    goto :goto_d

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2a

    new-instance v0, Landroid/support/v4/app/aq;

    invoke-direct {v0}, Landroid/support/v4/app/aq;-><init>()V

    sput-object v0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/an;

    goto :goto_d

    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_38

    new-instance v0, Landroid/support/v4/app/ap;

    invoke-direct {v0}, Landroid/support/v4/app/ap;-><init>()V

    sput-object v0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/an;

    goto :goto_d

    :cond_38
    new-instance v0, Landroid/support/v4/app/ao;

    invoke-direct {v0}, Landroid/support/v4/app/ao;-><init>()V

    sput-object v0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/an;

    goto :goto_d
.end method

.method static synthetic a()Landroid/support/v4/app/an;
    .registers 1

    sget-object v0, Landroid/support/v4/app/ah;->a:Landroid/support/v4/app/an;

    return-object v0
.end method
