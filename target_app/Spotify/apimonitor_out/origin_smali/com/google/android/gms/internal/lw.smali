.class public final Lcom/google/android/gms/internal/lw;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/lx;

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/google/android/gms/internal/ah;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/lx;

    sget-object v1, Lcom/google/android/gms/internal/eo;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lx;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/lw;-><init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/lx;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/lx;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/lw;->f:J

    iput-object p2, p0, Lcom/google/android/gms/internal/lw;->a:Lcom/google/android/gms/internal/lx;

    new-instance v0, Lcom/google/android/gms/internal/lw$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/lw$1;-><init>(Lcom/google/android/gms/internal/lw;Lcom/google/android/gms/internal/ls;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lw;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/lw;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->c:Lcom/google/android/gms/internal/ah;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->a:Lcom/google/android/gms/internal/lx;

    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lx;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ah;)V
    .registers 4

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ah;J)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ah;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    if-eqz v0, :cond_a

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/internal/lw;->c:Lcom/google/android/gms/internal/ah;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/lw;->f:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lw;->e:Z

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling ad refresh "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->a:Lcom/google/android/gms/internal/lx;

    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/lx;->a(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lw;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->a:Lcom/google/android/gms/internal/lx;

    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lx;->a(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public final c()V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/lw;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lw;->d:Z

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/google/android/gms/internal/lw;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->c:Lcom/google/android/gms/internal/ah;

    iget-wide v1, p0, Lcom/google/android/gms/internal/lw;->f:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/ah;J)V

    :cond_10
    return-void
.end method
