.class public abstract Lcom/lenovo/anyshare/sdk/internal/ca;
.super Lcom/lenovo/anyshare/sdk/internal/bz;
.source "NetworkManager.java"
.field protected final a:Landroid/content/Context;
.field protected b:Lcom/lenovo/network/base/Device;
.field protected c:Lcom/lenovo/network/base/Device;
.field protected final d:Ljava/util/List;
.field protected e:Ljava/lang/String;
.field private final f:Lcom/lenovo/anyshare/sdk/internal/cb;
.field private final g:Ljava/util/List;
.field private h:Lcom/lenovo/anyshare/sdk/internal/cd;
.field private i:Lcom/lenovo/anyshare/sdk/internal/ca$a;
.field private j:Lcom/lenovo/anyshare/sdk/internal/ca$b;
.field private k:Z
.field private l:Z
.field private m:Lcom/lenovo/tonesdk/IToneSender;
.field private final n:Ljava/util/List;
.field private o:Z
.field private p:Lcom/lenovo/tonesdk/IToneReceiver;
.field private q:Lcom/lenovo/tonesdk/ToneReceiverListener;
.method protected constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cb;Lcom/lenovo/tonesdk/IToneSender;Lcom/lenovo/tonesdk/IToneReceiver;)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/bz;-><init>()V
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->a:Lcom/lenovo/anyshare/sdk/internal/cd;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->h:Lcom/lenovo/anyshare/sdk/internal/cd;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ca$a;->c:Lcom/lenovo/anyshare/sdk/internal/ca$a;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->i:Lcom/lenovo/anyshare/sdk/internal/ca$a;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ca$b;->f:Lcom/lenovo/anyshare/sdk/internal/ca$b;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->j:Lcom/lenovo/anyshare/sdk/internal/ca$b;
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->k:Z
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->d:Ljava/util/List;
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->l:Z
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->n:Ljava/util/List;
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->o:Z
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ca$1;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/ca$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/ca;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->q:Lcom/lenovo/tonesdk/ToneReceiverListener;
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->f:Lcom/lenovo/anyshare/sdk/internal/cb;
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
iput-object p4, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/ca;Ljava/lang/String;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ca;->d(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private d(Ljava/lang/String;)Z
.registers 8
const/4 v3, 0x0
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->c()Lcom/lenovo/network/base/Device;
move-result-object v2
if-eqz v2, :cond_43
invoke-virtual {v2}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x4
invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_43
move v1, v0
:goto_18
if-eqz v1, :cond_45
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
move-result-object v4
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v4, v5, :cond_45
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->p()Z
move-result v4
if-eqz v4, :cond_45
:goto_28
const-string/jumbo v3, "NetworkManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "isToneConnectingInProcess(): "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return v0
:cond_43
move v1, v3
goto :goto_18
:cond_45
move v0, v3
goto :goto_28
.end method
.method public a(Ljava/lang/String;)Lcom/lenovo/network/base/Device;
.registers 5
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->d:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/network/base/Device;
invoke-virtual {v0}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
invoke-virtual {p0, v0, v2}, Lcom/lenovo/anyshare/sdk/internal/ca;->a(Lcom/lenovo/network/base/Device;Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
:goto_21
return-object v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public declared-synchronized a(Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->i:Lcom/lenovo/anyshare/sdk/internal/ca$a;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/lenovo/anyshare/sdk/internal/ca$a;Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
.registers 4
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->i:Lcom/lenovo/anyshare/sdk/internal/ca$a;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->j:Lcom/lenovo/anyshare/sdk/internal/ca$b;
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_7
monitor-exit p0
return-void
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->j:Lcom/lenovo/anyshare/sdk/internal/ca$b;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/cd;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->h:Lcom/lenovo/anyshare/sdk/internal/cd;
return-void
.end method
.method protected a(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
.registers 5
:try_start_0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->f:Lcom/lenovo/anyshare/sdk/internal/cb;
invoke-interface {v1, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/cb;->onNetworkStatusChanged(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string/jumbo v1, "NetworkManager"
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method protected abstract a(Lcom/lenovo/network/base/Device;Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
.end method
.method public a(Lcom/lenovo/network/base/IApClientToneListener;)V
.registers 4
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->n:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
move-result-object v0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v0, v1, :cond_26
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
move-result-object v0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-ne v0, v1, :cond_26
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->k()V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->c()Lcom/lenovo/network/base/Device;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/network/base/Device;->getNickname()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/lenovo/network/base/IApClientToneListener;->onConnecting(Ljava/lang/String;)V
:cond_26
return-void
.end method
.method public a(Lcom/lenovo/network/base/INetworkStatusListener;)V
.registers 4
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->d:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {p1, v0}, Lcom/lenovo/network/base/INetworkStatusListener;->onScanResult(Ljava/util/List;)V
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 4
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->d()Lcom/lenovo/network/base/Device;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/lenovo/network/base/Device;->setUser(Ljava/lang/String;I)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 8
const-string/jumbo v3, "NetworkManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "notifyScanResult("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ")"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_43
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/network/base/INetworkStatusListener;
:try_start_37
invoke-interface {v2, p1}, Lcom/lenovo/network/base/INetworkStatusListener;->onScanResult(Ljava/util/List;)V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b
goto :goto_2b
:catch_3b
move-exception v0
const-string/jumbo v3, "NetworkManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2b
:cond_43
return-void
.end method
.method public a(Z)V
.registers 7
const-string/jumbo v0, "NetworkManager"
const-string/jumbo v1, "enableToneSender(%b)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iput-boolean p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->l:Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
if-nez v0, :cond_1a
:goto_19
:cond_19
return-void
:cond_1a
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->l:Z
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneSender;->isRunning()Z
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->g()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/lenovo/tonesdk/IToneSender;->start(Ljava/lang/String;)V
:cond_2f
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->l:Z
if-nez v0, :cond_19
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneSender;->isRunning()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneSender;->stop()V
goto :goto_19
.end method
.method protected b(Ljava/lang/String;)Lcom/lenovo/network/base/Device;
.registers 9
const/4 v6, 0x1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_36
move v5, v6
:goto_8
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->d:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_38
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/network/base/Device;
invoke-virtual {v1}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_11
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v5
if-le v5, v4, :cond_11
add-int/lit8 v5, v4, 0x1
invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_11
:goto_35
return-object v1
:cond_36
const/4 v5, 0x0
goto :goto_8
:cond_38
const/4 v1, 0x0
goto :goto_35
.end method
.method protected b(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
.registers 8
const-string/jumbo v0, "NetworkManager"
const-string/jumbo v1, "notifyNetworkStatusConnected(%s, %b) %s/%s"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x3
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/ca;->a(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ca$2;->a:[I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/cd;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_3c
:goto_32
return-void
:pswitch_33
invoke-virtual {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/ca;->c(Z)V
goto :goto_32
:pswitch_37
invoke-virtual {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/ca;->d(Z)V
goto :goto_32
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_33
:pswitch_37
.end packed-switch
.end method
.method public b(Lcom/lenovo/network/base/IApClientToneListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->n:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public b(Lcom/lenovo/network/base/INetworkStatusListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public b(Z)V
.registers 7
const-string/jumbo v0, "NetworkManager"
const-string/jumbo v1, "enableToneReceiver(%b)"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iput-boolean p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->o:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
if-nez v0, :cond_1d
:cond_1c
:goto_1c
return-void
:cond_1d
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->o:Z
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneReceiver;->isRunning()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->q:Lcom/lenovo/tonesdk/ToneReceiverListener;
invoke-interface {v0, v1}, Lcom/lenovo/tonesdk/IToneReceiver;->start(Lcom/lenovo/tonesdk/ToneReceiverListener;)V
:cond_30
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->o:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneReceiver;->isRunning()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneReceiver;->stop()V
goto :goto_1c
.end method
.method public c()Lcom/lenovo/network/base/Device;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->c:Lcom/lenovo/network/base/Device;
return-object v0
.end method
.method protected c(Ljava/lang/String;)V
.registers 10
const-string/jumbo v3, "NetworkManager"
const-string/jumbo v4, "notifyConnectingByTone(%s), listeners: %d"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p1, v5, v6
const/4 v6, 0x1
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->n:Ljava/util/List;
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->n:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_22
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/network/base/IApClientToneListener;
:try_start_2e
invoke-interface {v2, p1}, Lcom/lenovo/network/base/IApClientToneListener;->onConnecting(Ljava/lang/String;)V
:try_end_31
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32
goto :goto_22
:catch_32
move-exception v0
const-string/jumbo v3, "NetworkManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
:cond_3a
sget-boolean v3, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z
if-eqz v3, :cond_4a
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v3
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->a:Landroid/content/Context;
const-string/jumbo v5, "ConnectedByTone"
invoke-virtual {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
:cond_4a
return-void
.end method
.method protected c(Z)V
.registers 6
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/network/base/INetworkStatusListener;
:try_start_12
invoke-interface {v2, p1}, Lcom/lenovo/network/base/INetworkStatusListener;->onServerStatusChanged(Z)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
const-string/jumbo v3, "NetworkManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
:cond_1e
return-void
.end method
.method public d()Lcom/lenovo/network/base/Device;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->b:Lcom/lenovo/network/base/Device;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->b:Lcom/lenovo/network/base/Device;
return-object v0
.end method
.method protected d(Z)V
.registers 6
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/network/base/INetworkStatusListener;
:try_start_12
invoke-interface {v2, p1}, Lcom/lenovo/network/base/INetworkStatusListener;->onClientStatusChanged(Z)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
const-string/jumbo v3, "NetworkManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
:cond_1e
return-void
.end method
.method public e()V
.registers 2
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->l:Z
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneSender;->isRunning()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneSender;->stop()V
:cond_15
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->o:Z
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneReceiver;->isRunning()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneReceiver;->stop()V
:cond_2a
return-void
.end method
.method public e(Z)V
.registers 2
iput-boolean p1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->k:Z
return-void
.end method
.method public f()V
.registers 3
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->l:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneSender;->isRunning()Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->m:Lcom/lenovo/tonesdk/IToneSender;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->g()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/lenovo/tonesdk/IToneSender;->start(Ljava/lang/String;)V
:cond_19
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->o:Z
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
invoke-interface {v0}, Lcom/lenovo/tonesdk/IToneReceiver;->isRunning()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->p:Lcom/lenovo/tonesdk/IToneReceiver;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->q:Lcom/lenovo/tonesdk/ToneReceiverListener;
invoke-interface {v0, v1}, Lcom/lenovo/tonesdk/IToneReceiver;->start(Lcom/lenovo/tonesdk/ToneReceiverListener;)V
:cond_30
return-void
.end method
.method protected g()Ljava/lang/String;
.registers 5
const/4 v3, 0x4
const/4 v2, 0x1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->b:Lcom/lenovo/network/base/Device;
invoke-virtual {v1}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lt v1, v3, :cond_17
move v1, v2
:goto_f
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
return-object v1
:cond_17
const/4 v1, 0x0
goto :goto_f
.end method
.method protected h()V
.registers 10
const/4 v1, 0x1
const/4 v5, 0x0
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->e:Ljava/lang/String;
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
move-result-object v0
const-string/jumbo v6, "NetworkManager"
const-string/jumbo v7, "matchAndConnect target is \'%s\', connectMode is %s"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
aput-object v2, v8, v5
aput-object v0, v8, v1
invoke-static {v6, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ca;->b(Ljava/lang/String;)Lcom/lenovo/network/base/Device;
move-result-object v4
const/4 v6, 0x0
iput-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->e:Ljava/lang/String;
if-nez v4, :cond_25
:goto_24
:cond_24
return-void
:cond_25
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->c:Lcom/lenovo/network/base/Device;
const-string/jumbo v6, "NetworkManager"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "origin "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v6, "NetworkManager"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "target "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v3, :cond_aa
invoke-virtual {v3}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_aa
:goto_6b
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/ca$a;->c:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v0, v5, :cond_ac
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
move-result-object v5
sget-object v6, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-ne v5, v6, :cond_ac
if-eqz v1, :cond_ac
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
invoke-virtual {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/ca;->a(Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->i()Z
move-result v5
if-eqz v5, :cond_24
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->k()V
invoke-virtual {v4}, Lcom/lenovo/network/base/Device;->getNickname()Ljava/lang/String;
move-result-object v5
invoke-virtual {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/ca;->c(Ljava/lang/String;)V
const-string/jumbo v5, "NetworkManager"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "matchAndConnect(): connected to the same server,  just notify (user & ConnectingTone), already connecting to by auto: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_24
:cond_aa
move v1, v5
goto :goto_6b
:cond_ac
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
invoke-virtual {p0, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/ca;->a(Lcom/lenovo/network/base/Device;Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
goto/16 :goto_24
.end method
.method protected i()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->n:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected j()V
.registers 5
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->g:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/network/base/INetworkStatusListener;
:try_start_12
invoke-interface {v2}, Lcom/lenovo/network/base/INetworkStatusListener;->onScanFailed()V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v0
const-string/jumbo v3, "NetworkManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
:cond_1e
return-void
.end method
.method protected k()V
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ca;->b(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
return-void
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->k:Z
return v0
.end method
.method public declared-synchronized m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->i:Lcom/lenovo/anyshare/sdk/internal/ca$a;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->j:Lcom/lenovo/anyshare/sdk/internal/ca$b;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public o()Lcom/lenovo/anyshare/sdk/internal/cd;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ca;->h:Lcom/lenovo/anyshare/sdk/internal/cd;
return-object v0
.end method
.method public p()Z
.registers 3
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
move-result-object v0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-eq v0, v1, :cond_14
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$b;->a:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-eq v0, v1, :cond_14
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$b;->d:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-eq v0, v1, :cond_14
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$b;->c:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-ne v0, v1, :cond_16
:cond_14
const/4 v1, 0x1
:goto_15
return v1
:cond_16
const/4 v1, 0x0
goto :goto_15
.end method