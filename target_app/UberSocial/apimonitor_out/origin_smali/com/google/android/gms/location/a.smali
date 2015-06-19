.class public Lcom/google/android/gms/location/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;


# instance fields
.field private final a:Lcom/google/android/gms/internal/pj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/pj;

    const-string v1, "activity_recognition"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/pj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->a()V

    return-void
.end method

.method public a(JLandroid/app/PendingIntent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/pj;->a(JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/e;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->b(Lcom/google/android/gms/common/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->b(Lcom/google/android/gms/common/f;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->c(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->c(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->c()Z

    move-result v0

    return v0
.end method

.method public c_()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->c_()V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/a;->a:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->d()Z

    move-result v0

    return v0
.end method
