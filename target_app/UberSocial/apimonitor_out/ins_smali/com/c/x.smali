.class final Lcom/c/x;
.super Lcom/c/i;
.field private static final p:[Ljava/lang/String;
.field private final f:Lcom/c/bp;
.field private final h:Landroid/content/Context;
.field private final i:Landroid/location/LocationManager;
.field private final j:Lcom/c/bl;
.field private final k:Lcom/c/az;
.field private final l:Ljava/lang/String;
.field private m:J
.field private n:Lcom/c/a/cg;
.field private o:Z
.method static constructor <clinit>()V
.registers 15
const/16 v7, 0x55
const/16 v8, 0x33
const/16 v9, 0x30
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v0, 0x16
new-array v10, v0, [Ljava/lang/String;
const-string v0, "@<]\u000eD\u00054W]_\u0006u"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5ec
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
packed-switch v6, :pswitch_data_5f0
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
const-string v0, "\u0013!R\u000fD\u00051\u0013\tB\u00016X\u0014^\u0007u"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5e9
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
packed-switch v6, :pswitch_data_5fc
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
const-string v0, "\u0007%@"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5e6
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
packed-switch v6, :pswitch_data_608
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
const-string v0, "@\"Z\tX@%V\u000fY\u000f1\u0013"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5e3
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
packed-switch v6, :pswitch_data_614
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
const-string v0, "\u000e0G\n_\u0012>"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5e0
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
packed-switch v6, :pswitch_data_620
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
const-string v0, "\u000c:P\u001cD\t:]]^\u000f!\u0013\u001b_\u0015;W"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5dd
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
packed-switch v6, :pswitch_data_62c
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
const-string v0, "@%A\u0012F\t1V\u000f\u0010\u0001#R\u0014\\\u00017_\u0018"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5da
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
packed-switch v6, :pswitch_data_638
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
const-string v0, "\'\u0005`"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5d7
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
packed-switch v6, :pswitch_data_644
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
const/16 v11, 0x8
const-string v0, "\u000c:P\u001cD\t:]"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5d4
move v2, v3
:cond_1ae
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1b3
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_650
move v6, v9
:goto_1bb
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_1c7
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1b3
:cond_1c7
move v1, v0
move-object v0, v4
:goto_1c9
if-gt v1, v2, :cond_1ae
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x9
const-string v0, "\u000e:\u0013"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5d1
move v2, v3
:cond_1e2
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1e7
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_65c
move v6, v9
:goto_1ef
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_1fb
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1e7
:cond_1fb
move v1, v0
move-object v0, v4
:goto_1fd
if-gt v1, v2, :cond_1e2
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xa
const-string v0, ".\u0010g*\u007f2\u001e"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5ce
move v2, v3
:cond_216
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_21b
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_668
move v6, v9
:goto_223
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_22f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_21b
:cond_22f
move v1, v0
move-object v0, v4
:goto_231
if-gt v1, v2, :cond_216
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xb
const-string v0, "\u00016G\u0014F\t!J]T\u000f0@\u0013\u0017\u0014u[\u001cF\u0005uC\u0018B\r<@\u000eY\u000f;\u0013\t_@ @\u0018\u0010\u0010\'\\\u000bY\u00040A]"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5cb
move v2, v3
:cond_24a
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_24f
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_674
move v6, v9
:goto_257
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_263
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_24f
:cond_263
move v1, v0
move-object v0, v4
:goto_265
if-gt v1, v2, :cond_24a
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xc
const-string v0, "\u0014\'R\u001e[\t;T]@\u0005\'Z\u0012T@\"R\u000e\u0010\u000e:G]S\u00084]\u001aU\u0004"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5c8
move v2, v3
:cond_27e
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_283
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_680
move v6, v9
:goto_28b
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_297
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_283
:cond_297
move v1, v0
move-object v0, v4
:goto_299
if-gt v1, v2, :cond_27e
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xd
const-string v0, "\u0003:F\u0011T\u000erG]W\u0005!\u0013\u0011_\u00034G\u0014_\u000euF\rT\u0001!V\u000e\u0010\u0006:A]@\u0012:E\u0014T\u0005\'\u0013"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5c5
move v2, v3
:cond_2b2
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_2b7
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_68c
move v6, v9
:goto_2bf
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2cb
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_2b7
:cond_2cb
move v1, v0
move-object v0, v4
:goto_2cd
if-gt v1, v2, :cond_2b2
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xe
const-string v0, "\t;E\u001c\\\t1\u0013\rU\u0012<\\\u0019\n@"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5c2
move v2, v3
:cond_2e6
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_2eb
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_698
move v6, v9
:goto_2f3
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2ff
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_2eb
:cond_2ff
move v1, v0
move-object v0, v4
:goto_301
if-gt v1, v2, :cond_2e6
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0xf
const-string v0, "\u0013!\\\r@\u00051\u0013\tB\u00016X\u0014^\u0007u"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5bf
move v2, v3
:cond_31a
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_31f
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_6a4
move v6, v9
:goto_327
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_333
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_31f
:cond_333
move v1, v0
move-object v0, v4
:goto_335
if-gt v1, v2, :cond_31a
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x10
const-string v0, "\u0003:F\u0011T\u000erG]B\u00058\\\u000bU@ C\u0019Q\u00140@"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5bc
move v2, v3
:cond_34e
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_353
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_6b0
move v6, v9
:goto_35b
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_367
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_353
:cond_367
move v1, v0
move-object v0, v4
:goto_369
if-gt v1, v2, :cond_34e
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x11
const-string v0, "I\u0008"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5b9
move v2, v3
:cond_382
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_387
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_6bc
move v6, v9
:goto_38f
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_39b
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_387
:cond_39b
move v1, v0
move-object v0, v4
:goto_39d
if-gt v1, v2, :cond_382
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x12
const-string v0, ";\u0014]\u0019B\u000f<W]|\u000f6R\tY\u000f;c\u000f_\u0016<W\u0018B)8C\u0011\u0018"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5b6
move v2, v3
:cond_3b6
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_3bb
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_6c8
move v6, v9
:goto_3c3
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_3cf
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_3bb
:cond_3cf
move v1, v0
move-object v0, v4
:goto_3d1
if-gt v1, v2, :cond_3b6
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x13
const-string v0, "\u00104@\u000eY\u00160"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5b3
move v2, v3
:cond_3ea
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_3ef
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_6d4
move v6, v9
:goto_3f7
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_403
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_3ef
:cond_403
move v1, v0
move-object v0, v4
:goto_405
if-gt v1, v2, :cond_3ea
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v11, 0x14
const-string v0, "\u0013\"Z\tS\u0008<]\u001a\u0010\u0014:\u0013\r_\u00170A]C\u0001#Z\u0013W@8\\\u0019U"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_5b0
move v2, v3
:cond_41e
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_423
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_6e0
move v6, v9
:goto_42b
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_437
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_423
:cond_437
move v1, v0
move-object v0, v4
:goto_439
if-gt v1, v2, :cond_41e
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/16 v6, 0x15
const-string v0, "\u0003:F\u0011T\u000erG]C\u0017<G\u001eX@!\\]@\u000f\"V\u000f\u0010\u00134E\u0014^\u0007u^\u0012T\u0005"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_46c
:cond_451
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_456
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_6ec
move v5, v9
:goto_45e
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_46a
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_456
:cond_46a
move v1, v0
move-object v0, v2
:cond_46c
if-gt v1, v3, :cond_451
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/x;->p:[Ljava/lang/String;
return-void
:pswitch_47c
const/16 v6, 0x60
goto/16 :goto_23
:pswitch_480
move v6, v7
goto/16 :goto_23
:pswitch_483
move v6, v8
goto/16 :goto_23
:pswitch_486
const/16 v6, 0x7d
goto/16 :goto_23
:pswitch_48a
const/16 v6, 0x60
goto/16 :goto_55
:pswitch_48e
move v6, v7
goto/16 :goto_55
:pswitch_491
move v6, v8
goto/16 :goto_55
:pswitch_494
const/16 v6, 0x7d
goto/16 :goto_55
:pswitch_498
const/16 v6, 0x60
goto/16 :goto_88
:pswitch_49c
move v6, v7
goto/16 :goto_88
:pswitch_49f
move v6, v8
goto/16 :goto_88
:pswitch_4a2
const/16 v6, 0x7d
goto/16 :goto_88
:pswitch_4a6
const/16 v6, 0x60
goto/16 :goto_bb
:pswitch_4aa
move v6, v7
goto/16 :goto_bb
:pswitch_4ad
move v6, v8
goto/16 :goto_bb
:pswitch_4b0
const/16 v6, 0x7d
goto/16 :goto_bb
:pswitch_4b4
const/16 v6, 0x60
goto/16 :goto_ee
:pswitch_4b8
move v6, v7
goto/16 :goto_ee
:pswitch_4bb
move v6, v8
goto/16 :goto_ee
:pswitch_4be
const/16 v6, 0x7d
goto/16 :goto_ee
:pswitch_4c2
const/16 v6, 0x60
goto/16 :goto_121
:pswitch_4c6
move v6, v7
goto/16 :goto_121
:pswitch_4c9
move v6, v8
goto/16 :goto_121
:pswitch_4cc
const/16 v6, 0x7d
goto/16 :goto_121
:pswitch_4d0
const/16 v6, 0x60
goto/16 :goto_154
:pswitch_4d4
move v6, v7
goto/16 :goto_154
:pswitch_4d7
move v6, v8
goto/16 :goto_154
:pswitch_4da
const/16 v6, 0x7d
goto/16 :goto_154
:pswitch_4de
const/16 v6, 0x60
goto/16 :goto_187
:pswitch_4e2
move v6, v7
goto/16 :goto_187
:pswitch_4e5
move v6, v8
goto/16 :goto_187
:pswitch_4e8
const/16 v6, 0x7d
goto/16 :goto_187
:pswitch_4ec
const/16 v6, 0x60
goto/16 :goto_1bb
:pswitch_4f0
move v6, v7
goto/16 :goto_1bb
:pswitch_4f3
move v6, v8
goto/16 :goto_1bb
:pswitch_4f6
const/16 v6, 0x7d
goto/16 :goto_1bb
:pswitch_4fa
const/16 v6, 0x60
goto/16 :goto_1ef
:pswitch_4fe
move v6, v7
goto/16 :goto_1ef
:pswitch_501
move v6, v8
goto/16 :goto_1ef
:pswitch_504
const/16 v6, 0x7d
goto/16 :goto_1ef
:pswitch_508
const/16 v6, 0x60
goto/16 :goto_223
:pswitch_50c
move v6, v7
goto/16 :goto_223
:pswitch_50f
move v6, v8
goto/16 :goto_223
:pswitch_512
const/16 v6, 0x7d
goto/16 :goto_223
:pswitch_516
const/16 v6, 0x60
goto/16 :goto_257
:pswitch_51a
move v6, v7
goto/16 :goto_257
:pswitch_51d
move v6, v8
goto/16 :goto_257
:pswitch_520
const/16 v6, 0x7d
goto/16 :goto_257
:pswitch_524
const/16 v6, 0x60
goto/16 :goto_28b
:pswitch_528
move v6, v7
goto/16 :goto_28b
:pswitch_52b
move v6, v8
goto/16 :goto_28b
:pswitch_52e
const/16 v6, 0x7d
goto/16 :goto_28b
:pswitch_532
const/16 v6, 0x60
goto/16 :goto_2bf
:pswitch_536
move v6, v7
goto/16 :goto_2bf
:pswitch_539
move v6, v8
goto/16 :goto_2bf
:pswitch_53c
const/16 v6, 0x7d
goto/16 :goto_2bf
:pswitch_540
const/16 v6, 0x60
goto/16 :goto_2f3
:pswitch_544
move v6, v7
goto/16 :goto_2f3
:pswitch_547
move v6, v8
goto/16 :goto_2f3
:pswitch_54a
const/16 v6, 0x7d
goto/16 :goto_2f3
:pswitch_54e
const/16 v6, 0x60
goto/16 :goto_327
:pswitch_552
move v6, v7
goto/16 :goto_327
:pswitch_555
move v6, v8
goto/16 :goto_327
:pswitch_558
const/16 v6, 0x7d
goto/16 :goto_327
:pswitch_55c
const/16 v6, 0x60
goto/16 :goto_35b
:pswitch_560
move v6, v7
goto/16 :goto_35b
:pswitch_563
move v6, v8
goto/16 :goto_35b
:pswitch_566
const/16 v6, 0x7d
goto/16 :goto_35b
:pswitch_56a
const/16 v6, 0x60
goto/16 :goto_38f
:pswitch_56e
move v6, v7
goto/16 :goto_38f
:pswitch_571
move v6, v8
goto/16 :goto_38f
:pswitch_574
const/16 v6, 0x7d
goto/16 :goto_38f
:pswitch_578
const/16 v6, 0x60
goto/16 :goto_3c3
:pswitch_57c
move v6, v7
goto/16 :goto_3c3
:pswitch_57f
move v6, v8
goto/16 :goto_3c3
:pswitch_582
const/16 v6, 0x7d
goto/16 :goto_3c3
:pswitch_586
const/16 v6, 0x60
goto/16 :goto_3f7
:pswitch_58a
move v6, v7
goto/16 :goto_3f7
:pswitch_58d
move v6, v8
goto/16 :goto_3f7
:pswitch_590
const/16 v6, 0x7d
goto/16 :goto_3f7
:pswitch_594
const/16 v6, 0x60
goto/16 :goto_42b
:pswitch_598
move v6, v7
goto/16 :goto_42b
:pswitch_59b
move v6, v8
goto/16 :goto_42b
:pswitch_59e
const/16 v6, 0x7d
goto/16 :goto_42b
:pswitch_5a2
const/16 v5, 0x60
goto/16 :goto_45e
:pswitch_5a6
move v5, v7
goto/16 :goto_45e
:pswitch_5a9
move v5, v8
goto/16 :goto_45e
:pswitch_5ac
const/16 v5, 0x7d
goto/16 :goto_45e
:cond_5b0
move v2, v3
goto/16 :goto_439
:cond_5b3
move v2, v3
goto/16 :goto_405
:cond_5b6
move v2, v3
goto/16 :goto_3d1
:cond_5b9
move v2, v3
goto/16 :goto_39d
:cond_5bc
move v2, v3
goto/16 :goto_369
:cond_5bf
move v2, v3
goto/16 :goto_335
:cond_5c2
move v2, v3
goto/16 :goto_301
:cond_5c5
move v2, v3
goto/16 :goto_2cd
:cond_5c8
move v2, v3
goto/16 :goto_299
:cond_5cb
move v2, v3
goto/16 :goto_265
:cond_5ce
move v2, v3
goto/16 :goto_231
:cond_5d1
move v2, v3
goto/16 :goto_1fd
:cond_5d4
move v2, v3
goto/16 :goto_1c9
:cond_5d7
move v2, v3
goto/16 :goto_195
:cond_5da
move v2, v3
goto/16 :goto_162
:cond_5dd
move v2, v3
goto/16 :goto_12f
:cond_5e0
move v2, v3
goto/16 :goto_fc
:cond_5e3
move v2, v3
goto/16 :goto_c9
:cond_5e6
move v2, v3
goto/16 :goto_96
:cond_5e9
move v2, v3
goto/16 :goto_63
:cond_5ec
move v2, v3
goto/16 :goto_31
nop
:pswitch_data_6ec
.packed-switch 0x0
:pswitch_5a2
:pswitch_5a6
:pswitch_5a9
:pswitch_5ac
.end packed-switch
:pswitch_data_674
.packed-switch 0x0
:pswitch_516
:pswitch_51a
:pswitch_51d
:pswitch_520
.end packed-switch
:pswitch_data_6bc
.packed-switch 0x0
:pswitch_56a
:pswitch_56e
:pswitch_571
:pswitch_574
.end packed-switch
:pswitch_data_6a4
.packed-switch 0x0
:pswitch_54e
:pswitch_552
:pswitch_555
:pswitch_558
.end packed-switch
:pswitch_data_680
.packed-switch 0x0
:pswitch_524
:pswitch_528
:pswitch_52b
:pswitch_52e
.end packed-switch
:pswitch_data_62c
.packed-switch 0x0
:pswitch_4c2
:pswitch_4c6
:pswitch_4c9
:pswitch_4cc
.end packed-switch
:pswitch_data_6c8
.packed-switch 0x0
:pswitch_578
:pswitch_57c
:pswitch_57f
:pswitch_582
.end packed-switch
:pswitch_data_620
.packed-switch 0x0
:pswitch_4b4
:pswitch_4b8
:pswitch_4bb
:pswitch_4be
.end packed-switch
:pswitch_data_5fc
.packed-switch 0x0
:pswitch_48a
:pswitch_48e
:pswitch_491
:pswitch_494
.end packed-switch
:pswitch_data_6b0
.packed-switch 0x0
:pswitch_55c
:pswitch_560
:pswitch_563
:pswitch_566
.end packed-switch
:pswitch_data_638
.packed-switch 0x0
:pswitch_4d0
:pswitch_4d4
:pswitch_4d7
:pswitch_4da
.end packed-switch
:pswitch_data_6e0
.packed-switch 0x0
:pswitch_594
:pswitch_598
:pswitch_59b
:pswitch_59e
.end packed-switch
:pswitch_data_614
.packed-switch 0x0
:pswitch_4a6
:pswitch_4aa
:pswitch_4ad
:pswitch_4b0
.end packed-switch
:pswitch_data_68c
.packed-switch 0x0
:pswitch_532
:pswitch_536
:pswitch_539
:pswitch_53c
.end packed-switch
:pswitch_data_644
.packed-switch 0x0
:pswitch_4de
:pswitch_4e2
:pswitch_4e5
:pswitch_4e8
.end packed-switch
:pswitch_data_6d4
.packed-switch 0x0
:pswitch_586
:pswitch_58a
:pswitch_58d
:pswitch_590
.end packed-switch
:pswitch_data_650
.packed-switch 0x0
:pswitch_4ec
:pswitch_4f0
:pswitch_4f3
:pswitch_4f6
.end packed-switch
:pswitch_data_5f0
.packed-switch 0x0
:pswitch_47c
:pswitch_480
:pswitch_483
:pswitch_486
.end packed-switch
:pswitch_data_608
.packed-switch 0x0
:pswitch_498
:pswitch_49c
:pswitch_49f
:pswitch_4a2
.end packed-switch
:pswitch_data_65c
.packed-switch 0x0
:pswitch_4fa
:pswitch_4fe
:pswitch_501
:pswitch_504
.end packed-switch
:pswitch_data_698
.packed-switch 0x0
:pswitch_540
:pswitch_544
:pswitch_547
:pswitch_54a
.end packed-switch
:pswitch_data_668
.packed-switch 0x0
:pswitch_508
:pswitch_50c
:pswitch_50f
:pswitch_512
.end packed-switch
.end method
.method constructor <init>(Lcom/c/b;Ljava/lang/String;)V
.registers 12
const/4 v8, 0x0
const/16 v7, 0x9
const/4 v6, 0x6
const/4 v5, 0x2
const/4 v1, 0x0
sget v2, Lcom/c/i;->e:I
invoke-direct {p0}, Lcom/c/i;-><init>()V
const-class v0, Lcom/c/x;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
check-cast p1, Lcom/c/cm;
invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/c/x;->h:Landroid/content/Context;
const-wide/16 v3, -0x1
iput-wide v3, p0, Lcom/c/x;->m:J
iput-boolean v1, p0, Lcom/c/x;->o:Z
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v3, 0x7
aget-object v0, v0, v3
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3b
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v0, v0, v5
iput-object v0, p0, Lcom/c/x;->l:Ljava/lang/String;
if-eqz v2, :cond_75
sget-boolean v0, Lcom/c/bp;->b:Z
if-eqz v0, :cond_73
move v0, v1
:goto_39
sput-boolean v0, Lcom/c/bp;->b:Z
:cond_3b
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v3, 0xa
aget-object v0, v0, v3
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_50
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v3, 0x4
aget-object v0, v0, v3
iput-object v0, p0, Lcom/c/x;->l:Ljava/lang/String;
if-eqz v2, :cond_75
:cond_50
new-instance v0, Lcom/c/bo;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v2, v2, v7
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v2, v2, v6
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/c/bo;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
const/4 v0, 0x1
goto :goto_39
:cond_75
iget-object v0, p0, Lcom/c/x;->h:Landroid/content/Context;
sget-object v3, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v4, 0x8
aget-object v3, v3, v4
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iput-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
iget-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
if-nez v0, :cond_94
new-instance v0, Lcom/c/bo;
sget-object v1, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v2, 0x5
aget-object v1, v1, v2
invoke-direct {v0, v1}, Lcom/c/bo;-><init>(Ljava/lang/String;)V
throw v0
:cond_94
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v0, v0, v5
iget-object v3, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ab
new-instance v0, Lcom/c/az;
iget-object v3, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
invoke-direct {v0, v3}, Lcom/c/az;-><init>(Landroid/location/LocationManager;)V
iput-object v0, p0, Lcom/c/x;->k:Lcom/c/az;
if-eqz v2, :cond_ad
:cond_ab
iput-object v8, p0, Lcom/c/x;->k:Lcom/c/az;
:cond_ad
new-instance v0, Lcom/c/bl;
invoke-direct {v0, p0, v8}, Lcom/c/bl;-><init>(Lcom/c/x;Lcom/c/bh;)V
iput-object v0, p0, Lcom/c/x;->j:Lcom/c/bl;
iget-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getProviders(Landroid/location/LocationManager;Z)Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_114
iget-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
invoke-static {v0}, Ldroidbox/android/location/LocationManager;->getAllProviders(Landroid/location/LocationManager;)Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ef
new-instance v0, Lcom/c/bo;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v3, 0xb
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/c/bo;-><init>(Ljava/lang/String;)V
throw v0
:cond_ef
new-instance v0, Lcom/c/bo;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v2, v2, v7
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v2, v2, v6
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/c/bo;-><init>(Ljava/lang/String;)V
throw v0
:cond_114
return-void
.end method
.method static a(Landroid/location/Location;)Lcom/c/a/cg;
.registers 6
const-wide/16 v3, 0x0
if-nez p0, :cond_6
const/4 v0, 0x0
:goto_5
:cond_5
return-object v0
:cond_6
new-instance v0, Lcom/c/a/cg;
invoke-direct {v0}, Lcom/c/a/cg;-><init>()V
invoke-static {p0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
cmpl-double v1, v1, v3
if-nez v1, :cond_1b
invoke-static {p0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v1
cmpl-double v1, v1, v3
if-eqz v1, :cond_29
:cond_1b
invoke-static {p0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->a(D)V
invoke-static {p0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->b(D)V
:cond_29
invoke-static {p0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-eqz v1, :cond_3a
invoke-static {p0}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->a(J)V
:cond_3a
invoke-static {p0}, Ldroidbox/android/location/Location;->hasAccuracy(Landroid/location/Location;)Z
move-result v1
if-eqz v1, :cond_4b
invoke-static {p0}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v1
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
invoke-virtual {v0, v1}, Lcom/c/a/cg;->a(I)V
:cond_4b
invoke-static {p0}, Ldroidbox/android/location/Location;->hasAltitude(Landroid/location/Location;)Z
move-result v1
if-eqz v1, :cond_58
invoke-static {p0}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->c(D)V
:cond_58
invoke-static {p0}, Ldroidbox/android/location/Location;->hasBearing(Landroid/location/Location;)Z
move-result v1
if-eqz v1, :cond_66
invoke-static {p0}, Ldroidbox/android/location/Location;->getBearing(Landroid/location/Location;)F
move-result v1
float-to-double v1, v1
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->e(D)V
:cond_66
invoke-static {p0}, Ldroidbox/android/location/Location;->hasSpeed(Landroid/location/Location;)Z
move-result v1
if-eqz v1, :cond_5
invoke-static {p0}, Ldroidbox/android/location/Location;->getSpeed(Landroid/location/Location;)F
move-result v1
float-to-double v1, v1
invoke-virtual {v0, v1, v2}, Lcom/c/a/cg;->d(D)V
goto :goto_5
.end method
.method static synthetic a(Lcom/c/x;Lcom/c/a/cg;)Lcom/c/a/cg;
.registers 2
iput-object p1, p0, Lcom/c/x;->n:Lcom/c/a/cg;
return-object p1
.end method
.method static synthetic a(Lcom/c/x;)Lcom/c/bp;
.registers 2
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
return-object v0
.end method
.method private a(Ljava/lang/String;J)V
.registers 11
iget-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
const/4 v4, 0x0
iget-object v5, p0, Lcom/c/x;->j:Lcom/c/bl;
invoke-static {}, Lcom/c/cq;->a()Landroid/os/Looper;
move-result-object v6
move-object v1, p1
move-wide v2, p2
invoke-static/range {v0 .. v6}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/c/x;->m:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_4d
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v1, 0x2
aget-object v0, v0, v1
iget-object v1, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/c/x;->k:Lcom/c/az;
invoke-virtual {v0}, Lcom/c/az;->a()Z
:cond_5f
return-void
.end method
.method static synthetic b(Lcom/c/x;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/c/x;->l:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/c/x;)Z
.registers 2
iget-boolean v0, p0, Lcom/c/x;->o:Z
return v0
.end method
.method static synthetic d(Lcom/c/x;)Lcom/c/az;
.registers 2
iget-object v0, p0, Lcom/c/x;->k:Lcom/c/az;
return-object v0
.end method
.method static synthetic e(Lcom/c/x;)Lcom/c/a/cg;
.registers 2
iget-object v0, p0, Lcom/c/x;->n:Lcom/c/a/cg;
return-object v0
.end method
.method static synthetic f(Lcom/c/x;)V
.registers 1
invoke-virtual {p0}, Lcom/c/x;->a()V
return-void
.end method
.method public a(Lcom/c/b;Ljava/lang/String;)Lcom/c/i;
.registers 4
new-instance v0, Lcom/c/x;
invoke-direct {v0, p1, p2}, Lcom/c/x;-><init>(Lcom/c/b;Ljava/lang/String;)V
return-object v0
.end method
.method public a(J)V
.registers 8
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-gez v0, :cond_23
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v3, 0xe
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
iget-wide v0, p0, Lcom/c/x;->m:J
cmp-long v0, p1, v0
if-nez v0, :cond_35
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
sget-object v1, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v2, 0xc
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:goto_34
return-void
:cond_35
invoke-virtual {p0}, Lcom/c/x;->c()V
:try_start_38
iget-object v0, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-direct {p0, v0, p1, p2}, Lcom/c/x;->a(Ljava/lang/String;J)V
iput-wide p1, p0, Lcom/c/x;->m:J
:try_end_3f
.catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3f} :catch_40
goto :goto_34
:catch_40
move-exception v0
iget-object v1, p0, Lcom/c/x;->f:Lcom/c/bp;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v4, 0xd
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_34
.end method
.method public a()Z
.registers 5
const/16 v2, 0x13
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/c/x;->o:Z
if-eqz v1, :cond_8
:goto_7
return v0
:cond_8
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v1, 0x2
aget-object v0, v0, v1
iget-object v1, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
sget-object v1, Lcom/c/x;->p:[Ljava/lang/String;
aget-object v1, v1, v2
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getProvider(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/LocationProvider;
move-result-object v0
if-eqz v0, :cond_3d
:try_start_21
invoke-virtual {p0}, Lcom/c/x;->c()V
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
sget-object v1, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v2, 0x14
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v1, 0x13
aget-object v0, v0, v1
const-wide/16 v1, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/c/x;->a(Ljava/lang/String;J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/c/x;->o:Z
:try_end_3d
.catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_3d} :catch_40
:goto_3d
:cond_3d
iget-boolean v0, p0, Lcom/c/x;->o:Z
goto :goto_7
:catch_40
move-exception v0
iget-object v1, p0, Lcom/c/x;->f:Lcom/c/bp;
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v3, 0x15
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3d
.end method
.method public b()Z
.registers 5
iget-wide v0, p0, Lcom/c/x;->m:J
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public c()V
.registers 5
iget-boolean v0, p0, Lcom/c/x;->o:Z
if-nez v0, :cond_b
invoke-virtual {p0}, Lcom/c/x;->b()Z
move-result v0
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:try_start_b
:cond_b
iget-object v0, p0, Lcom/c/x;->i:Landroid/location/LocationManager;
iget-object v1, p0, Lcom/c/x;->j:Lcom/c/bl;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/c/x;->f:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v3, 0xf
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/c/x;->m:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:goto_47
:try_end_47
.catch Ljava/lang/Throwable; {:try_start_b .. :try_end_47} :catch_64
:cond_47
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/x;->n:Lcom/c/a/cg;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/c/x;->m:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/c/x;->o:Z
sget-object v0, Lcom/c/x;->p:[Ljava/lang/String;
const/4 v1, 0x2
aget-object v0, v0, v1
iget-object v1, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/c/x;->k:Lcom/c/az;
invoke-virtual {v0}, Lcom/c/az;->b()V
goto :goto_a
:catch_64
move-exception v0
iget-object v1, p0, Lcom/c/x;->f:Lcom/c/bp;
sget-object v2, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v3, 0x10
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_47
.end method
.method public declared-synchronized d()Lcom/c/a/cg;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/c/x;->n:Lcom/c/a/cg;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_f
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_6
monitor-exit p0
return-object v0
:try_start_8
:cond_8
iget-object v0, p0, Lcom/c/x;->n:Lcom/c/a/cg;
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
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v2, 0x12
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/c/x;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/x;->p:[Ljava/lang/String;
const/16 v2, 0x11
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method