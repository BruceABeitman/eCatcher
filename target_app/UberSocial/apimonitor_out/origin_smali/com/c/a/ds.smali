.class Lcom/c/a/ds;
.super Ljava/lang/Object;


# static fields
.field static final a:J

.field static final synthetic b:Z

.field private static final f:J

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/c/bp;

.field private final d:Lcom/c/a/ch;

.field private final e:Lcom/c/a/dm;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v9, 0x7b

    const/16 v8, 0x61

    const/16 v10, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x18

    new-array v11, v2, [Ljava/lang/String;

    const-string v2, "A\u0012`\u0008\u0011A\u001c|\u0013\u000b\u0011["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_690

    move v4, v1

    :cond_16
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1b
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_694

    const/16 v7, 0x7e

    :goto_24
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_30

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1b

    :cond_30
    move v3, v2

    move-object v2, v5

    :goto_32
    if-gt v3, v4, :cond_16

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v2, "\u0002\u0014b\u0010\u001f\u0011\u0008g\u0012\u0019A\rg\u000e\n\u0014\u001ab\\?1["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_68d

    move v4, v1

    :cond_49
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4e
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6a0

    const/16 v7, 0x7e

    :goto_57
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_63

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4e

    :cond_63
    move v3, v2

    move-object v2, v5

    :goto_65
    if-gt v3, v4, :cond_49

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    const/4 v12, 0x2

    const-string v2, "\u0013\u001ay\\)1(.\u0010\u0011\u0002\u001az\u0015\u0011\u000fA."

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_68a

    move v4, v1

    :cond_7d
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_82
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6ac

    const/16 v7, 0x7e

    :goto_8b
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_97

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_82

    :cond_97
    move v3, v2

    move-object v2, v5

    :goto_99
    if-gt v3, v4, :cond_7d

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    const-string v2, "\u0015\u0013k\\\u001f\u0006\u001e.\u0013\u0018A\u0008o\u0011\u000e\r\u001e}\\\u0017\u0012[z\u0013\u0011A\u0008c\u001d\u0012\r[&"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_687

    move v4, v1

    :cond_b1
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b6
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6b8

    const/16 v7, 0x7e

    :goto_bf
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_cb

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b6

    :cond_cb
    move v3, v2

    move-object v2, v5

    :goto_cd
    if-gt v3, v4, :cond_b1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x4

    const-string v2, "\u000f\u0014z\\\u001b\u000f\u0014{\u001b\u0016A\u0008o\u0011\u000e\r\u001e}\\V"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_684

    move v4, v1

    :cond_e5
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_ea
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6c4

    const/16 v7, 0x7e

    :goto_f3
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_ff

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_ea

    :cond_ff
    move v3, v2

    move-object v2, v5

    :goto_101
    if-gt v3, v4, :cond_e5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x5

    const-string v2, "A\r}\\"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_681

    move v4, v1

    :cond_119
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_11e
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6d0

    const/16 v7, 0x7e

    :goto_127
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_133

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_11e

    :cond_133
    move v3, v2

    move-object v2, v5

    :goto_135
    if-gt v3, v4, :cond_119

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x6

    const-string v2, "A\u001a}\\\u001d\u0004\u0015z\u0019\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_67e

    move v4, v1

    :cond_14d
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_152
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6dc

    const/16 v7, 0x7e

    :goto_15b
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_167

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_152

    :cond_167
    move v3, v2

    move-object v2, v5

    :goto_169
    if-gt v3, v4, :cond_14d

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/4 v12, 0x7

    const-string v2, "A\u001a~\u000f^\u0003\u0002.\u001d\u001a\u0000\u000bz\u0015\u0008\u0004[j\u0015\r\u0015\u001a`\u001f\u001bA\u000e}\u0015\u0010\u0006["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_67b

    move v4, v1

    :cond_181
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_186
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6e8

    const/16 v7, 0x7e

    :goto_18f
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_19b

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_186

    :cond_19b
    move v3, v2

    move-object v2, v5

    :goto_19d
    if-gt v3, v4, :cond_181

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x8

    const-string v2, "A\u0014h\\"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_678

    move v4, v1

    :cond_1b6
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1bb
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_6f4

    const/16 v7, 0x7e

    :goto_1c4
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_1d0

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1bb

    :cond_1d0
    move v3, v2

    move-object v2, v5

    :goto_1d2
    if-gt v3, v4, :cond_1b6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x9

    const-string v2, "\u0007\u0012b\u0008\u001b\u0013\u001ej\\"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_675

    move v4, v1

    :cond_1eb
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_1f0
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_700

    const/16 v7, 0x7e

    :goto_1f9
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_205

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_1f0

    :cond_205
    move v3, v2

    move-object v2, v5

    :goto_207
    if-gt v3, v4, :cond_1eb

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xa

    const-string v2, "\u000f\u0014.\u001f\u0012\u0014\u0008z\u0019\u000cA\u001da\t\u0010\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_672

    move v4, v1

    :cond_220
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_225
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_70c

    const/16 v7, 0x7e

    :goto_22e
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_23a

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_225

    :cond_23a
    move v3, v2

    move-object v2, v5

    :goto_23c
    if-gt v3, v4, :cond_220

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xb

    const-string v2, "A\u001a~\u000f^\u0003\u0002.\u000e\u0011\u0014\u001cf\\\u001a\u0008\u0008z\u001d\u0010\u0002\u001e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_66f

    move v4, v1

    :cond_255
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_25a
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_718

    const/16 v7, 0x7e

    :goto_263
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_26f

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_25a

    :cond_26f
    move v3, v2

    move-object v2, v5

    :goto_271
    if-gt v3, v4, :cond_255

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xc

    const-string v2, "\u000f\u0014.\u001f\u0012\u0014\u0008z\u0019\u000cA\u001da\t\u0010\u0005[&N^\u0000\u000b}\\\u0018\u0000\t.\u001d\u000e\u0000\tzP^\u000f\u0014.\u0014\u0017\u0012\u000fa\u000e\u0007H"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_66c

    move v4, v1

    :cond_28a
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_28f
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_724

    const/16 v7, 0x7e

    :goto_298
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2a4

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_28f

    :cond_2a4
    move v3, v2

    move-object v2, v5

    :goto_2a6
    if-gt v3, v4, :cond_28a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0xd

    const-string v2, "\u000f\u0014.\u001f\u0012\u0014\u0008z\u0019\u000cA\u001da\t\u0010\u0005[&O^\u0000\u000b}\\\u0011\u0013[c\u0013\u000c\u0004[o\u0010\u0012A\u001do\u000e^\u0000\u000bo\u000e\nH"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_669

    move v4, v1

    :cond_2bf
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_2c4
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_730

    const/16 v7, 0x7e

    :goto_2cd
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2d9

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_2c4

    :cond_2d9
    move v3, v2

    move-object v2, v5

    :goto_2db
    if-gt v3, v4, :cond_2bf

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const-string v2, "\u0007\u0014{\u0012\u001aA\u001a.\u000f\u0017\u000f\u001cb\u0019^\u0000\u000b.\u001f\u0012\u0014\u0008z\u0019\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_666

    move v4, v1

    :cond_2f2
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_2f7
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_73c

    const/16 v7, 0x7e

    :goto_300
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_30c

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_2f7

    :cond_30c
    move v3, v2

    move-object v2, v5

    :goto_30e
    if-gt v3, v4, :cond_2f2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v10

    const/16 v12, 0xf

    const-string v2, "\u0014\u0008g\u0012\u0019A\u0013g\u000f\n\u000e\tw\\\u0017\u000f[o\\LL\u001a~\\\u001d\r\u000e}\u0008\u001b\u0013"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_663

    move v4, v1

    :cond_327
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_32c
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_748

    const/16 v7, 0x7e

    :goto_335
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_341

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_32c

    :cond_341
    move v3, v2

    move-object v2, v5

    :goto_343
    if-gt v3, v4, :cond_327

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x10

    const-string v2, "\u0007\u0014{\u0012\u001aA\u001a.NS\u0000\u000b.\u001f\u0012\u0014\u0008z\u0019\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_660

    move v4, v1

    :cond_35c
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_361
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_754

    const/16 v7, 0x7e

    :goto_36a
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_376

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_361

    :cond_376
    move v3, v2

    move-object v2, v5

    :goto_378
    if-gt v3, v4, :cond_35c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x11

    const-string v2, "\u0014\u0008g\u0012\u0019A\u0013g\u000f\n\u000e\tw\\\u0017\u000f[o\\OL\u001a~\\\u001d\r\u000e}\u0008\u001b\u0013"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_65d

    move v4, v1

    :cond_391
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_396
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_760

    const/16 v7, 0x7e

    :goto_39f
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_3ab

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_396

    :cond_3ab
    move v3, v2

    move-object v2, v5

    :goto_3ad
    if-gt v3, v4, :cond_391

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x12

    const-string v2, "\u000f\u0014.=.\u0012[z\u0013^\u0002\u0017{\u000f\n\u0004\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_65a

    move v4, v1

    :cond_3c6
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_3cb
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_76c

    const/16 v7, 0x7e

    :goto_3d4
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_3e0

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_3cb

    :cond_3e0
    move v3, v2

    move-object v2, v5

    :goto_3e2
    if-gt v3, v4, :cond_3c6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x13

    const-string v2, "\u0014\u0008g\u0012\u0019A\u0016k\u0018\u0017\u0000\u0015.\u0015\u0010A\u001a.\u001f\u0012\u0014\u0008z\u0019\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_657

    move v4, v1

    :cond_3fb
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_400
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_778

    const/16 v7, 0x7e

    :goto_409
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_415

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_400

    :cond_415
    move v3, v2

    move-object v2, v5

    :goto_417
    if-gt v3, v4, :cond_3fb

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x14

    const-string v2, "A\u001a~\u000f^\u0007\u0014|\\\u0013\u0004\u001fg\u001d\u0010"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_654

    move v4, v1

    :cond_430
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_435
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_784

    const/16 v7, 0x7e

    :goto_43e
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_44a

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_435

    :cond_44a
    move v3, v2

    move-object v2, v5

    :goto_44c
    if-gt v3, v4, :cond_430

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x15

    const-string v2, "\u0002\u0014`\u000f\u0017\u0005\u001e|\u0015\u0010\u0006["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_651

    move v4, v1

    :cond_465
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_46a
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_790

    const/16 v7, 0x7e

    :goto_473
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_47f

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_46a

    :cond_47f
    move v3, v2

    move-object v2, v5

    :goto_481
    if-gt v3, v4, :cond_465

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x16

    const-string v2, "\u0014\u0008g\u0012\u0019A\u0017a\u001f\u001f\r[f\u0015\r\u0015\u0014|\u0005^\u0000\u0008.\u001f\u001b\u000f\u000fk\u000e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_64e

    move v4, v1

    :cond_49a
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_49f
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_79c

    const/16 v7, 0x7e

    :goto_4a8
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_4b4

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_49f

    :cond_4b4
    move v3, v2

    move-object v2, v5

    :goto_4b6
    if-gt v3, v4, :cond_49a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x17

    const-string v2, "\u0014\u0008g\u0012\u0019A\tk\u0011\u0011\u0015\u001e.\u001d\rA\u0018k\u0012\n\u0004\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_64b

    move v4, v1

    :cond_4cf
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_4d4
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_7a8

    const/16 v7, 0x7e

    :goto_4dd
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_4e9

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_4d4

    :cond_4e9
    move v3, v2

    move-object v2, v5

    :goto_4eb
    if-gt v3, v4, :cond_4cf

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    sput-object v11, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const-class v2, Lcom/c/a/ds;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_511

    :goto_502
    sput-boolean v0, Lcom/c/a/ds;->b:Z

    invoke-static {}, Lcom/c/a/ci;->h()J

    move-result-wide v0

    sput-wide v0, Lcom/c/a/ds;->a:J

    invoke-static {}, Lcom/c/a/ci;->j()J

    move-result-wide v0

    sput-wide v0, Lcom/c/a/ds;->f:J

    return-void

    :cond_511
    move v0, v1

    goto :goto_502

    :pswitch_513
    move v7, v8

    goto/16 :goto_24

    :pswitch_516
    move v7, v9

    goto/16 :goto_24

    :pswitch_519
    move v7, v10

    goto/16 :goto_24

    :pswitch_51c
    const/16 v7, 0x7c

    goto/16 :goto_24

    :pswitch_520
    move v7, v8

    goto/16 :goto_57

    :pswitch_523
    move v7, v9

    goto/16 :goto_57

    :pswitch_526
    move v7, v10

    goto/16 :goto_57

    :pswitch_529
    const/16 v7, 0x7c

    goto/16 :goto_57

    :pswitch_52d
    move v7, v8

    goto/16 :goto_8b

    :pswitch_530
    move v7, v9

    goto/16 :goto_8b

    :pswitch_533
    move v7, v10

    goto/16 :goto_8b

    :pswitch_536
    const/16 v7, 0x7c

    goto/16 :goto_8b

    :pswitch_53a
    move v7, v8

    goto/16 :goto_bf

    :pswitch_53d
    move v7, v9

    goto/16 :goto_bf

    :pswitch_540
    move v7, v10

    goto/16 :goto_bf

    :pswitch_543
    const/16 v7, 0x7c

    goto/16 :goto_bf

    :pswitch_547
    move v7, v8

    goto/16 :goto_f3

    :pswitch_54a
    move v7, v9

    goto/16 :goto_f3

    :pswitch_54d
    move v7, v10

    goto/16 :goto_f3

    :pswitch_550
    const/16 v7, 0x7c

    goto/16 :goto_f3

    :pswitch_554
    move v7, v8

    goto/16 :goto_127

    :pswitch_557
    move v7, v9

    goto/16 :goto_127

    :pswitch_55a
    move v7, v10

    goto/16 :goto_127

    :pswitch_55d
    const/16 v7, 0x7c

    goto/16 :goto_127

    :pswitch_561
    move v7, v8

    goto/16 :goto_15b

    :pswitch_564
    move v7, v9

    goto/16 :goto_15b

    :pswitch_567
    move v7, v10

    goto/16 :goto_15b

    :pswitch_56a
    const/16 v7, 0x7c

    goto/16 :goto_15b

    :pswitch_56e
    move v7, v8

    goto/16 :goto_18f

    :pswitch_571
    move v7, v9

    goto/16 :goto_18f

    :pswitch_574
    move v7, v10

    goto/16 :goto_18f

    :pswitch_577
    const/16 v7, 0x7c

    goto/16 :goto_18f

    :pswitch_57b
    move v7, v8

    goto/16 :goto_1c4

    :pswitch_57e
    move v7, v9

    goto/16 :goto_1c4

    :pswitch_581
    move v7, v10

    goto/16 :goto_1c4

    :pswitch_584
    const/16 v7, 0x7c

    goto/16 :goto_1c4

    :pswitch_588
    move v7, v8

    goto/16 :goto_1f9

    :pswitch_58b
    move v7, v9

    goto/16 :goto_1f9

    :pswitch_58e
    move v7, v10

    goto/16 :goto_1f9

    :pswitch_591
    const/16 v7, 0x7c

    goto/16 :goto_1f9

    :pswitch_595
    move v7, v8

    goto/16 :goto_22e

    :pswitch_598
    move v7, v9

    goto/16 :goto_22e

    :pswitch_59b
    move v7, v10

    goto/16 :goto_22e

    :pswitch_59e
    const/16 v7, 0x7c

    goto/16 :goto_22e

    :pswitch_5a2
    move v7, v8

    goto/16 :goto_263

    :pswitch_5a5
    move v7, v9

    goto/16 :goto_263

    :pswitch_5a8
    move v7, v10

    goto/16 :goto_263

    :pswitch_5ab
    const/16 v7, 0x7c

    goto/16 :goto_263

    :pswitch_5af
    move v7, v8

    goto/16 :goto_298

    :pswitch_5b2
    move v7, v9

    goto/16 :goto_298

    :pswitch_5b5
    move v7, v10

    goto/16 :goto_298

    :pswitch_5b8
    const/16 v7, 0x7c

    goto/16 :goto_298

    :pswitch_5bc
    move v7, v8

    goto/16 :goto_2cd

    :pswitch_5bf
    move v7, v9

    goto/16 :goto_2cd

    :pswitch_5c2
    move v7, v10

    goto/16 :goto_2cd

    :pswitch_5c5
    const/16 v7, 0x7c

    goto/16 :goto_2cd

    :pswitch_5c9
    move v7, v8

    goto/16 :goto_300

    :pswitch_5cc
    move v7, v9

    goto/16 :goto_300

    :pswitch_5cf
    move v7, v10

    goto/16 :goto_300

    :pswitch_5d2
    const/16 v7, 0x7c

    goto/16 :goto_300

    :pswitch_5d6
    move v7, v8

    goto/16 :goto_335

    :pswitch_5d9
    move v7, v9

    goto/16 :goto_335

    :pswitch_5dc
    move v7, v10

    goto/16 :goto_335

    :pswitch_5df
    const/16 v7, 0x7c

    goto/16 :goto_335

    :pswitch_5e3
    move v7, v8

    goto/16 :goto_36a

    :pswitch_5e6
    move v7, v9

    goto/16 :goto_36a

    :pswitch_5e9
    move v7, v10

    goto/16 :goto_36a

    :pswitch_5ec
    const/16 v7, 0x7c

    goto/16 :goto_36a

    :pswitch_5f0
    move v7, v8

    goto/16 :goto_39f

    :pswitch_5f3
    move v7, v9

    goto/16 :goto_39f

    :pswitch_5f6
    move v7, v10

    goto/16 :goto_39f

    :pswitch_5f9
    const/16 v7, 0x7c

    goto/16 :goto_39f

    :pswitch_5fd
    move v7, v8

    goto/16 :goto_3d4

    :pswitch_600
    move v7, v9

    goto/16 :goto_3d4

    :pswitch_603
    move v7, v10

    goto/16 :goto_3d4

    :pswitch_606
    const/16 v7, 0x7c

    goto/16 :goto_3d4

    :pswitch_60a
    move v7, v8

    goto/16 :goto_409

    :pswitch_60d
    move v7, v9

    goto/16 :goto_409

    :pswitch_610
    move v7, v10

    goto/16 :goto_409

    :pswitch_613
    const/16 v7, 0x7c

    goto/16 :goto_409

    :pswitch_617
    move v7, v8

    goto/16 :goto_43e

    :pswitch_61a
    move v7, v9

    goto/16 :goto_43e

    :pswitch_61d
    move v7, v10

    goto/16 :goto_43e

    :pswitch_620
    const/16 v7, 0x7c

    goto/16 :goto_43e

    :pswitch_624
    move v7, v8

    goto/16 :goto_473

    :pswitch_627
    move v7, v9

    goto/16 :goto_473

    :pswitch_62a
    move v7, v10

    goto/16 :goto_473

    :pswitch_62d
    const/16 v7, 0x7c

    goto/16 :goto_473

    :pswitch_631
    move v7, v8

    goto/16 :goto_4a8

    :pswitch_634
    move v7, v9

    goto/16 :goto_4a8

    :pswitch_637
    move v7, v10

    goto/16 :goto_4a8

    :pswitch_63a
    const/16 v7, 0x7c

    goto/16 :goto_4a8

    :pswitch_63e
    move v7, v8

    goto/16 :goto_4dd

    :pswitch_641
    move v7, v9

    goto/16 :goto_4dd

    :pswitch_644
    move v7, v10

    goto/16 :goto_4dd

    :pswitch_647
    const/16 v7, 0x7c

    goto/16 :goto_4dd

    :cond_64b
    move v4, v1

    goto/16 :goto_4eb

    :cond_64e
    move v4, v1

    goto/16 :goto_4b6

    :cond_651
    move v4, v1

    goto/16 :goto_481

    :cond_654
    move v4, v1

    goto/16 :goto_44c

    :cond_657
    move v4, v1

    goto/16 :goto_417

    :cond_65a
    move v4, v1

    goto/16 :goto_3e2

    :cond_65d
    move v4, v1

    goto/16 :goto_3ad

    :cond_660
    move v4, v1

    goto/16 :goto_378

    :cond_663
    move v4, v1

    goto/16 :goto_343

    :cond_666
    move v4, v1

    goto/16 :goto_30e

    :cond_669
    move v4, v1

    goto/16 :goto_2db

    :cond_66c
    move v4, v1

    goto/16 :goto_2a6

    :cond_66f
    move v4, v1

    goto/16 :goto_271

    :cond_672
    move v4, v1

    goto/16 :goto_23c

    :cond_675
    move v4, v1

    goto/16 :goto_207

    :cond_678
    move v4, v1

    goto/16 :goto_1d2

    :cond_67b
    move v4, v1

    goto/16 :goto_19d

    :cond_67e
    move v4, v1

    goto/16 :goto_169

    :cond_681
    move v4, v1

    goto/16 :goto_135

    :cond_684
    move v4, v1

    goto/16 :goto_101

    :cond_687
    move v4, v1

    goto/16 :goto_cd

    :cond_68a
    move v4, v1

    goto/16 :goto_99

    :cond_68d
    move v4, v1

    goto/16 :goto_65

    :cond_690
    move v4, v1

    goto/16 :goto_32

    nop

    :pswitch_data_694
    .packed-switch 0x0
        :pswitch_513
        :pswitch_516
        :pswitch_519
        :pswitch_51c
    .end packed-switch

    :pswitch_data_6a0
    .packed-switch 0x0
        :pswitch_520
        :pswitch_523
        :pswitch_526
        :pswitch_529
    .end packed-switch

    :pswitch_data_6ac
    .packed-switch 0x0
        :pswitch_52d
        :pswitch_530
        :pswitch_533
        :pswitch_536
    .end packed-switch

    :pswitch_data_6b8
    .packed-switch 0x0
        :pswitch_53a
        :pswitch_53d
        :pswitch_540
        :pswitch_543
    .end packed-switch

    :pswitch_data_6c4
    .packed-switch 0x0
        :pswitch_547
        :pswitch_54a
        :pswitch_54d
        :pswitch_550
    .end packed-switch

    :pswitch_data_6d0
    .packed-switch 0x0
        :pswitch_554
        :pswitch_557
        :pswitch_55a
        :pswitch_55d
    .end packed-switch

    :pswitch_data_6dc
    .packed-switch 0x0
        :pswitch_561
        :pswitch_564
        :pswitch_567
        :pswitch_56a
    .end packed-switch

    :pswitch_data_6e8
    .packed-switch 0x0
        :pswitch_56e
        :pswitch_571
        :pswitch_574
        :pswitch_577
    .end packed-switch

    :pswitch_data_6f4
    .packed-switch 0x0
        :pswitch_57b
        :pswitch_57e
        :pswitch_581
        :pswitch_584
    .end packed-switch

    :pswitch_data_700
    .packed-switch 0x0
        :pswitch_588
        :pswitch_58b
        :pswitch_58e
        :pswitch_591
    .end packed-switch

    :pswitch_data_70c
    .packed-switch 0x0
        :pswitch_595
        :pswitch_598
        :pswitch_59b
        :pswitch_59e
    .end packed-switch

    :pswitch_data_718
    .packed-switch 0x0
        :pswitch_5a2
        :pswitch_5a5
        :pswitch_5a8
        :pswitch_5ab
    .end packed-switch

    :pswitch_data_724
    .packed-switch 0x0
        :pswitch_5af
        :pswitch_5b2
        :pswitch_5b5
        :pswitch_5b8
    .end packed-switch

    :pswitch_data_730
    .packed-switch 0x0
        :pswitch_5bc
        :pswitch_5bf
        :pswitch_5c2
        :pswitch_5c5
    .end packed-switch

    :pswitch_data_73c
    .packed-switch 0x0
        :pswitch_5c9
        :pswitch_5cc
        :pswitch_5cf
        :pswitch_5d2
    .end packed-switch

    :pswitch_data_748
    .packed-switch 0x0
        :pswitch_5d6
        :pswitch_5d9
        :pswitch_5dc
        :pswitch_5df
    .end packed-switch

    :pswitch_data_754
    .packed-switch 0x0
        :pswitch_5e3
        :pswitch_5e6
        :pswitch_5e9
        :pswitch_5ec
    .end packed-switch

    :pswitch_data_760
    .packed-switch 0x0
        :pswitch_5f0
        :pswitch_5f3
        :pswitch_5f6
        :pswitch_5f9
    .end packed-switch

    :pswitch_data_76c
    .packed-switch 0x0
        :pswitch_5fd
        :pswitch_600
        :pswitch_603
        :pswitch_606
    .end packed-switch

    :pswitch_data_778
    .packed-switch 0x0
        :pswitch_60a
        :pswitch_60d
        :pswitch_610
        :pswitch_613
    .end packed-switch

    :pswitch_data_784
    .packed-switch 0x0
        :pswitch_617
        :pswitch_61a
        :pswitch_61d
        :pswitch_620
    .end packed-switch

    :pswitch_data_790
    .packed-switch 0x0
        :pswitch_624
        :pswitch_627
        :pswitch_62a
        :pswitch_62d
    .end packed-switch

    :pswitch_data_79c
    .packed-switch 0x0
        :pswitch_631
        :pswitch_634
        :pswitch_637
        :pswitch_63a
    .end packed-switch

    :pswitch_data_7a8
    .packed-switch 0x0
        :pswitch_63e
        :pswitch_641
        :pswitch_644
        :pswitch_647
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/a/ch;Lcom/c/a/dm;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/c/a/ds;

    invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    iput-object p1, p0, Lcom/c/a/ds;->d:Lcom/c/a/ch;

    iput-object p2, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    return-void
.end method

.method private static a(Lcom/c/a/d;Lcom/c/a/d;)D
    .registers 8

    invoke-virtual {p0}, Lcom/c/a/d;->c()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/c/a/d;->c()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/c/a/d;->d()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/c/a/d;->d()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/c/bu;Lcom/c/a/cc;Z)D
    .registers 13

    const-wide/high16 v7, 0x4032

    const-wide v0, 0x3fd999999999999aL

    invoke-virtual {p2}, Lcom/c/a/cc;->h()D

    move-result-wide v2

    if-eqz p3, :cond_1d

    invoke-virtual {p1}, Lcom/c/bu;->c()I

    move-result v0

    const-wide/high16 v4, 0x4024

    int-to-double v0, v0

    const-wide/high16 v6, 0x4044

    div-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v2

    :cond_1c
    :goto_1c
    return-wide v0

    :cond_1d
    invoke-virtual {p2}, Lcom/c/a/cc;->a()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v6, v4, v7

    if-lez v6, :cond_2d

    cmpg-double v6, v2, v0

    if-gtz v6, :cond_2d

    const-wide/high16 v0, 0x4018

    goto :goto_1c

    :cond_2d
    cmpl-double v4, v4, v7

    if-nez v4, :cond_37

    const-wide/high16 v4, 0x3fe0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1c

    :cond_37
    const-wide/high16 v0, 0x3ff0

    goto :goto_1c
