.class public final Lcom/c/n;
.super Lcom/c/i;
.field public static f:I
.field private static final n:[Ljava/lang/String;
.field private final h:Landroid/telephony/PhoneStateListener;
.field private final i:Lcom/c/bp;
.field private final j:Landroid/content/Context;
.field private final k:Landroid/telephony/TelephonyManager;
.field private l:Z
.field private m:Lcom/c/a/cg;
.method static constructor <clinit>()V
.registers 15
const/16 v8, 0x48
const/16 v9, 0x15
const/4 v7, 0x2
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v0, 0xf
new-array v10, v0, [Ljava/lang/String;
const-string v0, "\u0003j1&p"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_407
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
packed-switch v6, :pswitch_data_40a
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
const-string v0, "\u0003j1&pSl1<5\u0015m+&q"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_404
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
packed-switch v6, :pswitch_data_416
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
const-string v0, "\u0003j1&pSv\'8pS?~"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_401
move v2, v3
:cond_79
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_7e
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_422
move v6, v9
:goto_86
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_92
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_7e
:cond_92
move v1, v0
move-object v0, v4
:goto_94
if-gt v1, v2, :cond_79
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v7
const/4 v11, 0x3
const-string v0, "\u0010f3)5\u001fm=)a\u001am0r5"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3fe
move v2, v3
:cond_ac
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_b1
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_42e
move v6, v9
:goto_b9
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_c5
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_b1
:cond_c5
move v1, v0
move-object v0, v4
:goto_c7
if-gt v1, v2, :cond_ac
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x4
const-string v0, "\u001dm~+q\u001ec~;p\u0001t7&rSa;$y"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3fb
move v2, v3
:cond_df
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_e4
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_43a
move v6, v9
:goto_ec
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_f8
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_e4
:cond_f8
move v1, v0
move-object v0, v4
:goto_fa
if-gt v1, v2, :cond_df
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x5
const-string v0, "\u0014m*h{\u0016u~$z\u0010c*!z\u001d\") |\u001fg~&z\u0007\"*:t\u0010i7&r"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3f8
move v2, v3
:cond_112
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_117
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_446
move v6, v9
:goto_11f
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_12b
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_117
:cond_12b
move v1, v0
move-object v0, v4
:goto_12d
if-gt v1, v2, :cond_112
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x6
const-string v0, "\u001al()y\u001af~+q\u001ec~$z\u0010c*!z\u001d"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3f5
move v2, v3
:cond_145
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_14a
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_452
move v6, v9
:goto_152
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_15e
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_14a
:cond_15e
move v1, v0
move-object v0, v4
:goto_160
if-gt v1, v2, :cond_145
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x7
const-string v0, "\u0006l5&z\u0004l~+q\u001ec~$z\u0010c*!z\u001d"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3f2
move v2, v3
:cond_178
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_17d
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_45e
move v6, v9
:goto_185
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_191
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_17d
:cond_191
move v1, v0
move-object v0, v4
:goto_193
if-gt v1, v2, :cond_178
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x8
const-string v0, "\u0016l?*y\u0016N1+t\u0007k1&@\u0003f?<p\u0000"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3ef
move v2, v3
:cond_1ac
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1b1
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_46a
move v6, v9
:goto_1b9
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_1c5
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1b1
:cond_1c5
move v1, v0
move-object v0, v4
:goto_1c7
if-gt v1, v2, :cond_1ac
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x9
const-string v0, "\u001dm*ht\u001fn1?p\u0017\"*\'5\u0016l?*y\u0016-:!f\u0012`2-5\u001fm=)a\u001am0h`\u0003f?<p\u0000"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3ec
move v2, v3
:cond_1e0
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1e5
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_476
move v6, v9
:goto_1ed
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_1f9
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1e5
:cond_1f9
move v1, v0
move-object v0, v4
:goto_1fb
if-gt v1, v2, :cond_1e0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xa
const-string v0, "\u0012l::z\u001afp8p\u0001o7;f\u001am0fV<L\n\u001aZ?]\u0012\u0007V2V\u0017\u0007[,W\u000e\u000cT\'G\r"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3e9
move v2, v3
:cond_214
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_219
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_482
move v6, v9
:goto_221
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_22d
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_219
:cond_22d
move v1, v0
move-object v0, v4
:goto_22f
if-gt v1, v2, :cond_214
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xb
const-string v0, "\u0010m+$q\u001d%*hp\u001dc<$pSn1+t\u0007k1&5\u0006r:)a\u0016q"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3e6
move v2, v3
:cond_248
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_24d
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_48e
move v6, v9
:goto_255
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_261
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_24d
:cond_261
move v1, v0
move-object v0, v4
:goto_263
if-gt v1, v2, :cond_248
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xc
const-string v0, "\u001fm=)a\u001am0h`\u0003f?<p\u0000\";&t\u0011n;,"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3e3
move v2, v3
:cond_27c
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_281
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_49a
move v6, v9
:goto_289
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_295
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_281
:cond_295
move v1, v0
move-object v0, v4
:goto_297
if-gt v1, v2, :cond_27c
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xd
const-string v0, "\u0010m+$q\u001d%*hq\u001aq?*y\u0016\"2\'v\u0012v7\'{Sw.,t\u0007g-"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_3e0
move v2, v3
:cond_2b0
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_2b5
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_4a6
move v6, v9
:goto_2bd
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2c9
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_2b5
:cond_2c9
move v1, v0
move-object v0, v4
:goto_2cb
if-gt v1, v2, :cond_2b0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v6, 0xe
const-string v0, "\u0017k-)w\u001fg\u0012\'v\u0012v7\'{&r:)a\u0016q"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_2fe
:cond_2e3
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_2e8
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_4b2
move v5, v9
:goto_2f0
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_2fc
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_2e8
:cond_2fc
move v1, v0
move-object v0, v2
:cond_2fe
if-gt v1, v3, :cond_2e3
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/n;->n:[Ljava/lang/String;
return-void
:pswitch_30e
const/16 v6, 0x73
goto/16 :goto_22
:pswitch_312
move v6, v7
goto/16 :goto_22
:pswitch_315
const/16 v6, 0x5e
goto/16 :goto_22
:pswitch_319
move v6, v8
goto/16 :goto_22
:pswitch_31c
const/16 v6, 0x73
goto/16 :goto_54
:pswitch_320
move v6, v7
goto/16 :goto_54
:pswitch_323
const/16 v6, 0x5e
goto/16 :goto_54
:pswitch_327
move v6, v8
goto/16 :goto_54
:pswitch_32a
const/16 v6, 0x73
goto/16 :goto_86
:pswitch_32e
move v6, v7
goto/16 :goto_86
:pswitch_331
const/16 v6, 0x5e
goto/16 :goto_86
:pswitch_335
move v6, v8
goto/16 :goto_86
:pswitch_338
const/16 v6, 0x73
goto/16 :goto_b9
:pswitch_33c
move v6, v7
goto/16 :goto_b9
:pswitch_33f
const/16 v6, 0x5e
goto/16 :goto_b9
:pswitch_343
move v6, v8
goto/16 :goto_b9
:pswitch_346
const/16 v6, 0x73
goto/16 :goto_ec
:pswitch_34a
move v6, v7
goto/16 :goto_ec
:pswitch_34d
const/16 v6, 0x5e
goto/16 :goto_ec
:pswitch_351
move v6, v8
goto/16 :goto_ec
:pswitch_354
const/16 v6, 0x73
goto/16 :goto_11f
:pswitch_358
move v6, v7
goto/16 :goto_11f
:pswitch_35b
const/16 v6, 0x5e
goto/16 :goto_11f
:pswitch_35f
move v6, v8
goto/16 :goto_11f
:pswitch_362
const/16 v6, 0x73
goto/16 :goto_152
:pswitch_366
move v6, v7
goto/16 :goto_152
:pswitch_369
const/16 v6, 0x5e
goto/16 :goto_152
:pswitch_36d
move v6, v8
goto/16 :goto_152
:pswitch_370
const/16 v6, 0x73
goto/16 :goto_185
:pswitch_374
move v6, v7
goto/16 :goto_185
:pswitch_377
const/16 v6, 0x5e
goto/16 :goto_185
:pswitch_37b
move v6, v8
goto/16 :goto_185
:pswitch_37e
const/16 v6, 0x73
goto/16 :goto_1b9
:pswitch_382
move v6, v7
goto/16 :goto_1b9
:pswitch_385
const/16 v6, 0x5e
goto/16 :goto_1b9
:pswitch_389
move v6, v8
goto/16 :goto_1b9
:pswitch_38c
const/16 v6, 0x73
goto/16 :goto_1ed
:pswitch_390
move v6, v7
goto/16 :goto_1ed
:pswitch_393
const/16 v6, 0x5e
goto/16 :goto_1ed
:pswitch_397
move v6, v8
goto/16 :goto_1ed
:pswitch_39a
const/16 v6, 0x73
goto/16 :goto_221
:pswitch_39e
move v6, v7
goto/16 :goto_221
:pswitch_3a1
const/16 v6, 0x5e
goto/16 :goto_221
:pswitch_3a5
move v6, v8
goto/16 :goto_221
:pswitch_3a8
const/16 v6, 0x73
goto/16 :goto_255
:pswitch_3ac
move v6, v7
goto/16 :goto_255
:pswitch_3af
const/16 v6, 0x5e
goto/16 :goto_255
:pswitch_3b3
move v6, v8
goto/16 :goto_255
:pswitch_3b6
const/16 v6, 0x73
goto/16 :goto_289
:pswitch_3ba
move v6, v7
goto/16 :goto_289
:pswitch_3bd
const/16 v6, 0x5e
goto/16 :goto_289
:pswitch_3c1
move v6, v8
goto/16 :goto_289
:pswitch_3c4
const/16 v6, 0x73
goto/16 :goto_2bd
:pswitch_3c8
move v6, v7
goto/16 :goto_2bd
:pswitch_3cb
const/16 v6, 0x5e
goto/16 :goto_2bd
:pswitch_3cf
move v6, v8
goto/16 :goto_2bd
:pswitch_3d2
const/16 v5, 0x73
goto/16 :goto_2f0
:pswitch_3d6
move v5, v7
goto/16 :goto_2f0
:pswitch_3d9
const/16 v5, 0x5e
goto/16 :goto_2f0
:pswitch_3dd
move v5, v8
goto/16 :goto_2f0
:cond_3e0
move v2, v3
goto/16 :goto_2cb
:cond_3e3
move v2, v3
goto/16 :goto_297
:cond_3e6
move v2, v3
goto/16 :goto_263
:cond_3e9
move v2, v3
goto/16 :goto_22f
:cond_3ec
move v2, v3
goto/16 :goto_1fb
:cond_3ef
move v2, v3
goto/16 :goto_1c7
:cond_3f2
move v2, v3
goto/16 :goto_193
:cond_3f5
move v2, v3
goto/16 :goto_160
:cond_3f8
move v2, v3
goto/16 :goto_12d
:cond_3fb
move v2, v3
goto/16 :goto_fa
:cond_3fe
move v2, v3
goto/16 :goto_c7
:cond_401
move v2, v3
goto/16 :goto_94
:cond_404
move v2, v3
goto/16 :goto_62
:cond_407
move v2, v3
goto/16 :goto_30
:pswitch_data_43a
.packed-switch 0x0
:pswitch_346
:pswitch_34a
:pswitch_34d
:pswitch_351
.end packed-switch
:pswitch_data_422
.packed-switch 0x0
:pswitch_32a
:pswitch_32e
:pswitch_331
:pswitch_335
.end packed-switch
:pswitch_data_42e
.packed-switch 0x0
:pswitch_338
:pswitch_33c
:pswitch_33f
:pswitch_343
.end packed-switch
:pswitch_data_49a
.packed-switch 0x0
:pswitch_3b6
:pswitch_3ba
:pswitch_3bd
:pswitch_3c1
.end packed-switch
:pswitch_data_40a
.packed-switch 0x0
:pswitch_30e
:pswitch_312
:pswitch_315
:pswitch_319
.end packed-switch
:pswitch_data_416
.packed-switch 0x0
:pswitch_31c
:pswitch_320
:pswitch_323
:pswitch_327
.end packed-switch
:pswitch_data_4b2
.packed-switch 0x0
:pswitch_3d2
:pswitch_3d6
:pswitch_3d9
:pswitch_3dd
.end packed-switch
:pswitch_data_48e
.packed-switch 0x0
:pswitch_3a8
:pswitch_3ac
:pswitch_3af
:pswitch_3b3
.end packed-switch
:pswitch_data_482
.packed-switch 0x0
:pswitch_39a
:pswitch_39e
:pswitch_3a1
:pswitch_3a5
.end packed-switch
:pswitch_data_4a6
.packed-switch 0x0
:pswitch_3c4
:pswitch_3c8
:pswitch_3cb
:pswitch_3cf
.end packed-switch
:pswitch_data_46a
.packed-switch 0x0
:pswitch_37e
:pswitch_382
:pswitch_385
:pswitch_389
.end packed-switch
:pswitch_data_476
.packed-switch 0x0
:pswitch_38c
:pswitch_390
:pswitch_393
:pswitch_397
.end packed-switch
:pswitch_data_446
.packed-switch 0x0
:pswitch_354
:pswitch_358
:pswitch_35b
:pswitch_35f
.end packed-switch
:pswitch_data_45e
.packed-switch 0x0
:pswitch_370
:pswitch_374
:pswitch_377
:pswitch_37b
.end packed-switch
:pswitch_data_452
.packed-switch 0x0
:pswitch_362
:pswitch_366
:pswitch_369
:pswitch_36d
.end packed-switch
.end method
.method public constructor <init>(Lcom/c/b;)V
.registers 9
const/4 v6, 0x0
const/4 v2, 0x1
const/4 v5, 0x2
const/4 v1, 0x0
sget v3, Lcom/c/n;->f:I
invoke-direct {p0}, Lcom/c/i;-><init>()V
new-instance v0, Lcom/c/p;
invoke-direct {v0, p0}, Lcom/c/p;-><init>(Lcom/c/n;)V
iput-object v0, p0, Lcom/c/n;->h:Landroid/telephony/PhoneStateListener;
iput-object v6, p0, Lcom/c/n;->m:Lcom/c/a/cg;
const-class v0, Lcom/c/n;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
check-cast p1, Lcom/c/cm;
invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/c/n;->j:Landroid/content/Context;
iget-object v0, p0, Lcom/c/n;->j:Landroid/content/Context;
sget-object v4, Lcom/c/n;->n:[Ljava/lang/String;
aget-object v4, v4, v1
invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
iput-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
iget-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
if-nez v0, :cond_3e
new-instance v0, Lcom/c/bo;
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
aget-object v1, v1, v2
invoke-direct {v0, v1}, Lcom/c/bo;-><init>(Ljava/lang/String;)V
throw v0
:cond_3e
iget-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
move-result v0
if-eq v0, v5, :cond_7b
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/n;->n:[Ljava/lang/String;
aget-object v3, v3, v5
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
new-instance v1, Lcom/c/bo;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/n;->n:[Ljava/lang/String;
aget-object v3, v3, v5
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/c/bo;-><init>(Ljava/lang/String;)V
throw v1
:cond_7b
iput-boolean v1, p0, Lcom/c/n;->l:Z
iput-object v6, p0, Lcom/c/n;->m:Lcom/c/a/cg;
if-eqz v3, :cond_88
sget-boolean v0, Lcom/c/bp;->b:Z
if-eqz v0, :cond_89
move v0, v1
:goto_86
sput-boolean v0, Lcom/c/bp;->b:Z
:cond_88
return-void
:cond_89
move v0, v2
goto :goto_86
.end method
.method static synthetic a(Lcom/c/n;)Lcom/c/bp;
.registers 2
iget-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
return-object v0
.end method
.method private declared-synchronized a(Landroid/telephony/cdma/CdmaCellLocation;)V
.registers 10
const v4, 0x7fffffff
const-wide v5, 0x3f123456789abcdfL
monitor-enter p0
:try_start_9
sget v0, Lcom/c/n;->f:I
invoke-virtual {p0}, Lcom/c/n;->b()Z
move-result v1
if-nez v1, :cond_1d
iget-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/4 v2, 0x5
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:goto_1b
:try_end_1b
.catchall {:try_start_9 .. :try_end_1b} :catchall_cf
:cond_1b
monitor-exit p0
return-void
:cond_1d
if-nez p1, :cond_2e
const/4 v1, 0x0
:try_start_20
iput-object v1, p0, Lcom/c/n;->m:Lcom/c/a/cg;
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/4 v3, 0x4
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-eqz v0, :cond_1b
:cond_2e
invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I
move-result v1
if-eq v1, v4, :cond_3a
invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I
move-result v1
if-ne v1, v4, :cond_49
:cond_3a
const/4 v1, 0x0
iput-object v1, p0, Lcom/c/n;->m:Lcom/c/a/cg;
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/4 v3, 0x7
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-eqz v0, :cond_1b
:cond_49
invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I
move-result v1
int-to-double v1, v1
mul-double/2addr v1, v5
invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I
move-result v3
int-to-double v3, v3
mul-double/2addr v3, v5
const-wide v5, -0x3fa9800000000000L
cmpg-double v5, v1, v5
if-ltz v5, :cond_79
const-wide v5, 0x4056800000000000L
cmpg-double v5, v5, v1
if-ltz v5, :cond_79
const-wide v5, -0x3f99800000000000L
cmpg-double v5, v3, v5
if-ltz v5, :cond_79
const-wide v5, 0x4066800000000000L
cmpg-double v5, v5, v3
if-gez v5, :cond_88
:cond_79
const/4 v5, 0x0
iput-object v5, p0, Lcom/c/n;->m:Lcom/c/a/cg;
iget-object v5, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v6, Lcom/c/n;->n:[Ljava/lang/String;
const/4 v7, 0x6
aget-object v6, v6, v7
invoke-virtual {v5, v6}, Lcom/c/bp;->d(Ljava/lang/String;)V
if-eqz v0, :cond_1b
:cond_88
new-instance v0, Lcom/c/a/cg;
invoke-direct {v0}, Lcom/c/a/cg;-><init>()V
iput-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
iget-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v0, v5, v6}, Lcom/c/a/cg;->a(J)V
iget-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->a(D)V
iget-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
invoke-virtual {v0, v3, v4}, Lcom/c/a/cg;->b(D)V
iget-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/c/a/cg;->c(I)V
iget-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/c/n;->m:Lcom/c/a/cg;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:try_end_cd
.catchall {:try_start_20 .. :try_end_cd} :catchall_cf
goto/16 :goto_1b
:catchall_cf
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic a(Lcom/c/n;Landroid/telephony/cdma/CdmaCellLocation;)V
.registers 2
invoke-direct {p0, p1}, Lcom/c/n;->a(Landroid/telephony/cdma/CdmaCellLocation;)V
return-void
.end method
.method protected a(Lcom/c/b;Ljava/lang/String;)Lcom/c/i;
.registers 4
new-instance v0, Lcom/c/n;
invoke-direct {v0, p1}, Lcom/c/n;-><init>(Lcom/c/b;)V
return-object v0
.end method
.method public declared-synchronized a(J)V
.registers 7
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/c/n;->l:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_64
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:cond_7
const/4 v0, 0x1
:try_start_8
iput-boolean v0, p0, Lcom/c/n;->l:Z
iget-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
iget-object v1, p0, Lcom/c/n;->h:Landroid/telephony/PhoneStateListener;
const/16 v2, 0x11
invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
iget-object v0, p0, Lcom/c/n;->j:Landroid/content/Context;
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v2, 0xa
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v2, 0x9
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
sget v0, Lcom/c/n;->f:I
:try_end_2e
.catchall {:try_start_8 .. :try_end_2e} :catchall_64
if-eqz v0, :cond_60
:cond_30
:try_start_30
iget-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v2, 0x8
aget-object v1, v1, v2
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z
move-result v1
if-nez v1, :cond_4d
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:cond_4d
iget-object v1, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v2, 0xc
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_60
:try_end_60
.catchall {:try_start_30 .. :try_end_60} :catchall_64
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_60} :catch_67
.catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_60} :catch_78
:try_start_60
:goto_60
invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V
:try_end_63
.catchall {:try_start_60 .. :try_end_63} :catchall_64
goto :goto_5
:catchall_64
move-exception v0
monitor-exit p0
throw v0
:catch_67
move-exception v0
:try_start_68
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v3, 0xb
aget-object v2, v2, v3
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_60
:catch_78
move-exception v0
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v3, 0xb
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_84
.catchall {:try_start_68 .. :try_end_84} :catchall_64
goto :goto_60
.end method
.method public a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public declared-synchronized b()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/c/n;->l:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/c/n;->l:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_49
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lcom/c/n;->j:Landroid/content/Context;
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v2, 0xa
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_49
move-result v0
if-nez v0, :cond_3a
:try_start_15
iget-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
sget-object v1, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v2, 0xe
aget-object v1, v1, v2
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z
move-result v1
if-nez v1, :cond_32
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:cond_32
iget-object v1, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_3a
.catchall {:try_start_15 .. :try_end_3a} :catchall_49
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_3a} :catch_4c
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_3a} :catch_5d
:goto_3a
:try_start_3a
:cond_3a
iget-object v0, p0, Lcom/c/n;->k:Landroid/telephony/TelephonyManager;
iget-object v1, p0, Lcom/c/n;->h:Landroid/telephony/PhoneStateListener;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/c/n;->l:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
:try_end_48
.catchall {:try_start_3a .. :try_end_48} :catchall_49
goto :goto_5
:catchall_49
move-exception v0
monitor-exit p0
throw v0
:catch_4c
move-exception v0
:try_start_4d
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v3, 0xd
aget-object v2, v2, v3
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3a
:catch_5d
move-exception v0
iget-object v1, p0, Lcom/c/n;->i:Lcom/c/bp;
sget-object v2, Lcom/c/n;->n:[Ljava/lang/String;
const/16 v3, 0xd
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_69
.catchall {:try_start_4d .. :try_end_69} :catchall_49
goto :goto_3a
.end method
.method public declared-synchronized d()Lcom/c/a/cg;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_f
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return-object v0
:try_start_8
:cond_8
iget-object v0, p0, Lcom/c/n;->m:Lcom/c/a/cg;
invoke-virtual {v0}, Lcom/c/a/cg;->w()Lcom/c/a/cg;
:try_end_d
.catchall {:try_start_8 .. :try_end_d} :catchall_f
move-result-object v0
goto :goto_6
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method