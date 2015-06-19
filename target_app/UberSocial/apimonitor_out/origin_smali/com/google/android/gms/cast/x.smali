.class final Lcom/google/android/gms/cast/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/n;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/w;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/w;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/cast/x;->a:Lcom/google/android/gms/cast/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/cast/x;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .registers 6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/cast/x;->a:Lcom/google/android/gms/cast/w;

    iget-object v0, v0, Lcom/google/android/gms/cast/w;->a:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/cast/x;->b:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->h()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/fv;->a(JI)V

    :cond_17
    return-void
.end method

.method public synthetic a(Lcom/google/android/gms/common/api/m;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/x;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
