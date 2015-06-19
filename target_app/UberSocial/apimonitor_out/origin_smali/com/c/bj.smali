.class final Lcom/c/bj;
.super Lcom/c/bb;


# static fields
.field static final synthetic c:Z

.field private static final d:Lcom/c/cg;

.field private static final q:[Ljava/lang/String;


# instance fields
.field private final e:Lcom/c/bp;

.field private final f:Landroid/content/Context;

.field private final h:Lcom/c/k;

.field private i:Landroid/net/wifi/WifiManager;

.field private j:Ljava/lang/reflect/Method;

.field private k:Lcom/c/cc;

.field private final l:Ljava/util/ArrayList;

.field private m:Z

.field private n:Lcom/c/ba;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/16 v10, 0x20

    const/16 v9, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v8, 0x54

    const/16 v2, 0x3e

    new-array v11, v2, [Ljava/lang/String;

    const-string v2, "78hA\u0001=:j\u0000\u000075c\u0000\u00011\'xL\u0007\'"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1089

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

    packed-switch v7, :pswitch_data_108c

    const/16 v7, 0x73

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

    const-string v2, "5=\u007fP\u001f5:h\u0000\u001e;0h\u0000\u00127 dV\u0016xtcO\u0007t1cA\u00118=cGS#=kI"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1086

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

    packed-switch v7, :pswitch_data_1098

    const/16 v7, 0x73

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

    const-string v2, "#=kIS58\u007fE\u00120--E\u001d56aE\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1083

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

    packed-switch v7, :pswitch_data_10a4

    const/16 v7, 0x73

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

    const-string v2, "#=kIS1:lB\u001f1|$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1080

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

    packed-switch v7, :pswitch_data_10b0

    const/16 v7, 0x73

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

    const-string v2, "1:lB\u001f=:j\u0000\u0004=2d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_107d

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

    packed-switch v7, :pswitch_data_10bc

    const/16 v7, 0x73

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

    const-string v2, "5=\u007fP\u001f5:h\u007f\u001e;0h\u007f\u001c:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_107a

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

    packed-switch v7, :pswitch_data_10c8

    const/16 v7, 0x73

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

    const-string v2, "#=kIS;$hN"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1077

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

    packed-switch v7, :pswitch_data_10d4

    const/16 v7, 0x73

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

    const-string v2, "#=kIS50lP\u00071&-A\u001f&1lD\nt;}E\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1074

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

    packed-switch v7, :pswitch_data_10e0

    const/16 v7, 0x73

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

    const-string v2, "5:iR\u001c=0CA\u0007=\"h\u001a$=2da\u00175$yE\u0001\u001d9}L"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1071

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

    packed-switch v7, :pswitch_data_10ec

    const/16 v7, 0x73

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

    const-string v2, "=\'HN\u001268hD[}tnA\u001f81i\u0000\u0004<=aES78bS\u00160"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_106e

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

    packed-switch v7, :pswitch_data_10f8

    const/16 v7, 0x73

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

    const-string v2, "#=kIS8;nKS58\u007fE\u00120--H\u001680"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_106b

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

    packed-switch v7, :pswitch_data_1104

    const/16 v7, 0x73

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

    const-string v2, "#=kIS50lP\u00071&-A\u001f&1lD\nt\'nA\u001d:=cG"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1068

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

    packed-switch v7, :pswitch_data_1110

    const/16 v7, 0x73

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

    const-string v2, "7;xL\u0017:sy\u0000\u0000 5\u007fTS\u0003=KIS\'7lN"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1065

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

    packed-switch v7, :pswitch_data_111c

    const/16 v7, 0x73

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

    const-string v2, "#=kIS=\'-N\u001c thN\u001268hDS|"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1062

    move v4, v1

    :cond_2bd
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_2c2
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1128

    const/16 v7, 0x73

    :goto_2cb
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_2d7

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_2c2

    :cond_2d7
    move v3, v2

    move-object v2, v5

    :goto_2d9
    if-gt v3, v4, :cond_2bd

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v9

    const/16 v12, 0xe

    const-string v2, "\' lR\u0007\u00077lN27 dV\u0016|}-I\u001d57nE\u0000\'=oL\u0016"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_105f

    move v4, v1

    :cond_2f2
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_2f7
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1134

    const/16 v7, 0x73

    :goto_300
    xor-int/2addr v7, v13

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

    aput-object v2, v11, v12

    const/16 v12, 0xf

    const-string v2, "75nH\u00160t~C\u0012:t\u007fE\u0000!8ySIt"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_105c

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

    packed-switch v7, :pswitch_data_1140

    const/16 v7, 0x73

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

    const-string v2, "7;cN\u00167 hDS\u0015\u0004-N\u001c tdNS <h\u0000\u001f5\'y\u0000\u000075c\u0000\u00011\'xL\u0007\'tbRS =`E\u001c! -H\u0012\'toE\u0016:t\u007fE\u00127<hD_t#dL\u001ft\'nA\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1059

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

    packed-switch v7, :pswitch_data_114c

    const/16 v7, 0x73

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

    const-string v2, "t|"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1056

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

    packed-switch v7, :pswitch_data_1158

    const/16 v7, 0x73

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

    const-string v2, "#=kIS50lP\u00071&-I\u0000t:bTS;$hN"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1053

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

    packed-switch v7, :pswitch_data_1164

    const/16 v7, 0x73

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

    const-string v2, "\'7lNS58\u007fE\u00120--I\u001dt$\u007fO\u0014&1~SS2;\u007f\u0000"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1050

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

    packed-switch v7, :pswitch_data_1170

    const/16 v7, 0x73

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

    const-string v2, "\'!}P\u001f=7lN\u0007t6xS\nztoA\u0010?=cGS;2k"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_104d

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

    packed-switch v7, :pswitch_data_117c

    const/16 v7, 0x73

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

    const-string v2, "7;cN\u00167 hDS ;-A\u001dt\u0015]\u001aS"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_104a

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

    packed-switch v7, :pswitch_data_1188

    const/16 v7, 0x73

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

    const-string v2, "\' lR\u0007\u00077lN[}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1047

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

    packed-switch v7, :pswitch_data_1194

    const/16 v7, 0x73

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

    const-string v2, "7;xL\u0017:sy\u0000\u0000 5\u007fTS\u0003=KIS57yI\u00051t~C\u0012:"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1044

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

    packed-switch v7, :pswitch_data_11a0

    const/16 v7, 0x73

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

    const/16 v12, 0x18

    const-string v2, "7;cN\u00167 hDS\u0015\u0004-F\u001c!:i\u0000\u001a:tnA\u0010<1i\u0000\u000075c\u0000\u00011\'xL\u0007\'"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1041

    move v4, v1

    :cond_504
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_509
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11ac

    const/16 v7, 0x73

    :goto_512
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_51e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_509

    :cond_51e
    move v3, v2

    move-object v2, v5

    :goto_520
    if-gt v3, v4, :cond_504

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x19

    const-string v2, "#=kIS\' lT\u0016ti-"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_103e

    move v4, v1

    :cond_539
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_53e
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11b8

    const/16 v7, 0x73

    :goto_547
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_553

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_53e

    :cond_553
    move v3, v2

    move-object v2, v5

    :goto_555
    if-gt v3, v4, :cond_539

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x1a

    const-string v2, "#=kIS6!~Y]t6lC\u0018=:j\u0000\u001c22"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_103b

    move v4, v1

    :cond_56e
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_573
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11c4

    const/16 v7, 0x73

    :goto_57c
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_588

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_573

    :cond_588
    move v3, v2

    move-object v2, v5

    :goto_58a
    if-gt v3, v4, :cond_56e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x1b

    const-string v2, "}tnA\u001ds -S\u00075&y\u0000\u000075c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1038

    move v4, v1

    :cond_5a3
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_5a8
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11d0

    const/16 v7, 0x73

    :goto_5b1
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_5bd

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_5a8

    :cond_5bd
    move v3, v2

    move-object v2, v5

    :goto_5bf
    if-gt v3, v4, :cond_5a3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x1c

    const-string v2, "85yE\u0000 t~C\u0012:t\u007fE\u0000!8ySS5&h\u0000\u00169$yY"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1035

    move v4, v1

    :cond_5d8
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_5dd
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11dc

    const/16 v7, 0x73

    :goto_5e6
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_5f2

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_5dd

    :cond_5f2
    move v3, v2

    move-object v2, v5

    :goto_5f4
    if-gt v3, v4, :cond_5d8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x1d

    const-string v2, "7;xL\u0017t:bTS;6yA\u001a:t@a0t5iD\u00011\'~"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1032

    move v4, v1

    :cond_60d
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_612
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11e8

    const/16 v7, 0x73

    :goto_61b
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_627

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_612

    :cond_627
    move v3, v2

    move-object v2, v5

    :goto_629
    if-gt v3, v4, :cond_60d

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x1e

    const-string v2, "<5\u007fD\u00045&h\u0000>\u0015\u0017-A\u00170&hS\u0000nt"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_102f

    move v4, v1

    :cond_642
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_647
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_11f4

    const/16 v7, 0x73

    :goto_650
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_65c

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_647

    :cond_65c
    move v3, v2

    move-object v2, v5

    :goto_65e
    if-gt v3, v4, :cond_642

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x1f

    const-string v2, "7;xL\u0017t:bTS;6yA\u001a:t@a0t5iD\u00011\'~\u0000\u0000=:nES#=kIS50lP\u00071&-N\u001c tnR\u00165 hD"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_102c

    move v4, v1

    :cond_677
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_67c
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1200

    const/16 v7, 0x73

    :goto_685
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_691

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_67c

    :cond_691
    move v3, v2

    move-object v2, v5

    :goto_693
    if-gt v3, v4, :cond_677

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const-string v2, "31yh\u0012&0zA\u00011\u0015iD\u00011\'~\u0008Z"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1029

    move v4, v1

    :cond_6aa
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_6af
    aget-char v12, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_120c

    const/16 v7, 0x73

    :goto_6b8
    xor-int/2addr v7, v12

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_6c4

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_6af

    :cond_6c4
    move v3, v2

    move-object v2, v5

    :goto_6c6
    if-gt v3, v4, :cond_6aa

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v10

    const/16 v12, 0x21

    const-string v2, "#=kIS0=~A\u001181"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1026

    move v4, v1

    :cond_6df
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_6e4
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1218

    const/16 v7, 0x73

    :goto_6ed
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_6f9

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_6e4

    :cond_6f9
    move v3, v2

    move-object v2, v5

    :goto_6fb
    if-gt v3, v4, :cond_6df

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x22

    const-string v2, "0=~A\u00118=cGS#=kIS5:i\u0000\u001d; -S\u0010<1iU\u001f=:j\u0000\u00011yhN\u001268h"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1023

    move v4, v1

    :cond_714
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_719
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1224

    const/16 v7, 0x73

    :goto_722
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_72e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_719

    :cond_72e
    move v3, v2

    move-object v2, v5

    :goto_730
    if-gt v3, v4, :cond_714

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x23

    const-string v2, "#=kIS58\u007fE\u00120--D\u001a\'5oL\u00160"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1020

    move v4, v1

    :cond_749
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_74e
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1230

    const/16 v7, 0x73

    :goto_757
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_763

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_74e

    :cond_763
    move v3, v2

    move-object v2, v5

    :goto_765
    if-gt v3, v4, :cond_749

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x24

    const-string v2, "78bS\u001a:3-w\u001ay\u0012d\u0000\u001205}T\u0016&"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_101d

    move v4, v1

    :cond_77e
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_783
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_123c

    const/16 v7, 0x73

    :goto_78c
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_798

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_783

    :cond_798
    move v3, v2

    move-object v2, v5

    :goto_79a
    if-gt v3, v4, :cond_77e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x25

    const-string v2, "#=kIS50lP\u00071&-A\u001f&1lD\nt7aO\u000010"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_101a

    move v4, v1

    :cond_7b3
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_7b8
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1248

    const/16 v7, 0x73

    :goto_7c1
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_7cd

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_7b8

    :cond_7cd
    move v3, v2

    move-object v2, v5

    :goto_7cf
    if-gt v3, v4, :cond_7b3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x26

    const-string v2, "#=kIS78bS\u0016|}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1017

    move v4, v1

    :cond_7e8
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_7ed
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1254

    const/16 v7, 0x73

    :goto_7f6
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_802

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_7ed

    :cond_802
    move v3, v2

    move-object v2, v5

    :goto_804
    if-gt v3, v4, :cond_7e8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x27

    const-string v2, "7;xL\u0017:sy\u0000\u0000 5\u007fTS\'7lN]zz-R\u001681lS\u001a:3-L\u001c7?"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1014

    move v4, v1

    :cond_81d
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_822
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1260

    const/16 v7, 0x73

    :goto_82b
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_837

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_822

    :cond_837
    move v3, v2

    move-object v2, v5

    :goto_839
    if-gt v3, v4, :cond_81d

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x28

    const-string v2, "\u0003=KIS\'7lNS\' lR\u000710#\u000e]"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1011

    move v4, v1

    :cond_852
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_857
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_126c

    const/16 v7, 0x73

    :goto_860
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_86c

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_857

    :cond_86c
    move v3, v2

    move-object v2, v5

    :goto_86e
    if-gt v3, v4, :cond_852

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x29

    const-string v2, "yj"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_100e

    move v4, v1

    :cond_887
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_88c
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1278

    const/16 v7, 0x73

    :goto_895
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_8a1

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_88c

    :cond_8a1
    move v3, v2

    move-object v2, v5

    :goto_8a3
    if-gt v3, v4, :cond_887

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x2a

    const-string v2, "95n\u0000\u0007;t~S\u001a0t`A\u0003$=cGS2;\u007f\u0000\u000075cN\u00160tlP\u0000n"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_100b

    move v4, v1

    :cond_8bc
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_8c1
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1284

    const/16 v7, 0x73

    :goto_8ca
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_8d6

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_8c1

    :cond_8d6
    move v3, v2

    move-object v2, v5

    :goto_8d8
    if-gt v3, v4, :cond_8bc

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x2b

    const-string v2, "\u000f\u001dOs \t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1008

    move v4, v1

    :cond_8f1
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_8f6
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1290

    const/16 v7, 0x73

    :goto_8ff
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_90b

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_8f6

    :cond_90b
    move v3, v2

    move-object v2, v5

    :goto_90d
    if-gt v3, v4, :cond_8f1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x2c

    const-string v2, "7;xL\u0017:sy\u0000\u00035&~ES\u0019\u0015N\u0000\u001200\u007fE\u0000\'n-"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1005

    move v4, v1

    :cond_926
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_92b
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_129c

    const/16 v7, 0x73

    :goto_934
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_940

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_92b

    :cond_940
    move v3, v2

    move-object v2, v5

    :goto_942
    if-gt v3, v4, :cond_926

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x2d

    const-string v2, "t\u000f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_1002

    move v4, v1

    :cond_95b
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_960
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12a8

    const/16 v7, 0x73

    :goto_969
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_975

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_960

    :cond_975
    move v3, v2

    move-object v2, v5

    :goto_977
    if-gt v3, v4, :cond_95b

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x2e

    const-string v2, "=3cO\u0001=:j\u0000\u00120yeO\u0010t\u0015]\u001aS"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fff

    move v4, v1

    :cond_990
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_995
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12b4

    const/16 v7, 0x73

    :goto_99e
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_9aa

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_995

    :cond_9aa
    move v3, v2

    move-object v2, v5

    :goto_9ac
    if-gt v3, v4, :cond_990

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x2f

    const-string v2, "01~T\u0001;-dN\u0014t\u0003d\r5=tlD\u0012$ hR"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_ffc

    move v4, v1

    :cond_9c5
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_9ca
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12c0

    const/16 v7, 0x73

    :goto_9d3
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_9df

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_9ca

    :cond_9df
    move v3, v2

    move-object v2, v5

    :goto_9e1
    if-gt v3, v4, :cond_9c5

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x30

    const-string v2, "1&\u007fO\u0001t!cR\u00163=~T\u0016&=cGS&1nE\u001a\"1\u007f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_ff9

    move v4, v1

    :cond_9fa
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_9ff
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12cc

    const/16 v7, 0x73

    :goto_a08
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_a14

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_9ff

    :cond_a14
    move v3, v2

    move-object v2, v5

    :goto_a16
    if-gt v3, v4, :cond_9fa

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x31

    const-string v2, "#=kIS50lP\u00071&-A\u001f&1lD\nt0hS\u0007&;tE\u0017"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_ff6

    move v4, v1

    :cond_a2f
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_a34
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12d8

    const/16 v7, 0x73

    :goto_a3d
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_a49

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_a34

    :cond_a49
    move v3, v2

    move-object v2, v5

    :goto_a4b
    if-gt v3, v4, :cond_a2f

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x32

    const-string v2, "#=kIS01~T\u0001;-%\t"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_ff3

    move v4, v1

    :cond_a64
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_a69
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12e4

    const/16 v7, 0x73

    :goto_a72
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_a7e

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_a69

    :cond_a7e
    move v3, v2

    move-object v2, v5

    :goto_a80
    if-gt v3, v4, :cond_a64

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x33

    const-string v2, "!:\u007fE\u0014=\'yE\u000110-s0\u0015\u001aRr6\u0007\u0001At \u000b\u0015[a:\u0018\u0015Ol6\u000b\u0015Nt:\u001b\u001a-R\u001671dV\u0016&"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_ff0

    move v4, v1

    :cond_a99
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_a9e
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12f0

    const/16 v7, 0x73

    :goto_aa7
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_ab3

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_a9e

    :cond_ab3
    move v3, v2

    move-object v2, v5

    :goto_ab5
    if-gt v3, v4, :cond_a99

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x34

    const-string v2, "#=kIS7&hA\u00071|$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fed

    move v4, v1

    :cond_ace
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_ad3
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_12fc

    const/16 v7, 0x73

    :goto_adc
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_ae8

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_ad3

    :cond_ae8
    move v3, v2

    move-object v2, v5

    :goto_aea
    if-gt v3, v4, :cond_ace

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x35

    const-string v2, "7;xL\u0017t:bTS31y\u0000\u0004=2d\u0000\u001e5:lG\u0016&t~E\u0001\"=nE"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fea

    move v4, v1

    :cond_b03
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b08
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1308

    const/16 v7, 0x73

    :goto_b11
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_b1d

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b08

    :cond_b1d
    move v3, v2

    move-object v2, v5

    :goto_b1f
    if-gt v3, v4, :cond_b03

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x36

    const-string v2, "\' lR\u0007\u00077lN27 dV\u0016|}-N\u001c tkO\u0006:0"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fe7

    move v4, v1

    :cond_b38
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b3d
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1314

    const/16 v7, 0x73

    :goto_b46
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_b52

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b3d

    :cond_b52
    move v3, v2

    move-object v2, v5

    :goto_b54
    if-gt v3, v4, :cond_b38

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x37

    const-string v2, "#=kI"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fe4

    move v4, v1

    :cond_b6d
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_b72
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1320

    const/16 v7, 0x73

    :goto_b7b
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_b87

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_b72

    :cond_b87
    move v3, v2

    move-object v2, v5

    :goto_b89
    if-gt v3, v4, :cond_b6d

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x38

    const-string v2, "#=kIS50lP\u00071&-A\u001f&1lD\nt7\u007fE\u0012 1i"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fe1

    move v4, v1

    :cond_ba2
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_ba7
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_132c

    const/16 v7, 0x73

    :goto_bb0
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_bbc

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_ba7

    :cond_bbc
    move v3, v2

    move-object v2, v5

    :goto_bbe
    if-gt v3, v4, :cond_ba2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x39

    const-string v2, "&1jI\u0000 1\u007fI\u001d3t^c2\u001a\u000b_e \u0001\u0018Ys,\u0015\u0002Li?\u0015\u0016Ae,\u0015\u0017Yi<\u001at\u007fE\u00101={E\u0001"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fde

    move v4, v1

    :cond_bd7
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_bdc
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1338

    const/16 v7, 0x73

    :goto_be5
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_bf1

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_bdc

    :cond_bf1
    move v3, v2

    move-object v2, v5

    :goto_bf3
    if-gt v3, v4, :cond_bd7

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x3a

    const-string v2, "5:iR\u001c=0#N\u0016 zzI\u0015=z^c2\u001a\u000b_e \u0001\u0018Ys"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fdb

    move v4, v1

    :cond_c0c
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_c11
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1344

    const/16 v7, 0x73

    :goto_c1a
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_c26

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_c11

    :cond_c26
    move v3, v2

    move-object v2, v5

    :goto_c28
    if-gt v3, v4, :cond_c0c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x3b

    const-string v2, "2;xN\u0017t\'yA\u0001 \u0007nA\u001d\u00157yI\u00051|$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fd8

    move v4, v1

    :cond_c41
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_c46
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1350

    const/16 v7, 0x73

    :goto_c4f
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_c5b

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_c46

    :cond_c5b
    move v3, v2

    move-object v2, v5

    :goto_c5d
    if-gt v3, v4, :cond_c41

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x3c

    const-string v2, "\' lR\u0007\u00077lN27 dV\u0016"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fd5

    move v4, v1

    :cond_c76
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_c7b
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_135c

    const/16 v7, 0x73

    :goto_c84
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_c90

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_c7b

    :cond_c90
    move v3, v2

    move-object v2, v5

    :goto_c92
    if-gt v3, v4, :cond_c76

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    const/16 v12, 0x3d

    const-string v2, "5:iR\u001c=0#N\u0016 zzI\u0015=zZi5\u001d\u000b^t2\u0000\u0011Rc;\u0015\u001aJe7"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v0, :cond_fd2

    move v4, v1

    :cond_cab
    move-object v5, v2

    move v6, v4

    move v14, v3

    move-object v3, v2

    move v2, v14

    :goto_cb0
    aget-char v13, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_1368

    const/16 v7, 0x73

    :goto_cb9
    xor-int/2addr v7, v13

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v2, :cond_cc5

    move-object v3, v5

    move v6, v4

    move v4, v2

    goto :goto_cb0

    :cond_cc5
    move v3, v2

    move-object v2, v5

    :goto_cc7
    if-gt v3, v4, :cond_cab

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    sput-object v11, Lcom/c/bj;->q:[Ljava/lang/String;

    const-class v2, Lcom/c/bj;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_ce8

    :goto_cde
    sput-boolean v0, Lcom/c/bj;->c:Z

    new-instance v0, Lcom/c/cg;

    invoke-direct {v0}, Lcom/c/cg;-><init>()V

    sput-object v0, Lcom/c/bj;->d:Lcom/c/cg;

    return-void

    :cond_ce8
    move v0, v1

    goto :goto_cde

    :pswitch_cea
    move v7, v8

    goto/16 :goto_24

    :pswitch_ced
    move v7, v8

    goto/16 :goto_24

    :pswitch_cf0
    move v7, v9

    goto/16 :goto_24

    :pswitch_cf3
    move v7, v10

    goto/16 :goto_24

    :pswitch_cf6
    move v7, v8

    goto/16 :goto_57

    :pswitch_cf9
    move v7, v8

    goto/16 :goto_57

    :pswitch_cfc
    move v7, v9

    goto/16 :goto_57

    :pswitch_cff
    move v7, v10

    goto/16 :goto_57

    :pswitch_d02
    move v7, v8

    goto/16 :goto_8b

    :pswitch_d05
    move v7, v8

    goto/16 :goto_8b

    :pswitch_d08
    move v7, v9

    goto/16 :goto_8b

    :pswitch_d0b
    move v7, v10

    goto/16 :goto_8b

    :pswitch_d0e
    move v7, v8

    goto/16 :goto_bf

    :pswitch_d11
    move v7, v8

    goto/16 :goto_bf

    :pswitch_d14
    move v7, v9

    goto/16 :goto_bf

    :pswitch_d17
    move v7, v10

    goto/16 :goto_bf

    :pswitch_d1a
    move v7, v8

    goto/16 :goto_f3

    :pswitch_d1d
    move v7, v8

    goto/16 :goto_f3

    :pswitch_d20
    move v7, v9

    goto/16 :goto_f3

    :pswitch_d23
    move v7, v10

    goto/16 :goto_f3

    :pswitch_d26
    move v7, v8

    goto/16 :goto_127

    :pswitch_d29
    move v7, v8

    goto/16 :goto_127

    :pswitch_d2c
    move v7, v9

    goto/16 :goto_127

    :pswitch_d2f
    move v7, v10

    goto/16 :goto_127

    :pswitch_d32
    move v7, v8

    goto/16 :goto_15b

    :pswitch_d35
    move v7, v8

    goto/16 :goto_15b

    :pswitch_d38
    move v7, v9

    goto/16 :goto_15b

    :pswitch_d3b
    move v7, v10

    goto/16 :goto_15b

    :pswitch_d3e
    move v7, v8

    goto/16 :goto_18f

    :pswitch_d41
    move v7, v8

    goto/16 :goto_18f

    :pswitch_d44
    move v7, v9

    goto/16 :goto_18f

    :pswitch_d47
    move v7, v10

    goto/16 :goto_18f

    :pswitch_d4a
    move v7, v8

    goto/16 :goto_1c4

    :pswitch_d4d
    move v7, v8

    goto/16 :goto_1c4

    :pswitch_d50
    move v7, v9

    goto/16 :goto_1c4

    :pswitch_d53
    move v7, v10

    goto/16 :goto_1c4

    :pswitch_d56
    move v7, v8

    goto/16 :goto_1f9

    :pswitch_d59
    move v7, v8

    goto/16 :goto_1f9

    :pswitch_d5c
    move v7, v9

    goto/16 :goto_1f9

    :pswitch_d5f
    move v7, v10

    goto/16 :goto_1f9

    :pswitch_d62
    move v7, v8

    goto/16 :goto_22e

    :pswitch_d65
    move v7, v8

    goto/16 :goto_22e

    :pswitch_d68
    move v7, v9

    goto/16 :goto_22e

    :pswitch_d6b
    move v7, v10

    goto/16 :goto_22e

    :pswitch_d6e
    move v7, v8

    goto/16 :goto_263

    :pswitch_d71
    move v7, v8

    goto/16 :goto_263

    :pswitch_d74
    move v7, v9

    goto/16 :goto_263

    :pswitch_d77
    move v7, v10

    goto/16 :goto_263

    :pswitch_d7a
    move v7, v8

    goto/16 :goto_298

    :pswitch_d7d
    move v7, v8

    goto/16 :goto_298

    :pswitch_d80
    move v7, v9

    goto/16 :goto_298

    :pswitch_d83
    move v7, v10

    goto/16 :goto_298

    :pswitch_d86
    move v7, v8

    goto/16 :goto_2cb

    :pswitch_d89
    move v7, v8

    goto/16 :goto_2cb

    :pswitch_d8c
    move v7, v9

    goto/16 :goto_2cb

    :pswitch_d8f
    move v7, v10

    goto/16 :goto_2cb

    :pswitch_d92
    move v7, v8

    goto/16 :goto_300

    :pswitch_d95
    move v7, v8

    goto/16 :goto_300

    :pswitch_d98
    move v7, v9

    goto/16 :goto_300

    :pswitch_d9b
    move v7, v10

    goto/16 :goto_300

    :pswitch_d9e
    move v7, v8

    goto/16 :goto_335

    :pswitch_da1
    move v7, v8

    goto/16 :goto_335

    :pswitch_da4
    move v7, v9

    goto/16 :goto_335

    :pswitch_da7
    move v7, v10

    goto/16 :goto_335

    :pswitch_daa
    move v7, v8

    goto/16 :goto_36a

    :pswitch_dad
    move v7, v8

    goto/16 :goto_36a

    :pswitch_db0
    move v7, v9

    goto/16 :goto_36a

    :pswitch_db3
    move v7, v10

    goto/16 :goto_36a

    :pswitch_db6
    move v7, v8

    goto/16 :goto_39f

    :pswitch_db9
    move v7, v8

    goto/16 :goto_39f

    :pswitch_dbc
    move v7, v9

    goto/16 :goto_39f

    :pswitch_dbf
    move v7, v10

    goto/16 :goto_39f

    :pswitch_dc2
    move v7, v8

    goto/16 :goto_3d4

    :pswitch_dc5
    move v7, v8

    goto/16 :goto_3d4

    :pswitch_dc8
    move v7, v9

    goto/16 :goto_3d4

    :pswitch_dcb
    move v7, v10

    goto/16 :goto_3d4

    :pswitch_dce
    move v7, v8

    goto/16 :goto_409

    :pswitch_dd1
    move v7, v8

    goto/16 :goto_409

    :pswitch_dd4
    move v7, v9

    goto/16 :goto_409

    :pswitch_dd7
    move v7, v10

    goto/16 :goto_409

    :pswitch_dda
    move v7, v8

    goto/16 :goto_43e

    :pswitch_ddd
    move v7, v8

    goto/16 :goto_43e

    :pswitch_de0
    move v7, v9

    goto/16 :goto_43e

    :pswitch_de3
    move v7, v10

    goto/16 :goto_43e

    :pswitch_de6
    move v7, v8

    goto/16 :goto_473

    :pswitch_de9
    move v7, v8

    goto/16 :goto_473

    :pswitch_dec
    move v7, v9

    goto/16 :goto_473

    :pswitch_def
    move v7, v10

    goto/16 :goto_473

    :pswitch_df2
    move v7, v8

    goto/16 :goto_4a8

    :pswitch_df5
    move v7, v8

    goto/16 :goto_4a8

    :pswitch_df8
    move v7, v9

    goto/16 :goto_4a8

    :pswitch_dfb
    move v7, v10

    goto/16 :goto_4a8

    :pswitch_dfe
    move v7, v8

    goto/16 :goto_4dd

    :pswitch_e01
    move v7, v8

    goto/16 :goto_4dd

    :pswitch_e04
    move v7, v9

    goto/16 :goto_4dd

    :pswitch_e07
    move v7, v10

    goto/16 :goto_4dd

    :pswitch_e0a
    move v7, v8

    goto/16 :goto_512

    :pswitch_e0d
    move v7, v8

    goto/16 :goto_512

    :pswitch_e10
    move v7, v9

    goto/16 :goto_512

    :pswitch_e13
    move v7, v10

    goto/16 :goto_512

    :pswitch_e16
    move v7, v8

    goto/16 :goto_547

    :pswitch_e19
    move v7, v8

    goto/16 :goto_547

    :pswitch_e1c
    move v7, v9

    goto/16 :goto_547

    :pswitch_e1f
    move v7, v10

    goto/16 :goto_547

    :pswitch_e22
    move v7, v8

    goto/16 :goto_57c

    :pswitch_e25
    move v7, v8

    goto/16 :goto_57c

    :pswitch_e28
    move v7, v9

    goto/16 :goto_57c

    :pswitch_e2b
    move v7, v10

    goto/16 :goto_57c

    :pswitch_e2e
    move v7, v8

    goto/16 :goto_5b1

    :pswitch_e31
    move v7, v8

    goto/16 :goto_5b1

    :pswitch_e34
    move v7, v9

    goto/16 :goto_5b1

    :pswitch_e37
    move v7, v10

    goto/16 :goto_5b1

    :pswitch_e3a
    move v7, v8

    goto/16 :goto_5e6

    :pswitch_e3d
    move v7, v8

    goto/16 :goto_5e6

    :pswitch_e40
    move v7, v9

    goto/16 :goto_5e6

    :pswitch_e43
    move v7, v10

    goto/16 :goto_5e6

    :pswitch_e46
    move v7, v8

    goto/16 :goto_61b

    :pswitch_e49
    move v7, v8

    goto/16 :goto_61b

    :pswitch_e4c
    move v7, v9

    goto/16 :goto_61b

    :pswitch_e4f
    move v7, v10

    goto/16 :goto_61b

    :pswitch_e52
    move v7, v8

    goto/16 :goto_650

    :pswitch_e55
    move v7, v8

    goto/16 :goto_650

    :pswitch_e58
    move v7, v9

    goto/16 :goto_650

    :pswitch_e5b
    move v7, v10

    goto/16 :goto_650

    :pswitch_e5e
    move v7, v8

    goto/16 :goto_685

    :pswitch_e61
    move v7, v8

    goto/16 :goto_685

    :pswitch_e64
    move v7, v9

    goto/16 :goto_685

    :pswitch_e67
    move v7, v10

    goto/16 :goto_685

    :pswitch_e6a
    move v7, v8

    goto/16 :goto_6b8

    :pswitch_e6d
    move v7, v8

    goto/16 :goto_6b8

    :pswitch_e70
    move v7, v9

    goto/16 :goto_6b8

    :pswitch_e73
    move v7, v10

    goto/16 :goto_6b8

    :pswitch_e76
    move v7, v8

    goto/16 :goto_6ed

    :pswitch_e79
    move v7, v8

    goto/16 :goto_6ed

    :pswitch_e7c
    move v7, v9

    goto/16 :goto_6ed

    :pswitch_e7f
    move v7, v10

    goto/16 :goto_6ed

    :pswitch_e82
    move v7, v8

    goto/16 :goto_722

    :pswitch_e85
    move v7, v8

    goto/16 :goto_722

    :pswitch_e88
    move v7, v9

    goto/16 :goto_722

    :pswitch_e8b
    move v7, v10

    goto/16 :goto_722

    :pswitch_e8e
    move v7, v8

    goto/16 :goto_757

    :pswitch_e91
    move v7, v8

    goto/16 :goto_757

    :pswitch_e94
    move v7, v9

    goto/16 :goto_757

    :pswitch_e97
    move v7, v10

    goto/16 :goto_757

    :pswitch_e9a
    move v7, v8

    goto/16 :goto_78c

    :pswitch_e9d
    move v7, v8

    goto/16 :goto_78c

    :pswitch_ea0
    move v7, v9

    goto/16 :goto_78c

    :pswitch_ea3
    move v7, v10

    goto/16 :goto_78c

    :pswitch_ea6
    move v7, v8

    goto/16 :goto_7c1

    :pswitch_ea9
    move v7, v8

    goto/16 :goto_7c1

    :pswitch_eac
    move v7, v9

    goto/16 :goto_7c1

    :pswitch_eaf
    move v7, v10

    goto/16 :goto_7c1

    :pswitch_eb2
    move v7, v8

    goto/16 :goto_7f6

    :pswitch_eb5
    move v7, v8

    goto/16 :goto_7f6

    :pswitch_eb8
    move v7, v9

    goto/16 :goto_7f6

    :pswitch_ebb
    move v7, v10

    goto/16 :goto_7f6

    :pswitch_ebe
    move v7, v8

    goto/16 :goto_82b

    :pswitch_ec1
    move v7, v8

    goto/16 :goto_82b

    :pswitch_ec4
    move v7, v9

    goto/16 :goto_82b

    :pswitch_ec7
    move v7, v10

    goto/16 :goto_82b

    :pswitch_eca
    move v7, v8

    goto/16 :goto_860

    :pswitch_ecd
    move v7, v8

    goto/16 :goto_860

    :pswitch_ed0
    move v7, v9

    goto/16 :goto_860

    :pswitch_ed3
    move v7, v10

    goto/16 :goto_860

    :pswitch_ed6
    move v7, v8

    goto/16 :goto_895

    :pswitch_ed9
    move v7, v8

    goto/16 :goto_895

    :pswitch_edc
    move v7, v9

    goto/16 :goto_895

    :pswitch_edf
    move v7, v10

    goto/16 :goto_895

    :pswitch_ee2
    move v7, v8

    goto/16 :goto_8ca

    :pswitch_ee5
    move v7, v8

    goto/16 :goto_8ca

    :pswitch_ee8
    move v7, v9

    goto/16 :goto_8ca

    :pswitch_eeb
    move v7, v10

    goto/16 :goto_8ca

    :pswitch_eee
    move v7, v8

    goto/16 :goto_8ff

    :pswitch_ef1
    move v7, v8

    goto/16 :goto_8ff

    :pswitch_ef4
    move v7, v9

    goto/16 :goto_8ff

    :pswitch_ef7
    move v7, v10

    goto/16 :goto_8ff

    :pswitch_efa
    move v7, v8

    goto/16 :goto_934

    :pswitch_efd
    move v7, v8

    goto/16 :goto_934

    :pswitch_f00
    move v7, v9

    goto/16 :goto_934

    :pswitch_f03
    move v7, v10

    goto/16 :goto_934

    :pswitch_f06
    move v7, v8

    goto/16 :goto_969

    :pswitch_f09
    move v7, v8

    goto/16 :goto_969

    :pswitch_f0c
    move v7, v9

    goto/16 :goto_969

    :pswitch_f0f
    move v7, v10

    goto/16 :goto_969

    :pswitch_f12
    move v7, v8

    goto/16 :goto_99e

    :pswitch_f15
    move v7, v8

    goto/16 :goto_99e

    :pswitch_f18
    move v7, v9

    goto/16 :goto_99e

    :pswitch_f1b
    move v7, v10

    goto/16 :goto_99e

    :pswitch_f1e
    move v7, v8

    goto/16 :goto_9d3

    :pswitch_f21
    move v7, v8

    goto/16 :goto_9d3

    :pswitch_f24
    move v7, v9

    goto/16 :goto_9d3

    :pswitch_f27
    move v7, v10

    goto/16 :goto_9d3

    :pswitch_f2a
    move v7, v8

    goto/16 :goto_a08

    :pswitch_f2d
    move v7, v8

    goto/16 :goto_a08

    :pswitch_f30
    move v7, v9

    goto/16 :goto_a08

    :pswitch_f33
    move v7, v10

    goto/16 :goto_a08

    :pswitch_f36
    move v7, v8

    goto/16 :goto_a3d

    :pswitch_f39
    move v7, v8

    goto/16 :goto_a3d

    :pswitch_f3c
    move v7, v9

    goto/16 :goto_a3d

    :pswitch_f3f
    move v7, v10

    goto/16 :goto_a3d

    :pswitch_f42
    move v7, v8

    goto/16 :goto_a72

    :pswitch_f45
    move v7, v8

    goto/16 :goto_a72

    :pswitch_f48
    move v7, v9

    goto/16 :goto_a72

    :pswitch_f4b
    move v7, v10

    goto/16 :goto_a72

    :pswitch_f4e
    move v7, v8

    goto/16 :goto_aa7

    :pswitch_f51
    move v7, v8

    goto/16 :goto_aa7

    :pswitch_f54
    move v7, v9

    goto/16 :goto_aa7

    :pswitch_f57
    move v7, v10

    goto/16 :goto_aa7

    :pswitch_f5a
    move v7, v8

    goto/16 :goto_adc

    :pswitch_f5d
    move v7, v8

    goto/16 :goto_adc

    :pswitch_f60
    move v7, v9

    goto/16 :goto_adc

    :pswitch_f63
    move v7, v10

    goto/16 :goto_adc

    :pswitch_f66
    move v7, v8

    goto/16 :goto_b11

    :pswitch_f69
    move v7, v8

    goto/16 :goto_b11

    :pswitch_f6c
    move v7, v9

    goto/16 :goto_b11

    :pswitch_f6f
    move v7, v10

    goto/16 :goto_b11

    :pswitch_f72
    move v7, v8

    goto/16 :goto_b46

    :pswitch_f75
    move v7, v8

    goto/16 :goto_b46

    :pswitch_f78
    move v7, v9

    goto/16 :goto_b46

    :pswitch_f7b
    move v7, v10

    goto/16 :goto_b46

    :pswitch_f7e
    move v7, v8

    goto/16 :goto_b7b

    :pswitch_f81
    move v7, v8

    goto/16 :goto_b7b

    :pswitch_f84
    move v7, v9

    goto/16 :goto_b7b

    :pswitch_f87
    move v7, v10

    goto/16 :goto_b7b

    :pswitch_f8a
    move v7, v8

    goto/16 :goto_bb0

    :pswitch_f8d
    move v7, v8

    goto/16 :goto_bb0

    :pswitch_f90
    move v7, v9

    goto/16 :goto_bb0

    :pswitch_f93
    move v7, v10

    goto/16 :goto_bb0

    :pswitch_f96
    move v7, v8

    goto/16 :goto_be5

    :pswitch_f99
    move v7, v8

    goto/16 :goto_be5

    :pswitch_f9c
    move v7, v9

    goto/16 :goto_be5

    :pswitch_f9f
    move v7, v10

    goto/16 :goto_be5

    :pswitch_fa2
    move v7, v8

    goto/16 :goto_c1a

    :pswitch_fa5
    move v7, v8

    goto/16 :goto_c1a

    :pswitch_fa8
    move v7, v9

    goto/16 :goto_c1a

    :pswitch_fab
    move v7, v10

    goto/16 :goto_c1a

    :pswitch_fae
    move v7, v8

    goto/16 :goto_c4f

    :pswitch_fb1
    move v7, v8

    goto/16 :goto_c4f

    :pswitch_fb4
    move v7, v9

    goto/16 :goto_c4f

    :pswitch_fb7
    move v7, v10

    goto/16 :goto_c4f

    :pswitch_fba
    move v7, v8

    goto/16 :goto_c84

    :pswitch_fbd
    move v7, v8

    goto/16 :goto_c84

    :pswitch_fc0
    move v7, v9

    goto/16 :goto_c84

    :pswitch_fc3
    move v7, v10

    goto/16 :goto_c84

    :pswitch_fc6
    move v7, v8

    goto/16 :goto_cb9

    :pswitch_fc9
    move v7, v8

    goto/16 :goto_cb9

    :pswitch_fcc
    move v7, v9

    goto/16 :goto_cb9

    :pswitch_fcf
    move v7, v10

    goto/16 :goto_cb9

    :cond_fd2
    move v4, v1

    goto/16 :goto_cc7

    :cond_fd5
    move v4, v1

    goto/16 :goto_c92

    :cond_fd8
    move v4, v1

    goto/16 :goto_c5d

    :cond_fdb
    move v4, v1

    goto/16 :goto_c28

    :cond_fde
    move v4, v1

    goto/16 :goto_bf3

    :cond_fe1
    move v4, v1

    goto/16 :goto_bbe

    :cond_fe4
    move v4, v1

    goto/16 :goto_b89

    :cond_fe7
    move v4, v1

    goto/16 :goto_b54

    :cond_fea
    move v4, v1

    goto/16 :goto_b1f

    :cond_fed
    move v4, v1

    goto/16 :goto_aea

    :cond_ff0
    move v4, v1

    goto/16 :goto_ab5

    :cond_ff3
    move v4, v1

    goto/16 :goto_a80

    :cond_ff6
    move v4, v1

    goto/16 :goto_a4b

    :cond_ff9
    move v4, v1

    goto/16 :goto_a16

    :cond_ffc
    move v4, v1

    goto/16 :goto_9e1

    :cond_fff
    move v4, v1

    goto/16 :goto_9ac

    :cond_1002
    move v4, v1

    goto/16 :goto_977

    :cond_1005
    move v4, v1

    goto/16 :goto_942

    :cond_1008
    move v4, v1

    goto/16 :goto_90d

    :cond_100b
    move v4, v1

    goto/16 :goto_8d8

    :cond_100e
    move v4, v1

    goto/16 :goto_8a3

    :cond_1011
    move v4, v1

    goto/16 :goto_86e

    :cond_1014
    move v4, v1

    goto/16 :goto_839

    :cond_1017
    move v4, v1

    goto/16 :goto_804

    :cond_101a
    move v4, v1

    goto/16 :goto_7cf

    :cond_101d
    move v4, v1

    goto/16 :goto_79a

    :cond_1020
    move v4, v1

    goto/16 :goto_765

    :cond_1023
    move v4, v1

    goto/16 :goto_730

    :cond_1026
    move v4, v1

    goto/16 :goto_6fb

    :cond_1029
    move v4, v1

    goto/16 :goto_6c6

    :cond_102c
    move v4, v1

    goto/16 :goto_693

    :cond_102f
    move v4, v1

    goto/16 :goto_65e

    :cond_1032
    move v4, v1

    goto/16 :goto_629

    :cond_1035
    move v4, v1

    goto/16 :goto_5f4

    :cond_1038
    move v4, v1

    goto/16 :goto_5bf

    :cond_103b
    move v4, v1

    goto/16 :goto_58a

    :cond_103e
    move v4, v1

    goto/16 :goto_555

    :cond_1041
    move v4, v1

    goto/16 :goto_520

    :cond_1044
    move v4, v1

    goto/16 :goto_4eb

    :cond_1047
    move v4, v1

    goto/16 :goto_4b6

    :cond_104a
    move v4, v1

    goto/16 :goto_481

    :cond_104d
    move v4, v1

    goto/16 :goto_44c

    :cond_1050
    move v4, v1

    goto/16 :goto_417

    :cond_1053
    move v4, v1

    goto/16 :goto_3e2

    :cond_1056
    move v4, v1

    goto/16 :goto_3ad

    :cond_1059
    move v4, v1

    goto/16 :goto_378

    :cond_105c
    move v4, v1

    goto/16 :goto_343

    :cond_105f
    move v4, v1

    goto/16 :goto_30e

    :cond_1062
    move v4, v1

    goto/16 :goto_2d9

    :cond_1065
    move v4, v1

    goto/16 :goto_2a6

    :cond_1068
    move v4, v1

    goto/16 :goto_271

    :cond_106b
    move v4, v1

    goto/16 :goto_23c

    :cond_106e
    move v4, v1

    goto/16 :goto_207

    :cond_1071
    move v4, v1

    goto/16 :goto_1d2

    :cond_1074
    move v4, v1

    goto/16 :goto_19d

    :cond_1077
    move v4, v1

    goto/16 :goto_169

    :cond_107a
    move v4, v1

    goto/16 :goto_135

    :cond_107d
    move v4, v1

    goto/16 :goto_101

    :cond_1080
    move v4, v1

    goto/16 :goto_cd

    :cond_1083
    move v4, v1

    goto/16 :goto_99

    :cond_1086
    move v4, v1

    goto/16 :goto_65

    :cond_1089
    move v4, v1

    goto/16 :goto_32

    :pswitch_data_108c
    .packed-switch 0x0
        :pswitch_cea
        :pswitch_ced
        :pswitch_cf0
        :pswitch_cf3
    .end packed-switch

    :pswitch_data_1098
    .packed-switch 0x0
        :pswitch_cf6
        :pswitch_cf9
        :pswitch_cfc
        :pswitch_cff
    .end packed-switch

    :pswitch_data_10a4
    .packed-switch 0x0
        :pswitch_d02
        :pswitch_d05
        :pswitch_d08
        :pswitch_d0b
    .end packed-switch

    :pswitch_data_10b0
    .packed-switch 0x0
        :pswitch_d0e
        :pswitch_d11
        :pswitch_d14
        :pswitch_d17
    .end packed-switch

    :pswitch_data_10bc
    .packed-switch 0x0
        :pswitch_d1a
        :pswitch_d1d
        :pswitch_d20
        :pswitch_d23
    .end packed-switch

    :pswitch_data_10c8
    .packed-switch 0x0
        :pswitch_d26
        :pswitch_d29
        :pswitch_d2c
        :pswitch_d2f
    .end packed-switch

    :pswitch_data_10d4
    .packed-switch 0x0
        :pswitch_d32
        :pswitch_d35
        :pswitch_d38
        :pswitch_d3b
    .end packed-switch

    :pswitch_data_10e0
    .packed-switch 0x0
        :pswitch_d3e
        :pswitch_d41
        :pswitch_d44
        :pswitch_d47
    .end packed-switch

    :pswitch_data_10ec
    .packed-switch 0x0
        :pswitch_d4a
        :pswitch_d4d
        :pswitch_d50
        :pswitch_d53
    .end packed-switch

    :pswitch_data_10f8
    .packed-switch 0x0
        :pswitch_d56
        :pswitch_d59
        :pswitch_d5c
        :pswitch_d5f
    .end packed-switch

    :pswitch_data_1104
    .packed-switch 0x0
        :pswitch_d62
        :pswitch_d65
        :pswitch_d68
        :pswitch_d6b
    .end packed-switch

    :pswitch_data_1110
    .packed-switch 0x0
        :pswitch_d6e
        :pswitch_d71
        :pswitch_d74
        :pswitch_d77
    .end packed-switch

    :pswitch_data_111c
    .packed-switch 0x0
        :pswitch_d7a
        :pswitch_d7d
        :pswitch_d80
        :pswitch_d83
    .end packed-switch

    :pswitch_data_1128
    .packed-switch 0x0
        :pswitch_d86
        :pswitch_d89
        :pswitch_d8c
        :pswitch_d8f
    .end packed-switch

    :pswitch_data_1134
    .packed-switch 0x0
        :pswitch_d92
        :pswitch_d95
        :pswitch_d98
        :pswitch_d9b
    .end packed-switch

    :pswitch_data_1140
    .packed-switch 0x0
        :pswitch_d9e
        :pswitch_da1
        :pswitch_da4
        :pswitch_da7
    .end packed-switch

    :pswitch_data_114c
    .packed-switch 0x0
        :pswitch_daa
        :pswitch_dad
        :pswitch_db0
        :pswitch_db3
    .end packed-switch

    :pswitch_data_1158
    .packed-switch 0x0
        :pswitch_db6
        :pswitch_db9
        :pswitch_dbc
        :pswitch_dbf
    .end packed-switch

    :pswitch_data_1164
    .packed-switch 0x0
        :pswitch_dc2
        :pswitch_dc5
        :pswitch_dc8
        :pswitch_dcb
    .end packed-switch

    :pswitch_data_1170
    .packed-switch 0x0
        :pswitch_dce
        :pswitch_dd1
        :pswitch_dd4
        :pswitch_dd7
    .end packed-switch

    :pswitch_data_117c
    .packed-switch 0x0
        :pswitch_dda
        :pswitch_ddd
        :pswitch_de0
        :pswitch_de3
    .end packed-switch

    :pswitch_data_1188
    .packed-switch 0x0
        :pswitch_de6
        :pswitch_de9
        :pswitch_dec
        :pswitch_def
    .end packed-switch

    :pswitch_data_1194
    .packed-switch 0x0
        :pswitch_df2
        :pswitch_df5
        :pswitch_df8
        :pswitch_dfb
    .end packed-switch

    :pswitch_data_11a0
    .packed-switch 0x0
        :pswitch_dfe
        :pswitch_e01
        :pswitch_e04
        :pswitch_e07
    .end packed-switch

    :pswitch_data_11ac
    .packed-switch 0x0
        :pswitch_e0a
        :pswitch_e0d
        :pswitch_e10
        :pswitch_e13
    .end packed-switch

    :pswitch_data_11b8
    .packed-switch 0x0
        :pswitch_e16
        :pswitch_e19
        :pswitch_e1c
        :pswitch_e1f
    .end packed-switch

    :pswitch_data_11c4
    .packed-switch 0x0
        :pswitch_e22
        :pswitch_e25
        :pswitch_e28
        :pswitch_e2b
    .end packed-switch

    :pswitch_data_11d0
    .packed-switch 0x0
        :pswitch_e2e
        :pswitch_e31
        :pswitch_e34
        :pswitch_e37
    .end packed-switch

    :pswitch_data_11dc
    .packed-switch 0x0
        :pswitch_e3a
        :pswitch_e3d
        :pswitch_e40
        :pswitch_e43
    .end packed-switch

    :pswitch_data_11e8
    .packed-switch 0x0
        :pswitch_e46
        :pswitch_e49
        :pswitch_e4c
        :pswitch_e4f
    .end packed-switch

    :pswitch_data_11f4
    .packed-switch 0x0
        :pswitch_e52
        :pswitch_e55
        :pswitch_e58
        :pswitch_e5b
    .end packed-switch

    :pswitch_data_1200
    .packed-switch 0x0
        :pswitch_e5e
        :pswitch_e61
        :pswitch_e64
        :pswitch_e67
    .end packed-switch

    :pswitch_data_120c
    .packed-switch 0x0
        :pswitch_e6a
        :pswitch_e6d
        :pswitch_e70
        :pswitch_e73
    .end packed-switch

    :pswitch_data_1218
    .packed-switch 0x0
        :pswitch_e76
        :pswitch_e79
        :pswitch_e7c
        :pswitch_e7f
    .end packed-switch

    :pswitch_data_1224
    .packed-switch 0x0
        :pswitch_e82
        :pswitch_e85
        :pswitch_e88
        :pswitch_e8b
    .end packed-switch

    :pswitch_data_1230
    .packed-switch 0x0
        :pswitch_e8e
        :pswitch_e91
        :pswitch_e94
        :pswitch_e97
    .end packed-switch

    :pswitch_data_123c
    .packed-switch 0x0
        :pswitch_e9a
        :pswitch_e9d
        :pswitch_ea0
        :pswitch_ea3
    .end packed-switch

    :pswitch_data_1248
    .packed-switch 0x0
        :pswitch_ea6
        :pswitch_ea9
        :pswitch_eac
        :pswitch_eaf
    .end packed-switch

    :pswitch_data_1254
    .packed-switch 0x0
        :pswitch_eb2
        :pswitch_eb5
        :pswitch_eb8
        :pswitch_ebb
    .end packed-switch

    :pswitch_data_1260
    .packed-switch 0x0
        :pswitch_ebe
        :pswitch_ec1
        :pswitch_ec4
        :pswitch_ec7
    .end packed-switch

    :pswitch_data_126c
    .packed-switch 0x0
        :pswitch_eca
        :pswitch_ecd
        :pswitch_ed0
        :pswitch_ed3
    .end packed-switch

    :pswitch_data_1278
    .packed-switch 0x0
        :pswitch_ed6
        :pswitch_ed9
        :pswitch_edc
        :pswitch_edf
    .end packed-switch

    :pswitch_data_1284
    .packed-switch 0x0
        :pswitch_ee2
        :pswitch_ee5
        :pswitch_ee8
        :pswitch_eeb
    .end packed-switch

    :pswitch_data_1290
    .packed-switch 0x0
        :pswitch_eee
        :pswitch_ef1
        :pswitch_ef4
        :pswitch_ef7
    .end packed-switch

    :pswitch_data_129c
    .packed-switch 0x0
        :pswitch_efa
        :pswitch_efd
        :pswitch_f00
        :pswitch_f03
    .end packed-switch

    :pswitch_data_12a8
    .packed-switch 0x0
        :pswitch_f06
        :pswitch_f09
        :pswitch_f0c
        :pswitch_f0f
    .end packed-switch

    :pswitch_data_12b4
    .packed-switch 0x0
        :pswitch_f12
        :pswitch_f15
        :pswitch_f18
        :pswitch_f1b
    .end packed-switch

    :pswitch_data_12c0
    .packed-switch 0x0
        :pswitch_f1e
        :pswitch_f21
        :pswitch_f24
        :pswitch_f27
    .end packed-switch

    :pswitch_data_12cc
    .packed-switch 0x0
        :pswitch_f2a
        :pswitch_f2d
        :pswitch_f30
        :pswitch_f33
    .end packed-switch

    :pswitch_data_12d8
    .packed-switch 0x0
        :pswitch_f36
        :pswitch_f39
        :pswitch_f3c
        :pswitch_f3f
    .end packed-switch

    :pswitch_data_12e4
    .packed-switch 0x0
        :pswitch_f42
        :pswitch_f45
        :pswitch_f48
        :pswitch_f4b
    .end packed-switch

    :pswitch_data_12f0
    .packed-switch 0x0
        :pswitch_f4e
        :pswitch_f51
        :pswitch_f54
        :pswitch_f57
    .end packed-switch

    :pswitch_data_12fc
    .packed-switch 0x0
        :pswitch_f5a
        :pswitch_f5d
        :pswitch_f60
        :pswitch_f63
    .end packed-switch

    :pswitch_data_1308
    .packed-switch 0x0
        :pswitch_f66
        :pswitch_f69
        :pswitch_f6c
        :pswitch_f6f
    .end packed-switch

    :pswitch_data_1314
    .packed-switch 0x0
        :pswitch_f72
        :pswitch_f75
        :pswitch_f78
        :pswitch_f7b
    .end packed-switch

    :pswitch_data_1320
    .packed-switch 0x0
        :pswitch_f7e
        :pswitch_f81
        :pswitch_f84
        :pswitch_f87
    .end packed-switch

    :pswitch_data_132c
    .packed-switch 0x0
        :pswitch_f8a
        :pswitch_f8d
        :pswitch_f90
        :pswitch_f93
    .end packed-switch

    :pswitch_data_1338
    .packed-switch 0x0
        :pswitch_f96
        :pswitch_f99
        :pswitch_f9c
        :pswitch_f9f
    .end packed-switch

    :pswitch_data_1344
    .packed-switch 0x0
        :pswitch_fa2
        :pswitch_fa5
        :pswitch_fa8
        :pswitch_fab
    .end packed-switch

    :pswitch_data_1350
    .packed-switch 0x0
        :pswitch_fae
        :pswitch_fb1
        :pswitch_fb4
        :pswitch_fb7
    .end packed-switch

    :pswitch_data_135c
    .packed-switch 0x0
        :pswitch_fba
        :pswitch_fbd
        :pswitch_fc0
        :pswitch_fc3
    .end packed-switch

    :pswitch_data_1368
    .packed-switch 0x0
        :pswitch_fc6
        :pswitch_fc9
        :pswitch_fcc
        :pswitch_fcf
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/b;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lcom/c/bq;->a:I

    invoke-direct {p0}, Lcom/c/bb;-><init>()V

    const-class v3, Lcom/c/bj;

    invoke-static {v3}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;

    move-result-object v3

    iput-object v3, p0, Lcom/c/bj;->e:Lcom/c/bp;

    check-cast p1, Lcom/c/cm;

    invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/c/bj;->f:Landroid/content/Context;

    new-instance v3, Lcom/c/k;

    invoke-direct {v3, p0, v4}, Lcom/c/k;-><init>(Lcom/c/bj;Lcom/c/by;)V

    iput-object v3, p0, Lcom/c/bj;->h:Lcom/c/k;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v3

    iput-object v3, p0, Lcom/c/bj;->n:Lcom/c/ba;

    iput-object v4, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    iput-boolean v0, p0, Lcom/c/bj;->o:Z

    iput-boolean v1, p0, Lcom/c/bj;->p:Z

    invoke-direct {p0}, Lcom/c/bj;->k()V

    if-eqz v2, :cond_3d

    sget-boolean v2, Lcom/c/bp;->b:Z

    if-eqz v2, :cond_3e

    :goto_3b
    sput-boolean v0, Lcom/c/bp;->b:Z

    :cond_3d
    return-void

    :cond_3e
    move v0, v1

    goto :goto_3b
.end method

.method static synthetic a(Lcom/c/bj;Lcom/c/ba;)Lcom/c/ba;
    .registers 2

    iput-object p1, p0, Lcom/c/bj;->n:Lcom/c/ba;

    return-object p1
.end method

.method private a(Landroid/net/wifi/WifiInfo;JLcom/c/ba;)Lcom/c/bu;
    .registers 11

    invoke-static {p1}, Lcom/c/bj;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/c/bu;

    new-instance v1, Lcom/c/bq;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/c/bq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/c/bu;-><init>(Lcom/c/bq;IJLcom/c/ba;)V

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method static synthetic a(Lcom/c/bj;Landroid/net/wifi/WifiInfo;JLcom/c/ba;)Lcom/c/bu;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/c/bj;->a(Landroid/net/wifi/WifiInfo;JLcom/c/ba;)Lcom/c/bu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/c/bj;Ljava/util/List;JLcom/c/ba;Ljava/util/ArrayList;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/c/bj;->a(Ljava/util/List;JLcom/c/ba;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/List;JLcom/c/ba;Ljava/util/ArrayList;)V
    .registers 16

    sget v7, Lcom/c/bq;->a:I

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/ScanResult;

    if-eqz v6, :cond_b

    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_b

    :try_start_1e
    new-instance v1, Lcom/c/bq;

    iget-object v0, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/c/bq;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_25} :catch_b0

    iget-object v0, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v4, 0x2e

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v7, :cond_b

    :cond_5d
    new-instance v0, Lcom/c/bu;

    iget v2, v6, Landroid/net/wifi/ScanResult;->level:I

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/c/bu;-><init>(Lcom/c/bq;IJLcom/c/ba;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_94

    sget-object v0, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v0, v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_94
    if-eqz v7, :cond_b

    :cond_96
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_af

    const/4 v0, 0x0

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_af
    return-void

    :catch_b0
    move-exception v0

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v4, 0x2c

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b
.end method

.method static a(Landroid/net/wifi/WifiInfo;)Z
    .registers 3

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic a(Lcom/c/bj;)Z
    .registers 2

    invoke-direct {p0}, Lcom/c/bj;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/c/bj;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/c/bj;->m:Z

    return p1
.end method

.method static synthetic a(Ljava/util/List;Lcom/c/bu;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/c/bj;->b(Ljava/util/List;Lcom/c/bu;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/c/bj;)Lcom/c/bp;
    .registers 2

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    return-object v0
.end method

.method private static b(Ljava/util/List;Lcom/c/bu;)Z
    .registers 5

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/bu;

    invoke-virtual {v0}, Lcom/c/bu;->b()Lcom/c/bq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/bu;->b()Lcom/c/bq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/c/bq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method static synthetic c(Lcom/c/bj;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic d(Lcom/c/bj;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/c/bj;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/c/bj;)Lcom/c/ba;
    .registers 2

    iget-object v0, p0, Lcom/c/bj;->n:Lcom/c/ba;

    return-object v0
.end method

.method static synthetic f(Lcom/c/bj;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/c/bj;)Lcom/c/cc;
    .registers 2

    iget-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    return-object v0
.end method

.method static synthetic h(Lcom/c/bj;)V
    .registers 1

    invoke-virtual {p0}, Lcom/c/bj;->a()V

    return-void
.end method

.method private declared-synchronized k()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/bj;->m()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3f

    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/c/bj;->f:Landroid/content/Context;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_42

    new-instance v0, Lcom/c/ca;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/c/ca;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/c/cc;

    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, p0, v1}, Lcom/c/cc;-><init>(Lcom/c/bj;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x39

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/c/bj;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/c/bj;->h:Lcom/c/k;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_79
    .catchall {:try_start_42 .. :try_end_79} :catchall_3f

    :try_start_79
    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_9c
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_79 .. :try_end_a7} :catchall_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_79 .. :try_end_a7} :catch_a9
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_a7} :catch_b7

    goto/16 :goto_1d

    :catch_a9
    move-exception v0

    :try_start_aa
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x36

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto/16 :goto_1d

    :catch_b7
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_3f

    goto/16 :goto_1d
.end method

.method private l()Z
    .registers 4

    iget-boolean v0, p0, Lcom/c/bj;->m:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/c/bj;->n:Lcom/c/ba;

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget v0, Lcom/c/bq;->a:I

    if-eqz v0, :cond_29

    :cond_19
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    invoke-virtual {v0}, Lcom/c/cc;->b()V

    :cond_29
    iget-boolean v0, p0, Lcom/c/bj;->m:Z

    return v0
.end method

.method private m()Z
    .registers 2

    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private n()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v3, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/c/bj;->p:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bj;->d:Lcom/c/cg;

    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/c/cg;->b(Landroid/net/wifi/WifiManager;)V

    :goto_21
    return-void

    :cond_22
    sget-boolean v0, Lcom/c/bj;->c:Z

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/c/bj;->d()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_32
    iget-object v0, p0, Lcom/c/bj;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    :goto_44
    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto :goto_21

    :cond_50
    move v0, v2

    goto :goto_44

    :cond_52
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bj;->d:Lcom/c/cg;

    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/c/cg;->a(Landroid/net/wifi/WifiManager;)V

    iput-boolean v2, p0, Lcom/c/bj;->p:Z

    goto :goto_21
.end method

.method private o()V
    .registers 4

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_13
    iget-boolean v0, p0, Lcom/c/bj;->p:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    sget-boolean v0, Lcom/c/bj;->c:Z

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/c/bj;->d()Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/c/bj;->d:Lcom/c/cg;

    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/c/cg;->c(Landroid/net/wifi/WifiManager;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/bj;->p:Z

    goto :goto_22
.end method


# virtual methods
.method protected a(Lcom/c/b;)Lcom/c/bb;
    .registers 3

    new-instance v0, Lcom/c/bj;

    invoke-direct {v0, p1}, Lcom/c/bj;-><init>(Lcom/c/b;)V

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 15

    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_3
    sget v9, Lcom/c/bq;->a:I

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v0}, Lcom/c/bp;->b()Z

    move-result v10

    invoke-virtual {p0}, Lcom/c/bj;->d()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_73

    move v0, v6

    :goto_28
    monitor-exit p0

    return v0

    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/c/bj;->n()V

    invoke-virtual {p0}, Lcom/c/bj;->f()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    move v0, v6

    goto :goto_28

    :cond_61
    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    sget-boolean v0, Lcom/c/bj;->c:Z

    if-nez v0, :cond_76

    if-nez v11, :cond_76

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_73
    .catchall {:try_start_2a .. :try_end_73} :catchall_73

    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_76
    :try_start_76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v4

    invoke-direct {p0, v11, v2, v3, v4}, Lcom/c/bj;->a(Landroid/net/wifi/WifiInfo;JLcom/c/ba;)Lcom/c/bu;

    move-result-object v12

    if-eqz v12, :cond_10d

    move v8, v7

    :goto_85
    if-eqz v8, :cond_11b

    if-eqz v10, :cond_a5

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v13, 0x15

    aget-object v5, v5, v13

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_a5
    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    iget-object v5, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/c/bj;->a(Ljava/util/List;JLcom/c/ba;Ljava/util/ArrayList;)V

    if-eqz v10, :cond_e6

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    if-eqz v9, :cond_e6

    :cond_db
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_e6
    iget-object v0, p0, Lcom/c/bj;->n:Lcom/c/ba;

    invoke-virtual {v0}, Lcom/c/ba;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/c/a/ci;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_110

    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lcom/c/bj;->b(Ljava/util/List;Lcom/c/bu;)Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/c/bj;->a()V

    move v0, v7

    goto/16 :goto_28

    :cond_10d
    move v8, v6

    goto/16 :goto_85

    :cond_110
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_11b
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isValidState(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eqz v10, :cond_15b

    iget-object v2, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_15b
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_173

    invoke-virtual {p0}, Lcom/c/bj;->b()Z

    move-result v2

    if-eqz v2, :cond_173

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_28

    :cond_173
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_185

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_185

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_193

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_193

    :cond_185
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_28

    :cond_193
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_19f

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_19f

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1ad

    :cond_19f
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_28

    :cond_1ad
    invoke-virtual {p0}, Lcom/c/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_1da

    if-eqz v10, :cond_1d7

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/bj;->n:Lcom/c/ba;

    invoke-virtual {v2}, Lcom/c/ba;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_1d7
    move v0, v7

    goto/16 :goto_28

    :cond_1da
    iget-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    invoke-virtual {v0}, Lcom/c/cc;->c()Z

    move-result v0

    if-nez v0, :cond_1e9

    iget-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    invoke-virtual {v0}, Lcom/c/cc;->a()V

    if-eqz v9, :cond_1f4

    :cond_1e9
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    :cond_1f4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/bj;->m:Z

    iget-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;
    :try_end_1f9
    .catchall {:try_start_76 .. :try_end_1f9} :catchall_73

    if-eqz v0, :cond_225

    if-nez v8, :cond_225

    :try_start_1fd
    iget-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/bj;->m:Z

    invoke-direct {p0}, Lcom/c/bj;->l()Z
    :try_end_213
    .catchall {:try_start_1fd .. :try_end_213} :catchall_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_1fd .. :try_end_213} :catch_216
    .catch Ljava/lang/SecurityException; {:try_start_1fd .. :try_end_213} :catch_233
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1fd .. :try_end_213} :catch_243
    .catch Ljava/lang/ClassCastException; {:try_start_1fd .. :try_end_213} :catch_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fd .. :try_end_213} :catch_25f

    move-result v0

    goto/16 :goto_28

    :catch_216
    move-exception v0

    :try_start_217
    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    :cond_225
    :goto_225
    sget-boolean v0, Lcom/c/bj;->c:Z

    if-nez v0, :cond_26a

    iget-boolean v0, p0, Lcom/c/bj;->m:Z

    if-eqz v0, :cond_26a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_233
    move-exception v0

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->j:Ljava/lang/reflect/Method;

    goto :goto_225

    :catch_243
    move-exception v0

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_225

    :catch_254
    move-exception v0

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto :goto_225

    :catch_25f
    move-exception v0

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_269
    .catchall {:try_start_217 .. :try_end_269} :catchall_73

    goto :goto_225

    :cond_26a
    :try_start_26a
    iget-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/bj;->m:Z
    :try_end_272
    .catchall {:try_start_26a .. :try_end_272} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_272} :catch_278

    :goto_272
    :try_start_272
    invoke-direct {p0}, Lcom/c/bj;->l()Z

    move-result v0

    goto/16 :goto_28

    :catch_278
    move-exception v0

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->d(Ljava/lang/String;)V
    :try_end_284
    .catchall {:try_start_272 .. :try_end_284} :catchall_73

    goto :goto_272
