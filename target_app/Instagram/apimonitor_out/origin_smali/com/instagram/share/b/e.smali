.class final Lcom/instagram/share/b/e;
.super Lcom/instagram/common/b/a;
.source "FacebookAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/b/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/common/b/a;-><init>()V

    iput-object p1, p0, Lcom/instagram/share/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/share/b/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/b;->a(Landroid/content/ContentResolver;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_a} :catch_2d

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/instagram/k/a/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lcom/instagram/o/b;->aB:Lcom/instagram/o/b;

    invoke-virtual {v2}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "attribution_id"

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    :cond_2c
    return-object v1

    :catch_2d
    move-exception v0

    const-string v2, "FacebookAccount"

    const-string v3, "error fetching attributionId"

    invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "facebook-sdk"

    const-string v3, "failed to fetch attributionId"

    invoke-static {v2, v3, v0}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_b
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/share/b/e;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
