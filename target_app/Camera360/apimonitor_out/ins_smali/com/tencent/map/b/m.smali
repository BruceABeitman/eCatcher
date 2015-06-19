.class public final Lcom/tencent/map/b/m;
.super Ljava/lang/Object;
.field private a:Landroid/content/Context;
.field private b:Landroid/telephony/TelephonyManager;
.field private c:Lcom/tencent/map/b/m$c;
.field private d:Lcom/tencent/map/b/m$a;
.field private e:Lcom/tencent/map/b/m$b;
.field private f:Z
.field private g:Ljava/util/List;
.field private h:[B
.field private i:[B
.field private j:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/m;->a:Landroid/content/Context;
iput-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
iput-object v0, p0, Lcom/tencent/map/b/m;->c:Lcom/tencent/map/b/m$c;
iput-object v0, p0, Lcom/tencent/map/b/m;->d:Lcom/tencent/map/b/m$a;
iput-object v0, p0, Lcom/tencent/map/b/m;->e:Lcom/tencent/map/b/m$b;
iput-boolean v1, p0, Lcom/tencent/map/b/m;->f:Z
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/m;->g:Ljava/util/List;
new-array v0, v1, [B
iput-object v0, p0, Lcom/tencent/map/b/m;->h:[B
new-array v0, v1, [B
iput-object v0, p0, Lcom/tencent/map/b/m;->i:[B
iput-boolean v1, p0, Lcom/tencent/map/b/m;->j:Z
return-void
.end method
.method private a(I)I
.registers 7
const/4 v4, 0x3
const/4 v0, 0x0
const/4 v2, -0x1
iget-object v1, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
if-lt v3, v4, :cond_26
const/4 v3, 0x0
const/4 v4, 0x3
:try_start_13
invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_25
move-result v1
:goto_1f
const/4 v3, 0x2
if-ne p1, v3, :cond_28
if-ne v1, v2, :cond_28
:goto_24
return v0
:catch_25
move-exception v1
:cond_26
move v1, v2
goto :goto_1f
:cond_28
move v0, v1
goto :goto_24
.end method
.method static synthetic a(Lcom/tencent/map/b/m;)Lcom/tencent/map/b/m$a;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/m;->d:Lcom/tencent/map/b/m$a;
return-object v0
.end method
.method static synthetic a(Lcom/tencent/map/b/m;Lcom/tencent/map/b/m$b;)Lcom/tencent/map/b/m$b;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/m;->e:Lcom/tencent/map/b/m$b;
return-object p1
.end method
.method static synthetic a(Lcom/tencent/map/b/m;Z)Z
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/map/b/m;->j:Z
return v0
.end method
.method static synthetic b(Lcom/tencent/map/b/m;)Lcom/tencent/map/b/m$b;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/m;->e:Lcom/tencent/map/b/m$b;
return-object v0
.end method
.method static synthetic c(Lcom/tencent/map/b/m;)V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/tencent/map/b/m;->j:Z
if-eq v0, v1, :cond_f
iput-boolean v1, p0, Lcom/tencent/map/b/m;->j:Z
new-instance v0, Lcom/tencent/map/b/l;
invoke-direct {v0, p0}, Lcom/tencent/map/b/l;-><init>(Lcom/tencent/map/b/m;)V
invoke-virtual {v0}, Lcom/tencent/map/b/l;->start()V
:cond_f
return-void
.end method
.method static synthetic d(Lcom/tencent/map/b/m;)Landroid/telephony/TelephonyManager;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
return-object v0
.end method
.method static synthetic e(Lcom/tencent/map/b/m;)[B
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/m;->i:[B
return-object v0
.end method
.method static synthetic f(Lcom/tencent/map/b/m;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/m;->g:Ljava/util/List;
return-object v0
.end method
.method public final a()V
.registers 5
iget-object v1, p0, Lcom/tencent/map/b/m;->h:[B
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/tencent/map/b/m;->f:Z
if-nez v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/tencent/map/b/m;->c:Lcom/tencent/map/b/m$c;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_1e
if-eqz v0, :cond_19
:try_start_11
iget-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
iget-object v2, p0, Lcom/tencent/map/b/m;->c:Lcom/tencent/map/b/m$c;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
:try_end_19
.catchall {:try_start_11 .. :try_end_19} :catchall_1e
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_21
:goto_19
:cond_19
const/4 v0, 0x0
:try_start_1a
iput-boolean v0, p0, Lcom/tencent/map/b/m;->f:Z
monitor-exit v1
:try_end_1d
.catchall {:try_start_1a .. :try_end_1d} :catchall_1e
goto :goto_8
:catchall_1e
move-exception v0
monitor-exit v1
throw v0
:catch_21
move-exception v0
const/4 v0, 0x0
:try_start_23
iput-boolean v0, p0, Lcom/tencent/map/b/m;->f:Z
:try_end_25
.catchall {:try_start_23 .. :try_end_25} :catchall_1e
goto :goto_19
.end method
.method public final a(Landroid/content/Context;Lcom/tencent/map/b/m$a;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/tencent/map/b/m;->h:[B
monitor-enter v2
:try_start_5
iget-boolean v3, p0, Lcom/tencent/map/b/m;->f:Z
if-eqz v3, :cond_b
monitor-exit v2
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_56
:goto_a
return v0
:cond_b
if-eqz p1, :cond_f
if-nez p2, :cond_12
:cond_f
monitor-exit v2
move v0, v1
goto :goto_a
:cond_12
:try_start_12
iput-object p1, p0, Lcom/tencent/map/b/m;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/map/b/m;->d:Lcom/tencent/map/b/m$a;
:try_start_16
:try_end_16
.catchall {:try_start_12 .. :try_end_16} :catchall_56
iget-object v0, p0, Lcom/tencent/map/b/m;->a:Landroid/content/Context;
const-string/jumbo v3, "phone"
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
iput-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
iget-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
:try_end_25
.catchall {:try_start_16 .. :try_end_25} :catchall_56
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_52
if-nez v0, :cond_2a
:try_start_27
monitor-exit v2
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_56
move v0, v1
goto :goto_a
:try_start_2a
:cond_2a
iget-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
move-result v0
invoke-direct {p0, v0}, Lcom/tencent/map/b/m;->a(I)I
move-result v3
new-instance v4, Lcom/tencent/map/b/m$c;
invoke-direct {v4, p0, v3, v0}, Lcom/tencent/map/b/m$c;-><init>(Lcom/tencent/map/b/m;II)V
iput-object v4, p0, Lcom/tencent/map/b/m;->c:Lcom/tencent/map/b/m$c;
iget-object v0, p0, Lcom/tencent/map/b/m;->c:Lcom/tencent/map/b/m$c;
:try_end_3d
.catchall {:try_start_2a .. :try_end_3d} :catchall_56
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3d} :catch_52
if-nez v0, :cond_42
:try_start_3f
monitor-exit v2
:try_end_40
.catchall {:try_start_3f .. :try_end_40} :catchall_56
move v0, v1
goto :goto_a
:cond_42
:try_start_42
iget-object v0, p0, Lcom/tencent/map/b/m;->b:Landroid/telephony/TelephonyManager;
iget-object v3, p0, Lcom/tencent/map/b/m;->c:Lcom/tencent/map/b/m$c;
const/16 v4, 0x12
invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
:try_end_4b
.catchall {:try_start_42 .. :try_end_4b} :catchall_56
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_52
const/4 v0, 0x1
:try_start_4c
iput-boolean v0, p0, Lcom/tencent/map/b/m;->f:Z
monitor-exit v2
:try_end_4f
.catchall {:try_start_4c .. :try_end_4f} :catchall_56
iget-boolean v0, p0, Lcom/tencent/map/b/m;->f:Z
goto :goto_a
:catch_52
move-exception v0
:try_start_53
monitor-exit v2
:try_end_54
.catchall {:try_start_53 .. :try_end_54} :catchall_56
move v0, v1
goto :goto_a
:catchall_56
move-exception v0
monitor-exit v2
throw v0
.end method
.method public final b()Ljava/util/List;
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/map/b/m;->i:[B
monitor-enter v1
:try_start_4
iget-object v2, p0, Lcom/tencent/map/b/m;->g:Ljava/util/List;
if-eqz v2, :cond_12
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iget-object v2, p0, Lcom/tencent/map/b/m;->g:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_4 .. :try_end_13} :catchall_14
return-object v0
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method