.end method

.method public declared-synchronized b()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/c/bj;->m:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/c/bj;->n:Lcom/c/ba;

    invoke-virtual {v0}, Lcom/c/ba;->a()J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/bj;->m()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->e(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_65

    :goto_1e
    monitor-exit p0

    return-object v0

    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/c/bj;->e:Lcom/c/bp;

    invoke-virtual {v2}, Lcom/c/bp;->b()Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/c/bj;->e:Lcom/c/bp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v5, 0x1e

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_65
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_56} :catch_58

    :cond_56
    move-object v0, v1

    goto :goto_1e

    :catch_58
    move-exception v1

    :try_start_59
    iget-object v2, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v3, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/c/bp;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_65

    goto :goto_1e

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/c/bj;->o:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1e

    :try_start_b
    invoke-direct {p0}, Lcom/c/bj;->k()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1e
    .catch Lcom/c/ca; {:try_start_b .. :try_end_e} :catch_41

    :try_start_e
    sget-boolean v0, Lcom/c/bj;->c:Z

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/c/bj;->m()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/c/bj;->m()Z
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    move-result v0

    if-nez v0, :cond_29

    :goto_27
    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/c/bj;->d()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    goto :goto_27

    :cond_3a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/bj;->o:Z

    invoke-direct {p0}, Lcom/c/bj;->n()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_1e

    goto :goto_27

    :catch_41
    move-exception v0

    goto :goto_27
