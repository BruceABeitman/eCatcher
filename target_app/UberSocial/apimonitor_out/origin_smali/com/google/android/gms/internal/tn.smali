.class public final Lcom/google/android/gms/internal/tn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Lcom/google/android/gms/internal/z;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/tn;->c:Z

    new-instance v0, Lcom/google/android/gms/internal/tn$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/tn$1;-><init>(Lcom/google/android/gms/internal/tn;Lcom/google/android/gms/internal/tl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/tn;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/tn;)Lcom/google/android/gms/internal/z;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tn;->b:Lcom/google/android/gms/internal/z;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/tn;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/tn;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/tn;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/z;)V
    .registers 4

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/tn;->a(Lcom/google/android/gms/internal/z;J)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/z;J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tn;->c:Z

    if-eqz v0, :cond_a

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling ad refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/tn;->b:Lcom/google/android/gms/internal/z;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/tn;->c:Z

    sget-object v0, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/tn;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method
