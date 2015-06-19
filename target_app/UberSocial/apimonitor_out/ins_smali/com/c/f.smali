.class  Lcom/c/f;
.super Landroid/content/BroadcastReceiver;
.field private static final b:[Ljava/lang/String;
.field final a:Lcom/c/ah;
.method static constructor <clinit>()V
.registers 14
const/16 v9, 0x5c
const/16 v7, 0x5a
const/16 v8, 0x56
const/4 v3, 0x0
const/4 v10, 0x1
const/4 v0, 0x3
new-array v11, v0, [Ljava/lang/String;
const-string v0, "*9+d\u001az%3t\u001a93|h\u001bz83vH"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v10, :cond_c5
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_1a
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_c8
const/16 v6, 0x68
:goto_23
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1a
:cond_2f
move v1, v0
move-object v0, v4
:goto_31
if-gt v1, v2, :cond_15
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v11, v3
const-string v0, "?.?d\u0018.?3oH38|n\u0006\u00083?d\u0001,3t("
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v10, :cond_c3
move v2, v3
:cond_48
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_4d
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_d4
const/16 v6, 0x68
:goto_56
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_62
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4d
:cond_62
move v1, v0
move-object v0, v4
:goto_64
if-gt v1, v2, :cond_48
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v11, v10
const/4 v6, 0x2
const-string v0, "*:)f\u000f?2"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v10, :cond_97
:cond_7b
move-object v2, v0
move v4, v3
move v13, v1
move-object v1, v0
move v0, v13
:goto_80
aget-char v12, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_e0
const/16 v5, 0x68
:goto_89
xor-int/2addr v5, v12
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_95
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_80
:cond_95
move v1, v0
move-object v0, v2
:cond_97
if-gt v1, v3, :cond_7b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v11, v6
sput-object v11, Lcom/c/f;->b:[Ljava/lang/String;
return-void
:pswitch_a7
move v6, v7
goto/16 :goto_23
:pswitch_aa
move v6, v8
goto/16 :goto_23
:pswitch_ad
move v6, v9
goto/16 :goto_23
:pswitch_b0
move v6, v10
goto/16 :goto_23
:pswitch_b3
move v6, v7
goto :goto_56
:pswitch_b5
move v6, v8
goto :goto_56
:pswitch_b7
move v6, v9
goto :goto_56
:pswitch_b9
move v6, v10
goto :goto_56
:pswitch_bb
move v5, v7
goto :goto_89
:pswitch_bd
move v5, v8
goto :goto_89
:pswitch_bf
move v5, v9
goto :goto_89
:pswitch_c1
move v5, v10
goto :goto_89
:cond_c3
move v2, v3
goto :goto_64
:cond_c5
move v2, v3
goto/16 :goto_31
:pswitch_data_d4
.packed-switch 0x0
:pswitch_b3
:pswitch_b5
:pswitch_b7
:pswitch_b9
.end packed-switch
:pswitch_data_e0
.packed-switch 0x0
:pswitch_bb
:pswitch_bd
:pswitch_bf
:pswitch_c1
.end packed-switch
:pswitch_data_c8
.packed-switch 0x0
:pswitch_a7
:pswitch_aa
:pswitch_ad
:pswitch_b0
.end packed-switch
.end method
.method constructor <init>(Lcom/c/ah;)V
.registers 2
iput-object p1, p0, Lcom/c/f;->a:Lcom/c/ah;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
sget v1, Lcom/c/ac;->a:I
:try_start_2
sget-object v0, Lcom/c/f;->b:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v0, v0, v2
const/4 v2, -0x1
invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iget-object v2, p0, Lcom/c/f;->a:Lcom/c/ah;
monitor-enter v2
:try_end_f
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_73
packed-switch v0, :pswitch_data_84
:try_start_12
:goto_12
iget-object v0, p0, Lcom/c/f;->a:Lcom/c/ah;
sget-object v3, Lcom/c/bg;->c:Lcom/c/bg;
invoke-static {v0, v3}, Lcom/c/ah;->a(Lcom/c/ah;Lcom/c/bg;)Lcom/c/bg;
:cond_19
iget-object v0, p0, Lcom/c/f;->a:Lcom/c/ah;
invoke-static {v0}, Lcom/c/ah;->a(Lcom/c/ah;)Lcom/c/bp;
move-result-object v0
invoke-virtual {v0}, Lcom/c/bp;->b()Z
move-result v0
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/c/f;->a:Lcom/c/ah;
invoke-static {v0}, Lcom/c/ah;->a(Lcom/c/ah;)Lcom/c/bp;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/c/f;->b:[Ljava/lang/String;
const/4 v5, 0x0
aget-object v4, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/c/f;->a:Lcom/c/ah;
invoke-static {v4}, Lcom/c/ah;->b(Lcom/c/ah;)Lcom/c/bg;
move-result-object v4
invoke-virtual {v4}, Lcom/c/bg;->name()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_4e
iget-object v0, p0, Lcom/c/f;->a:Lcom/c/ah;
invoke-static {v0}, Lcom/c/ah;->c(Lcom/c/ah;)V
monitor-exit v2
:goto_54
:try_end_54
.catchall {:try_start_12 .. :try_end_54} :catchall_70
sget-boolean v0, Lcom/c/bp;->b:Z
if-eqz v0, :cond_5c
add-int/lit8 v0, v1, 0x1
sput v0, Lcom/c/ac;->a:I
:cond_5c
return-void
:try_start_5d
:pswitch_5d
iget-object v0, p0, Lcom/c/f;->a:Lcom/c/ah;
sget-object v3, Lcom/c/bg;->a:Lcom/c/bg;
invoke-static {v0, v3}, Lcom/c/ah;->a(Lcom/c/ah;Lcom/c/bg;)Lcom/c/bg;
if-eqz v1, :cond_19
:pswitch_66
iget-object v0, p0, Lcom/c/f;->a:Lcom/c/ah;
sget-object v3, Lcom/c/bg;->b:Lcom/c/bg;
invoke-static {v0, v3}, Lcom/c/ah;->a(Lcom/c/ah;Lcom/c/bg;)Lcom/c/bg;
if-eqz v1, :cond_19
goto :goto_12
:catchall_70
move-exception v0
monitor-exit v2
:try_start_72
:try_end_72
.catchall {:try_start_5d .. :try_end_72} :catchall_70
throw v0
:try_end_73
.catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_73} :catch_73
:catch_73
move-exception v0
iget-object v2, p0, Lcom/c/f;->a:Lcom/c/ah;
invoke-static {v2}, Lcom/c/ah;->a(Lcom/c/ah;)Lcom/c/bp;
move-result-object v2
sget-object v3, Lcom/c/f;->b:[Ljava/lang/String;
const/4 v4, 0x1
aget-object v3, v3, v4
invoke-virtual {v2, v3, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_54
nop
:pswitch_data_84
.packed-switch 0x0
:pswitch_66
:pswitch_5d
:pswitch_5d
.end packed-switch
.end method