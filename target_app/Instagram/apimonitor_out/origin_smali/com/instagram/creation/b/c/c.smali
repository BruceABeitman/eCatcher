.class final Lcom/instagram/creation/b/c/c;
.super Ljava/lang/Object;
.source "PendingMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/b/c/a;

.field private final b:I

.field private final c:Lcom/instagram/creation/b/a/b;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/instagram/creation/b/c/c;->b:I

    iput-object p3, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/creation/b/c/c;-><init>(Lcom/instagram/creation/b/c/a;ILcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/b/c/c;)Lcom/instagram/creation/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget v0, p0, Lcom/instagram/creation/b/c/c;->b:I

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-static {v0}, Lcom/instagram/creation/video/l/j;->a(Lcom/instagram/creation/b/a/b;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_49

    :cond_b
    :goto_b
    invoke-static {}, Lcom/instagram/creation/b/c/a;->d()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    iget-object v3, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    monitor-enter v3

    :try_start_15
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/c/c;

    iget-object v5, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    iget-object v0, v0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_84

    if-ne v5, v0, :cond_93

    move v0, v1

    :goto_3b
    move v2, v0

    goto :goto_28

    :cond_3d
    :try_start_3d
    iget v0, p0, Lcom/instagram/creation/b/c/c;->b:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    iget-object v3, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-static {v0, v3}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_49

    goto :goto_b

    :catchall_49
    move-exception v0

    move-object v3, v0

    invoke-static {}, Lcom/instagram/creation/b/c/a;->d()Lcom/instagram/creation/b/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    iget-object v4, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    monitor-enter v4

    :try_start_55
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->a:Lcom/instagram/creation/b/c/a;

    invoke-static {v0}, Lcom/instagram/creation/b/c/a;->a(Lcom/instagram/creation/b/c/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/c/c;

    iget-object v6, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    iget-object v0, v0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;
    :try_end_78
    .catchall {:try_start_55 .. :try_end_78} :catchall_8e

    if-ne v6, v0, :cond_91

    move v0, v1

    :goto_7b
    move v2, v0

    goto :goto_68

    :cond_7d
    :try_start_7d
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->g(Z)V

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_84

    return-void

    :catchall_84
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/instagram/creation/b/c/c;->c:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->g(Z)V

    monitor-exit v4
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_8e

    throw v3

    :catchall_8e
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_91
    move v0, v2

    goto :goto_7b

    :cond_93
    move v0, v2

    goto :goto_3b
.end method
