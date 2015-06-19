.class Lcom/c/cg;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final h:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/c/bp;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v10, 0x3e

    const/16 v9, 0x29

    const/4 v8, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x18

    new-array v11, v2, [Ljava/lang/String;

    const-string v2, "2mO\u0013\u001e6pH\u000e[eiH\u0014_\"aD\u001fP1$M\u0013M$fE\u001fZefPZ\\0mE\u001e\u001e&kG\u001cW\"q[\u001bJ,kG"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_684

    move v4, v1

    :cond_15
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1a
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_688

    move v7, v10

    :goto_22
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1a

    :cond_2e
    move v3, v2

    move-object v2, v5

    :goto_30
    if-gt v3, v4, :cond_15

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v2, "2mO\u0013\u001e$h[\u001f_!}\t\u001fP$fE\u001fZekG\u0019["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_681

    move v4, v1

    :cond_47
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4c
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_694

    move v7, v10

    :goto_54
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_60

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4c

    :cond_60
    move v3, v2

    move-object v2, v5

    :goto_62
    if-gt v3, v4, :cond_47

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v12, 0x2

    const-string v2, "7aL\u0014_\'hLR\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_67e

    move v4, v1

    :cond_7a
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_7f
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6a0

    move v7, v10

    :goto_87
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_93

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_7f

    :cond_93
    move v3, v2

    move-object v2, v5

    :goto_95
    if-gt v3, v4, :cond_7a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    const-string v2, "!mZ\u001b\\)a\u0001S"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_67b

    move v4, v1

    :cond_ad
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b2
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6ac

    move v7, v10

    :goto_ba
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_c6

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b2

    :cond_c6
    move v3, v2

    move-object v2, v5

    :goto_c8
    if-gt v3, v4, :cond_ad

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const-string v2, "2mO\u0013\u001e6p@\u0016RejL\u001fZ `"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_678

    move v4, v1

    :cond_df
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_e4
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6b8

    move v7, v10

    :goto_ec
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_f8

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_e4

    :cond_f8
    move v3, v2

    move-object v2, v5

    :goto_fa
    if-gt v3, v4, :cond_df

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v8

    const/4 v12, 0x5

    const-string v2, "0tM\u001bJ $H\u0016L eM\u0003\u001e6gA\u001fZ0hL\u001e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_675

    move v4, v1

    :cond_112
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_117
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6c4

    move v7, v10

    :goto_11f
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_12b

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_117

    :cond_12b
    move v3, v2

    move-object v2, v5

    :goto_12d
    if-gt v3, v4, :cond_112

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x6

    const-string v2, "6pH\u000e[eqY\u001e_1a\t\t]-aM\u000fR `"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_672

    move v4, v1

    :cond_145
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_14a
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6d0

    move v7, v10

    :goto_152
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_15e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_14a

    :cond_15e
    move v3, v2

    move-object v2, v5

    :goto_160
    if-gt v3, v4, :cond_145

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x7

    const-string v2, "2a\t\u001eQ+#]ZI$j]ZJ*$L\u0014_\'hLZI,b@Z_+}D\u0015L "

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_66f

    move v4, v1

    :cond_178
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_17d
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6dc

    move v7, v10

    :goto_185
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_191

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_17d

    :cond_191
    move v3, v2

    move-object v2, v5

    :goto_193
    if-gt v3, v4, :cond_178

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x8

    const-string v2, "&k\\\u0016Z+#]Z[+eK\u0016[es@\u001cW"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_66c

    move v4, v1

    :cond_1ac
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1b1
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6e8

    move v7, v10

    :goto_1b9
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_1c5

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1b1

    :cond_1c5
    move v3, v2

    move-object v2, v5

    :goto_1c7
    if-gt v3, v4, :cond_1ac

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x9

    const-string v2, "2mO\u0013\u001e,w\t\u001fP$fE\u001fZ"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_669

    move v4, v1

    :cond_1e0
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1e5
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6f4

    move v7, v10

    :goto_1ed
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_1f9

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1e5

    :cond_1f9
    move v3, v2

    move-object v2, v5

    :goto_1fb
    if-gt v3, v4, :cond_1e0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xa

    const-string v2, "2mO\u0013\u001e,w\t\u001eW6eK\u0016W+c\u0005ZI,hEZ[+eK\u0016[ehH\u000e[7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_666

    move v4, v1

    :cond_214
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_219
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_700

    move v7, v10

    :goto_221
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_22d

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_219

    :cond_22d
    move v3, v2

    move-object v2, v5

    :goto_22f
    if-gt v3, v4, :cond_214

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xb

    const-string v2, "2mO\u0013\u001e,w\t\u001fP$fE\u0013P\""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_663

    move v4, v1

    :cond_248
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_24d
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_70c

    move v7, v10

    :goto_255
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_261

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_24d

    :cond_261
    move v3, v2

    move-object v2, v5

    :goto_263
    if-gt v3, v4, :cond_248

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xc

    const-string v2, "2mO\u0013\u001e,w\t\u001eW6eK\u0016[!(\t\rW)h\t\u001fP$fE\u001f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_660

    move v4, v1

    :cond_27c
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_281
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_718

    move v7, v10

    :goto_289
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_295

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_281

    :cond_295
    move v3, v2

    move-object v2, v5

    :goto_297
    if-gt v3, v4, :cond_27c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xd

    const-string v2, "-eZZ\\ aGZ[+eK\u0016[!$K\u001fX*vLV\u001e6k\t\u001eQ+#]ZI$j]ZJ*$]\u0008GeeN\u001bW+"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_65d

    move v4, v1

    :cond_2b0
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_2b5
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_724

    move v7, v10

    :goto_2bd
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2c9

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_2b5

    :cond_2c9
    move v3, v2

    move-object v2, v5

    :goto_2cb
    if-gt v3, v4, :cond_2b0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xe

    const-string v2, " jH\u0018R ,\u0000"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_65a

    move v4, v1

    :cond_2e4
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_2e9
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_730

    move v7, v10

    :goto_2f1
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2fd

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_2e9

    :cond_2fd
    move v3, v2

    move-object v2, v5

    :goto_2ff
    if-gt v3, v4, :cond_2e4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xf

    const-string v2, "2mO\u0013\u001e,w\t\u001fP$fE\u001fZi$^\u0013R)$M\u0013M$fE\u001f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_657

    move v4, v1

    :cond_318
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_31d
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_73c

    move v7, v10

    :goto_325
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_331

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_31d

    :cond_331
    move v3, v2

    move-object v2, v5

    :goto_333
    if-gt v3, v4, :cond_318

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x10

    const-string v2, "2mO\u0013\u001e,w\t\u001eW6eK\u0016W+c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_654

    move v4, v1

    :cond_34c
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_351
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_748

    move v7, v10

    :goto_359
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_365

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_351

    :cond_365
    move v3, v2

    move-object v2, v5

    :goto_367
    if-gt v3, v4, :cond_34c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x11

    const-string v2, "2a\t\u001eQ+#]ZI$j]ZJ*$M\u0013M$fE\u001f\u001e2mO\u0013\u001e$jP\u0017Q7a"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_651

    move v4, v1

    :cond_380
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_385
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_754

    move v7, v10

    :goto_38d
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_399

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_385

    :cond_399
    move v3, v2

    move-object v2, v5

    :goto_39b
    if-gt v3, v4, :cond_380

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x12

    const-string v2, "&k\\\u0016Z+#]ZZ,wH\u0018R $^\u0013X,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_64e

    move v4, v1

    :cond_3b4
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_3b9
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_760

    move v7, v10

    :goto_3c1
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_3cd

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_3b9

    :cond_3cd
    move v3, v2

    move-object v2, v5

    :goto_3cf
    if-gt v3, v4, :cond_3b4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x13

    const-string v2, "2mO\u0013\u001e,w\t\u001eW6eK\u0016[!"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_64b

    move v4, v1

    :cond_3e8
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_3ed
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_76c

    move v7, v10

    :goto_3f5
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_401

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_3ed

    :cond_401
    move v3, v2

    move-object v2, v5

    :goto_403
    if-gt v3, v4, :cond_3e8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x14

    const-string v2, "2mO\u0013\u001e,w\t\u001fP$fE\u0013P\"(\t\rW)h\t\u001eW6eK\u0016[ehH\u000e[7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_648

    move v4, v1

    :cond_41c
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_421
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_778

    move v7, v10

    :goto_429
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_435

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_421

    :cond_435
    move v3, v2

    move-object v2, v5

    :goto_437
    if-gt v3, v4, :cond_41c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x15

    const-string v2, "2a\t\u001eW!j\u000e\u000e\u001e jH\u0018R $^\u0013X,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_645

    move v4, v1

    :cond_450
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_455
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_784

    move v7, v10

    :goto_45d
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_469

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_455

    :cond_469
    move v3, v2

    move-object v2, v5

    :goto_46b
    if-gt v3, v4, :cond_450

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x16

    const-string v2, "evL\u000eL<9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_642

    move v4, v1

    :cond_484
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_489
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_790

    move v7, v10

    :goto_491
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_49d

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_489

    :cond_49d
    move v3, v2

    move-object v2, v5

    :goto_49f
    if-gt v3, v4, :cond_484

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x17

    const-string v2, "0tM\u001bJ W]\u001bJ >\t\u0008[6qE\u000e\u0003"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_63f

    move v4, v1

    :cond_4b8
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4bd
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_79c

    move v7, v10

    :goto_4c5
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_4d1

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4bd

    :cond_4d1
    move v3, v2

    move-object v2, v5

    :goto_4d3
    if-gt v3, v4, :cond_4b8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    sput-object v11, Lcom/c/cg;->h:[Ljava/lang/String;

    const-class v2, Lcom/c/cg;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_4ed

    :goto_4ea
    sput-boolean v0, Lcom/c/cg;->a:Z

    return-void

    :cond_4ed
    move v0, v1

    goto :goto_4ea

    :pswitch_4ef
    const/16 v7, 0x45

    goto/16 :goto_22

    :pswitch_4f3
    move v7, v8

    goto/16 :goto_22

    :pswitch_4f6
    move v7, v9

    goto/16 :goto_22

    :pswitch_4f9
    const/16 v7, 0x7a

    goto/16 :goto_22

    :pswitch_4fd
    const/16 v7, 0x45

    goto/16 :goto_54

    :pswitch_501
    move v7, v8

    goto/16 :goto_54

    :pswitch_504
    move v7, v9

    goto/16 :goto_54

    :pswitch_507
    const/16 v7, 0x7a

    goto/16 :goto_54

    :pswitch_50b
    const/16 v7, 0x45

    goto/16 :goto_87

    :pswitch_50f
    move v7, v8

    goto/16 :goto_87

    :pswitch_512
    move v7, v9

    goto/16 :goto_87

    :pswitch_515
    const/16 v7, 0x7a

    goto/16 :goto_87

    :pswitch_519
    const/16 v7, 0x45

    goto/16 :goto_ba

    :pswitch_51d
    move v7, v8

    goto/16 :goto_ba

    :pswitch_520
    move v7, v9

    goto/16 :goto_ba

    :pswitch_523
    const/16 v7, 0x7a

    goto/16 :goto_ba

    :pswitch_527
    const/16 v7, 0x45

    goto/16 :goto_ec

    :pswitch_52b
    move v7, v8

    goto/16 :goto_ec

    :pswitch_52e
    move v7, v9

    goto/16 :goto_ec

    :pswitch_531
    const/16 v7, 0x7a

    goto/16 :goto_ec

    :pswitch_535
    const/16 v7, 0x45

    goto/16 :goto_11f

    :pswitch_539
    move v7, v8

    goto/16 :goto_11f

    :pswitch_53c
    move v7, v9

    goto/16 :goto_11f

    :pswitch_53f
    const/16 v7, 0x7a

    goto/16 :goto_11f

    :pswitch_543
    const/16 v7, 0x45

    goto/16 :goto_152

    :pswitch_547
    move v7, v8

    goto/16 :goto_152

    :pswitch_54a
    move v7, v9

    goto/16 :goto_152

    :pswitch_54d
    const/16 v7, 0x7a

    goto/16 :goto_152

    :pswitch_551
    const/16 v7, 0x45

    goto/16 :goto_185

    :pswitch_555
    move v7, v8

    goto/16 :goto_185

    :pswitch_558
    move v7, v9

    goto/16 :goto_185

    :pswitch_55b
    const/16 v7, 0x7a

    goto/16 :goto_185

    :pswitch_55f
    const/16 v7, 0x45

    goto/16 :goto_1b9

    :pswitch_563
    move v7, v8

    goto/16 :goto_1b9

    :pswitch_566
    move v7, v9

    goto/16 :goto_1b9

    :pswitch_569
    const/16 v7, 0x7a

    goto/16 :goto_1b9

    :pswitch_56d
    const/16 v7, 0x45

    goto/16 :goto_1ed

    :pswitch_571
    move v7, v8

    goto/16 :goto_1ed

    :pswitch_574
    move v7, v9

    goto/16 :goto_1ed

    :pswitch_577
    const/16 v7, 0x7a

    goto/16 :goto_1ed

    :pswitch_57b
    const/16 v7, 0x45

    goto/16 :goto_221

    :pswitch_57f
    move v7, v8

    goto/16 :goto_221

    :pswitch_582
    move v7, v9

    goto/16 :goto_221

    :pswitch_585
    const/16 v7, 0x7a

    goto/16 :goto_221

    :pswitch_589
    const/16 v7, 0x45

    goto/16 :goto_255

    :pswitch_58d
    move v7, v8

    goto/16 :goto_255

    :pswitch_590
    move v7, v9

    goto/16 :goto_255

    :pswitch_593
    const/16 v7, 0x7a

    goto/16 :goto_255

    :pswitch_597
    const/16 v7, 0x45

    goto/16 :goto_289

    :pswitch_59b
    move v7, v8

    goto/16 :goto_289

    :pswitch_59e
    move v7, v9

    goto/16 :goto_289

    :pswitch_5a1
    const/16 v7, 0x7a

    goto/16 :goto_289

    :pswitch_5a5
    const/16 v7, 0x45

    goto/16 :goto_2bd

    :pswitch_5a9
    move v7, v8

    goto/16 :goto_2bd

    :pswitch_5ac
    move v7, v9

    goto/16 :goto_2bd

    :pswitch_5af
    const/16 v7, 0x7a

    goto/16 :goto_2bd

    :pswitch_5b3
    const/16 v7, 0x45

    goto/16 :goto_2f1

    :pswitch_5b7
    move v7, v8

    goto/16 :goto_2f1

    :pswitch_5ba
    move v7, v9

    goto/16 :goto_2f1

    :pswitch_5bd
    const/16 v7, 0x7a

    goto/16 :goto_2f1

    :pswitch_5c1
    const/16 v7, 0x45

    goto/16 :goto_325

    :pswitch_5c5
    move v7, v8

    goto/16 :goto_325

    :pswitch_5c8
    move v7, v9

    goto/16 :goto_325

    :pswitch_5cb
    const/16 v7, 0x7a

    goto/16 :goto_325

    :pswitch_5cf
    const/16 v7, 0x45

    goto/16 :goto_359

    :pswitch_5d3
    move v7, v8

    goto/16 :goto_359

    :pswitch_5d6
    move v7, v9

    goto/16 :goto_359

    :pswitch_5d9
    const/16 v7, 0x7a

    goto/16 :goto_359

    :pswitch_5dd
    const/16 v7, 0x45

    goto/16 :goto_38d

    :pswitch_5e1
    move v7, v8

    goto/16 :goto_38d

    :pswitch_5e4
    move v7, v9

    goto/16 :goto_38d

    :pswitch_5e7
    const/16 v7, 0x7a

    goto/16 :goto_38d

    :pswitch_5eb
    const/16 v7, 0x45

    goto/16 :goto_3c1

    :pswitch_5ef
    move v7, v8

    goto/16 :goto_3c1

    :pswitch_5f2
    move v7, v9

    goto/16 :goto_3c1

    :pswitch_5f5
    const/16 v7, 0x7a

    goto/16 :goto_3c1

    :pswitch_5f9
    const/16 v7, 0x45

    goto/16 :goto_3f5

    :pswitch_5fd
    move v7, v8

    goto/16 :goto_3f5

    :pswitch_600
    move v7, v9

    goto/16 :goto_3f5

    :pswitch_603
    const/16 v7, 0x7a

    goto/16 :goto_3f5

    :pswitch_607
    const/16 v7, 0x45

    goto/16 :goto_429

    :pswitch_60b
    move v7, v8

    goto/16 :goto_429

    :pswitch_60e
    move v7, v9

    goto/16 :goto_429

    :pswitch_611
    const/16 v7, 0x7a

    goto/16 :goto_429

    :pswitch_615
    const/16 v7, 0x45

    goto/16 :goto_45d

    :pswitch_619
    move v7, v8

    goto/16 :goto_45d

    :pswitch_61c
    move v7, v9

    goto/16 :goto_45d

    :pswitch_61f
    const/16 v7, 0x7a

    goto/16 :goto_45d

    :pswitch_623
    const/16 v7, 0x45

    goto/16 :goto_491

    :pswitch_627
    move v7, v8

    goto/16 :goto_491

    :pswitch_62a
    move v7, v9

    goto/16 :goto_491

    :pswitch_62d
    const/16 v7, 0x7a

    goto/16 :goto_491

    :pswitch_631
    const/16 v7, 0x45

    goto/16 :goto_4c5

    :pswitch_635
    move v7, v8

    goto/16 :goto_4c5

    :pswitch_638
    move v7, v9

    goto/16 :goto_4c5

    :pswitch_63b
    const/16 v7, 0x7a

    goto/16 :goto_4c5

    :cond_63f
    move v4, v1

    goto/16 :goto_4d3

    :cond_642
    move v4, v1

    goto/16 :goto_49f

    :cond_645
    move v4, v1

    goto/16 :goto_46b

    :cond_648
    move v4, v1

    goto/16 :goto_437

    :cond_64b
    move v4, v1

    goto/16 :goto_403

    :cond_64e
    move v4, v1

    goto/16 :goto_3cf

    :cond_651
    move v4, v1

    goto/16 :goto_39b

    :cond_654
    move v4, v1

    goto/16 :goto_367

    :cond_657
    move v4, v1

    goto/16 :goto_333

    :cond_65a
    move v4, v1

    goto/16 :goto_2ff

    :cond_65d
    move v4, v1

    goto/16 :goto_2cb

    :cond_660
    move v4, v1

    goto/16 :goto_297

    :cond_663
    move v4, v1

    goto/16 :goto_263

    :cond_666
    move v4, v1

    goto/16 :goto_22f

    :cond_669
    move v4, v1

    goto/16 :goto_1fb

    :cond_66c
    move v4, v1

    goto/16 :goto_1c7

    :cond_66f
    move v4, v1

    goto/16 :goto_193

    :cond_672
    move v4, v1

    goto/16 :goto_160

    :cond_675
    move v4, v1

    goto/16 :goto_12d

    :cond_678
    move v4, v1

    goto/16 :goto_fa

    :cond_67b
    move v4, v1

    goto/16 :goto_c8

    :cond_67e
    move v4, v1

    goto/16 :goto_95

    :cond_681
    move v4, v1

    goto/16 :goto_62

    :cond_684
    move v4, v1

    goto/16 :goto_30

    nop

    :pswitch_data_688
    .packed-switch 0x0
        :pswitch_4ef
        :pswitch_4f3
        :pswitch_4f6
        :pswitch_4f9
    .end packed-switch

    :pswitch_data_694
    .packed-switch 0x0
        :pswitch_4fd
        :pswitch_501
        :pswitch_504
        :pswitch_507
    .end packed-switch

    :pswitch_data_6a0
    .packed-switch 0x0
        :pswitch_50b
        :pswitch_50f
        :pswitch_512
        :pswitch_515
    .end packed-switch

    :pswitch_data_6ac
    .packed-switch 0x0
        :pswitch_519
        :pswitch_51d
        :pswitch_520
        :pswitch_523
    .end packed-switch

    :pswitch_data_6b8
    .packed-switch 0x0
        :pswitch_527
        :pswitch_52b
        :pswitch_52e
        :pswitch_531
    .end packed-switch

    :pswitch_data_6c4
    .packed-switch 0x0
        :pswitch_535
        :pswitch_539
        :pswitch_53c
        :pswitch_53f
    .end packed-switch

    :pswitch_data_6d0
    .packed-switch 0x0
        :pswitch_543
        :pswitch_547
        :pswitch_54a
        :pswitch_54d
    .end packed-switch

    :pswitch_data_6dc
    .packed-switch 0x0
        :pswitch_551
        :pswitch_555
        :pswitch_558
        :pswitch_55b
    .end packed-switch

    :pswitch_data_6e8
    .packed-switch 0x0
        :pswitch_55f
        :pswitch_563
        :pswitch_566
        :pswitch_569
    .end packed-switch

    :pswitch_data_6f4
    .packed-switch 0x0
        :pswitch_56d
        :pswitch_571
        :pswitch_574
        :pswitch_577
    .end packed-switch

    :pswitch_data_700
    .packed-switch 0x0
        :pswitch_57b
        :pswitch_57f
        :pswitch_582
        :pswitch_585
    .end packed-switch

    :pswitch_data_70c
    .packed-switch 0x0
        :pswitch_589
        :pswitch_58d
        :pswitch_590
        :pswitch_593
    .end packed-switch

    :pswitch_data_718
    .packed-switch 0x0
        :pswitch_597
        :pswitch_59b
        :pswitch_59e
        :pswitch_5a1
    .end packed-switch

    :pswitch_data_724
    .packed-switch 0x0
        :pswitch_5a5
        :pswitch_5a9
        :pswitch_5ac
        :pswitch_5af
    .end packed-switch

    :pswitch_data_730
    .packed-switch 0x0
        :pswitch_5b3
        :pswitch_5b7
        :pswitch_5ba
        :pswitch_5bd
    .end packed-switch

    :pswitch_data_73c
    .packed-switch 0x0
        :pswitch_5c1
        :pswitch_5c5
        :pswitch_5c8
        :pswitch_5cb
    .end packed-switch

    :pswitch_data_748
    .packed-switch 0x0
        :pswitch_5cf
        :pswitch_5d3
        :pswitch_5d6
        :pswitch_5d9
    .end packed-switch

    :pswitch_data_754
    .packed-switch 0x0
        :pswitch_5dd
        :pswitch_5e1
        :pswitch_5e4
        :pswitch_5e7
    .end packed-switch

    :pswitch_data_760
    .packed-switch 0x0
        :pswitch_5eb
        :pswitch_5ef
        :pswitch_5f2
        :pswitch_5f5
    .end packed-switch

    :pswitch_data_76c
    .packed-switch 0x0
        :pswitch_5f9
        :pswitch_5fd
        :pswitch_600
        :pswitch_603
    .end packed-switch

    :pswitch_data_778
    .packed-switch 0x0
        :pswitch_607
        :pswitch_60b
        :pswitch_60e
        :pswitch_611
    .end packed-switch

    :pswitch_data_784
    .packed-switch 0x0
        :pswitch_615
        :pswitch_619
        :pswitch_61c
        :pswitch_61f
    .end packed-switch

    :pswitch_data_790
    .packed-switch 0x0
        :pswitch_623
        :pswitch_627
        :pswitch_62a
        :pswitch_62d
    .end packed-switch

    :pswitch_data_79c
    .packed-switch 0x0
        :pswitch_631
        :pswitch_635
        :pswitch_638
        :pswitch_63b
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/c/cg;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    return-void
.end method

.method static synthetic a(Lcom/c/cg;)I
    .registers 2

    iget v0, p0, Lcom/c/cg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/c/cg;->d:I

    return v0
.end method

.method private a()Lcom/c/bk;
    .registers 7

    const/4 v5, 0x0

    sget v1, Lcom/c/bq;->a:I

    iget-boolean v0, p0, Lcom/c/cg;->e:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bk;->a:Lcom/c/bk;

    :goto_14
    return-object v0

    :cond_15
    iget v0, p0, Lcom/c/cg;->c:I

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bk;->a:Lcom/c/bk;

    goto :goto_14

    :cond_27
    iget-object v0, p0, Lcom/c/cg;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    :cond_30
    :goto_30
    iput-boolean v5, p0, Lcom/c/cg;->e:Z

    sget-object v0, Lcom/c/bk;->a:Lcom/c/bk;

    goto :goto_14

    :pswitch_35
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :try_start_40
    iget-object v0, p0, Lcom/c/cg;->g:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_46} :catch_47

    goto :goto_30

    :catch_47
    move-exception v0

    iget-object v2, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v3, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_30

    :pswitch_55
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bk;->b:Lcom/c/bk;

    goto :goto_14

    :pswitch_63
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_30

    :pswitch_70
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto :goto_30

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_63
        :pswitch_55
        :pswitch_35
    .end packed-switch
.end method

.method private declared-synchronized a(Landroid/net/wifi/WifiManager;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/c/a/ci;->b()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3e

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iput-object p1, p0, Lcom/c/cg;->g:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_30

    iget v0, p0, Lcom/c/cg;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/c/cg;->c:I

    if-nez v0, :cond_26

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/cg;->f:Z

    sget v0, Lcom/c/bq;->a:I

    if-eqz v0, :cond_30

    :cond_26
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_30
    sget-boolean v0, Lcom/c/cg;->a:Z

    if-nez v0, :cond_41

    iget v0, p0, Lcom/c/cg;->c:I

    if-gtz v0, :cond_41

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_41
    :try_start_41
    invoke-direct {p0, p2}, Lcom/c/cg;->a(Z)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    goto :goto_11
.end method

.method static synthetic a(Lcom/c/cg;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/c/cg;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 7

    iget v0, p0, Lcom/c/cg;->c:I

    if-lez v0, :cond_49

    invoke-direct {p0}, Lcom/c/cg;->b()Lcom/c/bk;

    move-result-object v0

    :goto_8
    iget-object v1, p0, Lcom/c/cg;->b:Lcom/c/bp;

    invoke-virtual {v1}, Lcom/c/bp;->b()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/c/cg;->b:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_3a
    sget-object v1, Lcom/c/bk;->a:Lcom/c/bk;

    if-eq v0, v1, :cond_48

    if-eqz p1, :cond_48

    sget-object v1, Lcom/c/bk;->b:Lcom/c/bk;

    if-ne v0, v1, :cond_4e

    const/4 v0, 0x1

    :goto_45
    invoke-direct {p0, v0}, Lcom/c/cg;->b(Z)V

    :cond_48
    return-void

    :cond_49
    invoke-direct {p0}, Lcom/c/cg;->a()Lcom/c/bk;

    move-result-object v0

    goto :goto_8

    :cond_4e
    const/4 v0, 0x0

    goto :goto_45
.end method

.method private b()Lcom/c/bk;
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget v0, Lcom/c/bq;->a:I

    iget-boolean v1, p0, Lcom/c/cg;->f:Z

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bk;->a:Lcom/c/bk;

    :goto_15
    return-object v0

    :cond_16
    iget v1, p0, Lcom/c/cg;->c:I

    if-ge v1, v4, :cond_27

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bk;->a:Lcom/c/bk;

    goto :goto_15

    :cond_27
    iget-object v1, p0, Lcom/c/cg;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    packed-switch v1, :pswitch_data_8e

    :cond_30
    sget-object v0, Lcom/c/bk;->a:Lcom/c/bk;

    goto :goto_15

    :pswitch_33
    iget-object v1, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/c/cg;->f:Z

    if-eqz v0, :cond_30

    :pswitch_42
    iget-object v1, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/c/cg;->f:Z

    if-eqz v0, :cond_30

    :pswitch_51
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :try_start_5c
    iget-object v0, p0, Lcom/c/cg;->g:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/cg;->f:Z

    iput-boolean v0, p0, Lcom/c/cg;->e:Z
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_67} :catch_6e

    :goto_67
    iget-boolean v0, p0, Lcom/c/cg;->e:Z

    if-nez v0, :cond_30

    sget-object v0, Lcom/c/bk;->c:Lcom/c/bk;

    goto :goto_15

    :catch_6e
    move-exception v0

    iget-object v1, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v2, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v5, p0, Lcom/c/cg;->e:Z

    goto :goto_67

    :pswitch_7d
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/c/cg;->e:Z

    sget-object v0, Lcom/c/bk;->b:Lcom/c/bk;

    goto :goto_15

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_51
        :pswitch_42
        :pswitch_33
    .end packed-switch
.end method

.method private b(Z)V
    .registers 5

    iget v0, p0, Lcom/c/cg;->d:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/c/ck;

    invoke-direct {v0, p0, p1}, Lcom/c/ck;-><init>(Lcom/c/cg;Z)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/c/cq;->a(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/c/cg;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/c/cg;->d:I

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method public a(Landroid/net/wifi/WifiManager;)V
    .registers 5

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/c/cg;->a(Landroid/net/wifi/WifiManager;Z)V

    return-void
.end method

.method public b(Landroid/net/wifi/WifiManager;)V
    .registers 5

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/cg;->a(Landroid/net/wifi/WifiManager;Z)V

    return-void
.end method

.method public declared-synchronized c(Landroid/net/wifi/WifiManager;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/c/a/ci;->b()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2d

    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    iput-object p1, p0, Lcom/c/cg;->g:Landroid/net/wifi/WifiManager;

    sget-boolean v0, Lcom/c/cg;->a:Z

    if-nez v0, :cond_30

    iget v0, p0, Lcom/c/cg;->c:I

    if-gtz v0, :cond_30

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_30
    :try_start_30
    iget v0, p0, Lcom/c/cg;->c:I

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/c/cg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/c/cg;->c:I

    if-nez v0, :cond_44

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/c/cg;->b(Z)V

    sget v0, Lcom/c/bq;->a:I

    if-eqz v0, :cond_1b

    :cond_44
    iget-object v0, p0, Lcom/c/cg;->b:Lcom/c/bp;

    sget-object v1, Lcom/c/cg;->h:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_2d

    goto :goto_1b
.end method
