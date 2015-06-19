.class public final Lcom/google/android/gms/internal/bt;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/ak;)Lcom/google/ads/a;
    .registers 6

    const/4 v4, 0x6

    const/4 v0, 0x0

    new-array v1, v4, [Lcom/google/ads/a;

    sget-object v2, Lcom/google/ads/a;->a:Lcom/google/ads/a;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/google/ads/a;->b:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/ads/a;->c:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/google/ads/a;->d:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/google/ads/a;->e:Lcom/google/ads/a;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/ads/a;->f:Lcom/google/ads/a;

    aput-object v3, v1, v2

    :goto_21
    if-ge v0, v4, :cond_3d

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/a;->a()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ak;->f:I

    if-ne v2, v3, :cond_3a

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/ads/a;->b()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ak;->c:I

    if-ne v2, v3, :cond_3a

    aget-object v0, v1, v0

    :goto_39
    return-object v0

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3d
    new-instance v0, Lcom/google/ads/a;

    iget v1, p0, Lcom/google/android/gms/internal/ak;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ak;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/f;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/a;-><init>(Lcom/google/android/gms/ads/d;)V

    goto :goto_39
.end method

.method public static a(Lcom/google/android/gms/internal/ah;)Lcom/google/ads/mediation/a;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;

    if-eqz v0, :cond_23

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_b
    new-instance v0, Lcom/google/ads/mediation/a;

    new-instance v1, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ah;->b:J

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lcom/google/android/gms/internal/ah;->d:I

    packed-switch v2, :pswitch_data_2c

    sget-object v2, Lcom/google/ads/AdRequest$Gender;->a:Lcom/google/ads/AdRequest$Gender;

    :goto_1b
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ah;->f:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ah;->k:Landroid/location/Location;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/a;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    :cond_23
    const/4 v3, 0x0

    goto :goto_b

    :pswitch_25
    sget-object v2, Lcom/google/ads/AdRequest$Gender;->c:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1b

    :pswitch_28
    sget-object v2, Lcom/google/ads/AdRequest$Gender;->b:Lcom/google/ads/AdRequest$Gender;

    goto :goto_1b

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method
