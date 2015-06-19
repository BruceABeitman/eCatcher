.class public Lcom/c/cw;
.super Lcom/c/cs;
.field private static final d:Lcom/c/bp;
.field private static final e:[Ljava/lang/String;
.field private final a:Landroid/content/BroadcastReceiver;
.field private final b:Landroid/content/Context;
.field private final c:Ljava/util/Collection;
.method static constructor <clinit>()V
.registers 15
const/16 v7, 0x47
const/16 v9, 0xe
const/4 v13, 0x1
const/4 v3, 0x0
const/16 v8, 0x64
const/4 v0, 0x4
new-array v10, v0, [Ljava/lang/String;
const-string v0, "&\u0004\u0000|\u000b.\u000eJ`\u00013D\u0007a\n)D\'A*\t/\'Z-\u0011#0W;\u0004\"%@#\u0002"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_110
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
packed-switch v6, :pswitch_data_114
move v6, v8
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
const-string v0, "!\u0005\u0011`\u0000g\u0004\u0001z\u0013(\u0018\u000f4D"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_10d
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
packed-switch v6, :pswitch_data_120
move v6, v8
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
const-string v0, "gB"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_10b
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
packed-switch v6, :pswitch_data_12c
move v6, v8
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
const/4 v6, 0x3
const-string v0, "nJ\u0018."
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_c7
:cond_ac
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_b1
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_138
move v5, v8
:goto_b9
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_c5
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_b1
:cond_c5
move v1, v0
move-object v0, v2
:cond_c7
if-gt v1, v3, :cond_ac
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/cw;->e:[Ljava/lang/String;
const-class v0, Lcom/c/cs;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
sput-object v0, Lcom/c/cw;->d:Lcom/c/bp;
return-void
:pswitch_df
move v6, v7
goto/16 :goto_22
:pswitch_e2
const/16 v6, 0x6a
goto/16 :goto_22
:pswitch_e6
move v6, v8
goto/16 :goto_22
:pswitch_e9
move v6, v9
goto/16 :goto_22
:pswitch_ec
move v6, v7
goto/16 :goto_54
:pswitch_ef
const/16 v6, 0x6a
goto/16 :goto_54
:pswitch_f3
move v6, v8
goto/16 :goto_54
:pswitch_f6
move v6, v9
goto/16 :goto_54
:pswitch_f9
move v6, v7
goto :goto_87
:pswitch_fb
const/16 v6, 0x6a
goto :goto_87
:pswitch_fe
move v6, v8
goto :goto_87
:pswitch_100
move v6, v9
goto :goto_87
:pswitch_102
move v5, v7
goto :goto_b9
:pswitch_104
const/16 v5, 0x6a
goto :goto_b9
:pswitch_107
move v5, v8
goto :goto_b9
:pswitch_109
move v5, v9
goto :goto_b9
:cond_10b
move v2, v3
goto :goto_95
:cond_10d
move v2, v3
goto/16 :goto_62
:cond_110
move v2, v3
goto/16 :goto_30
nop
:pswitch_data_12c
.packed-switch 0x0
:pswitch_f9
:pswitch_fb
:pswitch_fe
:pswitch_100
.end packed-switch
:pswitch_data_138
.packed-switch 0x0
:pswitch_102
:pswitch_104
:pswitch_107
:pswitch_109
.end packed-switch
:pswitch_data_114
.packed-switch 0x0
:pswitch_df
:pswitch_e2
:pswitch_e6
:pswitch_e9
.end packed-switch
:pswitch_data_120
.packed-switch 0x0
:pswitch_ec
:pswitch_ef
:pswitch_f3
:pswitch_f6
.end packed-switch
.end method
.method public constructor <init>(Lcom/c/b;)V
.registers 3
invoke-direct {p0}, Lcom/c/cs;-><init>()V
new-instance v0, Lcom/c/a;
invoke-direct {v0, p0}, Lcom/c/a;-><init>(Lcom/c/cw;)V
iput-object v0, p0, Lcom/c/cw;->a:Landroid/content/BroadcastReceiver;
check-cast p1, Lcom/c/cm;
invoke-virtual {p1}, Lcom/c/cm;->a()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/c/cw;->b:Landroid/content/Context;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/c/cw;->c:Ljava/util/Collection;
return-void
.end method
.method private a(Landroid/net/NetworkInfo$DetailedState;)Lcom/c/at;
.registers 4
sget-object v0, Lcom/c/dc;->a:[I
invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1a
sget-object v0, Lcom/c/at;->a:Lcom/c/at;
:goto_d
return-object v0
:pswitch_e
sget-object v0, Lcom/c/at;->e:Lcom/c/at;
goto :goto_d
:pswitch_11
sget-object v0, Lcom/c/at;->c:Lcom/c/at;
goto :goto_d
:pswitch_14
sget-object v0, Lcom/c/at;->d:Lcom/c/at;
goto :goto_d
:pswitch_17
sget-object v0, Lcom/c/at;->b:Lcom/c/at;
goto :goto_d
:pswitch_data_1a
.packed-switch 0x1
:pswitch_e
:pswitch_e
:pswitch_11
:pswitch_11
:pswitch_11
:pswitch_11
:pswitch_14
:pswitch_17
:pswitch_17
:pswitch_17
.end packed-switch
.end method
.method private a(I)Lcom/c/ay;
.registers 3
packed-switch p1, :pswitch_data_c
:pswitch_3
sget-object v0, Lcom/c/ay;->a:Lcom/c/ay;
:goto_5
return-object v0
:pswitch_6
sget-object v0, Lcom/c/ay;->d:Lcom/c/ay;
goto :goto_5
:pswitch_9
sget-object v0, Lcom/c/ay;->c:Lcom/c/ay;
goto :goto_5
:pswitch_data_c
.packed-switch 0x0
:pswitch_6
:pswitch_9
:pswitch_3
:pswitch_6
:pswitch_6
:pswitch_6
:pswitch_9
.end packed-switch
.end method
.method private declared-synchronized a(Landroid/net/ConnectivityManager;)V
.registers 14
monitor-enter p0
:try_start_1
sget-boolean v1, Lcom/c/cu;->a:Z
iget-object v2, p0, Lcom/c/cw;->c:Ljava/util/Collection;
monitor-enter v2
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9d
iget-object v0, p0, Lcom/c/cw;->c:Ljava/util/Collection;
invoke-interface {v0}, Ljava/util/Collection;->clear()V
if-eqz p1, :cond_94
invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
:cond_13
if-ge v0, v4, :cond_94
aget-object v5, v3, v0
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I
move-result v6
invoke-direct {p0, v6}, Lcom/c/cw;->a(I)Lcom/c/ay;
move-result-object v6
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
move-result-object v7
sget-object v8, Lcom/c/cw;->d:Lcom/c/bp;
invoke-virtual {v8}, Lcom/c/bp;->b()Z
move-result v8
if-eqz v8, :cond_6c
sget-object v8, Lcom/c/cw;->d:Lcom/c/bp;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
sget-object v10, Lcom/c/cw;->e:[Ljava/lang/String;
const/4 v11, 0x1
aget-object v10, v10, v11
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Lcom/c/cw;->e:[Ljava/lang/String;
const/4 v11, 0x2
aget-object v10, v10, v11
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Lcom/c/cw;->e:[Ljava/lang/String;
const/4 v11, 0x3
aget-object v10, v10, v11
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v7}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_6c
iget-object v8, p0, Lcom/c/cw;->c:Ljava/util/Collection;
new-instance v9, Lcom/c/cu;
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-static {v10, v5}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v5
invoke-direct {p0, v7}, Lcom/c/cw;->a(Landroid/net/NetworkInfo$DetailedState;)Lcom/c/at;
move-result-object v7
sget-object v10, Lcom/c/ao;->a:Lcom/c/ao;
invoke-direct {v9, v5, v6, v7, v10}, Lcom/c/cu;-><init>(Ljava/lang/Object;Lcom/c/ay;Lcom/c/at;Lcom/c/ao;)V
invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
if-eqz v1, :cond_13
:cond_94
monitor-exit v2
:try_end_95
.catchall {:try_start_6 .. :try_end_95} :catchall_9a
:try_start_95
invoke-virtual {p0}, Lcom/c/cw;->a()V
:try_end_98
.catchall {:try_start_95 .. :try_end_98} :catchall_9d
monitor-exit p0
return-void
:catchall_9a
move-exception v0
:try_start_9b
monitor-exit v2
:try_end_9c
.catchall {:try_start_9b .. :try_end_9c} :catchall_9a
:try_start_9c
throw v0
:try_end_9d
.catchall {:try_start_9c .. :try_end_9d} :catchall_9d
:catchall_9d
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic a(Lcom/c/cw;Landroid/net/ConnectivityManager;)V
.registers 2
invoke-direct {p0, p1}, Lcom/c/cw;->a(Landroid/net/ConnectivityManager;)V
return-void
.end method
.method static synthetic e()Lcom/c/bp;
.registers 1
sget-object v0, Lcom/c/cw;->d:Lcom/c/bp;
return-object v0
.end method
.method protected b(Lcom/c/b;)Lcom/c/cs;
.registers 3
new-instance v0, Lcom/c/cw;
invoke-direct {v0, p1}, Lcom/c/cw;-><init>(Lcom/c/b;)V
return-object v0
.end method
.method public b()V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
sget-object v1, Lcom/c/cw;->e:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/c/cw;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/c/cw;->a:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method public c()V
.registers 3
iget-object v0, p0, Lcom/c/cw;->b:Landroid/content/Context;
iget-object v1, p0, Lcom/c/cw;->a:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public d()Ljava/util/Collection;
.registers 4
iget-object v1, p0, Lcom/c/cw;->c:Ljava/util/Collection;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/c/cw;->c:Ljava/util/Collection;
invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
monitor-exit v1
return-object v0
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method