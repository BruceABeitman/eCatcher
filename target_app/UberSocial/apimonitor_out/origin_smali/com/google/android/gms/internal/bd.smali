.class public final Lcom/google/android/gms/internal/bd;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/ads/AdRequest$ErrorCode;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/bd$1;->b:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    :pswitch_f
    const/4 v0, 0x2

    goto :goto_c

    :pswitch_11
    const/4 v0, 0x3

    goto :goto_c

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Lcom/google/ads/AdRequest$Gender;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/bd$1;->a:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    const/4 v0, 0x2

    goto :goto_c

    :pswitch_f
    const/4 v0, 0x1

    goto :goto_c

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public static a(I)Lcom/google/ads/AdRequest$Gender;
    .registers 2

    packed-switch p0, :pswitch_data_c

    sget-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ab;)Lcom/google/ads/AdSize;
    .registers 5

    new-instance v0, Lcom/google/ads/AdSize;

    iget v1, p0, Lcom/google/android/gms/internal/ab;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ab;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/f;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/d;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/z;)Lcom/google/ads/mediation/MediationAdRequest;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_b
    new-instance v1, Lcom/google/ads/mediation/MediationAdRequest;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/google/android/gms/internal/z;->b:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget v3, p0, Lcom/google/android/gms/internal/z;->d:I

    invoke-static {v3}, Lcom/google/android/gms/internal/bd;->a(I)Lcom/google/ads/AdRequest$Gender;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/z;->f:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;Z)V

    return-object v1

    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final b(I)Lcom/google/ads/AdRequest$ErrorCode;
    .registers 2

    packed-switch p0, :pswitch_data_10

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
