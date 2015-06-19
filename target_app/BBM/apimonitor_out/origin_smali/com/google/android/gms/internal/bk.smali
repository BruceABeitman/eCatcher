.class public final Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/a/b;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I

    invoke-virtual {p0}, Lcom/google/a/b;->ordinal()I

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

.method public static a(Lcom/google/a/c;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/bk$1;->mW:[I

    invoke-virtual {p0}, Lcom/google/a/c;->ordinal()I

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

.method public static b(Lcom/google/android/gms/internal/ab;)Lcom/google/a/d;
    .registers 5

    new-instance v0, Lcom/google/a/d;

    iget v1, p0, Lcom/google/android/gms/internal/ab;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/ab;->height:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->ln:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/z;)Lcom/google/a/a/a;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->lg:Ljava/util/List;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->lg:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_b
    new-instance v1, Lcom/google/a/a/a;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/google/android/gms/internal/z;->le:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget v3, p0, Lcom/google/android/gms/internal/z;->lf:I

    invoke-static {v3}, Lcom/google/android/gms/internal/bk;->g(I)Lcom/google/a/c;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/z;->lh:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/a/a/a;-><init>(Ljava/util/Date;Lcom/google/a/c;Ljava/util/Set;Z)V

    return-object v1

    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static g(I)Lcom/google/a/c;
    .registers 2

    packed-switch p0, :pswitch_data_c

    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/google/a/c;->c:Lcom/google/a/c;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/google/a/c;->b:Lcom/google/a/c;

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static final h(I)Lcom/google/a/b;
    .registers 2

    packed-switch p0, :pswitch_data_10

    sget-object v0, Lcom/google/a/b;->d:Lcom/google/a/b;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/google/a/b;->a:Lcom/google/a/b;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/google/a/b;->c:Lcom/google/a/b;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/google/a/b;->b:Lcom/google/a/b;

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
