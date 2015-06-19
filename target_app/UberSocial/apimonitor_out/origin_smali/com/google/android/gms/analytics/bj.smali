.class Lcom/google/android/gms/analytics/bj;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/be;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/be;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/bj;->a:Lcom/google/android/gms/analytics/be;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/be;Lcom/google/android/gms/analytics/be$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bj;-><init>(Lcom/google/android/gms/analytics/be;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/bj;->a:Lcom/google/android/gms/analytics/be;

    invoke-static {v0}, Lcom/google/android/gms/analytics/be;->d(Lcom/google/android/gms/analytics/be;)V

    return-void
.end method
