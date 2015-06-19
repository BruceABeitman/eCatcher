.class Lcom/facebook/widget/be;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x8

.field static final synthetic b:Z


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:Lcom/facebook/widget/bg;

.field private final e:I

.field private final f:Ljava/util/concurrent/Executor;

.field private g:Lcom/facebook/widget/bg;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/widget/be;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/widget/be;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/widget/be;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-static {}, Lcom/facebook/bm;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/widget/be;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/be;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/widget/be;->h:I

    iput p1, p0, Lcom/facebook/widget/be;->e:I

    iput-object p2, p0, Lcom/facebook/widget/be;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/be;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/be;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/widget/be;->a(Lcom/facebook/widget/bg;)V

    return-void
.end method

.method private a(Lcom/facebook/widget/bg;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/be;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_14

    :try_start_6
    iget-object v2, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    invoke-virtual {p1, v2}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    iget v2, p0, Lcom/facebook/widget/be;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/widget/be;->h:I

    :cond_14
    iget v2, p0, Lcom/facebook/widget/be;->h:I

    iget v3, p0, Lcom/facebook/widget/be;->e:I

    if-ge v2, v3, :cond_39

    iget-object v0, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    if-eqz v0, :cond_39

    iget-object v2, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    iget-object v2, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;Z)Lcom/facebook/widget/bg;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    iget v2, p0, Lcom/facebook/widget/be;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/widget/be;->h:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/widget/bg;->a(Z)V

    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_40

    if-eqz v0, :cond_3f

    invoke-direct {p0, v0}, Lcom/facebook/widget/be;->b(Lcom/facebook/widget/bg;)V

    :cond_3f
    return-void

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method static synthetic b(Lcom/facebook/widget/be;)Lcom/facebook/widget/bg;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)Lcom/facebook/widget/bg;
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    return-object p1
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/be;->a(Lcom/facebook/widget/bg;)V

    return-void
.end method

.method private b(Lcom/facebook/widget/bg;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/be;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/widget/be$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/widget/be$1;-><init>(Lcom/facebook/widget/be;Lcom/facebook/widget/bg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Runnable;)Lcom/facebook/widget/bf;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/widget/be;->a(Ljava/lang/Runnable;Z)Lcom/facebook/widget/bf;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Runnable;Z)Lcom/facebook/widget/bf;
    .registers 6

    new-instance v0, Lcom/facebook/widget/bg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/widget/bg;-><init>(Lcom/facebook/widget/be;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/facebook/widget/be;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    invoke-virtual {v0, v2, p2}, Lcom/facebook/widget/bg;->a(Lcom/facebook/widget/bg;Z)Lcom/facebook/widget/bg;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/widget/be;->d:Lcom/facebook/widget/bg;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    invoke-direct {p0}, Lcom/facebook/widget/be;->b()V

    return-object v0

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method a()V
    .registers 5

    iget-object v2, p0, Lcom/facebook/widget/be;->c:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    :cond_a
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/facebook/widget/bg;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/facebook/widget/bg;->e()Lcom/facebook/widget/bg;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/widget/be;->g:Lcom/facebook/widget/bg;

    if-ne v1, v3, :cond_a

    :cond_18
    sget-boolean v1, Lcom/facebook/widget/be;->b:Z

    if-nez v1, :cond_29

    iget v1, p0, Lcom/facebook/widget/be;->h:I

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    return-void
.end method
