.class Lcom/facebook/internal/al;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:Lcom/facebook/internal/an;

.field private final d:I

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Lcom/facebook/internal/an;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/internal/al;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/internal/al;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/internal/al;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-static {}, Lcom/facebook/ah;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/al;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/al;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/internal/al;->f:Lcom/facebook/internal/an;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/internal/al;->g:I

    iput p1, p0, Lcom/facebook/internal/al;->d:I

    iput-object p2, p0, Lcom/facebook/internal/al;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/al;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/al;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/internal/al;->a(Lcom/facebook/internal/an;)V

    return-void
.end method

.method private a(Lcom/facebook/internal/an;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/internal/al;->b:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_14

    :try_start_6
    iget-object v2, p0, Lcom/facebook/internal/al;->f:Lcom/facebook/internal/an;

    invoke-virtual {p1, v2}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/al;->f:Lcom/facebook/internal/an;

    iget v2, p0, Lcom/facebook/internal/al;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/internal/al;->g:I

    :cond_14
    iget v2, p0, Lcom/facebook/internal/al;->g:I

    iget v3, p0, Lcom/facebook/internal/al;->d:I

    if-ge v2, v3, :cond_38

    iget-object v0, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    invoke-virtual {v0, v2}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;)Lcom/facebook/internal/an;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    iget-object v2, p0, Lcom/facebook/internal/al;->f:Lcom/facebook/internal/an;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;Z)Lcom/facebook/internal/an;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/al;->f:Lcom/facebook/internal/an;

    iget v2, p0, Lcom/facebook/internal/al;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/internal/al;->g:I

    invoke-virtual {v0}, Lcom/facebook/internal/an;->d()V

    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_46

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/facebook/internal/al;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/internal/al$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/internal/al$1;-><init>(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_45
    return-void

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/facebook/internal/al;)Lcom/facebook/internal/an;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/internal/al;Lcom/facebook/internal/an;)Lcom/facebook/internal/an;
    .registers 2

    iput-object p1, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    return-object p1
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)Lcom/facebook/internal/am;
    .registers 6

    new-instance v0, Lcom/facebook/internal/an;

    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/an;-><init>(Lcom/facebook/internal/al;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/facebook/internal/al;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/an;->a(Lcom/facebook/internal/an;Z)Lcom/facebook/internal/an;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/internal/al;->c:Lcom/facebook/internal/an;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_17

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/internal/al;->a(Lcom/facebook/internal/an;)V

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method
