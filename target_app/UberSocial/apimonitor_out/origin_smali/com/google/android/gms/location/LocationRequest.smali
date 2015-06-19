.class public final Lcom/google/android/gms/location/LocationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/l; = null

.field public static final a:I = 0x64

.field public static final b:I = 0x66

.field public static final c:I = 0x68

.field public static final d:I = 0x69


# instance fields
.field e:I

.field f:J

.field g:J

.field h:Z

.field i:J

.field j:I

.field k:F

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/l;

    invoke-direct {v0}, Lcom/google/android/gms/location/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->l:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->k:F

    return-void
.end method

.method constructor <init>(IIJJZJIF)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->l:I

    iput p2, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    iput-wide p3, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    iput-wide p5, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    iput-wide p8, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    iput p11, p0, Lcom/google/android/gms/location/LocationRequest;->k:F

    return-void
.end method

.method public static a()Lcom/google/android/gms/location/LocationRequest;
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method private static b(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    :pswitch_3
    const-string v0, "???"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "PRIORITY_HIGH_ACCURACY"

    goto :goto_5

    :pswitch_9
    const-string v0, "PRIORITY_BALANCED_POWER_ACCURACY"

    goto :goto_5

    :pswitch_c
    const-string v0, "PRIORITY_LOW_POWER"

    goto :goto_5

    :pswitch_f
    const-string v0, "PRIORITY_NO_POWER"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x64
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private static d(I)V
    .registers 4

    packed-switch p0, :pswitch_data_1e

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x64
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private static e(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method


# virtual methods
.method public a(F)Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->b(F)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->k:F

    return-object p0
.end method

.method public a(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/location/LocationRequest;->d(I)V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    return-object p0
.end method

.method public a(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 7

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->e(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    :cond_12
    return-object p0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    return v0
.end method

.method public b(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 5

    if-gtz p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    return-object p0
.end method

.method public b(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->e(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    return-object p0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    return-wide v0
.end method

.method public c(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 11

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v6, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1c

    iput-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    :goto_13
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1b

    iput-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    :cond_1b
    return-object p0

    :cond_1c
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    goto :goto_13
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    return-wide v0
.end method

.method public d(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 7

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    :cond_c
    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/location/LocationRequest;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->e:I

    if-ne v2, v3, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/LocationRequest;->h:Z

    if-ne v2, v3, :cond_3f

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->j:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->k:F

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->k:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_3f
    move v0, v1

    goto :goto_4
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    return v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->k:F

    return v0
.end method

.method h()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->l:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->k:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    invoke-static {v2}, Lcom/google/android/gms/location/LocationRequest;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->e:I

    const/16 v2, 0x69

    if-eq v1, v2, :cond_37

    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_81

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->i:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, " expireIn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_93

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_93
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/l;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;I)V

    return-void
.end method