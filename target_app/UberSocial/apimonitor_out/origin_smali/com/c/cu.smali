.class public Lcom/c/cu;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final f:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Lcom/c/ay;

.field private final d:Lcom/c/at;

.field private final e:Lcom/c/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v8, 0x42

    const/16 v7, 0x3c

    const/16 v9, 0x3b

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "\u001b8Y\'_U"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_199

    move v2, v3

    :cond_15
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_1a
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_19c

    move v6, v9

    :goto_22
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_2e

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_1a

    :cond_2e
    move v1, v0

    move-object v0, v4

    :goto_30
    if-gt v1, v2, :cond_15

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v3

    const-string v0, "\u001c1L\'\u0006"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_196

    move v2, v3

    :cond_47
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_4c
    aget-char v11, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1a8

    move v6, v9

    :goto_54
    xor-int/2addr v6, v11

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_60

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_4c

    :cond_60
    move v1, v0

    move-object v0, v4

    :goto_62
    if-gt v1, v2, :cond_47

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v11, 0x2

    const-string v0, "Dh"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_193

    move v2, v3

    :cond_7a
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_7f
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1b4

    move v6, v9

    :goto_87
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_93

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_7f

    :cond_93
    move v1, v0

    move-object v0, v4

    :goto_95
    if-gt v1, v2, :cond_7a

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x3

    const-string v0, "\u001b<]6^U"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_190

    move v2, v3

    :cond_ad
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_b2
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1c0

    move v6, v9

    :goto_ba
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_c6

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_b2

    :cond_c6
    move v1, v0

    move-object v0, v4

    :goto_c8
    if-gt v1, v2, :cond_ad

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v11, 0x4

    const-string v0, "\u0001,\u0001"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_18d

    move v2, v3

    :cond_e0
    move-object v4, v0

    move v5, v2

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_e5
    aget-char v12, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_1cc

    move v6, v9

    :goto_ed
    xor-int/2addr v6, v12

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_f9

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_e5

    :cond_f9
    move v1, v0

    move-object v0, v4

    :goto_fb
    if-gt v1, v2, :cond_e0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v6, 0x5

    const-string v0, "3\u000bS,U\r+H+T\u0006\u0001R$TRh"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v13, :cond_12d

    :cond_112
    move-object v2, v0

    move v4, v3

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_117
    aget-char v11, v1, v3

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_1d8

    move v5, v9

    :goto_11f
    xor-int/2addr v5, v11

    int-to-char v5, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v4, 0x1

    if-nez v0, :cond_12b

    move-object v1, v2

    move v4, v3

    move v3, v0

    goto :goto_117

    :cond_12b
    move v1, v0

    move-object v0, v2

    :cond_12d
    if-gt v1, v3, :cond_112

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    sput-object v10, Lcom/c/cu;->f:[Ljava/lang/String;

    return-void

    :pswitch_13d
    const/16 v6, 0x68

    goto/16 :goto_22

    :pswitch_141
    const/16 v6, 0x48

    goto/16 :goto_22

    :pswitch_145
    move v6, v7

    goto/16 :goto_22

    :pswitch_148
    move v6, v8

    goto/16 :goto_22

    :pswitch_14b
    const/16 v6, 0x68

    goto/16 :goto_54

    :pswitch_14f
    const/16 v6, 0x48

    goto/16 :goto_54

    :pswitch_153
    move v6, v7

    goto/16 :goto_54

    :pswitch_156
    move v6, v8

    goto/16 :goto_54

    :pswitch_159
    const/16 v6, 0x68

    goto/16 :goto_87

    :pswitch_15d
    const/16 v6, 0x48

    goto/16 :goto_87

    :pswitch_161
    move v6, v7

    goto/16 :goto_87

    :pswitch_164
    move v6, v8

    goto/16 :goto_87

    :pswitch_167
    const/16 v6, 0x68

    goto/16 :goto_ba

    :pswitch_16b
    const/16 v6, 0x48

    goto/16 :goto_ba

    :pswitch_16f
    move v6, v7

    goto/16 :goto_ba

    :pswitch_172
    move v6, v8

    goto/16 :goto_ba

    :pswitch_175
    const/16 v6, 0x68

    goto/16 :goto_ed

    :pswitch_179
    const/16 v6, 0x48

    goto/16 :goto_ed

    :pswitch_17d
    move v6, v7

    goto/16 :goto_ed

    :pswitch_180
    move v6, v8

    goto/16 :goto_ed

    :pswitch_183
    const/16 v5, 0x68

    goto :goto_11f

    :pswitch_186
    const/16 v5, 0x48

    goto :goto_11f

    :pswitch_189
    move v5, v7

    goto :goto_11f

    :pswitch_18b
    move v5, v8

    goto :goto_11f

    :cond_18d
    move v2, v3

    goto/16 :goto_fb

    :cond_190
    move v2, v3

    goto/16 :goto_c8

    :cond_193
    move v2, v3

    goto/16 :goto_95

    :cond_196
    move v2, v3

    goto/16 :goto_62

    :cond_199
    move v2, v3

    goto/16 :goto_30

    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_13d
        :pswitch_141
        :pswitch_145
        :pswitch_148
    .end packed-switch

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_14b
        :pswitch_14f
        :pswitch_153
        :pswitch_156
    .end packed-switch

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_159
        :pswitch_15d
        :pswitch_161
        :pswitch_164
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x0
        :pswitch_167
        :pswitch_16b
        :pswitch_16f
        :pswitch_172
    .end packed-switch

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_175
        :pswitch_179
        :pswitch_17d
        :pswitch_180
    .end packed-switch

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_183
        :pswitch_186
        :pswitch_189
        :pswitch_18b
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/c/ay;Lcom/c/at;Lcom/c/ao;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/c/cu;->c:Lcom/c/ay;

    iput-object p3, p0, Lcom/c/cu;->d:Lcom/c/at;

    iput-object p4, p0, Lcom/c/cu;->e:Lcom/c/ao;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/c/ay;
    .registers 2

    iget-object v0, p0, Lcom/c/cu;->c:Lcom/c/ay;

    return-object v0
.end method

.method public c()Lcom/c/at;
    .registers 2

    iget-object v0, p0, Lcom/c/cu;->d:Lcom/c/at;

    return-object v0
.end method

.method public d()Lcom/c/ao;
    .registers 2

    iget-object v0, p0, Lcom/c/cu;->e:Lcom/c/ao;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/c/cu;

    iget-object v2, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/c/cu;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/c/cu;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_8
    iget-object v0, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x2

    sget-boolean v2, Lcom/c/cu;->a:Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/c/cu;->f:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/c/cu;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/c/cu;->c:Lcom/c/ay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/c/cu;->d:Lcom/c/at;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/c/cu;->f:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/c/cu;->e:Lcom/c/ao;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_76

    sget-boolean v2, Lcom/c/bp;->b:Z

    if-eqz v2, :cond_77

    :goto_74
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_76
    return-object v3

    :cond_77
    move v0, v1

    goto :goto_74
.end method
