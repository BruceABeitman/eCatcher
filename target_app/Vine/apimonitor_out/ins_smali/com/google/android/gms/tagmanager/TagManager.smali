.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;
.field private static aid:Lcom/google/android/gms/tagmanager/TagManager;
.field private final aer:Lcom/google/android/gms/tagmanager/DataLayer;
.field private final agL:Lcom/google/android/gms/tagmanager/r;
.field private final aib:Lcom/google/android/gms/tagmanager/TagManager$a;
.field private final aic:Ljava/util/concurrent/ConcurrentMap;
.field private final mContext:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$a;Lcom/google/android/gms/tagmanager/DataLayer;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "context cannot be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aic:Ljava/util/concurrent/ConcurrentMap;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->aer:Lcom/google/android/gms/tagmanager/DataLayer;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aer:Lcom/google/android/gms/tagmanager/DataLayer;
new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$1;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer$b;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aer:Lcom/google/android/gms/tagmanager/DataLayer;
new-instance v1, Lcom/google/android/gms/tagmanager/d;
iget-object v2, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/d;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer$b;)V
new-instance v0, Lcom/google/android/gms/tagmanager/r;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/r;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->cl(Ljava/lang/String;)V
return-void
.end method
.method private cl(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aic:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/n;
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/n;->bH(Ljava/lang/String;)V
goto :goto_a
:cond_1a
return-void
.end method
.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
.registers 6
const-class v1, Lcom/google/android/gms/tagmanager/TagManager;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->aid:Lcom/google/android/gms/tagmanager/TagManager;
if-nez v0, :cond_2d
if-nez p0, :cond_17
const-string v0, "TagManager.getInstance requires non-null context."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:catchall_14
move-exception v0
monitor-exit v1
:try_end_16
.catchall {:try_start_3 .. :try_end_16} :catchall_14
throw v0
:cond_17
:try_start_17
new-instance v0, Lcom/google/android/gms/tagmanager/TagManager$2;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/TagManager$2;-><init>()V
new-instance v2, Lcom/google/android/gms/tagmanager/v;
invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/v;-><init>(Landroid/content/Context;)V
new-instance v3, Lcom/google/android/gms/tagmanager/TagManager;
new-instance v4, Lcom/google/android/gms/tagmanager/DataLayer;
invoke-direct {v4, v2}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$c;)V
invoke-direct {v3, p0, v0, v4}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$a;Lcom/google/android/gms/tagmanager/DataLayer;)V
sput-object v3, Lcom/google/android/gms/tagmanager/TagManager;->aid:Lcom/google/android/gms/tagmanager/TagManager;
:cond_2d
sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->aid:Lcom/google/android/gms/tagmanager/TagManager;
monitor-exit v1
:try_end_30
.catchall {:try_start_17 .. :try_end_30} :catchall_14
return-object v0
.end method
.method  a(Lcom/google/android/gms/tagmanager/n;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aic:Ljava/util/concurrent/ConcurrentMap;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  b(Lcom/google/android/gms/tagmanager/n;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aic:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aer:Lcom/google/android/gms/tagmanager/DataLayer;
return-object v0
.end method
.method declared-synchronized h(Landroid/net/Uri;)Z
.registers 7
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->lY()Lcom/google/android/gms/tagmanager/cd;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/cd;->h(Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_85
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->getContainerId()Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$3;->aif:[I
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->lZ()Lcom/google/android/gms/tagmanager/cd$a;
move-result-object v3
invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cd$a;->ordinal()I
move-result v3
aget v0, v0, v3
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_49
packed-switch v0, :pswitch_data_88
:cond_1e
const/4 v0, 0x1
:goto_1f
monitor-exit p0
return v0
:try_start_21
:pswitch_21
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aic:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2b
:cond_2b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/n;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->getContainerId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2b
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/n;->bJ(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->refresh()V
:try_end_48
.catchall {:try_start_21 .. :try_end_48} :catchall_49
goto :goto_2b
:catchall_49
move-exception v0
monitor-exit p0
throw v0
:try_start_4c
:pswitch_4c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aic:Ljava/util/concurrent/ConcurrentMap;
invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_56
:cond_56
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/n;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->getContainerId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_77
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->ma()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/n;->bJ(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->refresh()V
goto :goto_56
:cond_77
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->lj()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_56
const/4 v4, 0x0
invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/n;->bJ(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->refresh()V
:try_end_84
.catchall {:try_start_4c .. :try_end_84} :catchall_49
goto :goto_56
:cond_85
const/4 v0, 0x0
goto :goto_1f
nop
:pswitch_data_88
.packed-switch 0x1
:pswitch_21
:pswitch_4c
:pswitch_4c
.end packed-switch
.end method
.method public loadContainerDefaultOnly(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.registers 10
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lm()V
return-object v0
.end method
.method public loadContainerDefaultOnly(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lm()V
return-object v0
.end method
.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.registers 10
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lo()V
return-object v0
.end method
.method public loadContainerPreferFresh(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lo()V
return-object v0
.end method
.method public loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
.registers 10
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
const/4 v3, 0x0
iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->ln()V
return-object v0
.end method
.method public loadContainerPreferNonDefault(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
.registers 11
iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aib:Lcom/google/android/gms/tagmanager/TagManager$a;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;
invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v3
iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agL:Lcom/google/android/gms/tagmanager/r;
move-object v2, p0
move-object v4, p1
move v5, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->ln()V
return-object v0
.end method
.method public setVerboseLoggingEnabled(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x2
:goto_3
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->setLogLevel(I)V
return-void
:cond_7
const/4 v0, 0x5
goto :goto_3
.end method