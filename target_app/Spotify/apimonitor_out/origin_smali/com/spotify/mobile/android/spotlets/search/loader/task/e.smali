.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
.super Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
        "<TV;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
            "<TV;TE;>;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
            "<TV;TE;>;)V"
        }
    .end annotation

    const-wide/16 v2, 0x7d00

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->a:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    :goto_13
    const-string v1, "Timeout must be greater than zero"

    invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    iput-wide v2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->d:J

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)J
    .registers 3

    iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->c:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->e()V

    return-void
.end method

.method final b(Landroid/os/Handler;)Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/e",
            "<TV;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->a:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-object p0
.end method
