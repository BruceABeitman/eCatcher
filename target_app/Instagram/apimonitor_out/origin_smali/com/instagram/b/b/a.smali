.class public Lcom/instagram/b/b/a;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/b/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/b/b/a;

    sput-object v0, Lcom/instagram/b/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;
    .registers 4

    if-eqz p1, :cond_b

    const-string v0, "is_connected"

    invoke-static {p1}, Lcom/instagram/common/u/g/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    :cond_b
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/instagram/common/analytics/e;
    .registers 3

    instance-of v0, p0, Landroid/support/v4/app/k;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/support/v4/app/k;

    invoke-virtual {p0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/common/analytics/e;

    if-eqz v1, :cond_17

    check-cast v0, Lcom/instagram/common/analytics/e;

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/instagram/b/b/a;->a:Ljava/lang/Class;

    :goto_19
    const/4 v0, 0x0

    goto :goto_16

    :cond_1b
    sget-object v0, Lcom/instagram/b/b/a;->a:Ljava/lang/Class;

    goto :goto_19
.end method
