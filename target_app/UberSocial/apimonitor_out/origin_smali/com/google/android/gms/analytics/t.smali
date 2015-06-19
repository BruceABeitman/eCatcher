.class Lcom/google/android/gms/analytics/t;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/r$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;-><init>(Lcom/google/android/gms/analytics/s;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->a:Lcom/google/android/gms/analytics/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/s;->a(Lcom/google/android/gms/analytics/s;Z)Z

    return-void
.end method
