.class public final Lcom/google/android/gms/location/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:S

.field private e:D

.field private f:D

.field private g:F

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/location/f;->b:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    iput-short v2, p0, Lcom/google/android/gms/location/f;->d:S

    iput v3, p0, Lcom/google/android/gms/location/f;->h:I

    iput v2, p0, Lcom/google/android/gms/location/f;->i:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/location/e;
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v0, p0, Lcom/google/android/gms/location/f;->b:I

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transitions types not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lcom/google/android/gms/location/f;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/google/android/gms/location/f;->i:I

    if-gez v0, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expiration not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-short v0, p0, Lcom/google/android/gms/location/f;->d:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_47

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geofence region not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    iget v0, p0, Lcom/google/android/gms/location/f;->h:I

    if-gez v0, :cond_53

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notification responsiveness should be nonnegative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/hj;

    iget-object v1, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/location/f;->b:I

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/location/f;->e:D

    iget-wide v6, p0, Lcom/google/android/gms/location/f;->f:D

    iget v8, p0, Lcom/google/android/gms/location/f;->g:F

    iget-wide v9, p0, Lcom/google/android/gms/location/f;->c:J

    iget v11, p0, Lcom/google/android/gms/location/f;->h:I

    iget v12, p0, Lcom/google/android/gms/location/f;->i:I

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/hj;-><init>(Ljava/lang/String;ISDDFJII)V

    return-object v0
.end method

.method public a(DDF)Lcom/google/android/gms/location/f;
    .registers 7

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/google/android/gms/location/f;->d:S

    iput-wide p1, p0, Lcom/google/android/gms/location/f;->e:D

    iput-wide p3, p0, Lcom/google/android/gms/location/f;->f:D

    iput p5, p0, Lcom/google/android/gms/location/f;->g:F

    return-object p0
.end method

.method public a(I)Lcom/google/android/gms/location/f;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/location/f;->b:I

    return-object p0
.end method

.method public a(J)Lcom/google/android/gms/location/f;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    :goto_a
    return-object p0

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/location/f;->c:J

    goto :goto_a
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/location/f;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/location/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)Lcom/google/android/gms/location/f;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/location/f;->h:I

    return-object p0
.end method

.method public c(I)Lcom/google/android/gms/location/f;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/location/f;->i:I

    return-object p0
.end method
