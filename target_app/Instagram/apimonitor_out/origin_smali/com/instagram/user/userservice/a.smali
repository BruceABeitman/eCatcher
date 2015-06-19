.class public abstract Lcom/instagram/user/userservice/a;
.super Ljava/lang/Object;
.source "UserServiceHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/user/userservice/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/user/userservice/a;->h()V

    return-void
.end method

.method private e()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/user/userservice/a;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/instagram/user/userservice/a;->i()V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/instagram/user/userservice/a;->h()V

    goto :goto_9
.end method

.method private f()Z
    .registers 5

    invoke-direct {p0}, Lcom/instagram/user/userservice/a;->g()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private g()J
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/user/userservice/a;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EXPIRES_DATE"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/user/userservice/a;->a(Z)V

    :try_start_4
    invoke-virtual {p0}, Lcom/instagram/user/userservice/a;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private i()V
    .registers 5

    new-instance v0, Lcom/instagram/common/a/a/h;

    invoke-direct {v0}, Lcom/instagram/common/a/a/h;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/user/userservice/a;->d()Lcom/instagram/api/k/a/a;

    move-result-object v1

    new-instance v2, Lcom/instagram/user/userservice/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/user/userservice/b;-><init>(Lcom/instagram/user/userservice/a;B)V

    invoke-virtual {v1, v2}, Lcom/instagram/api/k/a/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/h;->a(Lcom/instagram/common/a/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/instagram/user/userservice/a;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v0, "UserServiceHelper"

    const-string v1, "An exception occurred fetching users"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_3
.end method

.method public final a(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/user/userservice/a;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EXPIRES_DATE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected abstract a(Lcom/instagram/user/c/a;)V
.end method

.method protected abstract a(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Z)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()Landroid/content/SharedPreferences;
.end method

.method protected abstract d()Lcom/instagram/api/k/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/k/a/a",
            "<",
            "Lcom/instagram/user/userservice/c;",
            ">;"
        }
    .end annotation
.end method
