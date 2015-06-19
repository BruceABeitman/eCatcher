.class public final Landroid/support/v4/app/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/ax;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/app/az;

    invoke-direct {v0}, Landroid/support/v4/app/az;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/ax;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/app/ay;

    invoke-direct {v0}, Landroid/support/v4/app/ay;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/ax;

    goto :goto_d
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/support/v4/app/av;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/ComponentName;)Landroid/support/v4/app/av;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :try_start_6
    iget-object v0, p0, Landroid/support/v4/app/av;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/app/ac;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_2c

    iget-object v2, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v4/app/av;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v4/app/ac;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_c

    :catch_1e
    move-exception v0

    const-string v1, "TaskStackBuilder"

    const-string v2, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/app/av;
    .registers 2

    new-instance v0, Landroid/support/v4/app/av;

    invoke-direct {v0, p0}, Landroid/support/v4/app/av;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/support/v4/app/av;
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/support/v4/app/aw;

    if-eqz v1, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/aw;

    invoke-interface {v0}, Landroid/support/v4/app/aw;->a_()Landroid/content/Intent;

    move-result-object v0

    :cond_c
    if-nez v0, :cond_2e

    invoke-static {p1}, Landroid/support/v4/app/ac;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    :goto_13
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/support/v4/app/av;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_25
    invoke-direct {p0, v0}, Landroid/support/v4/app/av;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/av;

    iget-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-object p0

    :cond_2e
    move-object v1, v0

    goto :goto_13
.end method

.method public final a()V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Landroid/support/v4/app/av;->c:Landroid/content/Context;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_55

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_3e
    if-nez v1, :cond_54

    new-instance v1, Landroid/content/Intent;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/v4/app/av;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_54
    return-void

    :cond_55
    const/16 v5, 0xb

    if-lt v4, v5, :cond_5d

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    goto :goto_3e

    :cond_5d
    move v1, v2

    goto :goto_3e
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
