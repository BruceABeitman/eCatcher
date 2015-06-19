.class public final Lcom/instagram/android/directshare/c/v;
.super Ljava/lang/Object;
.source "RequestedDirectSharesStore.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/instagram/android/directshare/c/v;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V

    sget-object v0, Lcom/instagram/android/directshare/c/v;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/instagram/f/c/a;)V
    .registers 2

    sget-object v0, Lcom/instagram/android/directshare/c/v;->a:Ljava/util/List;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/instagram/android/directshare/c/v;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/instagram/android/directshare/c/v;->c()V

    :cond_c
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/f/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/t/a;->a()Lcom/instagram/common/t/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/t/a;->b()V

    sput-object p0, Lcom/instagram/android/directshare/c/v;->a:Ljava/util/List;

    invoke-static {}, Lcom/instagram/android/directshare/c/v;->c()V

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/instagram/android/directshare/c/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static c()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "INTENT_ACTION_PENDING_REQUESTS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/Intent;)Z

    return-void
.end method
