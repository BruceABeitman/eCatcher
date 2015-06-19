.class Lcom/google/android/gms/analytics/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rL:Lcom/google/android/gms/analytics/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/s$2;->rL:Lcom/google/android/gms/analytics/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/s$2;->rL:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->a(Lcom/google/android/gms/analytics/s;)V

    return-void
.end method
