.class  Lcom/c/a/bf;
.super Ljava/lang/Object;
.field private static final i:[Ljava/lang/String;
.field private final a:Lcom/c/bp;
.field private final b:Lcom/c/a/aa;
.field private final c:Lcom/c/a/aa;
.field private d:Lcom/c/ba;
.field private e:Lcom/c/ba;
.field private f:Z
.field private g:Z
.field private h:J
.method static constructor <clinit>()V
.registers 15
const/16 v8, 0xc
const/16 v9, 0x9
const/16 v7, 0x8
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v0, 0x1a
new-array v10, v0, [Ljava/lang/String;
const-string v0, "kg{\u001f{;{c\u000f{xm,\rhh(y\nmz|i\u001e)og,"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6fa
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
packed-switch v6, :pswitch_data_6fe
move v6, v9
:goto_23
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1b
:cond_2f
move v1, v0
move-object v0, v4
:goto_31
if-gt v1, v2, :cond_16
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "z([\u0013$]a,\tjzf,\u0013z;fi\u001fm~l"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6f7
move v2, v3
:cond_48
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4d
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_70a
move v6, v9
:goto_55
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_61
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4d
:cond_61
move v1, v0
move-object v0, v4
:goto_63
if-gt v1, v2, :cond_48
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "z([\u0013$]a,\tjzf,\u0013z;abZyigk\u0008lh{6Z"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6f4
move v2, v3
:cond_7b
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_80
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_716
move v6, v9
:goto_88
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_94
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_80
:cond_94
move v1, v0
move-object v0, v4
:goto_96
if-gt v1, v2, :cond_7b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x3
const-string v0, "h}o\u0019lh{j\u000fe;{o\u001bg;kc\u0017ywmx\u001fm"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6f1
move v2, v3
:cond_ae
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_b3
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_722
move v6, v9
:goto_bb
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_c7
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_b3
:cond_c7
move v1, v0
move-object v0, v4
:goto_c9
if-gt v1, v2, :cond_ae
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x4
const-string v0, "}ie\u0016l\u007f(\u007f\u0019hu(o\u0015dkdi\u000el\u007f"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6ee
move v2, v3
:cond_e1
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_e6
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_72e
move v6, v9
:goto_ee
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_fa
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_e6
:cond_fa
move v1, v0
move-object v0, v4
:goto_fc
if-gt v1, v2, :cond_e1
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x5
const-string v0, "~fm\u0018e~(K*Z;ji\u0019hn{iZfu(i\u0002}~zb\u001be;xc\rli"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6eb
move v2, v3
:cond_114
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_119
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_73a
move v6, v9
:goto_121
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_12d
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_119
:cond_12d
move v1, v0
move-object v0, v4
:goto_12f
if-gt v1, v2, :cond_114
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x6
const-string v0, "~fm\u0018e~(K*Z; x\u0013d~(x\u0015)\u007fa\u007f\u001bkwm6Z"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6e8
move v2, v3
:cond_147
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_14c
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_746
move v6, v9
:goto_154
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_160
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_14c
:cond_160
move v1, v0
move-object v0, v4
:goto_162
if-gt v1, v2, :cond_147
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x7
const-string v0, "\u007fa\u007f\u001bkwm,=YH($\u000e`vm,\u000ef;mb\u001bkwm6Z"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6e5
move v2, v3
:cond_17a
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_17f
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_752
move v6, v9
:goto_187
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_193
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_17f
:cond_193
move v1, v0
move-object v0, v4
:goto_195
if-gt v1, v2, :cond_17a
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const-string v0, "oaa\u001f)og,\u0014lc|,-`6NeZzxib@)"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6e2
move v2, v3
:cond_1ac
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1b1
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_75e
move v6, v9
:goto_1b9
xor-int/2addr v6, v11
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
aput-object v0, v10, v7
const-string v0, "La!<`;a\u007fZmr{m\u0018e~l Zzt(y\t`uo,\u0017hcaa\u000fd;|e\u0017l;|cZg~pxZ^r%J\u0013)hkm\u0014"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6df
move v2, v3
:cond_1de
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1e3
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_76a
move v6, v9
:goto_1eb
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_1f7
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1e3
:cond_1f7
move v1, v0
move-object v0, v4
:goto_1f9
if-gt v1, v2, :cond_1de
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v9
const/16 v11, 0xa
const-string v0, "x}~\u0008lu|,-`6NeZy~ze\u0015m!("
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6dc
move v2, v3
:cond_212
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_217
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_776
move v6, v9
:goto_21f
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_22b
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_217
:cond_22b
move v1, v0
move-object v0, v4
:goto_22d
if-gt v1, v2, :cond_212
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xb
const-string v0, "~fm\u0018e~(m\u0019j~di\u0008fvmx\u001f{"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6d9
move v2, v3
:cond_246
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_24b
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_782
move v6, v9
:goto_253
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_25f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_24b
:cond_25f
move v1, v0
move-object v0, v4
:goto_261
if-gt v1, v2, :cond_246
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const-string v0, "\u007fa\u007f\u001bkwm,\u001bjxm`\u001f{tei\u000eli"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6d6
move v2, v3
:cond_278
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_27d
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_78e
move v6, v9
:goto_285
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_291
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_27d
:cond_291
move v1, v0
move-object v0, v4
:goto_293
if-gt v1, v2, :cond_278
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v8
const/16 v11, 0xd
const-string v0, ";fi\u000e~tzgZ{~yy\u001fzo{"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6d3
move v2, v3
:cond_2ac
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_2b1
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_79a
move v6, v9
:goto_2b9
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2c5
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_2b1
:cond_2c5
move v1, v0
move-object v0, v4
:goto_2c7
if-gt v1, v2, :cond_2ac
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xe
const-string v0, "zd`\u0015~;fi\u000e~tzgZ{~yy\u001fzo{,\u0018lxiy\tl;gbZlc|i\u0008gzd,\nflm~Zhul,\u0019fufi\u0019}~l,\u0015\u007f~z,-`6Ne"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6d0
move v2, v3
:cond_2e0
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_2e5
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7a6
move v6, v9
:goto_2ed
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f9
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_2e5
:cond_2f9
move v1, v0
move-object v0, v4
:goto_2fb
if-gt v1, v2, :cond_2e0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xf
const-string v0, "zd`\u0015~"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6cd
move v2, v3
:cond_314
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_319
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7b2
move v6, v9
:goto_321
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_32d
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_319
:cond_32d
move v1, v0
move-object v0, v4
:goto_32f
if-gt v1, v2, :cond_314
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x10
const-string v0, "\u007fa\u007f\u001bewg{"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6ca
move v2, v3
:cond_348
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_34d
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7be
move v6, v9
:goto_355
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_361
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_34d
:cond_361
move v1, v0
move-object v0, v4
:goto_363
if-gt v1, v2, :cond_348
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x11
const-string v0, ";|cZ"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6c7
move v2, v3
:cond_37c
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_381
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7ca
move v6, v9
:goto_389
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_395
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_381
:cond_395
move v1, v0
move-object v0, v4
:goto_397
if-gt v1, v2, :cond_37c
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x12
const-string v0, "km~\u0013f\u007f({\u001bz;}|\u001ehomhZoigaZ"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6c4
move v2, v3
:cond_3b0
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_3b5
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7d6
move v6, v9
:goto_3bd
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_3c9
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_3b5
:cond_3c9
move v1, v0
move-object v0, v4
:goto_3cb
if-gt v1, v2, :cond_3b0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x13
const-string v0, "km~\u0013f\u007f(a\u000fzo(n\u001f)|zi\u001b}~z,\u000eazf,\u0000lig6Z"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6c1
move v2, v3
:cond_3e4
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_3e9
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7e2
move v6, v9
:goto_3f1
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_3fd
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_3e9
:cond_3fd
move v1, v0
move-object v0, v4
:goto_3ff
if-gt v1, v2, :cond_3e4
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x14
const-string v0, "La!<`;kc\u0014g~kx\u0013fu(\u007f\u000ehom,\rhh(y\nmz|i\u001e)}zc\u0017)"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6be
move v2, v3
:cond_418
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_41d
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7ee
move v6, v9
:goto_425
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_431
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_41d
:cond_431
move v1, v0
move-object v0, v4
:goto_433
if-gt v1, v2, :cond_418
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x15
const-string v0, "im\u007f\u001f}oab\u001d)kg{\u001f{;em\u0014h|m~\t"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6bb
move v2, v3
:cond_44c
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_451
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_7fa
move v6, v9
:goto_459
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_465
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_451
:cond_465
move v1, v0
move-object v0, v4
:goto_467
if-gt v1, v2, :cond_44c
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x16
const-string v0, "~fm\u0018e~([\u0013$]a,\u0018lxiy\tl;gbZlc|i\u0008gzd,\nflm~"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6b8
move v2, v3
:cond_480
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_485
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_806
move v6, v9
:goto_48d
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_499
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_485
:cond_499
move v1, v0
move-object v0, v4
:goto_49b
if-gt v1, v2, :cond_480
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x17
const-string v0, "wmm\u000cl;_eWOr(\u007f\u000ehom,\u000ea~(\u007f\u001bd~($\u000e`vm,\u000ef;mb\u001bkwm6Z"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6b5
move v2, v3
:cond_4b4
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4b9
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_812
move v6, v9
:goto_4c1
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_4cd
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4b9
:cond_4cd
move v1, v0
move-object v0, v4
:goto_4cf
if-gt v1, v2, :cond_4b4
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x18
const-string v0, "\u007fa\u007f\u001bkwm,-`6NeZk~km\u000fz~(b\u001fqo(\u007f\u0019hu(e\t)}i~ZhliuZ!oaa\u001f)og,\u001fgzj`\u001f3;"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_6b2
move v2, v3
:cond_4e8
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4ed
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_81e
move v6, v9
:goto_4f5
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_501
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4ed
:cond_501
move v1, v0
move-object v0, v4
:goto_503
if-gt v1, v2, :cond_4e8
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v6, 0x19
const-string v0, "~fm\u0018e~([\u0013$]a,\u0018lxiy\tl;fi\u0002};{o\u001bg;a\u007fZztgb"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_536
:cond_51b
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_520
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_82a
move v5, v9
:goto_528
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_534
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_520
:cond_534
move v1, v0
move-object v0, v2
:cond_536
if-gt v1, v3, :cond_51b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/a/bf;->i:[Ljava/lang/String;
return-void
:pswitch_546
const/16 v6, 0x1b
goto/16 :goto_23
:pswitch_54a
move v6, v7
goto/16 :goto_23
:pswitch_54d
move v6, v8
goto/16 :goto_23
:pswitch_550
const/16 v6, 0x7a
goto/16 :goto_23
:pswitch_554
const/16 v6, 0x1b
goto/16 :goto_55
:pswitch_558
move v6, v7
goto/16 :goto_55
:pswitch_55b
move v6, v8
goto/16 :goto_55
:pswitch_55e
const/16 v6, 0x7a
goto/16 :goto_55
:pswitch_562
const/16 v6, 0x1b
goto/16 :goto_88
:pswitch_566
move v6, v7
goto/16 :goto_88
:pswitch_569
move v6, v8
goto/16 :goto_88
:pswitch_56c
const/16 v6, 0x7a
goto/16 :goto_88
:pswitch_570
const/16 v6, 0x1b
goto/16 :goto_bb
:pswitch_574
move v6, v7
goto/16 :goto_bb
:pswitch_577
move v6, v8
goto/16 :goto_bb
:pswitch_57a
const/16 v6, 0x7a
goto/16 :goto_bb
:pswitch_57e
const/16 v6, 0x1b
goto/16 :goto_ee
:pswitch_582
move v6, v7
goto/16 :goto_ee
:pswitch_585
move v6, v8
goto/16 :goto_ee
:pswitch_588
const/16 v6, 0x7a
goto/16 :goto_ee
:pswitch_58c
const/16 v6, 0x1b
goto/16 :goto_121
:pswitch_590
move v6, v7
goto/16 :goto_121
:pswitch_593
move v6, v8
goto/16 :goto_121
:pswitch_596
const/16 v6, 0x7a
goto/16 :goto_121
:pswitch_59a
const/16 v6, 0x1b
goto/16 :goto_154
:pswitch_59e
move v6, v7
goto/16 :goto_154
:pswitch_5a1
move v6, v8
goto/16 :goto_154
:pswitch_5a4
const/16 v6, 0x7a
goto/16 :goto_154
:pswitch_5a8
const/16 v6, 0x1b
goto/16 :goto_187
:pswitch_5ac
move v6, v7
goto/16 :goto_187
:pswitch_5af
move v6, v8
goto/16 :goto_187
:pswitch_5b2
const/16 v6, 0x7a
goto/16 :goto_187
:pswitch_5b6
const/16 v6, 0x1b
goto/16 :goto_1b9
:pswitch_5ba
move v6, v7
goto/16 :goto_1b9
:pswitch_5bd
move v6, v8
goto/16 :goto_1b9
:pswitch_5c0
const/16 v6, 0x7a
goto/16 :goto_1b9
:pswitch_5c4
const/16 v6, 0x1b
goto/16 :goto_1eb
:pswitch_5c8
move v6, v7
goto/16 :goto_1eb
:pswitch_5cb
move v6, v8
goto/16 :goto_1eb
:pswitch_5ce
const/16 v6, 0x7a
goto/16 :goto_1eb
:pswitch_5d2
const/16 v6, 0x1b
goto/16 :goto_21f
:pswitch_5d6
move v6, v7
goto/16 :goto_21f
:pswitch_5d9
move v6, v8
goto/16 :goto_21f
:pswitch_5dc
const/16 v6, 0x7a
goto/16 :goto_21f
:pswitch_5e0
const/16 v6, 0x1b
goto/16 :goto_253
:pswitch_5e4
move v6, v7
goto/16 :goto_253
:pswitch_5e7
move v6, v8
goto/16 :goto_253
:pswitch_5ea
const/16 v6, 0x7a
goto/16 :goto_253
:pswitch_5ee
const/16 v6, 0x1b
goto/16 :goto_285
:pswitch_5f2
move v6, v7
goto/16 :goto_285
:pswitch_5f5
move v6, v8
goto/16 :goto_285
:pswitch_5f8
const/16 v6, 0x7a
goto/16 :goto_285
:pswitch_5fc
const/16 v6, 0x1b
goto/16 :goto_2b9
:pswitch_600
move v6, v7
goto/16 :goto_2b9
:pswitch_603
move v6, v8
goto/16 :goto_2b9
:pswitch_606
const/16 v6, 0x7a
goto/16 :goto_2b9
:pswitch_60a
const/16 v6, 0x1b
goto/16 :goto_2ed
:pswitch_60e
move v6, v7
goto/16 :goto_2ed
:pswitch_611
move v6, v8
goto/16 :goto_2ed
:pswitch_614
const/16 v6, 0x7a
goto/16 :goto_2ed
:pswitch_618
const/16 v6, 0x1b
goto/16 :goto_321
:pswitch_61c
move v6, v7
goto/16 :goto_321
:pswitch_61f
move v6, v8
goto/16 :goto_321
:pswitch_622
const/16 v6, 0x7a
goto/16 :goto_321
:pswitch_626
const/16 v6, 0x1b
goto/16 :goto_355
:pswitch_62a
move v6, v7
goto/16 :goto_355
:pswitch_62d
move v6, v8
goto/16 :goto_355
:pswitch_630
const/16 v6, 0x7a
goto/16 :goto_355
:pswitch_634
const/16 v6, 0x1b
goto/16 :goto_389
:pswitch_638
move v6, v7
goto/16 :goto_389
:pswitch_63b
move v6, v8
goto/16 :goto_389
:pswitch_63e
const/16 v6, 0x7a
goto/16 :goto_389
:pswitch_642
const/16 v6, 0x1b
goto/16 :goto_3bd
:pswitch_646
move v6, v7
goto/16 :goto_3bd
:pswitch_649
move v6, v8
goto/16 :goto_3bd
:pswitch_64c
const/16 v6, 0x7a
goto/16 :goto_3bd
:pswitch_650
const/16 v6, 0x1b
goto/16 :goto_3f1
:pswitch_654
move v6, v7
goto/16 :goto_3f1
:pswitch_657
move v6, v8
goto/16 :goto_3f1
:pswitch_65a
const/16 v6, 0x7a
goto/16 :goto_3f1
:pswitch_65e
const/16 v6, 0x1b
goto/16 :goto_425
:pswitch_662
move v6, v7
goto/16 :goto_425
:pswitch_665
move v6, v8
goto/16 :goto_425
:pswitch_668
const/16 v6, 0x7a
goto/16 :goto_425
:pswitch_66c
const/16 v6, 0x1b
goto/16 :goto_459
:pswitch_670
move v6, v7
goto/16 :goto_459
:pswitch_673
move v6, v8
goto/16 :goto_459
:pswitch_676
const/16 v6, 0x7a
goto/16 :goto_459
:pswitch_67a
const/16 v6, 0x1b
goto/16 :goto_48d
:pswitch_67e
move v6, v7
goto/16 :goto_48d
:pswitch_681
move v6, v8
goto/16 :goto_48d
:pswitch_684
const/16 v6, 0x7a
goto/16 :goto_48d
:pswitch_688
const/16 v6, 0x1b
goto/16 :goto_4c1
:pswitch_68c
move v6, v7
goto/16 :goto_4c1
:pswitch_68f
move v6, v8
goto/16 :goto_4c1
:pswitch_692
const/16 v6, 0x7a
goto/16 :goto_4c1
:pswitch_696
const/16 v6, 0x1b
goto/16 :goto_4f5
:pswitch_69a
move v6, v7
goto/16 :goto_4f5
:pswitch_69d
move v6, v8
goto/16 :goto_4f5
:pswitch_6a0
const/16 v6, 0x7a
goto/16 :goto_4f5
:pswitch_6a4
const/16 v5, 0x1b
goto/16 :goto_528
:pswitch_6a8
move v5, v7
goto/16 :goto_528
:pswitch_6ab
move v5, v8
goto/16 :goto_528
:pswitch_6ae
const/16 v5, 0x7a
goto/16 :goto_528
:cond_6b2
move v2, v3
goto/16 :goto_503
:cond_6b5
move v2, v3
goto/16 :goto_4cf
:cond_6b8
move v2, v3
goto/16 :goto_49b
:cond_6bb
move v2, v3
goto/16 :goto_467
:cond_6be
move v2, v3
goto/16 :goto_433
:cond_6c1
move v2, v3
goto/16 :goto_3ff
:cond_6c4
move v2, v3
goto/16 :goto_3cb
:cond_6c7
move v2, v3
goto/16 :goto_397
:cond_6ca
move v2, v3
goto/16 :goto_363
:cond_6cd
move v2, v3
goto/16 :goto_32f
:cond_6d0
move v2, v3
goto/16 :goto_2fb
:cond_6d3
move v2, v3
goto/16 :goto_2c7
:cond_6d6
move v2, v3
goto/16 :goto_293
:cond_6d9
move v2, v3
goto/16 :goto_261
:cond_6dc
move v2, v3
goto/16 :goto_22d
:cond_6df
move v2, v3
goto/16 :goto_1f9
:cond_6e2
move v2, v3
goto/16 :goto_1c7
:cond_6e5
move v2, v3
goto/16 :goto_195
:cond_6e8
move v2, v3
goto/16 :goto_162
:cond_6eb
move v2, v3
goto/16 :goto_12f
:cond_6ee
move v2, v3
goto/16 :goto_fc
:cond_6f1
move v2, v3
goto/16 :goto_c9
:cond_6f4
move v2, v3
goto/16 :goto_96
:cond_6f7
move v2, v3
goto/16 :goto_63
:cond_6fa
move v2, v3
goto/16 :goto_31
nop
:pswitch_data_76a
.packed-switch 0x0
:pswitch_5c4
:pswitch_5c8
:pswitch_5cb
:pswitch_5ce
.end packed-switch
:pswitch_data_776
.packed-switch 0x0
:pswitch_5d2
:pswitch_5d6
:pswitch_5d9
:pswitch_5dc
.end packed-switch
:pswitch_data_82a
.packed-switch 0x0
:pswitch_6a4
:pswitch_6a8
:pswitch_6ab
:pswitch_6ae
.end packed-switch
:pswitch_data_7ca
.packed-switch 0x0
:pswitch_634
:pswitch_638
:pswitch_63b
:pswitch_63e
.end packed-switch
:pswitch_data_81e
.packed-switch 0x0
:pswitch_696
:pswitch_69a
:pswitch_69d
:pswitch_6a0
.end packed-switch
:pswitch_data_806
.packed-switch 0x0
:pswitch_67a
:pswitch_67e
:pswitch_681
:pswitch_684
.end packed-switch
:pswitch_data_752
.packed-switch 0x0
:pswitch_5a8
:pswitch_5ac
:pswitch_5af
:pswitch_5b2
.end packed-switch
:pswitch_data_746
.packed-switch 0x0
:pswitch_59a
:pswitch_59e
:pswitch_5a1
:pswitch_5a4
.end packed-switch
:pswitch_data_7be
.packed-switch 0x0
:pswitch_626
:pswitch_62a
:pswitch_62d
:pswitch_630
.end packed-switch
:pswitch_data_812
.packed-switch 0x0
:pswitch_688
:pswitch_68c
:pswitch_68f
:pswitch_692
.end packed-switch
:pswitch_data_72e
.packed-switch 0x0
:pswitch_57e
:pswitch_582
:pswitch_585
:pswitch_588
.end packed-switch
:pswitch_data_7fa
.packed-switch 0x0
:pswitch_66c
:pswitch_670
:pswitch_673
:pswitch_676
.end packed-switch
:pswitch_data_722
.packed-switch 0x0
:pswitch_570
:pswitch_574
:pswitch_577
:pswitch_57a
.end packed-switch
:pswitch_data_7a6
.packed-switch 0x0
:pswitch_60a
:pswitch_60e
:pswitch_611
:pswitch_614
.end packed-switch
:pswitch_data_73a
.packed-switch 0x0
:pswitch_58c
:pswitch_590
:pswitch_593
:pswitch_596
.end packed-switch
:pswitch_data_6fe
.packed-switch 0x0
:pswitch_546
:pswitch_54a
:pswitch_54d
:pswitch_550
.end packed-switch
:pswitch_data_75e
.packed-switch 0x0
:pswitch_5b6
:pswitch_5ba
:pswitch_5bd
:pswitch_5c0
.end packed-switch
:pswitch_data_79a
.packed-switch 0x0
:pswitch_5fc
:pswitch_600
:pswitch_603
:pswitch_606
.end packed-switch
:pswitch_data_716
.packed-switch 0x0
:pswitch_562
:pswitch_566
:pswitch_569
:pswitch_56c
.end packed-switch
:pswitch_data_7b2
.packed-switch 0x0
:pswitch_618
:pswitch_61c
:pswitch_61f
:pswitch_622
.end packed-switch
:pswitch_data_7ee
.packed-switch 0x0
:pswitch_65e
:pswitch_662
:pswitch_665
:pswitch_668
.end packed-switch
:pswitch_data_78e
.packed-switch 0x0
:pswitch_5ee
:pswitch_5f2
:pswitch_5f5
:pswitch_5f8
.end packed-switch
:pswitch_data_70a
.packed-switch 0x0
:pswitch_554
:pswitch_558
:pswitch_55b
:pswitch_55e
.end packed-switch
:pswitch_data_7e2
.packed-switch 0x0
:pswitch_650
:pswitch_654
:pswitch_657
:pswitch_65a
.end packed-switch
:pswitch_data_782
.packed-switch 0x0
:pswitch_5e0
:pswitch_5e4
:pswitch_5e7
:pswitch_5ea
.end packed-switch
:pswitch_data_7d6
.packed-switch 0x0
:pswitch_642
:pswitch_646
:pswitch_649
:pswitch_64c
.end packed-switch
.end method
.method constructor <init>(Lcom/c/a/aa;Lcom/c/a/aa;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/c/a/bf;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
iput-object p1, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
iput-object p2, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/bf;->e:Lcom/c/ba;
iput-object v0, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/c/a/bf;->g:Z
iput-boolean v0, p0, Lcom/c/a/bf;->f:Z
invoke-virtual {p0}, Lcom/c/a/bf;->a()V
const-wide/16 v0, 0x3e8
invoke-virtual {p0, v0, v1}, Lcom/c/a/bf;->a(J)V
return-void
.end method
.method private b(Z)V
.registers 5
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0x15
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-eqz p1, :cond_10
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
:cond_10
iget-object v0, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
invoke-interface {v0}, Lcom/c/a/aa;->a()V
iget-object v0, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
invoke-interface {v0}, Lcom/c/a/aa;->a()V
return-void
.end method
.method private c()Lcom/c/a/aa;
.registers 2
invoke-virtual {p0}, Lcom/c/a/bf;->b()Z
move-result v0
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
goto :goto_8
.end method
.method private g(Lcom/c/ba;)J
.registers 6
invoke-direct {p0}, Lcom/c/a/bf;->c()Lcom/c/a/aa;
move-result-object v0
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Lcom/c/ba;)J
move-result-wide v0
iget-boolean v2, p0, Lcom/c/a/bf;->f:Z
if-eqz v2, :cond_22
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_14
iget-wide v0, p0, Lcom/c/a/bf;->h:J
:cond_14
invoke-virtual {p0}, Lcom/c/a/bf;->b()Z
move-result v2
if-eqz v2, :cond_23
invoke-static {}, Lcom/c/a/ci;->ae()J
move-result-wide v2
:goto_1e
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
:cond_22
return-wide v0
:cond_23
invoke-static {}, Lcom/c/a/ci;->af()J
move-result-wide v2
goto :goto_1e
.end method
.method  a(Lcom/c/ba;)Lcom/c/o;
.registers 11
const-wide v7, 0x7fffffffffffffffL
const/4 v6, 0x1
iget-boolean v0, p0, Lcom/c/a/bf;->f:Z
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0x16
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {v0, v1}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
:goto_21
return-object v0
:cond_22
invoke-virtual {p0, p1}, Lcom/c/a/bf;->f(Lcom/c/ba;)J
move-result-wide v0
invoke-static {}, Lcom/c/a/ci;->ab()J
move-result-wide v2
sub-long v2, v0, v2
const-wide/16 v4, 0x0
cmp-long v4, v2, v4
if-gtz v4, :cond_4a
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0x19
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {v0, v1}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
goto :goto_21
:cond_4a
const-wide/16 v4, 0x3
invoke-static {}, Lcom/c/a/ci;->ab()J
move-result-wide v6
mul-long/2addr v4, v6
cmp-long v0, v0, v4
if-lez v0, :cond_88
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v5, 0x18
aget-object v4, v4, v5
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, ")"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {v0, v1}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
goto :goto_21
:cond_88
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v5, 0x17
aget-object v4, v4, v5
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, ")"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {v0, v1}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
goto/16 :goto_21
.end method
.method  a()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/c/a/bf;->b(Z)V
return-void
.end method
.method  a(J)V
.registers 7
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v3, 0x12
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/c/a/bf;->h:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v3, 0x11
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_34
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gtz v0, :cond_57
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v3, 0x13
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_57
invoke-virtual {p0}, Lcom/c/a/bf;->b()Z
move-result v0
iput-wide p1, p0, Lcom/c/a/bf;->h:J
invoke-virtual {p0}, Lcom/c/a/bf;->b()Z
move-result v1
if-eq v1, v0, :cond_67
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/c/a/bf;->b(Z)V
:cond_67
iget-object v0, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
invoke-interface {v0, p1, p2}, Lcom/c/a/aa;->a(J)V
iget-object v0, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
invoke-interface {v0, p1, p2}, Lcom/c/a/aa;->a(J)V
return-void
.end method
.method  a(Lcom/c/a/bv;Lcom/c/ba;)V
.registers 12
const-wide/16 v7, 0x0
iget-object v0, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Lcom/c/a/bv;)V
iget-object v0, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Lcom/c/a/bv;)V
iget-object v0, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
const/4 v1, 0x0
iput-object v1, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
if-nez p1, :cond_3c
iget-object v1, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/4 v3, 0x4
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-nez v0, :cond_20
:cond_1f
:goto_1f
return-void
:cond_20
invoke-direct {p0, p2}, Lcom/c/a/bf;->g(Lcom/c/ba;)J
move-result-wide v1
cmp-long v3, v1, v7
if-lez v3, :cond_1f
const-wide/16 v3, 0x3e8
invoke-virtual {v0, p2}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v5
sub-long/2addr v3, v5
invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J
move-result-wide v3
sub-long v0, v1, v3
invoke-static {v0, v1, p2}, Lcom/c/ba;->a(JLcom/c/ba;)Lcom/c/ba;
move-result-object v0
iput-object v0, p0, Lcom/c/a/bf;->e:Lcom/c/ba;
goto :goto_1f
:cond_3c
iget-object v1, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
if-eqz v0, :cond_4c
move-object p2, v0
:goto_49
:cond_49
iput-object p2, p0, Lcom/c/a/bf;->e:Lcom/c/ba;
goto :goto_1f
:cond_4c
invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-eqz v0, :cond_49
invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v0
invoke-static {v0}, Lcom/c/br;->a(Ljava/util/Collection;)Lcom/c/ap;
move-result-object v0
invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object p2
goto :goto_49
.end method
.method  a(Lcom/c/a/cg;)V
.registers 3
iget-object v0, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Lcom/c/a/cg;)V
iget-object v0, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Lcom/c/a/cg;)V
return-void
.end method
.method  a(Lcom/c/bg;)V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v1}, Lcom/c/bp;->b()Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/a/bf;->i:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_23
sget-object v1, Lcom/c/bg;->a:Lcom/c/bg;
if-ne p1, v1, :cond_28
const/4 v0, 0x1
:cond_28
iput-boolean v0, p0, Lcom/c/a/bf;->f:Z
return-void
.end method
.method  a(Z)V
.registers 6
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v3, 0x14
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/c/a/bf;->g:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v3, 0x11
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_34
iput-boolean p1, p0, Lcom/c/a/bf;->g:Z
iget-object v0, p0, Lcom/c/a/bf;->b:Lcom/c/a/aa;
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Z)V
iget-object v0, p0, Lcom/c/a/bf;->c:Lcom/c/a/aa;
invoke-interface {v0, p1}, Lcom/c/a/aa;->a(Z)V
return-void
.end method
.method  b(Lcom/c/ba;)Lcom/c/o;
.registers 9
const/4 v6, 0x1
iget-boolean v0, p0, Lcom/c/a/bf;->f:Z
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/4 v2, 0x5
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const-wide v1, 0x7fffffffffffffffL
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {v0, v1}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
:goto_20
return-object v0
:cond_21
invoke-direct {p0}, Lcom/c/a/bf;->c()Lcom/c/a/aa;
move-result-object v0
invoke-interface {v0, p1}, Lcom/c/a/aa;->b(Lcom/c/ba;)Lcom/c/o;
move-result-object v1
iget-object v0, v1, Lcom/c/o;->a:Ljava/lang/Object;
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
iget-object v0, v1, Lcom/c/o;->b:Ljava/lang/Object;
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
if-eqz v2, :cond_69
iget-object v2, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/4 v5, 0x6
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-static {v2, v0}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
goto :goto_20
:cond_69
iget-object v2, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/4 v5, 0x7
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-static {v2, v0}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
goto :goto_20
.end method
.method  b()Z
.registers 5
iget-wide v0, p0, Lcom/c/a/bf;->h:J
invoke-static {}, Lcom/c/a/ci;->ad()J
move-result-wide v2
cmp-long v0, v0, v2
if-gtz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method  c(Lcom/c/ba;)I
.registers 5
invoke-direct {p0}, Lcom/c/a/bf;->c()Lcom/c/a/aa;
move-result-object v0
invoke-interface {v0, p1}, Lcom/c/a/aa;->c(Lcom/c/ba;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0xb
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x1
:goto_16
return v0
:cond_17
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0xc
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_16
.end method
.method  d(Lcom/c/ba;)Z
.registers 7
iget-boolean v0, p0, Lcom/c/a/bf;->f:Z
if-eqz v0, :cond_15
iget-boolean v0, p0, Lcom/c/a/bf;->g:Z
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0xe
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x1
:goto_14
return v0
:cond_15
invoke-direct {p0}, Lcom/c/a/bf;->c()Lcom/c/a/aa;
move-result-object v0
invoke-interface {v0, p1}, Lcom/c/a/aa;->d(Lcom/c/ba;)Z
move-result v1
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_49
iget-object v2, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
if-eqz v1, :cond_4b
sget-object v0, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v4, 0xf
aget-object v0, v0, v4
:goto_34
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v3, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v4, 0xd
aget-object v3, v3, v4
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_49
move v0, v1
goto :goto_14
:cond_4b
sget-object v0, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v4, 0x10
aget-object v0, v0, v4
goto :goto_34
.end method
.method  e(Lcom/c/ba;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
if-eqz v2, :cond_30
iget-object v1, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v1}, Lcom/c/bp;->b()Z
move-result v1
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/4 v4, 0x2
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
invoke-virtual {v3, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
:goto_2f
:cond_2f
return v0
:cond_30
invoke-virtual {p0, p1}, Lcom/c/a/bf;->f(Lcom/c/ba;)J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v4, v2, v4
if-gtz v4, :cond_2f
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v4, Lcom/c/a/bf;->i:[Ljava/lang/String;
aget-object v4, v4, v1
invoke-virtual {v0, v4}, Lcom/c/bp;->b(Ljava/lang/String;)V
neg-long v2, v2
invoke-static {v2, v3, p1}, Lcom/c/ba;->a(JLcom/c/ba;)Lcom/c/ba;
move-result-object v0
iput-object v0, p0, Lcom/c/a/bf;->d:Lcom/c/ba;
move v0, v1
goto :goto_2f
.end method
.method  f(Lcom/c/ba;)J
.registers 10
const-wide/16 v2, 0x0
invoke-direct {p0, p1}, Lcom/c/a/bf;->g(Lcom/c/ba;)J
move-result-wide v4
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v6, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v7, 0xa
aget-object v6, v6, v7
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_2a
cmp-long v0, v4, v2
if-gtz v0, :cond_3f
iget-object v0, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v2, 0x9
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const-wide v0, 0x7fffffffffffffffL
:goto_3e
:cond_3e
return-wide v0
:cond_3f
iget-object v0, p0, Lcom/c/a/bf;->e:Lcom/c/ba;
if-nez v0, :cond_7e
move-wide v0, v2
:goto_44
iget-boolean v6, p0, Lcom/c/a/bf;->f:Z
if-nez v6, :cond_54
invoke-direct {p0}, Lcom/c/a/bf;->c()Lcom/c/a/aa;
move-result-object v6
invoke-interface {v6, p1}, Lcom/c/a/aa;->e(Lcom/c/ba;)J
move-result-wide v6
invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
:cond_54
cmp-long v2, v0, v2
if-gez v2, :cond_59
rem-long/2addr v0, v4
:cond_59
iget-object v2, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
invoke-virtual {v2}, Lcom/c/bp;->b()Z
move-result v2
if-eqz v2, :cond_3e
iget-object v2, p0, Lcom/c/a/bf;->a:Lcom/c/bp;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/a/bf;->i:[Ljava/lang/String;
const/16 v5, 0x8
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V
goto :goto_3e
:cond_7e
iget-object v0, p0, Lcom/c/a/bf;->e:Lcom/c/ba;
invoke-virtual {v0, p1}, Lcom/c/ba;->a(Lcom/c/ba;)J
move-result-wide v0
sub-long v0, v4, v0
goto :goto_44
.end method