.class public final Lcom/instagram/android/k/d;
.super Ljava/lang/Object;
.source "UserSearchUtil.java"


# direct methods
.method public static a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/k/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;

    move-result-object v3

    if-eqz v2, :cond_4d

    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_57

    :try_start_14
    invoke-static {v2}, Lcom/instagram/user/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v4

    if-nez v4, :cond_4e

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    :goto_39
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3c} :catch_3d

    goto :goto_1c

    :catch_3d
    move-exception v0

    move-object v0, v1

    :goto_3f
    const-string v1, "UserSearchUtil"

    const-string v2, "Error reading from recent users. Clearing results"

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/k/b/a;->e()V

    :cond_4d
    :goto_4d
    return-object v0

    :cond_4e
    :try_start_4e
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/instagram/user/c/h;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_3d

    move-result-object v0

    goto :goto_39

    :catch_57
    move-exception v1

    goto :goto_3f

    :cond_59
    move-object v0, v1

    goto :goto_4d
.end method

.method public static a(Lcom/instagram/user/c/a;)V
    .registers 4

    const/4 v2, 0x5

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_b
    invoke-static {v0}, Lcom/instagram/user/b/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    goto :goto_f

    :catch_1f
    move-exception v0

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->h()V

    :goto_27
    return-void

    :cond_28
    :try_start_28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2e
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v1

    invoke-static {v0}, Lcom/instagram/user/b/b;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/k/b/a;->a(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_40} :catch_1f

    goto :goto_27
.end method
