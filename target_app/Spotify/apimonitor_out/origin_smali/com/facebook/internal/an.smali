.class final Lcom/facebook/internal/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/am;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/facebook/internal/al;

.field private final c:Ljava/lang/Runnable;

.field private d:Lcom/facebook/internal/an;

.field private e:Lcom/facebook/internal/an;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/internal/al;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/internal/an;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/facebook/internal/al;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/internal/an;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/internal/an;)Lcom/facebook/internal/an;
    .registers 5

    const/4 v0, 0x0

    sget-boolean v1, Lcom/facebook/internal/an;->a:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    if-nez v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    sget-boolean v1, Lcom/facebook/internal/an;->a:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    if-nez v1, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1d
    if-ne p1, p0, :cond_24

    iget-object v1, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    if-ne v1, p0, :cond_35

    move-object p1, v0

    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    iget-object v2, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iput-object v2, v1, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iget-object v1, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iget-object v2, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    iput-object v2, v1, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    iput-object v0, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iput-object v0, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    return-object p1

    :cond_35
    iget-object p1, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    goto :goto_24
.end method

.method final a(Lcom/facebook/internal/an;Z)Lcom/facebook/internal/an;
    .registers 5

    sget-boolean v0, Lcom/facebook/internal/an;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    sget-boolean v0, Lcom/facebook/internal/an;->a:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    if-nez p1, :cond_26

    iput-object p0, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iput-object p0, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    move-object v0, p0

    :goto_23
    if-eqz p2, :cond_36

    :goto_25
    return-object p0

    :cond_26
    iput-object p1, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    iget-object v0, p1, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iput-object v0, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iget-object v0, p0, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    iget-object v1, p0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    iput-object p0, v1, Lcom/facebook/internal/an;->d:Lcom/facebook/internal/an;

    iput-object p0, v0, Lcom/facebook/internal/an;->e:Lcom/facebook/internal/an;

    move-object v0, p1

    goto :goto_23

    :cond_36
    move-object p0, v0

    goto :goto_25
.end method

.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Lcom/facebook/internal/al;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-boolean v0, p0, Lcom/facebook/internal/an;->f:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    iget-object v2, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    invoke-static {v2}, Lcom/facebook/internal/al;->b(Lcom/facebook/internal/al;)Lcom/facebook/internal/an;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/internal/al;->b(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_20

    :goto_1c
    return v0

    :cond_1d
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_1c

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    invoke-static {v0}, Lcom/facebook/internal/al;->a(Lcom/facebook/internal/al;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-boolean v0, p0, Lcom/facebook/internal/an;->f:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    iget-object v2, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    invoke-static {v2}, Lcom/facebook/internal/al;->b(Lcom/facebook/internal/al;)Lcom/facebook/internal/an;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/internal/al;->b(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    iget-object v0, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    iget-object v2, p0, Lcom/facebook/internal/an;->b:Lcom/facebook/internal/al;

    invoke-static {v2}, Lcom/facebook/internal/al;->b(Lcom/facebook/internal/al;)Lcom/facebook/internal/an;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;Z)Lcom/facebook/internal/an;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/internal/al;->b(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/an;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method final d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/an;->f:Z

    return-void
.end method
