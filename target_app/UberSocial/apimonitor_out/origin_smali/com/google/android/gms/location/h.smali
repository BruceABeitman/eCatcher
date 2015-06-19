.class public Lcom/google/android/gms/location/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/d;


# static fields
.field public static final a:Ljava/lang/String; = "com.google.android.location.LOCATION"

.field public static final b:Ljava/lang/String; = "mockLocation"


# instance fields
.field private final c:Lcom/google/android/gms/internal/pj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/pj;

    const-string v1, "location"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/pj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/f;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .registers 2

    const-string v0, "gms_error_code"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Intent;)I
    .registers 3

    const-string v0, "gms_error_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Intent;)I
    .registers 4

    const/4 v0, -0x1

    const-string v1, "com.google.android.location.intent.extra.transition"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    :cond_13
    move v0, v1

    goto :goto_9
.end method

.method public static d(Landroid/content/Intent;)Ljava/util/List;
    .registers 4

    const-string v0, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/hj;->a([B)Lcom/google/android/gms/internal/hj;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2d
    move-object v0, v1

    goto :goto_b
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->a()V

    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->b(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/j;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/pj;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/location/j;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Landroid/location/Location;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;Landroid/os/Looper;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/k;Landroid/os/Looper;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/k;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/location/k;)V

    return-void
.end method

.method public a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/i;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/e;

    instance-of v3, v0, Lcom/google/android/gms/internal/hj;

    const-string v4, "Geofence must be created using Geofence.Builder."

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    check-cast v0, Lcom/google/android/gms/internal/hj;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_25
    move-object v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/internal/pj;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/i;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/google/android/gms/location/j;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/pj;->a(Ljava/util/List;Lcom/google/android/gms/location/j;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->a(Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/e;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->b(Lcom/google/android/gms/common/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/common/f;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->b(Lcom/google/android/gms/common/f;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/common/e;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->c(Lcom/google/android/gms/common/e;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/f;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pj;->c(Lcom/google/android/gms/common/f;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->c()Z

    move-result v0

    return v0
.end method

.method public c_()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->c_()V

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->d()Z

    move-result v0

    return v0
.end method

.method public e()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/location/h;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pj;->h()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
