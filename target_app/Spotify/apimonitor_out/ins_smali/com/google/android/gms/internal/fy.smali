.class public abstract Lcom/google/android/gms/internal/fy;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/f;
.implements Lcom/google/android/gms/common/b;
.implements Lcom/google/android/gms/internal/gl;
.field public static final d:[Ljava/lang/String;
.field private final a:Landroid/content/Context;
.field final b:Landroid/os/Handler;
.field  c:Z
.field private final e:Landroid/os/Looper;
.field private f:Landroid/os/IInterface;
.field private final g:Ljava/util/ArrayList;
.field private h:Lcom/google/android/gms/internal/gf;
.field private volatile i:I
.field private final j:[Ljava/lang/String;
.field private final k:Lcom/google/android/gms/internal/gj;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "service_esmobile"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "service_googleme"
aput-object v2, v0, v1
sput-object v0, Lcom/google/android/gms/internal/fy;->d:[Ljava/lang/String;
return-void
.end method
.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;[Ljava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/fy;->i:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fy;->c:Z
invoke-static {p1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
const-string v0, "Looper must not be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Looper;
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->e:Landroid/os/Looper;
new-instance v0, Lcom/google/android/gms/internal/gj;
invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/gj;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/gl;)V
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->k:Lcom/google/android/gms/internal/gj;
new-instance v0, Lcom/google/android/gms/internal/fz;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/fz;-><init>(Lcom/google/android/gms/internal/fy;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
iput-object p5, p0, Lcom/google/android/gms/internal/fy;->j:[Ljava/lang/String;
invoke-static {p3}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/k;
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->k:Lcom/google/android/gms/internal/gj;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/api/k;)V
invoke-static {p4}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/l;
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->k:Lcom/google/android/gms/internal/gj;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gj;->a(Lcom/google/android/gms/common/d;)V
return-void
.end method
.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V
.registers 11
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v2
new-instance v3, Lcom/google/android/gms/internal/gc;
invoke-direct {v3, p2}, Lcom/google/android/gms/internal/gc;-><init>(Lcom/google/android/gms/common/c;)V
new-instance v4, Lcom/google/android/gms/internal/gh;
invoke-direct {v4, p3}, Lcom/google/android/gms/internal/gh;-><init>(Lcom/google/android/gms/common/d;)V
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;[Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/fy;Landroid/os/IInterface;)Landroid/os/IInterface;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/fy;->f:Landroid/os/IInterface;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gj;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->k:Lcom/google/android/gms/internal/gj;
return-object v0
.end method
.method private a(I)V
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/fy;->i:I
iput p1, p0, Lcom/google/android/gms/internal/fy;->i:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/fy;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fy;->a(I)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/internal/fy;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/fy;)Landroid/os/IInterface;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->f:Landroid/os/IInterface;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
return-object v0
.end method
.method static synthetic e(Lcom/google/android/gms/internal/fy;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
return-object v0
.end method
.method static synthetic f(Lcom/google/android/gms/internal/fy;)Lcom/google/android/gms/internal/gf;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
return-object v0
.end method
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method
.method public final a()V
.registers 5
const/4 v3, 0x3
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/google/android/gms/internal/fy;->c:Z
const/4 v0, 0x2
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fy;->a(I)V
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I
move-result v0
if-eqz v0, :cond_23
invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fy;->a(I)V
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
iget-object v2, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_22
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
if-eqz v0, :cond_40
const-string v0, "GmsClient"
const-string v1, "Calling connect() while still connected, missing disconnect()."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->f:Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gm;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->e()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gf;)V
:cond_40
new-instance v0, Lcom/google/android/gms/internal/gf;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gf;-><init>(Lcom/google/android/gms/internal/fy;)V
iput-object v0, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gm;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->e()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gf;)Z
move-result v0
if-nez v0, :cond_22
const-string v0, "GmsClient"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "unable to connect to service: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
const/16 v2, 0x9
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_22
.end method
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
const/4 v2, 0x1
new-instance v3, Lcom/google/android/gms/internal/gi;
invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/gi;-><init>(Lcom/google/android/gms/internal/fy;ILandroid/os/IBinder;Landroid/os/Bundle;)V
invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/gb;)V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_16
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->b:Landroid/os/Handler;
const/4 v2, 0x2
invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method protected abstract a(Lcom/google/android/gms/internal/gw;Lcom/google/android/gms/internal/ge;)V
.end method
.method public final b()V
.registers 6
const/4 v4, 0x0
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fy;->c:Z
iget-object v2, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
monitor-enter v2
:try_start_7
iget-object v1, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
move v1, v0
:goto_e
if-ge v1, v3, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->c()V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->g:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
monitor-exit v2
:try_end_25
.catchall {:try_start_7 .. :try_end_25} :catchall_41
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fy;->a(I)V
iput-object v4, p0, Lcom/google/android/gms/internal/fy;->f:Landroid/os/IInterface;
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/internal/gm;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/gm;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->e()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/gf;)V
iput-object v4, p0, Lcom/google/android/gms/internal/fy;->h:Lcom/google/android/gms/internal/gf;
:cond_40
return-void
:catchall_41
move-exception v0
monitor-exit v2
throw v0
.end method
.method protected final b(Landroid/os/IBinder;)V
.registers 4
:try_start_0
invoke-static {p1}, Lcom/google/android/gms/internal/gx;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gw;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/ge;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ge;-><init>(Lcom/google/android/gms/internal/fy;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/gw;Lcom/google/android/gms/internal/ge;)V
:goto_c
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
const-string v0, "GmsClient"
const-string v1, "service died"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_c
.end method
.method public final c()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/fy;->i:I
const/4 v1, 0x3
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final d()Landroid/os/Looper;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->e:Landroid/os/Looper;
return-object v0
.end method
.method public final d_()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/fy;->c:Z
return v0
.end method
.method protected abstract e()Ljava/lang/String;
.end method
.method protected abstract f()Ljava/lang/String;
.end method
.method public final h()Z
.registers 3
iget v0, p0, Lcom/google/android/gms/internal/fy;->i:I
const/4 v1, 0x2
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final i()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->a:Landroid/content/Context;
return-object v0
.end method
.method public final j()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->j:[Ljava/lang/String;
return-object v0
.end method
.method protected final k()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->c()Z
move-result v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
return-void
.end method
.method protected final l()Landroid/os/IInterface;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/fy;->k()V
iget-object v0, p0, Lcom/google/android/gms/internal/fy;->f:Landroid/os/IInterface;
return-object v0
.end method