.end method

.method private a(Ljava/util/List;Ljava/util/List;Lcom/c/ba;)I
    .registers 23

    sget-boolean v6, Lcom/c/a/d;->h_:Z

    sget-boolean v2, Lcom/c/a/ds;->b:Z

    if-nez v2, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_12
    sget-boolean v2, Lcom/c/a/ds;->b:Z

    if-nez v2, :cond_28

    sget-object v2, Lcom/c/bi;->a:Ljava/util/Comparator;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/c/br;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_28
    const/16 v2, -0xff

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/bu;

    invoke-virtual {v2}, Lcom/c/bu;->c()I

    move-result v5

    if-le v5, v3, :cond_12a

    invoke-virtual {v2}, Lcom/c/bu;->c()I

    move-result v2

    :goto_45
    if-eqz v6, :cond_127

    move v3, v2

    :cond_48
    const-wide/high16 v4, 0x3fe0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_58
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_88

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/a/cc;

    invoke-virtual {v2}, Lcom/c/a/cc;->h()D

    move-result-wide v10

    cmpg-double v10, v10, v4

    if-gez v10, :cond_70

    invoke-virtual {v2}, Lcom/c/a/cc;->h()D

    move-result-wide v4

    :cond_70
    invoke-virtual {v2}, Lcom/c/a/cc;->c()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/c/a/cc;->d()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_58

    :cond_88
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v9, v2

    invoke-static {v7}, Lcom/c/ad;->c(Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v8}, Lcom/c/ad;->c(Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v6, v11

    const-wide v11, 0x4047800000000000L

    const-wide/high16 v13, 0x3fe0

    const-wide/high16 v15, 0x4026

    const-wide v17, 0x3fc555714b9cb685L

    sub-double v4, v4, v17

    const-wide v17, 0x3fd5566cf41f212dL

    div-double v4, v4, v17

    move-wide v0, v15

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v15, 0x4012cccccccccccdL

    sub-double/2addr v4, v15

    mul-double/2addr v4, v13

    const-wide v13, 0x4009333333333333L

    div-double/2addr v4, v13

    const-wide v13, 0x3fd3333333333333L

    const-wide/high16 v15, 0x3ff0

    div-double v8, v15, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v15, 0x3fdccccccccccccdL

    sub-double/2addr v8, v15

    mul-double/2addr v8, v13

    const-wide v13, 0x3fc70a3d70a3d70aL

    div-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x3fd0

    const-wide v13, 0x416312d000000000L

    mul-double/2addr v6, v13

    const-wide v13, 0x400599999999999aL

    sub-double/2addr v6, v13

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4014

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fc999999999999aL

    neg-int v2, v3

    add-int/lit8 v2, v2, -0x4b

    int-to-double v2, v2

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x401c

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, v11

    const-wide/high16 v4, 0x3ff4

    div-double/2addr v2, v4

    const-wide v4, 0x405d800000000000L

    add-double/2addr v2, v4

    invoke-static {}, Lcom/c/a/ci;->O()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {}, Lcom/c/a/ci;->P()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/c/ad;->a(DDD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    :cond_127
    move v3, v2

    goto/16 :goto_2f

    :cond_12a
    move v2, v3

    goto/16 :goto_45
.end method

.method private a(Lcom/c/a/cg;Lcom/c/a/cg;JLcom/c/ba;)Lcom/c/a/cg;
    .registers 9

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_19
    return-object p1

    :cond_1a
    if-eqz p2, :cond_35

    invoke-virtual {p2}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_35

    iget-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v1, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_19

    :cond_35
    const/4 p1, 0x0

    goto :goto_19
.end method

.method private a(Lcom/c/a/cg;Ljava/util/List;Lcom/c/ba;Z)Lcom/c/a/cg;
    .registers 20

    sget-boolean v9, Lcom/c/a/d;->h_:Z

    const/4 v3, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v5, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v6, 0x12

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_14
    return-object v3

    :cond_15
    iget-object v3, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v3}, Lcom/c/a/dm;->b()Lcom/c/a/cg;

    move-result-object v3

    if-eqz v3, :cond_55

    sget-boolean v3, Lcom/c/a/ds;->b:Z

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v3}, Lcom/c/a/dm;->c()Lcom/c/a/cg;

    move-result-object v3

    if-nez v3, :cond_2f

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2f
    iget-object v3, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v3}, Lcom/c/a/dm;->c()Lcom/c/a/cg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/c/a/cg;->w()Lcom/c/a/cg;

    move-result-object v4

    iget-object v3, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v3}, Lcom/c/a/dm;->b()Lcom/c/a/cg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    iget-object v3, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v3}, Lcom/c/a/dm;->b()Lcom/c/a/cg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/c/a/cg;->e()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/c/a/cg;->a(J)V

    if-eqz v9, :cond_56

    :cond_55
    const/4 v4, 0x0

    :cond_56
    sget-wide v6, Lcom/c/a/ds;->a:J

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/a/cg;JLcom/c/ba;)Lcom/c/a/cg;

    move-result-object v3

    if-nez v3, :cond_237

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v5, 0x3

    if-lt v10, v5, :cond_245

    const-wide v5, 0x3fa999999999999aL

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/c/a/ds;->a(Ljava/util/List;D)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    sget-boolean v5, Lcom/c/a/ds;->b:Z

    if-nez v5, :cond_85

    const/4 v5, 0x1

    if-ne v6, v5, :cond_85

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_85
    iget-object v5, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    invoke-virtual {v5}, Lcom/c/bp;->b()Z

    move-result v5

    if-eqz v5, :cond_c5

    if-ge v6, v10, :cond_c5

    iget-object v5, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v11, 0x9

    aget-object v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v10, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_c5
    const/4 v5, 0x1

    if-le v6, v5, :cond_177

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ed

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/cc;

    invoke-virtual {v3}, Lcom/c/a/cc;->a()I

    move-result v8

    int-to-double v11, v8

    const-wide/high16 v13, 0x4032

    cmpl-double v8, v11, v13

    if-lez v8, :cond_eb

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_eb
    if-eqz v9, :cond_d1

    :cond_ed
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x3

    if-ge v3, v7, :cond_242

    move-object/from16 v3, p2

    :goto_f6
    iget-object v5, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v11, 0x15

    aget-object v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v11, 0x14

    aget-object v8, v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/c/bp;->b(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/cc;

    invoke-virtual {v3}, Lcom/c/a/cc;->c()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/c/a/cc;->d()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_12e

    :cond_152
    new-instance v3, Lcom/c/a/cg;

    invoke-direct {v3}, Lcom/c/a/cg;-><init>()V

    invoke-static {v5}, Lcom/c/ad;->a(Ljava/util/List;)D

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/c/a/cg;->a(D)V

    invoke-static {v7}, Lcom/c/ad;->a(Ljava/util/List;)D

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/c/a/cg;->b(D)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    iget-object v5, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v7, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v8, 0x13

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v9, :cond_190

    :cond_177
    sget-boolean v4, Lcom/c/a/ds;->b:Z

    if-nez v4, :cond_183

    if-eqz v6, :cond_183

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_183
    iget-object v4, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v5, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_190
    if-eqz v9, :cond_237

    move-object v8, v3

    :goto_193
    const/4 v3, 0x2

    if-ne v10, v3, :cond_1ff

    if-eqz p4, :cond_1c9

    invoke-static {}, Lcom/c/a/ci;->F()D

    move-result-wide v5

    move-wide v6, v5

    :goto_19d
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/d;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/c/a/d;

    invoke-static {v3, v5}, Lcom/c/j;->a(Lcom/c/a/d;Lcom/c/a/d;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4010

    mul-double v5, v13, v6

    cmpg-double v3, v11, v5

    if-gez v3, :cond_1cf

    iget-object v3, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v4, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/c/bp;->b(Ljava/lang/String;)V

    move-object v3, v8

    goto/16 :goto_14

    :cond_1c9
    invoke-static {}, Lcom/c/a/ci;->G()D

    move-result-wide v5

    move-wide v6, v5

    goto :goto_19d

    :cond_1cf
    const-wide/16 v5, 0x2

    sget-wide v7, Lcom/c/a/ds;->a:J

    mul-long v6, v5, v7

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/a/cg;JLcom/c/ba;)Lcom/c/a/cg;

    move-result-object v3

    if-eqz v3, :cond_1ed

    iget-object v5, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v6, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v9, :cond_1fd

    :cond_1ed
    iget-object v4, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v5, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    goto/16 :goto_14

    :cond_1fd
    if-eqz v9, :cond_237

    :cond_1ff
    sget-boolean v3, Lcom/c/a/ds;->b:Z

    if-nez v3, :cond_20c

    const/4 v3, 0x1

    if-eq v10, v3, :cond_20c

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_20c
    const-wide/16 v5, 0x2

    sget-wide v7, Lcom/c/a/ds;->a:J

    mul-long v6, v5, v7

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/a/cg;JLcom/c/ba;)Lcom/c/a/cg;

    move-result-object v3

    if-eqz v3, :cond_22a

    iget-object v4, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v5, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v9, :cond_237

    :cond_22a
    iget-object v4, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v5, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_237
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/ba;Ljava/util/List;Z)V

    goto/16 :goto_14

    :cond_242
    move-object v3, v5

    goto/16 :goto_f6

    :cond_245
    move-object v8, v3

    goto/16 :goto_193
