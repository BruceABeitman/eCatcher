.class final Lcom/google/b/b/ao;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/google/b/b/aj;

.field final synthetic d:Lcom/google/b/f/a/l;

.field final synthetic e:Lcom/google/b/b/an;


# direct methods
.method constructor <init>(Lcom/google/b/b/an;Ljava/lang/Object;ILcom/google/b/b/aj;Lcom/google/b/f/a/l;)V
    .registers 6

    iput-object p1, p0, Lcom/google/b/b/ao;->e:Lcom/google/b/b/an;

    iput-object p2, p0, Lcom/google/b/b/ao;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/google/b/b/ao;->b:I

    iput-object p4, p0, Lcom/google/b/b/ao;->c:Lcom/google/b/b/aj;

    iput-object p5, p0, Lcom/google/b/b/ao;->d:Lcom/google/b/f/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/b/b/ao;->e:Lcom/google/b/b/an;

    iget-object v1, p0, Lcom/google/b/b/ao;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/b/b/ao;->b:I

    iget-object v3, p0, Lcom/google/b/b/ao;->c:Lcom/google/b/b/aj;

    iget-object v4, p0, Lcom/google/b/b/ao;->d:Lcom/google/b/f/a/l;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/aj;Lcom/google/b/f/a/l;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/b/ao;->c:Lcom/google/b/b/aj;

    invoke-virtual {v1, v0}, Lcom/google/b/b/aj;->b(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    sget-object v1, Lcom/google/b/b/n;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/b/b/ao;->c:Lcom/google/b/b/aj;

    invoke-virtual {v1, v0}, Lcom/google/b/b/aj;->a(Ljava/lang/Throwable;)Z

    goto :goto_13
.end method
