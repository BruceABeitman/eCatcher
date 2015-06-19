.class public abstract Lcom/google/android/gms/cast/i;
.super Lcom/google/android/gms/common/api/r;

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/cast/a;->d:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/r;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/i;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/i;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method
