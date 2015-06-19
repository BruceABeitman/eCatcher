.class public final Lcom/google/android/gms/cast/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = -0x1


# instance fields
.field private final e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/cast/p;

.field private i:J

.field private j:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/n;->f:I

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "contentId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    const-string v0, "streamType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/n;->f:I

    :goto_1c
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "metadataType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/android/gms/cast/p;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/p;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    iget-object v1, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/p;->a(Lorg/json/JSONObject;)V

    :cond_44
    const-string v0, "duration"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fo;->a(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/n;->i:J

    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    return-void

    :cond_5b
    const-string v1, "BUFFERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cast/n;->f:I

    goto :goto_1c

    :cond_67
    const-string v1, "LIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/cast/n;->f:I

    goto :goto_1c

    :cond_73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/n;->f:I

    goto :goto_1c
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid stream type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput p1, p0, Lcom/google/android/gms/cast/n;->f:I

    return-void
.end method

.method a(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-wide p1, p0, Lcom/google/android/gms/cast/n;->i:J

    return-void
.end method

.method a(Lcom/google/android/gms/cast/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content type cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/n;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/cast/p;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    return-object v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/cast/n;->i:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_6

    move v2, v1

    :cond_5
    :goto_5
    return v2

    :cond_6
    instance-of v0, p1, Lcom/google/android/gms/cast/n;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/cast/n;

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_58

    move v0, v1

    :goto_11
    iget-object v3, p1, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    if-nez v3, :cond_5a

    move v3, v1

    :goto_16
    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/google/android/gms/cast/n;->f:I

    iget v3, p1, Lcom/google/android/gms/cast/n;->f:I

    if-ne v0, v3, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    iget-object v3, p1, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/fo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-wide v3, p0, Lcom/google/android/gms/cast/n;->i:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/n;->i:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_5c

    :goto_56
    move v2, v1

    goto :goto_5

    :cond_58
    move v0, v2

    goto :goto_11

    :cond_5a
    move v3, v2

    goto :goto_16

    :cond_5c
    move v1, v2

    goto :goto_56
.end method

.method public f()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method g()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content ID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content type cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget v0, p0, Lcom/google/android/gms/cast/n;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a valid stream type must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method

.method public h()Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "contentId"

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/google/android/gms/cast/n;->f:I

    packed-switch v0, :pswitch_data_52

    const-string v0, "NONE"

    :goto_13
    const-string v2, "streamType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    if-eqz v0, :cond_23

    const-string v0, "contentType"

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    if-eqz v0, :cond_32

    const-string v0, "metadata"

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/p;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_32
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/n;->i:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/fo;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_48

    const-string v0, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_48
    :goto_48
    return-object v1

    :pswitch_49
    const-string v0, "BUFFERED"

    goto :goto_13

    :pswitch_4c
    const-string v0, "LIVE"
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4e} :catch_4f

    goto :goto_13

    :catch_4f
    move-exception v0

    goto :goto_48

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/cast/n;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->h:Lcom/google/android/gms/cast/p;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/cast/n;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/cast/n;->j:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hq;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method