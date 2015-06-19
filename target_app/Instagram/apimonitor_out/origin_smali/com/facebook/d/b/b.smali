.class public final Lcom/facebook/d/b/b;
.super Ljava/lang/Object;
.source "AcraBLogBridge.java"

# interfaces
.implements Lcom/facebook/a/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    const-string v0, "AcraBLogBridge.init"

    invoke-static {v0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/facebook/a/i;->a()Lcom/facebook/a/i;

    move-result-object v0

    new-instance v1, Lcom/facebook/d/b/b;

    invoke-direct {v1}, Lcom/facebook/d/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/a/i;->a(Lcom/facebook/a/n;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/facebook/e/c/k;->a()V

    return-void

    :catchall_15
    move-exception v0

    invoke-static {}, Lcom/facebook/e/c/k;->a()V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
