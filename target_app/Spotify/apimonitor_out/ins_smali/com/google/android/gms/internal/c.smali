.class public final Lcom/google/android/gms/internal/c;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.field private static final m:J
.field private final a:Ljava/lang/Object;
.field private final b:Ljava/lang/ref/WeakReference;
.field private c:Ljava/lang/ref/WeakReference;
.field private final d:Ljava/lang/ref/WeakReference;
.field private final e:Lcom/google/android/gms/internal/lz;
.field private final f:Landroid/content/Context;
.field private final g:Lcom/google/android/gms/internal/e;
.field private h:Z
.field private final i:Landroid/view/WindowManager;
.field private final j:Landroid/os/PowerManager;
.field private final k:Landroid/app/KeyguardManager;
.field private l:Lcom/google/android/gms/internal/d;
.field private n:J
.field private o:Z
.field private p:Landroid/content/BroadcastReceiver;
.field private q:Ljava/util/HashSet;
.method static constructor <clinit>()V
.registers 3
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
const-wide/16 v1, 0x64
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
move-result-wide v0
sput-wide v0, Lcom/google/android/gms/internal/c;->m:J
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;)V
.registers 9
iget-object v0, p2, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;
move-result-object v3
iget-object v4, p2, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;
new-instance v5, Lcom/google/android/gms/internal/g;
iget-object v0, p2, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p2, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;
move-result-object v1
invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dx;)V
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/c;-><init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;Lcom/google/android/gms/internal/dx;Landroid/view/View;Lcom/google/android/gms/internal/e;)V
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/dy;Lcom/google/android/gms/internal/dx;Landroid/view/View;Lcom/google/android/gms/internal/e;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Lcom/google/android/gms/internal/c;->n:J
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/c;->q:Ljava/util/HashSet;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/google/android/gms/internal/c;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/google/android/gms/internal/c;->d:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->o:Z
new-instance v0, Lcom/google/android/gms/internal/lz;
invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
iget-object v2, p1, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;
iget-object v3, p2, Lcom/google/android/gms/internal/dy;->j:Lorg/json/JSONObject;
invoke-direct {v0, v1, p3, v2, v3}, Lcom/google/android/gms/internal/lz;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/dx;Ljava/lang/String;Lorg/json/JSONObject;)V
iput-object v0, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
iput-object p5, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/e;
invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
iput-object v0, p0, Lcom/google/android/gms/internal/c;->i:Landroid/view/WindowManager;
invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string v1, "power"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
iput-object v0, p0, Lcom/google/android/gms/internal/c;->j:Landroid/os/PowerManager;
invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "keyguard"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/KeyguardManager;
iput-object v0, p0, Lcom/google/android/gms/internal/c;->k:Landroid/app/KeyguardManager;
invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/c;->f:Landroid/content/Context;
const-string v0, "http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html"
invoke-interface {p5, v0}, Lcom/google/android/gms/internal/e;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/e;
new-instance v1, Lcom/google/android/gms/internal/c$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/c$1;-><init>(Lcom/google/android/gms/internal/c;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/e;->a(Lcom/google/android/gms/internal/f;)V
iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/e;
const-string v1, "/updateActiveView"
new-instance v2, Lcom/google/android/gms/internal/c$3;
invoke-direct {v2, p0}, Lcom/google/android/gms/internal/c$3;-><init>(Lcom/google/android/gms/internal/c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v1, "/activeViewPingSent"
new-instance v2, Lcom/google/android/gms/internal/c$4;
invoke-direct {v2, p0}, Lcom/google/android/gms/internal/c$4;-><init>(Lcom/google/android/gms/internal/c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v1, "/visibilityChanged"
new-instance v2, Lcom/google/android/gms/internal/c$5;
invoke-direct {v2, p0}, Lcom/google/android/gms/internal/c$5;-><init>(Lcom/google/android/gms/internal/c;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v1, "/viewabilityChanged"
sget-object v2, Lcom/google/android/gms/internal/am;->a:Lcom/google/android/gms/internal/ao;
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Tracking ad unit: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
invoke-virtual {v1}, Lcom/google/android/gms/internal/lz;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V
return-void
.end method
.method private static a(ILandroid/util/DisplayMetrics;)I
.registers 4
iget v0, p1, Landroid/util/DisplayMetrics;->density:F
int-to-float v1, p0
div-float v0, v1, v0
float-to-int v0, v0
return v0
.end method
.method protected static a(Lcom/google/android/gms/internal/e;)V
.registers 2
const-string v0, "/viewabilityChanged"
invoke-interface {p0, v0}, Lcom/google/android/gms/internal/e;->b(Ljava/lang/String;)V
const-string v0, "/visibilityChanged"
invoke-interface {p0, v0}, Lcom/google/android/gms/internal/e;->b(Ljava/lang/String;)V
const-string v0, "/activeViewPingSent"
invoke-interface {p0, v0}, Lcom/google/android/gms/internal/e;->b(Ljava/lang/String;)V
const-string v0, "/updateActiveView"
invoke-interface {p0, v0}, Lcom/google/android/gms/internal/e;->b(Ljava/lang/String;)V
return-void
.end method
.method private a(Lorg/json/JSONObject;)V
.registers 5
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
const-string v2, "units"
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/e;
const-string v2, "AFMA_updateActiveView"
invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/c;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->h:Z
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/e;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/c;->g:Lcom/google/android/gms/internal/e;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/c;)Lcom/google/android/gms/internal/lz;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
return-object v0
.end method
.method private e()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/c;->l:Lcom/google/android/gms/internal/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/c;->l:Lcom/google/android/gms/internal/d;
invoke-interface {v0, p0}, Lcom/google/android/gms/internal/d;->a(Lcom/google/android/gms/internal/c;)V
:cond_9
return-void
.end method
.method private f()Lorg/json/JSONObject;
.registers 7
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "afmaVersion"
iget-object v2, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
invoke-virtual {v2}, Lcom/google/android/gms/internal/lz;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "activeViewJSON"
iget-object v3, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
invoke-virtual {v3}, Lcom/google/android/gms/internal/lz;->c()Lorg/json/JSONObject;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "timestamp"
sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "adFormat"
iget-object v3, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
invoke-virtual {v3}, Lcom/google/android/gms/internal/lz;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "hashCode"
iget-object v3, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
invoke-virtual {v3}, Lcom/google/android/gms/internal/lz;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
return-object v0
.end method
.method protected final a()V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/c;->p:Landroid/content/BroadcastReceiver;
if-eqz v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v2, "android.intent.action.SCREEN_ON"
invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v2, "android.intent.action.SCREEN_OFF"
invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
new-instance v2, Lcom/google/android/gms/internal/c$2;
invoke-direct {v2, p0}, Lcom/google/android/gms/internal/c$2;-><init>(Lcom/google/android/gms/internal/c;)V
iput-object v2, p0, Lcom/google/android/gms/internal/c;->p:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/google/android/gms/internal/c;->f:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/internal/c;->p:Landroid/content/BroadcastReceiver;
invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
monitor-exit v1
:try_end_27
.catchall {:try_start_3 .. :try_end_27} :catchall_28
goto :goto_8
:catchall_28
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/d;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Lcom/google/android/gms/internal/c;->l:Lcom/google/android/gms/internal/d;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-void
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/google/android/gms/internal/ly;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/c;->q:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method protected final a(Z)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/c;->q:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ly;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ly;->a(Z)V
goto :goto_6
:cond_16
return-void
.end method
.method public final b()V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->o:Z
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v2
if-nez v2, :cond_57
:cond_17
:goto_17
iget-object v2, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
monitor-enter v2
:try_start_1a
:try_end_1a
.catchall {:try_start_3 .. :try_end_1a} :catchall_5e
iget-object v0, p0, Lcom/google/android/gms/internal/c;->p:Landroid/content/BroadcastReceiver;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/google/android/gms/internal/c;->f:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/internal/c;->p:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/c;->p:Landroid/content/BroadcastReceiver;
:cond_28
monitor-exit v2
:try_start_29
:try_end_29
.catchall {:try_start_1a .. :try_end_29} :catchall_61
invoke-direct {p0}, Lcom/google/android/gms/internal/c;->f()Lorg/json/JSONObject;
move-result-object v0
const-string v2, "doneReasonCode"
const-string v3, "u"
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/c;->a(Lorg/json/JSONObject;)V
:goto_37
:try_end_37
.catchall {:try_start_29 .. :try_end_37} :catchall_5e
.catch Lorg/json/JSONException; {:try_start_29 .. :try_end_37} :catch_64
const/4 v0, 0x0
:try_start_38
iput-boolean v0, p0, Lcom/google/android/gms/internal/c;->o:Z
invoke-direct {p0}, Lcom/google/android/gms/internal/c;->e()V
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Untracked ad unit: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/c;->e:Lcom/google/android/gms/internal/lz;
invoke-virtual {v2}, Lcom/google/android/gms/internal/lz;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->c(Ljava/lang/String;)V
:cond_55
monitor-exit v1
return-void
:cond_57
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:try_end_5d
.catchall {:try_start_38 .. :try_end_5d} :catchall_5e
goto :goto_17
:catchall_5e
move-exception v0
monitor-exit v1
throw v0
:catchall_61
move-exception v0
:try_start_62
monitor-exit v2
throw v0
:catch_64
move-exception v0
const-string v2, "JSON Failure while processing active view data."
invoke-static {v2, v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_6a
.catchall {:try_start_62 .. :try_end_6a} :catchall_5e
goto :goto_37
.end method
.method protected final b(Z)V
.registers 15
iget-object v2, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
monitor-enter v2
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->h:Z
if-eqz v0, :cond_b
iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->o:Z
if-nez v0, :cond_d
:cond_b
monitor-exit v2
:goto_c
return-void
:cond_d
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
if-eqz p1, :cond_21
iget-wide v3, p0, Lcom/google/android/gms/internal/c;->n:J
sget-wide v5, Lcom/google/android/gms/internal/c;->m:J
add-long/2addr v3, v5
cmp-long v3, v3, v0
if-lez v3, :cond_21
monitor-exit v2
:try_end_1d
.catchall {:try_start_3 .. :try_end_1d} :catchall_1e
goto :goto_c
:catchall_1e
move-exception v0
monitor-exit v2
throw v0
:cond_21
:try_start_21
iput-wide v0, p0, Lcom/google/android/gms/internal/c;->n:J
iget-object v0, p0, Lcom/google/android/gms/internal/c;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/dy;
iget-object v1, p0, Lcom/google/android/gms/internal/c;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
if-eqz v1, :cond_37
if-nez v0, :cond_3f
:cond_37
const/4 v0, 0x1
:goto_38
if-eqz v0, :cond_41
invoke-virtual {p0}, Lcom/google/android/gms/internal/c;->b()V
monitor-exit v2
:try_end_3e
.catchall {:try_start_21 .. :try_end_3e} :catchall_1e
goto :goto_c
:cond_3f
const/4 v0, 0x0
goto :goto_38
:cond_41
const/4 v0, 0x2
:try_start_42
new-array v0, v0, [I
const/4 v3, 0x2
new-array v3, v3, [I
invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V
invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V
invoke-direct {p0}, Lcom/google/android/gms/internal/c;->f()Lorg/json/JSONObject;
move-result-object v3
invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
new-instance v5, Landroid/graphics/Rect;
invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V
const/4 v6, 0x0
aget v6, v0, v6
iput v6, v5, Landroid/graphics/Rect;->left:I
const/4 v6, 0x1
aget v0, v0, v6
iput v0, v5, Landroid/graphics/Rect;->top:I
iget v0, v5, Landroid/graphics/Rect;->left:I
invoke-virtual {v1}, Landroid/view/View;->getWidth()I
move-result v6
add-int/2addr v0, v6
iput v0, v5, Landroid/graphics/Rect;->right:I
iget v0, v5, Landroid/graphics/Rect;->top:I
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v6
add-int/2addr v0, v6
iput v0, v5, Landroid/graphics/Rect;->bottom:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iget-object v6, p0, Lcom/google/android/gms/internal/c;->i:Landroid/view/WindowManager;
invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v6
invoke-virtual {v6}, Landroid/view/Display;->getWidth()I
move-result v6
iput v6, v0, Landroid/graphics/Rect;->right:I
iget-object v6, p0, Lcom/google/android/gms/internal/c;->i:Landroid/view/WindowManager;
invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v6
invoke-virtual {v6}, Landroid/view/Display;->getHeight()I
move-result v6
iput v6, v0, Landroid/graphics/Rect;->bottom:I
new-instance v6, Landroid/graphics/Rect;
invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V
const/4 v7, 0x0
invoke-virtual {v1, v6, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
move-result v7
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {v1, v8}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z
const-string v9, "viewBox"
new-instance v10, Lorg/json/JSONObject;
invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
const-string v11, "top"
iget v12, v0, Landroid/graphics/Rect;->top:I
invoke-static {v12, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v12
invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "bottom"
iget v12, v0, Landroid/graphics/Rect;->bottom:I
invoke-static {v12, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v12
invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "left"
iget v12, v0, Landroid/graphics/Rect;->left:I
invoke-static {v12, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v12
invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "right"
iget v0, v0, Landroid/graphics/Rect;->right:I
invoke-static {v0, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v0
invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v9, "adBox"
new-instance v10, Lorg/json/JSONObject;
invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
const-string v11, "top"
iget v12, v5, Landroid/graphics/Rect;->top:I
invoke-static {v12, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v12
invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "bottom"
iget v12, v5, Landroid/graphics/Rect;->bottom:I
invoke-static {v12, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v12
invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "left"
iget v12, v5, Landroid/graphics/Rect;->left:I
invoke-static {v12, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v12
invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v10
const-string v11, "right"
iget v5, v5, Landroid/graphics/Rect;->right:I
invoke-static {v5, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v5
invoke-virtual {v10, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v5
invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v5, "globalVisibleBox"
new-instance v9, Lorg/json/JSONObject;
invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
const-string v10, "top"
iget v11, v6, Landroid/graphics/Rect;->top:I
invoke-static {v11, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v11
invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v9
const-string v10, "bottom"
iget v11, v6, Landroid/graphics/Rect;->bottom:I
invoke-static {v11, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v11
invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v9
const-string v10, "left"
iget v11, v6, Landroid/graphics/Rect;->left:I
invoke-static {v11, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v11
invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v9
const-string v10, "right"
iget v6, v6, Landroid/graphics/Rect;->right:I
invoke-static {v6, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v6
invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v6
invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v5, "localVisibleBox"
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
const-string v9, "top"
iget v10, v8, Landroid/graphics/Rect;->top:I
invoke-static {v10, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v10
invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v6
const-string v9, "bottom"
iget v10, v8, Landroid/graphics/Rect;->bottom:I
invoke-static {v10, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v10
invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v6
const-string v9, "left"
iget v10, v8, Landroid/graphics/Rect;->left:I
invoke-static {v10, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v10
invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v6
const-string v9, "right"
iget v8, v8, Landroid/graphics/Rect;->right:I
invoke-static {v8, v4}, Lcom/google/android/gms/internal/c;->a(ILandroid/util/DisplayMetrics;)I
move-result v8
invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v6
invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v5, "screenDensity"
iget v4, v4, Landroid/util/DisplayMetrics;->density:F
float-to-double v8, v4
invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
move-result-object v4
const-string v5, "isVisible"
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_1f4
if-eqz v7, :cond_1f4
invoke-virtual {v1}, Landroid/view/View;->isShown()Z
move-result v0
if-eqz v0, :cond_1f4
iget-object v0, p0, Lcom/google/android/gms/internal/c;->j:Landroid/os/PowerManager;
invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
move-result v0
if-eqz v0, :cond_1f4
iget-object v0, p0, Lcom/google/android/gms/internal/c;->k:Landroid/app/KeyguardManager;
invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
move-result v0
if-nez v0, :cond_1f4
const/4 v0, 0x1
:goto_1c3
invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-direct {p0, v3}, Lcom/google/android/gms/internal/c;->a(Lorg/json/JSONObject;)V
:try_start_1c9
:try_end_1c9
.catchall {:try_start_42 .. :try_end_1c9} :catchall_1e
.catch Lorg/json/JSONException; {:try_start_42 .. :try_end_1c9} :catch_1f6
:goto_1c9
iget-object v0, p0, Lcom/google/android/gms/internal/c;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_1ee
iget-object v1, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/ViewTreeObserver;
invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
if-eq v0, v1, :cond_1ee
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/google/android/gms/internal/c;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_1ee
invoke-direct {p0}, Lcom/google/android/gms/internal/c;->e()V
monitor-exit v2
goto/16 :goto_c
:cond_1f4
const/4 v0, 0x0
goto :goto_1c3
:catch_1f6
move-exception v0
const-string v1, "Active view update failed."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1fc
.catchall {:try_start_1c9 .. :try_end_1fc} :catchall_1e
goto :goto_1c9
.end method
.method protected final c()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V
return-void
.end method
.method public final d()Z
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/c;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/c;->o:Z
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final onGlobalLayout()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V
return-void
.end method
.method public final onScrollChanged()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/c;->b(Z)V
return-void
.end method