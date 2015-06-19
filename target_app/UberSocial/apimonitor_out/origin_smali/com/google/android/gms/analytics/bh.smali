.class Lcom/google/android/gms/analytics/bh;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/be;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/be;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/bh;->a:Lcom/google/android/gms/analytics/be;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/be;Lcom/google/android/gms/analytics/be$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bh;-><init>(Lcom/google/android/gms/analytics/be;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/bh;->a:Lcom/google/android/gms/analytics/be;

    invoke-static {v0}, Lcom/google/android/gms/analytics/be;->b(Lcom/google/android/gms/analytics/be;)Lcom/google/android/gms/analytics/bf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/bf;

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/analytics/bh;->a:Lcom/google/android/gms/analytics/be;

    invoke-static {v0}, Lcom/google/android/gms/analytics/be;->c(Lcom/google/android/gms/analytics/be;)V

    :cond_f
    return-void
.end method
