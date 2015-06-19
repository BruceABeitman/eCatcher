.class public Lcom/c/az;
.super Ljava/lang/Object;
.implements Landroid/location/GpsStatus$Listener;
.field private static final f:[Ljava/lang/String;
.field private final a:Lcom/c/bp;
.field private final b:Landroid/location/LocationManager;
.field private c:Z
.field private d:I
.field private e:I
.method static constructor <clinit>()V
.registers 15
const/16 v9, 0x51
const/16 v8, 0x30
const/16 v7, 0x10
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v0, 0x9
new-array v10, v0, [Ljava/lang/String;
const-string v0, "~\u000fu|>s\u0001!Y>~-4^0w\u0005\'\u00108~\u0013!Q?s\u0005uQ\'q\t9Q3|\u0005"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_26b
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
packed-switch v6, :pswitch_data_26e
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
const-string v0, "c\u0001!U=|\t!Uqs\u000f ^%0\t&\u0010?\u007f\u0017u"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_268
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
packed-switch v6, :pswitch_data_27a
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
const-string v0, "~\u000f!\u0010=y\u0013!U?y\u000e2\u00107\u007f\u0012uE!t\u0001!U\""
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_265
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
packed-switch v6, :pswitch_data_286
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
const-string v0, "\u007f\u000e\u0012@\"C\u00144D$c#=Q?w\u00051\u0018"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_262
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
packed-switch v6, :pswitch_data_292
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
const-string v0, "b\u00058_\'u\u0004uW!c@&D0d\u0015&\u0010yc\u0001!U=|\t!Ux0\u000c<C%u\u000e0B"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_25f
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
packed-switch v6, :pswitch_data_29e
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
const-string v0, "s\u000f \\5~G!\u0010#u\r:F40\u0007%Cqc\u00144D$c@9Y\"d\u0005;U#"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_25c
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
packed-switch v6, :pswitch_data_2aa
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
const-string v0, "q\u00041U50\u0007%Cqc\u00144D$c@}C0d\u00059\\8d\u0005|\u0010=y\u0013!U?u\u0012"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_259
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
packed-switch v6, :pswitch_data_2b6
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
const-string v0, "s\u000f \\5~G!\u00100t\u0004uW!c@&D0d\u0015&\u0010=y\u0013!U?u\u0012"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_256
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
packed-switch v6, :pswitch_data_2c2
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
const/16 v6, 0x8
const-string v0, "s\u000f \\5~G!\u00100t\u0004uW!c@&D0d\u0015&\u0010=y\u0013!U?u\u0012u\u0018#u\u0014 B?u\u0004uV0|\u00130\u0019"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_1c8
:cond_1ad
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_1b2
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_2ce
move v5, v9
:goto_1ba
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_1c6
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_1b2
:cond_1c6
move v1, v0
move-object v0, v2
:cond_1c8
if-gt v1, v3, :cond_1ad
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/az;->f:[Ljava/lang/String;
return-void
:pswitch_1d8
move v6, v7
goto/16 :goto_23
:pswitch_1db
const/16 v6, 0x60
goto/16 :goto_23
:pswitch_1df
const/16 v6, 0x55
goto/16 :goto_23
:pswitch_1e3
move v6, v8
goto/16 :goto_23
:pswitch_1e6
move v6, v7
goto/16 :goto_55
:pswitch_1e9
const/16 v6, 0x60
goto/16 :goto_55
:pswitch_1ed
const/16 v6, 0x55
goto/16 :goto_55
:pswitch_1f1
move v6, v8
goto/16 :goto_55
:pswitch_1f4
move v6, v7
goto/16 :goto_88
:pswitch_1f7
const/16 v6, 0x60
goto/16 :goto_88
:pswitch_1fb
const/16 v6, 0x55
goto/16 :goto_88
:pswitch_1ff
move v6, v8
goto/16 :goto_88
:pswitch_202
move v6, v7
goto/16 :goto_bb
:pswitch_205
const/16 v6, 0x60
goto/16 :goto_bb
:pswitch_209
const/16 v6, 0x55
goto/16 :goto_bb
:pswitch_20d
move v6, v8
goto/16 :goto_bb
:pswitch_210
move v6, v7
goto/16 :goto_ee
:pswitch_213
const/16 v6, 0x60
goto/16 :goto_ee
:pswitch_217
const/16 v6, 0x55
goto/16 :goto_ee
:pswitch_21b
move v6, v8
goto/16 :goto_ee
:pswitch_21e
move v6, v7
goto/16 :goto_121
:pswitch_221
const/16 v6, 0x60
goto/16 :goto_121
:pswitch_225
const/16 v6, 0x55
goto/16 :goto_121
:pswitch_229
move v6, v8
goto/16 :goto_121
:pswitch_22c
move v6, v7
goto/16 :goto_154
:pswitch_22f
const/16 v6, 0x60
goto/16 :goto_154
:pswitch_233
const/16 v6, 0x55
goto/16 :goto_154
:pswitch_237
move v6, v8
goto/16 :goto_154
:pswitch_23a
move v6, v7
goto/16 :goto_187
:pswitch_23d
const/16 v6, 0x60
goto/16 :goto_187
:pswitch_241
const/16 v6, 0x55
goto/16 :goto_187
:pswitch_245
move v6, v8
goto/16 :goto_187
:pswitch_248
move v5, v7
goto/16 :goto_1ba
:pswitch_24b
const/16 v5, 0x60
goto/16 :goto_1ba
:pswitch_24f
const/16 v5, 0x55
goto/16 :goto_1ba
:pswitch_253
move v5, v8
goto/16 :goto_1ba
:cond_256
move v2, v3
goto/16 :goto_195
:cond_259
move v2, v3
goto/16 :goto_162
:cond_25c
move v2, v3
goto/16 :goto_12f
:cond_25f
move v2, v3
goto/16 :goto_fc
:cond_262
move v2, v3
goto/16 :goto_c9
:cond_265
move v2, v3
goto/16 :goto_96
:cond_268
move v2, v3
goto/16 :goto_63
:cond_26b
move v2, v3
goto/16 :goto_31
:pswitch_data_2ce
.packed-switch 0x0
:pswitch_248
:pswitch_24b
:pswitch_24f
:pswitch_253
.end packed-switch
:pswitch_data_2b6
.packed-switch 0x0
:pswitch_22c
:pswitch_22f
:pswitch_233
:pswitch_237
.end packed-switch
:pswitch_data_2c2
.packed-switch 0x0
:pswitch_23a
:pswitch_23d
:pswitch_241
:pswitch_245
.end packed-switch
:pswitch_data_27a
.packed-switch 0x0
:pswitch_1e6
:pswitch_1e9
:pswitch_1ed
:pswitch_1f1
.end packed-switch
:pswitch_data_286
.packed-switch 0x0
:pswitch_1f4
:pswitch_1f7
:pswitch_1fb
:pswitch_1ff
.end packed-switch
:pswitch_data_292
.packed-switch 0x0
:pswitch_202
:pswitch_205
:pswitch_209
:pswitch_20d
.end packed-switch
:pswitch_data_29e
.packed-switch 0x0
:pswitch_210
:pswitch_213
:pswitch_217
:pswitch_21b
.end packed-switch
:pswitch_data_2aa
.packed-switch 0x0
:pswitch_21e
:pswitch_221
:pswitch_225
:pswitch_229
.end packed-switch
:pswitch_data_26e
.packed-switch 0x0
:pswitch_1d8
:pswitch_1db
:pswitch_1df
:pswitch_1e3
.end packed-switch
.end method
.method public constructor <init>(Landroid/location/LocationManager;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/c/az;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
iput-object p1, p0, Lcom/c/az;->b:Landroid/location/LocationManager;
return-void
.end method
.method static synthetic a(Lcom/c/az;)Landroid/location/LocationManager;
.registers 2
iget-object v0, p0, Lcom/c/az;->b:Landroid/location/LocationManager;
return-object v0
.end method
.method public declared-synchronized a()Z
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/c/az;->c:Z
if-eqz v0, :cond_9
iget-boolean v0, p0, Lcom/c/az;->c:Z
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_4e
:goto_7
monitor-exit p0
return v0
:try_start_9
:cond_9
new-instance v0, Lcom/c/bd;
invoke-direct {v0, p0}, Lcom/c/bd;-><init>(Lcom/c/az;)V
invoke-static {v0}, Lcom/c/cq;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
move-result-object v0
const-wide/16 v1, 0x2
sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/c/az;->c:Z
iget-boolean v0, p0, Lcom/c/az;->c:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v1, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v2, 0x6
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
sget v0, Lcom/c/i;->e:I
if-eqz v0, :cond_3f
:cond_34
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v1, Lcom/c/az;->f:[Ljava/lang/String;
const/16 v2, 0x8
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->d(Ljava/lang/String;)V
:try_end_3f
.catchall {:try_start_9 .. :try_end_3f} :catchall_4e
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3f} :catch_42
:goto_3f
:try_start_3f
:cond_3f
iget-boolean v0, p0, Lcom/c/az;->c:Z
goto :goto_7
:catch_42
move-exception v0
iget-object v1, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v2, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v3, 0x7
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_4d
.catchall {:try_start_3f .. :try_end_4d} :catchall_4e
goto :goto_3f
:catchall_4e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized b()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/c/az;->c:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_1f
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v0, p0, Lcom/c/az;->b:Landroid/location/LocationManager;
invoke-static {v0, p0}, Ldroidbox/android/location/LocationManager;->removeGpsStatusListener(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v1, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v2, 0x4
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:goto_16
:try_end_16
.catchall {:try_start_7 .. :try_end_16} :catchall_1f
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_22
const/4 v0, 0x0
:try_start_17
iput-boolean v0, p0, Lcom/c/az;->c:Z
const/4 v0, 0x0
iput v0, p0, Lcom/c/az;->e:I
iput v0, p0, Lcom/c/az;->d:I
:try_end_1e
.catchall {:try_start_17 .. :try_end_1e} :catchall_1f
goto :goto_5
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
:catch_22
move-exception v0
:try_start_23
iget-object v1, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v2, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v3, 0x5
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_2d
.catchall {:try_start_23 .. :try_end_2d} :catchall_1f
goto :goto_16
.end method
.method public declared-synchronized c()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/c/az;->d:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized d()I
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/c/az;->e:I
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public onGpsStatusChanged(I)V
.registers 7
sget v1, Lcom/c/i;->e:I
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v4, 0x3
aget-object v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_2b
const/4 v0, 0x4
if-ne p1, v0, :cond_3e
monitor-enter p0
:try_start_2f
iget-boolean v0, p0, Lcom/c/az;->c:Z
if-nez v0, :cond_3f
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v1, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
monitor-exit p0
:goto_3e
:cond_3e
return-void
:cond_3f
iget-object v0, p0, Lcom/c/az;->b:Landroid/location/LocationManager;
if-nez v0, :cond_52
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
sget-object v1, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
monitor-exit p0
goto :goto_3e
:catchall_4f
move-exception v0
monitor-exit p0
:try_end_51
.catchall {:try_start_2f .. :try_end_51} :catchall_4f
throw v0
:cond_52
const/4 v0, 0x0
:try_start_53
iput v0, p0, Lcom/c/az;->e:I
iput v0, p0, Lcom/c/az;->d:I
iget-object v0, p0, Lcom/c/az;->b:Landroid/location/LocationManager;
const/4 v2, 0x0
invoke-static {v0, v2}, Ldroidbox/android/location/LocationManager;->getGpsStatus(Landroid/location/LocationManager;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
move-result-object v0
invoke-static {v0}, Ldroidbox/android/location/GpsStatus;->getSatellites(Landroid/location/GpsStatus;)Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_66
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_86
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/GpsSatellite;
iget v3, p0, Lcom/c/az;->d:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/c/az;->d:I
invoke-static {v0}, Ldroidbox/android/location/GpsSatellite;->usedInFix(Landroid/location/GpsSatellite;)Z
move-result v0
if-eqz v0, :cond_84
iget v0, p0, Lcom/c/az;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/c/az;->e:I
:cond_84
if-eqz v1, :cond_66
:cond_86
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_b7
iget-object v0, p0, Lcom/c/az;->a:Lcom/c/bp;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/az;->f:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/c/az;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0x2f
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/c/az;->d:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_b7
monitor-exit p0
:try_end_b8
.catchall {:try_start_53 .. :try_end_b8} :catchall_4f
goto :goto_3e
.end method