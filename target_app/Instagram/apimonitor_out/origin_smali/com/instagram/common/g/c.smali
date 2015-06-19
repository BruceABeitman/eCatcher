.class public final Lcom/instagram/common/g/c;
.super Ljava/lang/Object;
.source "IgErrorReporter.java"


# static fields
.field private static a:Lcom/facebook/d/b/c;


# direct methods
.method public static a()Lcom/facebook/d/b/c;
    .registers 5

    sget-object v0, Lcom/instagram/common/g/c;->a:Lcom/facebook/d/b/c;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/facebook/d/b/d;

    new-instance v1, Lcom/instagram/common/g/d;

    invoke-direct {v1}, Lcom/instagram/common/g/d;-><init>()V

    new-instance v2, Lcom/instagram/common/g/e;

    invoke-direct {v2}, Lcom/instagram/common/g/e;-><init>()V

    invoke-static {}, Lcom/instagram/common/g/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/d/b/d;-><init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;)V

    sput-object v0, Lcom/instagram/common/g/c;->a:Lcom/facebook/d/b/c;

    :cond_1e
    sget-object v0, Lcom/instagram/common/g/c;->a:Lcom/facebook/d/b/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/facebook/d/b/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/instagram/common/g/c;->a()Lcom/facebook/d/b/c;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