.end method

.method private a(Ljava/util/List;Ljava/util/List;Lcom/c/ba;Z)Lcom/c/a/cg;
    .registers 16

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-boolean v3, Lcom/c/a/d;->h_:Z

    iget-object v0, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    sget-wide v4, Lcom/c/a/ds;->a:J

    invoke-virtual {v0, p3, v4, v5}, Lcom/c/a/dm;->a(Lcom/c/ba;J)Lcom/c/a/cg;

    move-result-object v4

    if-eqz v4, :cond_106

    iget-object v0, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v0}, Lcom/c/a/dm;->c()Lcom/c/a/cg;

    move-result-object v0

    :goto_14
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5f

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/c/a/cg;->w()Lcom/c/a/cg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/cg;->b()I

    move-result v0

    int-to-double v5, v0

    const-wide v7, 0x3f70624dd2f1a9fcL

    invoke-virtual {v1}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/c/ba;->b(Lcom/c/ba;)J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v0, v5

    invoke-static {}, Lcom/c/a/ci;->P()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/c/a/cg;->a(I)V

    invoke-virtual {v1, v2}, Lcom/c/a/cg;->b(I)V

    invoke-virtual {v1, v2}, Lcom/c/a/cg;->c(I)V

    invoke-virtual {v1, v2}, Lcom/c/a/cg;->d(I)V

    invoke-virtual {v4}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/c/a/cg;->a(J)V

    :cond_5e
    :goto_5e
    return-object v1

    :cond_5f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_6e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_bd

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cc;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/bu;

    sget-boolean v8, Lcom/c/a/ds;->b:Z

    if-nez v8, :cond_98

    invoke-virtual {v0}, Lcom/c/a/cc;->b()Lcom/c/bq;

    move-result-object v8

    invoke-virtual {v1}, Lcom/c/bu;->b()Lcom/c/bq;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/c/bq;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_98

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_98
    invoke-virtual {v0}, Lcom/c/a/cc;->c()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/c/a/cc;->d()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0, p4}, Lcom/c/a/ds;->a(Lcom/c/bu;Lcom/c/a/cc;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    if-eqz v3, :cond_103

    :cond_bd
    new-instance v1, Lcom/c/a/cg;

    invoke-direct {v1}, Lcom/c/a/cg;-><init>()V

    invoke-static {v5, v7}, Lcom/c/ad;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/c/a/cg;->a(D)V

    invoke-static {v6, v7}, Lcom/c/ad;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/c/a/cg;->b(D)V

    invoke-direct {p0, p1, p2, p3}, Lcom/c/a/ds;->a(Ljava/util/List;Ljava/util/List;Lcom/c/ba;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/c/a/cg;->a(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/c/a/cg;->b(I)V

    invoke-static {p1}, Lcom/c/br;->a(Ljava/util/Collection;)Lcom/c/ap;

    move-result-object v0

    invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;

    move-result-object v0

    if-eqz v4, :cond_fe

    invoke-virtual {v4}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/ba;->c(Lcom/c/ba;)I

    move-result v2

    if-lez v2, :cond_fe

    invoke-virtual {v4}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    :cond_fe
    invoke-virtual {v1, v0}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    goto/16 :goto_5e

    :cond_103
    move v2, v0

    goto/16 :goto_6e

    :cond_106
    move-object v0, v1

    goto/16 :goto_14
.end method

.method private static a(Lcom/c/a/cg;Lcom/c/a/cg;)Ljava/lang/Double;
    .registers 4

    invoke-virtual {p0}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/ba;->b(Lcom/c/ba;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/c/j;->a(Lcom/c/a/d;Lcom/c/a/d;J)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/c/a/cg;Lcom/c/ba;)Ljava/lang/Double;
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-boolean v11, Lcom/c/a/d;->h_:Z

    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_10

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_20

    invoke-virtual {p1}, Lcom/c/a/cg;->h()I

    move-result v0

    if-gtz v0, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_20
    invoke-static {}, Lcom/c/a/ci;->I()I

    move-result v1

    invoke-static {}, Lcom/c/a/ci;->J()I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sget-wide v5, Lcom/c/a/ds;->f:J

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v7, v0

    add-long/2addr v5, v7

    invoke-virtual {p1}, Lcom/c/a/cg;->w()Lcom/c/a/cg;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/c/a/cg;->a(Lcom/c/ba;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/c/a/ds;->a(IIJJLcom/c/ba;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4c

    move-object v0, v10

    :goto_4b
    return-object v0

    :cond_4c
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/c/a/ci;->N()D

    move-result-wide v4

    move v2, v9

    :goto_5a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_85

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/cg;

    invoke-static {v0, v1}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/a/cg;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/br;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v0, v2, 0x1

    if-eqz v11, :cond_bd

    :cond_85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    move-object v0, v10

    goto :goto_4b

    :cond_8d
    invoke-static {v3}, Lcom/c/ad;->a(Ljava/util/List;)D

    move-result-wide v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/cg;

    invoke-static {v0, v1}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/a/cg;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/c/ad;->a(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/c/a/ci;->M()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4b

    :cond_bd
    move v2, v0

    goto :goto_5a
.end method

.method private a(Lcom/c/a/cg;Lcom/c/ba;Ljava/util/List;Z)V
    .registers 23

    sget-boolean v9, Lcom/c/a/d;->h_:Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [D

    const/4 v1, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/cc;

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/c/j;->a(Lcom/c/a/d;Lcom/c/a/d;)D

    move-result-wide v5

    aput-wide v5, v11, v2

    if-eqz v9, :cond_11c

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {}, Lcom/c/a/ci;->H()D

    move-result-wide v3

    mul-double v12, v1, v3

    if-eqz p4, :cond_10a

    invoke-static {}, Lcom/c/a/ci;->F()D

    move-result-wide v1

    :goto_48
    const-wide/high16 v3, -0x4010

    const/4 v5, 0x0

    move-wide v6, v1

    move v8, v5

    move-wide/from16 v16, v3

    move-wide/from16 v2, v16

    :goto_51
    const/4 v1, 0x3

    if-ge v8, v1, :cond_84

    add-double v4, v6, v12

    const/4 v1, 0x0

    :cond_57
    array-length v14, v11

    if-ge v1, v14, :cond_73

    aget-wide v14, v11, v1

    cmpl-double v14, v14, v2

    if-ltz v14, :cond_6f

    aget-wide v14, v11, v1

    cmpg-double v14, v14, v4

    if-gez v14, :cond_6f

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    if-eqz v9, :cond_57

    :cond_73
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, Lcom/c/a/ci;->E()I

    move-result v2

    if-ge v1, v2, :cond_84

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, v11

    if-ne v1, v2, :cond_110

    :cond_84
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/ds;->c:Lcom/c/bp;

    invoke-virtual {v1}, Lcom/c/bp;->b()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/ds;->c:Lcom/c/bp;

    sget-object v2, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v9, :cond_101

    :cond_a6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_101

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/c/a/ds;->c:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_101
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_10a
    invoke-static {}, Lcom/c/a/ci;->G()D

    move-result-wide v1

    goto/16 :goto_48

    :cond_110
    const-wide/high16 v1, 0x4000

    mul-double/2addr v1, v6

    add-int/lit8 v3, v8, 0x1

    if-nez v9, :cond_84

    move-wide v6, v1

    move v8, v3

    move-wide v2, v4

    goto/16 :goto_51

    :cond_11c
    move v2, v3

    goto/16 :goto_13
.end method

.method private a(Ljava/util/List;)V
    .registers 29

    sget-boolean v14, Lcom/c/a/d;->h_:Z

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [Z

    const/4 v2, 0x0

    move v11, v2

    :goto_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_18

    aget-boolean v2, v15, v11

    if-eqz v2, :cond_1e

    :cond_14
    :goto_14
    add-int/lit8 v2, v11, 0x1

    if-eqz v14, :cond_11f

    :cond_18
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/c/br;->b(Ljava/util/List;[Z)V

    return-void

    :cond_1e
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/c/a/cc;

    invoke-virtual {v3}, Lcom/c/a/cc;->a()I

    move-result v10

    invoke-virtual {v3}, Lcom/c/a/cc;->h()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/c/a/cc;->c()D

    move-result-wide v4

    int-to-double v6, v10

    mul-double/2addr v6, v4

    invoke-virtual {v3}, Lcom/c/a/cc;->d()D

    move-result-wide v4

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    add-int/lit8 v2, v11, 0x1

    move v13, v12

    move v12, v10

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v9, v23

    move-wide/from16 v7, v21

    move-wide/from16 v25, v4

    move-wide/from16 v5, v25

    move v4, v2

    :goto_50
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_5e

    aget-boolean v2, v15, v4

    if-eqz v2, :cond_7b

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v4, 0x1

    if-eqz v14, :cond_122

    :cond_5e
    move-wide/from16 v21, v5

    move-wide v4, v7

    move-wide/from16 v6, v21

    move v8, v12

    if-eqz v13, :cond_14

    if-eqz v8, :cond_6c

    int-to-double v12, v8

    div-double/2addr v4, v12

    int-to-double v12, v8

    div-double/2addr v6, v12

    :cond_6c
    new-instance v2, Lcom/c/a/cc;

    invoke-virtual {v3}, Lcom/c/a/cc;->b()Lcom/c/bq;

    move-result-object v3

    invoke-direct/range {v2 .. v10}, Lcom/c/a/cc;-><init>(Lcom/c/bq;DDID)V

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_7b
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/a/cc;

    invoke-virtual {v3}, Lcom/c/a/cc;->b()Lcom/c/bq;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/c/bq;->a()J

    move-result-wide v16

    invoke-virtual {v2}, Lcom/c/a/cc;->b()Lcom/c/bq;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/c/bq;->a()J

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/c/a/ds;->a(JJ)Z

    move-result v16

    if-nez v16, :cond_5a

    invoke-static {v3, v2}, Lcom/c/j;->a(Lcom/c/a/d;Lcom/c/a/d;)D

    move-result-wide v16

    invoke-static {}, Lcom/c/a/ci;->k()D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-gez v16, :cond_5a

    const/4 v13, 0x1

    aput-boolean v13, v15, v4

    const/4 v13, 0x1

    invoke-virtual {v2}, Lcom/c/a/cc;->a()I

    move-result v16

    add-int v12, v12, v16

    invoke-virtual {v2}, Lcom/c/a/cc;->h()D

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/c/a/cc;->c()D

    move-result-wide v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    add-double v7, v7, v17

    invoke-virtual {v2}, Lcom/c/a/cc;->d()D

    move-result-wide v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v16, v17, v19

    add-double v5, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/c/a/ds;->c:Lcom/c/bp;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/c/bp;->b()Z

    move-result v16

    if-eqz v16, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/c/a/ds;->c:Lcom/c/bp;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lcom/c/a/cc;->b()Lcom/c/bq;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v17, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/c/a/cc;->b()Lcom/c/bq;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto/16 :goto_5a

    :cond_11f
    move v11, v2

    goto/16 :goto_a

    :cond_122
    move v4, v2

    goto/16 :goto_50
.end method

.method private static a(Ljava/util/List;D)V
    .registers 11

    const/4 v2, 0x0

    sget-boolean v5, Lcom/c/a/d;->h_:Z

    move v1, v2

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    move v3, v2

    move v4, v1

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_31

    if-eq v4, v3, :cond_2d

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/d;

    invoke-static {v0, v1}, Lcom/c/a/ds;->a(Lcom/c/a/d;Lcom/c/a/d;)D

    move-result-wide v6

    cmpg-double v1, v6, p1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v4, 0x1

    if-eqz v5, :cond_4

    move v4, v1

    :cond_2d
    add-int/lit8 v1, v3, 0x1

    if-eqz v5, :cond_3a

    :cond_31
    move v0, v4

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz v5, :cond_38

    :cond_37
    return-void

    :cond_38
    move v1, v0

    goto :goto_4

    :cond_3a
    move v3, v1

    goto :goto_12
.end method

.method private a(IIJJLcom/c/ba;Ljava/util/List;)Z
    .registers 15

    sget-boolean v1, Lcom/c/a/d;->h_:Z

    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_12

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v0, p7, p5, p6}, Lcom/c/a/dm;->c(Lcom/c/ba;J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p2, :cond_70

    :cond_2e
    :goto_2e
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_76

    iget-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    return v0

    :cond_70
    invoke-interface {p8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1c

    goto :goto_2e

    :cond_76
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    invoke-virtual {v0}, Lcom/c/a/cg;->n_()Lcom/c/ba;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/c/ba;->a(Lcom/c/ba;)J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-gez v2, :cond_c6

    iget-object v2, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    invoke-virtual {v2}, Lcom/c/bp;->b()Z

    move-result v2

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_c4
    const/4 v0, 0x0

    goto :goto_6f

    :cond_c6
    const/4 v0, 0x1

    goto :goto_6f
.end method

.method private static a(JJ)Z
    .registers 16

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v5, Lcom/c/a/d;->h_:Z

    const-wide/16 v2, 0xf

    move-wide v10, v2

    move-wide v3, v10

    move v2, v1

    :cond_b
    cmp-long v6, v3, v8

    if-eqz v6, :cond_1f

    xor-long v6, p0, p2

    and-long/2addr v6, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    if-le v2, v0, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v6, 0x4

    shl-long/2addr v3, v6

    if-eqz v5, :cond_b

    :cond_1f
    move v0, v1

    goto :goto_1a
.end method

.method private b(Lcom/c/a/cg;Lcom/c/ba;)Ljava/lang/Double;
    .registers 16

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    sget-boolean v12, Lcom/c/a/d;->h_:Z

    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_11

    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lcom/c/a/cg;->h()I

    move-result v0

    if-gtz v0, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_21
    invoke-static {}, Lcom/c/a/ci;->K()I

    move-result v1

    invoke-static {}, Lcom/c/a/ci;->L()I

    move-result v2

    add-int/lit8 v0, v1, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sget-wide v5, Lcom/c/a/ds;->f:J

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v7, v0

    add-long/2addr v5, v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/c/a/ds;->a(IIJJLcom/c/ba;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_43

    move-object v0, v11

    :goto_42
    return-object v0

    :cond_43
    iget-object v0, p0, Lcom/c/a/ds;->d:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->a()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/c/a/ds;->d:Lcom/c/a/ch;

    invoke-virtual {v0}, Lcom/c/a/ch;->d()Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_53
    move v2, v10

    :goto_54
    move v4, v9

    move v3, v9

    :goto_56
    if-ge v4, v1, :cond_138

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/cg;

    invoke-virtual {v0}, Lcom/c/a/cg;->r()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-virtual {v0}, Lcom/c/a/cg;->l()Z

    move-result v0

    if-eqz v0, :cond_135

    :cond_6a
    if-eqz v12, :cond_72

    move v0, v10

    :goto_6d
    add-int/lit8 v3, v4, 0x1

    if-eqz v12, :cond_131

    move v10, v0

    :cond_72
    :goto_72
    if-nez v2, :cond_76

    if-eqz v10, :cond_91

    :cond_76
    iget-object v0, p0, Lcom/c/a/ds;->e:Lcom/c/a/dm;

    invoke-virtual {v0}, Lcom/c/a/dm;->b()Lcom/c/a/cg;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Lcom/c/a/cg;->q()Z

    move-result v1

    if-nez v1, :cond_88

    :cond_84
    move-object v0, v11

    goto :goto_42

    :cond_86
    move v2, v9

    goto :goto_54

    :cond_88
    invoke-virtual {v0}, Lcom/c/a/cg;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_42

    :cond_91
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v9

    :goto_9b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b4

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    invoke-static {p1, v0}, Lcom/c/j;->b(Lcom/c/a/d;Lcom/c/a/d;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b0
    add-int/lit8 v0, v1, 0x1

    if-eqz v12, :cond_12e

    :cond_b4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_bc

    move-object v0, v11

    goto :goto_42

    :cond_bc
    invoke-static {v2, v9}, Lcom/c/j;->a(Ljava/util/List;Z)V

    move v1, v9

    :goto_c0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    if-eqz v12, :cond_12c

    :cond_e1
    invoke-static {v2}, Lcom/c/ad;->c(Ljava/util/Collection;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v0, 0x4006666666666666L

    cmpl-double v0, v3, v0

    if-lez v0, :cond_f5

    const/4 v0, 0x2

    if-eqz v12, :cond_10c

    :cond_f5
    const-wide/high16 v0, 0x4004

    cmpl-double v0, v3, v0

    if-lez v0, :cond_fe

    const/4 v0, 0x3

    if-eqz v12, :cond_10c

    :cond_fe
    const-wide v0, 0x4002666666666666L

    cmpl-double v0, v3, v0

    if-lez v0, :cond_10a

    const/4 v0, 0x5

    if-eqz v12, :cond_10c

    :cond_10a
    const/16 v0, 0x15

    :cond_10c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v2, v9, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/c/ad;->a(Ljava/util/List;)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    invoke-static {v0, v1, v9}, Lcom/c/j;->a(DZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_42

    :cond_12c
    move v1, v0

    goto :goto_c0

    :cond_12e
    move v1, v0

    goto/16 :goto_9b

    :cond_131
    move v4, v3

    move v3, v0

    goto/16 :goto_56

    :cond_135
    move v0, v3

    goto/16 :goto_6d

    :cond_138
    move v10, v3

    goto/16 :goto_72
.end method


# virtual methods
.method public a(Lcom/c/a/cg;Ljava/util/List;Ljava/util/List;Lcom/c/ba;Z)Lcom/c/o;
    .registers 11

    const/4 v3, 0x0

    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/c/a/cg;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_26

    sget-object v0, Lcom/c/bi;->a:Ljava/util/Comparator;

    invoke-static {p2, v0}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_26
    sget-boolean v0, Lcom/c/a/ds;->b:Z

    if-nez v0, :cond_38

    sget-object v0, Lcom/c/bi;->a:Ljava/util/Comparator;

    invoke-static {p3, v0}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, p3}, Lcom/c/a/ds;->a(Ljava/util/List;)V

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Ljava/util/List;Lcom/c/ba;Z)Lcom/c/a/cg;

    move-result-object v1

    sget-object v2, Lcom/c/bi;->a:Ljava/util/Comparator;

    invoke-static {p2, p3, v2}, Lcom/c/br;->e(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/c/a/ds;->a(Ljava/util/List;Ljava/util/List;Lcom/c/ba;Z)Lcom/c/a/cg;

    move-result-object v2

    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Lcom/c/a/cg;->h()I

    move-result v0

    if-lez v0, :cond_77

    invoke-direct {p0, v2, p4}, Lcom/c/a/ds;->a(Lcom/c/a/cg;Lcom/c/ba;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/c/a/cg;->d(D)V

    :cond_61
    invoke-direct {p0, v2, p4}, Lcom/c/a/ds;->b(Lcom/c/a/cg;Lcom/c/ba;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/c/a/cg;->e(D)V

    :cond_6e
    if-eqz v1, :cond_77

    invoke-virtual {v1}, Lcom/c/a/cg;->i()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/c/a/cg;->c(I)V

    :cond_77
    iget-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/c/a/ds;->c:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/a/ds;->g:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_9a
    sget-object v0, Lcom/c/a/r;->a:Lcom/c/a/r;

    invoke-static {v0, v2}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;

    move-result-object v0

    :goto_a0
    return-object v0

    :cond_a1
    if-eqz v0, :cond_aa

    sget-object v0, Lcom/c/a/r;->c:Lcom/c/a/r;

    invoke-static {v0, v3}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;

    move-result-object v0

    goto :goto_a0

    :cond_aa
    sget-object v0, Lcom/c/a/r;->f:Lcom/c/a/r;

    invoke-static {v0, v3}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;

    move-result-object v0

    goto :goto_a0
.end method
