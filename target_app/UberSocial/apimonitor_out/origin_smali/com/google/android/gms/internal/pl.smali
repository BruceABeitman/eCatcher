.class final Lcom/google/android/gms/internal/pl;
.super Lcom/google/android/gms/internal/pb;


# instance fields
.field private a:Lcom/google/android/gms/location/i;

.field private b:Lcom/google/android/gms/location/j;

.field private c:Lcom/google/android/gms/internal/pj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/i;Lcom/google/android/gms/internal/pj;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/pb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/location/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    iput-object p2, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/j;Lcom/google/android/gms/internal/pj;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/pb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/location/i;

    iput-object p2, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/PendingIntent;)V
    .registers 11

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    if-nez v0, :cond_d

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesByPendingIntentResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :cond_d
    iget-object v6, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    new-instance v0, Lcom/google/android/gms/internal/pn;

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pn;-><init>(Lcom/google/android/gms/internal/pj;ILcom/google/android/gms/location/j;ILandroid/app/PendingIntent;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/gn;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    iput-object v7, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/location/i;

    iput-object v7, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    goto :goto_c
.end method

.method public a(I[Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    if-nez v0, :cond_d

    const-string v0, "LocationClientImpl"

    const-string v1, "onAddGeofenceResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    new-instance v1, Lcom/google/android/gms/internal/pk;

    iget-object v2, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/location/i;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/pk;-><init>(Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/location/i;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/gn;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    iput-object v4, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/location/i;

    iput-object v4, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    goto :goto_c
.end method

.method public b(I[Ljava/lang/String;)V
    .registers 11

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    if-nez v0, :cond_d

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesByRequestIdsResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :cond_d
    iget-object v6, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    new-instance v0, Lcom/google/android/gms/internal/pn;

    iget-object v1, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/pn;-><init>(Lcom/google/android/gms/internal/pj;ILcom/google/android/gms/location/j;I[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/gn;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/pl;->c:Lcom/google/android/gms/internal/pj;

    iput-object v7, p0, Lcom/google/android/gms/internal/pl;->a:Lcom/google/android/gms/location/i;

    iput-object v7, p0, Lcom/google/android/gms/internal/pl;->b:Lcom/google/android/gms/location/j;

    goto :goto_c
.end method
