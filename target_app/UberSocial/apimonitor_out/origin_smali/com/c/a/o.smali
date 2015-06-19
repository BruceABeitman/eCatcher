.class public Lcom/c/a/o;
.super Lcom/c/a/d;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final b:J = -0x680098b9070c874dL

.field private static final n:[Ljava/lang/String;


# instance fields
.field a:Lcom/c/a/bv;

.field private g:I

.field private h:I

.field private i:I

.field private j:D

.field private k:D

.field private l:Lcom/c/a/f;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x44

    const/16 v7, 0x42

    const/16 v8, 0x18

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "b3Ri"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_223

    move v2, v3

    :cond_16
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1b
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_226

    const/16 v6, 0x57

    :goto_24
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_30

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1b

    :cond_30
    move v1, v0

    move-object v0, v4

    :goto_32
    if-gt v1, v2, :cond_16

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "/k"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_220

    move v2, v3

    :cond_49
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_4e
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_232

    const/16 v6, 0x57

    :goto_57
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_63

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4e

    :cond_63
    move v1, v0

    move-object v0, v4

    :goto_65
    if-gt v1, v2, :cond_49

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, "/8U"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_21d

    move v2, v3

    :cond_7d
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_82
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_23e

    const/16 v6, 0x57

    :goto_8b
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_97

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_82

    :cond_97
    move v1, v0

    move-object v0, v4

    :goto_99
    if-gt v1, v2, :cond_7d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, "/8\u001c(#"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_21a

    move v2, v3

    :cond_b1
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b6
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_24a

    const/16 v6, 0x57

    :goto_bf
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_cb

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b6

    :cond_cb
    move v1, v0

    move-object v0, v4

    :goto_cd
    if-gt v1, v2, :cond_b1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, "k8"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_217

    move v2, v3

    :cond_e5
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_ea
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_256

    const/16 v6, 0x57

    :goto_f3
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_ff

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_ea

    :cond_ff
    move v1, v0

    move-object v0, v4

    :goto_101
    if-gt v1, v2, :cond_e5

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x5

    const-string v0, ")uR,w"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_214

    move v2, v3

    :cond_119
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_11e
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_262

    const/16 v6, 0x57

    :goto_127
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_133

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_11e

    :cond_133
    move v1, v0

    move-object v0, v4

    :goto_135
    if-gt v1, v2, :cond_119

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x6

    const-string v0, "&}\u001ad"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_211

    move v2, v3

    :cond_14d
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_152
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_26e

    const/16 v6, 0x57

    :goto_15b
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_167

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_152

    :cond_167
    move v1, v0

    move-object v0, v4

    :goto_169
    if-gt v1, v2, :cond_14d

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v6, 0x7

    const-string v0, "n8"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_19c

    :cond_180
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_185
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_27a

    const/16 v5, 0x57

    :goto_18e
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_19a

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_185

    :cond_19a
    move v1, v0

    move-object v0, v2

    :cond_19c
    if-gt v1, v3, :cond_180

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/a/o;->n:[Ljava/lang/String;

    return-void

    :pswitch_1ac
    move v6, v7

    goto/16 :goto_24

    :pswitch_1af
    move v6, v8

    goto/16 :goto_24

    :pswitch_1b2
    const/16 v6, 0x7d

    goto/16 :goto_24

    :pswitch_1b6
    move v6, v9

    goto/16 :goto_24

    :pswitch_1b9
    move v6, v7

    goto/16 :goto_57

    :pswitch_1bc
    move v6, v8

    goto/16 :goto_57

    :pswitch_1bf
    const/16 v6, 0x7d

    goto/16 :goto_57

    :pswitch_1c3
    move v6, v9

    goto/16 :goto_57

    :pswitch_1c6
    move v6, v7

    goto/16 :goto_8b

    :pswitch_1c9
    move v6, v8

    goto/16 :goto_8b

    :pswitch_1cc
    const/16 v6, 0x7d

    goto/16 :goto_8b

    :pswitch_1d0
    move v6, v9

    goto/16 :goto_8b

    :pswitch_1d3
    move v6, v7

    goto/16 :goto_bf

    :pswitch_1d6
    move v6, v8

    goto/16 :goto_bf

    :pswitch_1d9
    const/16 v6, 0x7d

    goto/16 :goto_bf

    :pswitch_1dd
    move v6, v9

    goto/16 :goto_bf

    :pswitch_1e0
    move v6, v7

    goto/16 :goto_f3

    :pswitch_1e3
    move v6, v8

    goto/16 :goto_f3

    :pswitch_1e6
    const/16 v6, 0x7d

    goto/16 :goto_f3

    :pswitch_1ea
    move v6, v9

    goto/16 :goto_f3

    :pswitch_1ed
    move v6, v7

    goto/16 :goto_127

    :pswitch_1f0
    move v6, v8

    goto/16 :goto_127

    :pswitch_1f3
    const/16 v6, 0x7d

    goto/16 :goto_127

    :pswitch_1f7
    move v6, v9

    goto/16 :goto_127

    :pswitch_1fa
    move v6, v7

    goto/16 :goto_15b

    :pswitch_1fd
    move v6, v8

    goto/16 :goto_15b

    :pswitch_200
    const/16 v6, 0x7d

    goto/16 :goto_15b

    :pswitch_204
    move v6, v9

    goto/16 :goto_15b

    :pswitch_207
    move v5, v7

    goto :goto_18e

    :pswitch_209
    move v5, v8

    goto :goto_18e

    :pswitch_20b
    const/16 v5, 0x7d

    goto :goto_18e

    :pswitch_20e
    move v5, v9

    goto/16 :goto_18e

    :cond_211
    move v2, v3

    goto/16 :goto_169

    :cond_214
    move v2, v3

    goto/16 :goto_135

    :cond_217
    move v2, v3

    goto/16 :goto_101

    :cond_21a
    move v2, v3

    goto/16 :goto_cd

    :cond_21d
    move v2, v3

    goto/16 :goto_99

    :cond_220
    move v2, v3

    goto/16 :goto_65

    :cond_223
    move v2, v3

    goto/16 :goto_32

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_1ac
        :pswitch_1af
        :pswitch_1b2
        :pswitch_1b6
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_1bc
        :pswitch_1bf
        :pswitch_1c3
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_1c6
        :pswitch_1c9
        :pswitch_1cc
        :pswitch_1d0
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_1d3
        :pswitch_1d6
        :pswitch_1d9
        :pswitch_1dd
    .end packed-switch

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_1e0
        :pswitch_1e3
        :pswitch_1e6
        :pswitch_1ea
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_1ed
        :pswitch_1f0
        :pswitch_1f3
        :pswitch_1f7
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_1fa
        :pswitch_1fd
        :pswitch_200
        :pswitch_204
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x0
        :pswitch_207
        :pswitch_209
        :pswitch_20b
        :pswitch_20e
    .end packed-switch
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/c/a/d;-><init>()V

    return-void
.end method

.method public constructor <init>(DDJIIIDDLcom/c/a/f;Lcom/c/a/bv;)V
    .registers 16

    invoke-direct/range {p0 .. p6}, Lcom/c/a/d;-><init>(DDJ)V

    iput p7, p0, Lcom/c/a/o;->g:I

    iput p8, p0, Lcom/c/a/o;->h:I

    iput p9, p0, Lcom/c/a/o;->i:I

    iput-wide p10, p0, Lcom/c/a/o;->j:D

    iput-wide p12, p0, Lcom/c/a/o;->k:D

    iput-object p14, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    iput-object p15, p0, Lcom/c/a/o;->a:Lcom/c/a/bv;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    iput p1, p0, Lcom/c/a/o;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/o;->m:Z

    return-void
.end method

.method public a(Lcom/c/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/c/a/o;->g:I

    return v0
.end method

.method protected b(I)V
    .registers 2

    iput p1, p0, Lcom/c/a/o;->h:I

    return-void
.end method

.method protected c(I)V
    .registers 2

    iput p1, p0, Lcom/c/a/o;->i:I

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/c/a/o;->o()Lcom/c/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected d(D)V
    .registers 3

    iput-wide p1, p0, Lcom/c/a/o;->j:D

    return-void
.end method

.method protected e(D)V
    .registers 3

    iput-wide p1, p0, Lcom/c/a/o;->k:D

    return-void
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/c/a/o;->h:I

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/c/a/o;->i:I

    return v0
.end method

.method public j()D
    .registers 3

    iget-wide v0, p0, Lcom/c/a/o;->j:D

    return-wide v0
.end method

.method public k()D
    .registers 3

    iget-wide v0, p0, Lcom/c/a/o;->k:D

    return-wide v0
.end method

.method l()Z
    .registers 5

    iget-wide v0, p0, Lcom/c/a/o;->j:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public m()Lcom/c/a/f;
    .registers 2

    iget-object v0, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/a/o;->m:Z

    return v0
.end method

.method public o()Lcom/c/a/o;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    iget-object v1, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    invoke-virtual {v1}, Lcom/c/a/f;->l()Lcom/c/a/f;

    move-result-object v1

    iput-object v1, v0, Lcom/c/a/o;->l:Lcom/c/a/f;

    :cond_12
    iget-object v1, p0, Lcom/c/a/o;->a:Lcom/c/a/bv;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/c/a/o;->a:Lcom/c/a/bv;

    invoke-virtual {v1}, Lcom/c/a/bv;->i()Lcom/c/a/bv;

    move-result-object v1

    iput-object v1, v0, Lcom/c/a/o;->a:Lcom/c/a/bv;
    :try_end_1e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    const-wide/16 v10, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/high16 v8, 0x4024

    const-wide v6, 0x416312d000000000L

    sget-boolean v3, Lcom/c/a/d;->h_:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/c/a/o;->c()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/a/o;->n:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->d()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/a/o;->n:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->b()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/a/o;->n:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->h()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->i()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/a/o;->n:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->j()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/a/o;->n:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->k()D

    move-result-wide v4

    mul-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/c/a/o;->n:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/c/a/o;->g()Z

    move-result v0

    if-eqz v0, :cond_fd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->f()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/c/a/o;->n:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ce
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    if-eqz v0, :cond_100

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/c/a/o;->l:Lcom/c/a/f;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_eb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/c/bp;->b:Z

    if-eqz v0, :cond_fc

    if-eqz v3, :cond_120

    move v0, v1

    :goto_fa
    sput-boolean v0, Lcom/c/a/d;->h_:Z

    :cond_fc
    return-object v4

    :cond_fd
    const-string v0, ""

    goto :goto_ce

    :cond_100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/o;->e()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/c/a/o;->n:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_eb

    :cond_120
    move v0, v2

    goto :goto_fa
.end method
