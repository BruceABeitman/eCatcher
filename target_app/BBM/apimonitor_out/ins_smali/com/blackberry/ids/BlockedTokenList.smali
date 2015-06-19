.class  Lcom/blackberry/ids/BlockedTokenList;
.super Ljava/lang/Object;
.source "BlockedTokenList.java"
.field static d:J
.field private static final e:[I
.field  a:Ljava/util/Set;
.field  b:Ljava/util/Set;
.field  c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x6
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/blackberry/ids/BlockedTokenList;->e:[I
return-void
nop
:array_a
.array-data 0x4
0x28t 0x0t 0x0t 0x0t
0x28t 0x0t 0x0t 0x0t
0x28t 0x0t 0x0t 0x0t
0x50t 0x0t 0x0t 0x0t
0xa0t 0x0t 0x0t 0x0t
0x40t 0x1t 0x0t 0x0t
.end array-data
.end method
.method protected constructor <init>(Ljava/util/Set;Ljava/util/Set;JLjava/lang/String;)V
.registers 9
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_40
const-string v0, "BlockedTokenList Constructor - created new tree for BLackList"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
:goto_14
if-nez p2, :cond_4a
const-string v0, "BlockedTokenList Constructor - created new tree for BackOffList"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iput-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
:goto_24
const-wide/16 v0, 0x0
cmp-long v0, p3, v0
if-lez v0, :cond_54
sput-wide p3, Lcom/blackberry/ids/BlockedTokenList;->d:J
const-string v0, "BlockedTokenList Constructor - loaded from storage for tokBackOffConfig"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_33
if-nez p5, :cond_60
const-string v0, "BlockedTokenList Constructor - request BackOff empty"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
:goto_3f
return-void
:cond_40
const-string v0, "BlockedTokenList Constructor - loaded from storage for BLackList"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object p1, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
goto :goto_14
:cond_4a
const-string v0, "BlockedTokenList Constructor - loaded from storage for BackOffList"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object p2, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
goto :goto_24
:cond_54
const-string v0, "BlockedTokenList Constructor - set requestBackOffConfig to default"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-wide/16 v0, 0x12c
sput-wide v0, Lcom/blackberry/ids/BlockedTokenList;->d:J
goto :goto_33
:cond_60
const-string v0, "BlockedTokenList Constructor - loaded from storage for request backoff"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iput-object p5, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
goto :goto_3f
.end method
.method private final a(IILjava/lang/String;Z)Ljava/lang/String;
.registers 12
const/4 v1, 0x0
const/4 v6, 0x1
monitor-enter p0
packed-switch p2, :pswitch_data_76
:try_start_6
monitor-exit p0
move-object v0, v1
:goto_8
return-object v0
:pswitch_9
iget-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
move-object v2, v0
:goto_c
if-eqz v2, :cond_14
invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
move-result v0
if-ne v0, v6, :cond_31
:cond_14
const-string v0, "getEntryFromList - RequestId : %d list of type : %d is empty"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit p0
move-object v0, v1
goto :goto_8
:pswitch_2d
iget-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
move-object v2, v0
goto :goto_c
:cond_31
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_35
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, ":"
invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_35
const/4 v5, 0x1
aget-object v5, v4, v5
if-eqz v5, :cond_35
const/4 v5, 0x1
aget-object v4, v4, v5
invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-ne v4, v6, :cond_35
if-ne p4, v6, :cond_6e
const-string v1, "getEntryFromList -- RequestId : %d removing entry from list :%s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
aput-object v0, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:cond_6e
monitor-exit p0
:try_end_6f
.catchall {:try_start_6 .. :try_end_6f} :catchall_70
goto :goto_8
:catchall_70
move-exception v0
monitor-exit p0
throw v0
:cond_73
monitor-exit p0
move-object v0, v1
goto :goto_8
:pswitch_data_76
.packed-switch 0x1
:pswitch_9
:pswitch_2d
.end packed-switch
.end method
.method final declared-synchronized a(IILjava/lang/String;)I
.registers 16
const-wide/16 v3, 0x0
const/4 v11, 0x1
const/4 v0, 0x0
monitor-enter p0
:try_start_5
invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {p0, p1, p2, v1, v2}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;Z)Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_2c
const-string v1, "isTokenBlackListed - RequestId : %d Token : %s not found in the list"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_2a
:try_end_2a
.catchall {:try_start_5 .. :try_end_2a} :catchall_7e
monitor-exit p0
return v0
:try_start_2c
:cond_2c
const-string v1, ":"
invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
:try_end_31
.catchall {:try_start_2c .. :try_end_31} :catchall_7e
move-result-object v6
const/4 v1, 0x3
:try_start_33
aget-object v1, v6, v1
invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
:try_end_3c
.catchall {:try_start_33 .. :try_end_3c} :catchall_7e
.catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3c} :catch_81
move-result-wide v1
:try_start_3d
:goto_3d
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
const-wide/16 v9, 0x3e8
div-long/2addr v7, v9
sub-long/2addr v1, v7
cmp-long v3, v1, v3
if-gtz v3, :cond_f0
const-string v1, "isTokenBlocked -- RequestId : %d Token block time out expired for %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-enter p0
:try_end_60
.catchall {:try_start_3d .. :try_end_60} :catchall_7e
packed-switch p2, :pswitch_data_138
:try_start_63
const-string v1, "removeEntryFromList - RequestId : %d - Not a valid list type : %d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit p0
:try_end_7a
.catchall {:try_start_63 .. :try_end_7a} :catchall_7b
goto :goto_2a
:catchall_7b
move-exception v0
:try_start_7c
monitor-exit p0
throw v0
:try_end_7e
.catchall {:try_start_7c .. :try_end_7e} :catchall_7e
:catchall_7e
move-exception v0
monitor-exit p0
throw v0
:catch_81
move-exception v1
:try_start_82
const-string v1, "isTokenBlocked - RequestId : %d - Exception occured while retrieving expiry for %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v2, v7
const/4 v7, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
aput-object v8, v2, v7
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_98
.catchall {:try_start_82 .. :try_end_98} :catchall_7e
move-wide v1, v3
goto :goto_3d
:pswitch_9a
:try_start_9a
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
move-result v1
if-ne v1, v11, :cond_c7
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
invoke-virtual {v1}, Lcom/blackberry/ids/BBIDStorage;->i()V
:goto_ae
const-string v1, "removeEntryFromList - RequestId : %d - removed an entry from the list: %d"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit p0
goto/16 :goto_2a
:cond_c7
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
iget-object v2, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
invoke-virtual {v1, v2}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/util/Set;)V
goto :goto_ae
:pswitch_d1
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
move-result v1
if-ne v1, v11, :cond_e6
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
invoke-virtual {v1}, Lcom/blackberry/ids/BBIDStorage;->k()V
goto :goto_ae
:cond_e6
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
iget-object v2, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
invoke-virtual {v1, v2}, Lcom/blackberry/ids/BBIDStorage;->b(Ljava/util/Set;)V
:try_end_ef
.catchall {:try_start_9a .. :try_end_ef} :catchall_7b
goto :goto_ae
:cond_f0
const v0, 0xc3e6
const/4 v3, 0x2
:try_start_f4
aget-object v3, v6, v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_f9
.catchall {:try_start_f4 .. :try_end_f9} :catchall_7e
.catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_f9} :catch_120
move-result v0
:try_start_fa
:goto_fa
const-string v3, "isTokenBlocked -- RequestId : %d Token block was found for %s with an error :%d, expires in %d"
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x3
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v4, v5
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_2a
:catch_120
move-exception v3
const-string v3, "isTokenBlocked - RequestId : %d - Exception occured while retrieving error code for %s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_137
.catchall {:try_start_fa .. :try_end_137} :catchall_7e
goto :goto_fa
:pswitch_data_138
.packed-switch 0x1
:pswitch_9a
:pswitch_d1
.end packed-switch
.end method
.method final declared-synchronized a(I)V
.registers 7
monitor-enter p0
:try_start_1
monitor-enter p0
:try_end_2
.catchall {:try_start_1 .. :try_end_2} :catchall_3f
packed-switch p1, :pswitch_data_4c
:try_start_5
const-string v0, "clearAllTokenInList - Not a valid list type : %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit p0
:try_end_15
.catchall {:try_start_5 .. :try_end_15} :catchall_3c
:goto_15
monitor-exit p0
return-void
:try_start_17
:pswitch_17
iget-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
invoke-virtual {v1}, Lcom/blackberry/ids/BBIDStorage;->i()V
:goto_20
if-eqz v0, :cond_3a
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v1
if-nez v1, :cond_3a
const-string v1, "CLEARING ALL the entry in the BlockedTokenList of type :%d"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-interface {v0}, Ljava/util/Set;->clear()V
:cond_3a
monitor-exit p0
:try_end_3b
.catchall {:try_start_17 .. :try_end_3b} :catchall_3c
goto :goto_15
:catchall_3c
move-exception v0
:try_start_3d
monitor-exit p0
throw v0
:try_end_3f
.catchall {:try_start_3d .. :try_end_3f} :catchall_3f
:catchall_3f
move-exception v0
monitor-exit p0
throw v0
:pswitch_42
:try_start_42
iget-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
invoke-virtual {v1}, Lcom/blackberry/ids/BBIDStorage;->k()V
:try_end_4b
.catchall {:try_start_42 .. :try_end_4b} :catchall_3c
goto :goto_20
:pswitch_data_4c
.packed-switch 0x1
:pswitch_17
:pswitch_42
.end packed-switch
.end method
.method final declared-synchronized a(II)V
.registers 9
monitor-enter p0
:try_start_1
sget-wide v0, Lcom/blackberry/ids/BlockedTokenList;->d:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_4d
sget-wide v0, Lcom/blackberry/ids/BlockedTokenList;->d:J
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
add-long/2addr v0, v2
new-instance v2, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "1:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
iput-object v2, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->setRequestBackOff(Ljava/lang/String;)V
const-string v0, "AddRequestBackoff -- RequestId : %d new request backoff"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_4b
.catchall {:try_start_1 .. :try_end_4b} :catchall_56
:goto_4b
monitor-exit p0
return-void
:cond_4d
:try_start_4d
const-string v0, "AddRequestBackoff -- backoff disabled"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_55
.catchall {:try_start_4d .. :try_end_55} :catchall_56
goto :goto_4b
:catchall_56
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized a(IILjava/lang/String;I)V
.registers 12
const/4 v4, 0x2
const/4 v0, 0x0
monitor-enter p0
:try_start_3
invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v2
const/16 v1, 0x7080
const/4 v3, 0x1
invoke-direct {p0, p1, p2, v2, v3}, Lcom/blackberry/ids/BlockedTokenList;->a(IILjava/lang/String;Z)Ljava/lang/String;
move-result-object v3
if-ne p2, v4, :cond_3a
if-eqz v3, :cond_36
const-string v1, ":"
invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_36
const/4 v3, 0x4
aget-object v3, v1, v3
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_e1
if-eqz v3, :cond_36
const/4 v3, 0x4
:try_start_24
aget-object v1, v1, v3
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_29
.catchall {:try_start_24 .. :try_end_29} :catchall_e1
.catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_29} :catch_c8
move-result v0
:goto_2a
add-int/lit8 v0, v0, 0x1
:try_start_2c
sget-object v1, Lcom/blackberry/ids/BlockedTokenList;->e:[I
array-length v1, v1
if-lt v0, v1, :cond_36
sget-object v0, Lcom/blackberry/ids/BlockedTokenList;->e:[I
array-length v0, v0
add-int/lit8 v0, v0, -0x1
:cond_36
sget-object v1, Lcom/blackberry/ids/BlockedTokenList;->e:[I
aget v1, v1, v0
:cond_3a
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
int-to-long v5, v1
add-long/2addr v3, v5
new-instance v1, Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "1:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, ":"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, ":"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
const-string v0, "AddToBlockedList -- RequestId : %d new entry added for %s in list :%d"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "AddToBlockedList -- RequestId : %d new entry to be added to list of type %d : %s"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
aput-object v1, v2, v3
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-enter p0
:try_end_ac
.catchall {:try_start_2c .. :try_end_ac} :catchall_e1
packed-switch p2, :pswitch_data_11c
:try_start_af
const-string v0, "addEntryToList - RequestId : %d - Not a valid list type : %d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit p0
:try_end_c6
.catchall {:try_start_af .. :try_end_c6} :catchall_10a
:goto_c6
monitor-exit p0
return-void
:catch_c8
move-exception v1
:try_start_c9
const-string v1, "AddToBlockedList - RequestId : %d - Exception occured while retrieving attempts for %s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {p3}, Lcom/blackberry/ids/TokenTempCache;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v1, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_df
.catchall {:try_start_c9 .. :try_end_df} :catchall_e1
goto/16 :goto_2a
:catchall_e1
move-exception v0
monitor-exit p0
throw v0
:try_start_e4
:pswitch_e4
iget-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->a:Ljava/util/Set;
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/util/Set;)V
:goto_f2
const-string v0, "addEntryToList - RequestId : %d - added an entry to the list: %d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
monitor-exit p0
:try_end_109
.catchall {:try_start_e4 .. :try_end_109} :catchall_10a
goto :goto_c6
:catchall_10a
move-exception v0
:try_start_10b
monitor-exit p0
throw v0
:try_start_10d
:pswitch_10d
:try_end_10d
.catchall {:try_start_10b .. :try_end_10d} :catchall_e1
iget-object v0, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->b:Ljava/util/Set;
invoke-virtual {v0, v1}, Lcom/blackberry/ids/BBIDStorage;->b(Ljava/util/Set;)V
:try_end_11b
.catchall {:try_start_10d .. :try_end_11b} :catchall_10a
goto :goto_f2
:pswitch_data_11c
.packed-switch 0x1
:pswitch_e4
:pswitch_10d
.end packed-switch
.end method
.method final declared-synchronized a(Ljava/lang/String;)V
.registers 7
monitor-enter p0
if-eqz p1, :cond_29
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_38
move-result v0
if-nez v0, :cond_29
:try_start_9
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
sput-wide v0, Lcom/blackberry/ids/BlockedTokenList;->d:J
const-string v0, "Set request backoff config : %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
sget-wide v3, Lcom/blackberry/ids/BlockedTokenList;->d:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v0
sget-wide v1, Lcom/blackberry/ids/BlockedTokenList;->d:J
invoke-virtual {v0, v1, v2}, Lcom/blackberry/ids/BBIDStorage;->setReqBackOffConfig(J)V
:cond_29
:goto_29
:try_end_29
.catchall {:try_start_9 .. :try_end_29} :catchall_38
.catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_29} :catch_2b
monitor-exit p0
return-void
:catch_2b
move-exception v0
:try_start_2c
const-string v0, "Error while parsing config param : %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_37
.catchall {:try_start_2c .. :try_end_37} :catchall_38
goto :goto_29
:catchall_38
move-exception v0
monitor-exit p0
throw v0
.end method
.method final declared-synchronized b(I)I
.registers 12
const-wide/16 v3, 0x0
const/4 v0, 0x0
monitor-enter p0
:try_start_4
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
if-nez v1, :cond_19
const-string v1, "isRequestBlocked -- RequestId : %d nothing in list"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_17
:try_end_17
.catchall {:try_start_4 .. :try_end_17} :catchall_5f
monitor-exit p0
return v0
:try_start_19
:cond_19
iget-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_ac
const/4 v1, 0x1
aget-object v1, v5, v1
if-eqz v1, :cond_ac
const/4 v1, 0x2
aget-object v1, v5, v1
:try_end_2b
.catchall {:try_start_19 .. :try_end_2b} :catchall_5f
if-eqz v1, :cond_ac
const/4 v1, 0x1
:try_start_2e
aget-object v1, v5, v1
invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
:try_end_37
.catchall {:try_start_2e .. :try_end_37} :catchall_5f
.catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_37} :catch_62
move-result-wide v1
:goto_38
:try_start_38
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v6
const-wide/16 v8, 0x3e8
div-long/2addr v6, v8
sub-long v6, v1, v6
cmp-long v1, v6, v3
if-gtz v1, :cond_74
const-string v1, "isRequestBlocked -- RequestId : %d Request backoff time expired"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_54
const/4 v1, 0x0
iput-object v1, p0, Lcom/blackberry/ids/BlockedTokenList;->c:Ljava/lang/String;
invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;
move-result-object v1
invoke-virtual {v1}, Lcom/blackberry/ids/BBIDStorage;->clearRequestBackOff()V
:try_end_5e
.catchall {:try_start_38 .. :try_end_5e} :catchall_5f
goto :goto_17
:catchall_5f
move-exception v0
monitor-exit p0
throw v0
:catch_62
move-exception v1
:try_start_63
const-string v1, "isRequestBlocked - RequestId : %d - Exception occured while retrieving expiry"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v2, v6
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_72
.catchall {:try_start_63 .. :try_end_72} :catchall_5f
move-wide v1, v3
goto :goto_38
:cond_74
const/4 v1, 0x2
:try_start_75
aget-object v1, v5, v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
const-string v2, "isRequestBlocked -- RequestId : %d backoff was found, http status %d expires in %d"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_98
.catchall {:try_start_75 .. :try_end_98} :catchall_5f
.catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_98} :catch_9b
move v0, v1
goto/16 :goto_17
:catch_9b
move-exception v1
:try_start_9c
const-string v1, "isRequestBlocked - RequestId : %d - Exception occured while retrieving http status"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_54
:cond_ac
const-string v1, "isRequestBlocked - RequestId : %d - Error parsing entry"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_bb
.catchall {:try_start_9c .. :try_end_bb} :catchall_5f
goto :goto_54
.end method