.end method

.method public declared-synchronized f()Z
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/c/bj;->d()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_20

    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_20

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/c/bj;->d()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_39

    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/c/bj;->o()V

    iget-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    invoke-virtual {v0}, Lcom/c/cc;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/bj;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/bj;->o:Z
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    goto :goto_1d

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/c/bj;->g()V

    invoke-direct {p0}, Lcom/c/bj;->m()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_4b

    :goto_20
    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_4b

    :try_start_2d
    iget-object v0, p0, Lcom/c/bj;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/c/bj;->h:Lcom/c/k;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v1, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3f} :catch_4e

    :try_start_3f
    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_4b

    goto :goto_20

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_4e
    move-exception v0

    :try_start_4f
    iget-object v1, p0, Lcom/c/bj;->e:Lcom/c/bp;

    sget-object v2, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_66

    :try_start_5a
    iget-object v0, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->k:Lcom/c/cc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    goto :goto_20

    :catchall_66
    move-exception v0

    iget-object v1, p0, Lcom/c/bj;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/c/bj;->k:Lcom/c/cc;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    throw v0
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_4b
.end method

.method public i()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/c/bj;->q:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public declared-synchronized j()Z
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/c/bj;->m()Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_20

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/c/bj;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/c/bj;->a(Landroid/net/wifi/WifiInfo;JLcom/c/ba;)Lcom/c/bu;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_20

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/c/bj;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
