.class public final Lcom/spotify/mobile/android/ui/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field private static final i:Ljava/lang/Object;
.field private static j:Lcom/spotify/mobile/android/ui/activity/j;
.field private final a:Lcom/spotify/mobile/android/util/ClientEvent;
.field private final b:Lcom/spotify/mobile/android/util/ClientEvent;
.field private final c:Lcom/spotify/mobile/android/ui/actions/a;
.field private final d:Landroid/content/Context;
.field private final e:Landroid/os/Handler;
.field private f:Z
.field private g:Z
.field private h:Ljava/util/concurrent/atomic/AtomicInteger;
.field private k:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/activity/j;->i:Ljava/lang/Object;
const/4 v0, 0x0
sput-object v0, Lcom/spotify/mobile/android/ui/activity/j;->j:Lcom/spotify/mobile/android/ui/activity/j;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->c:Lcom/spotify/mobile/android/ui/actions/a;
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/j;->g:Z
new-instance v0, Lcom/spotify/mobile/android/ui/activity/j$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/j$1;-><init>(Lcom/spotify/mobile/android/ui/activity/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->k:Ljava/lang/Runnable;
const-string v0, "Creating the ServiceProcessMonitor"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->e:Landroid/os/Handler;
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->h:Ljava/util/concurrent/atomic/AtomicInteger;
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ac:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aY:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->a:Lcom/spotify/mobile/android/util/ClientEvent;
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ac:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aZ:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->b:Lcom/spotify/mobile/android/util/ClientEvent;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/j;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
return-object v0
.end method
.method public static a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/activity/j;
.registers 5
sget-object v1, Lcom/spotify/mobile/android/ui/activity/j;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/spotify/mobile/android/ui/activity/j;->j:Lcom/spotify/mobile/android/ui/activity/j;
if-nez v0, :cond_28
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/service/SpotifyService;->b:Lcom/spotify/mobile/android/util/cz;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/j;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/activity/j;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/spotify/mobile/android/ui/activity/j;->j:Lcom/spotify/mobile/android/ui/activity/j;
:cond_28
monitor-exit v1
:try_end_29
.catchall {:try_start_3 .. :try_end_29} :catchall_2c
sget-object v0, Lcom/spotify/mobile/android/ui/activity/j;->j:Lcom/spotify/mobile/android/ui/activity/j;
return-object v0
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->h:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
move-result v0
const-string v1, "ServiceProcessMonitor started with %d references."
new-array v2, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-ne v0, v5, :cond_23
const-string v0, "First start() on ServiceProcessMonitor - binding to MonitorService."
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/service/MonitorService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
:cond_23
return-void
.end method
.method public final b()V
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->h:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
move-result v0
const-string v1, "ServiceProcessMonitor ref count decreased to %d."
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-nez v0, :cond_22
iput-boolean v4, p0, Lcom/spotify/mobile/android/ui/activity/j;->g:Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->f:Z
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_22
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/j; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const/4 v2, 0x0
const-string v0, "Connected to MonitorService!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->g:Z
if-eqz v0, :cond_1f
const-string v0, "Reconnected to MonitorService!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->c:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/j;->b:Lcom/spotify/mobile/android/util/ClientEvent;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_1f
iput-boolean v3, p0, Lcom/spotify/mobile/android/ui/activity/j;->f:Z
iput-boolean v3, p0, Lcom/spotify/mobile/android/ui/activity/j;->g:Z
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/j; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/j; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
const-string v0, "Disconnected from MonitorService!"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->g:Z
if-eqz v0, :cond_54
const-string v0, "Unexpected disconnect from MonitorService - possible crash."
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->e:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/j;->k:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->c:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/j;->a:Lcom/spotify/mobile/android/util/ClientEvent;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I
move-result v0
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/service/SpotifyService;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->e:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/j;->k:Ljava/lang/Runnable;
const-wide/16 v2, 0x7530
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j;->d:Landroid/content/Context;
invoke-static {v0, p0}, Lcom/spotify/mobile/android/service/MonitorService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
:cond_54
iput-boolean v4, p0, Lcom/spotify/mobile/android/ui/activity/j;->f:Z
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/j; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method