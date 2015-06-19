.class public Lcom/instagram/android/i/f;
.super Ljava/lang/Object;
.source "RealtimeUpdateController.java"
.implements Lcom/instagram/common/l/b/a;
.implements Lcom/instagram/realtimeclient/RealtimeEventHandler;
.field private static final a:Ljava/lang/String;
.field private b:Lcom/instagram/realtimeclient/RealtimeClient;
.field private c:Lcom/instagram/android/i/d;
.field private d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
.field private e:Lcom/instagram/android/i/a;
.field private final f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/i/f;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/instagram/android/i/f;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/realtimeclient/RealtimeOperationManager;
new-instance v1, Lcom/instagram/android/i/g;
invoke-direct {v1, p0}, Lcom/instagram/android/i/g;-><init>(Lcom/instagram/android/i/f;)V
invoke-direct {v0, v1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;-><init>(Lcom/instagram/realtimeclient/RealtimeOperationManager$Listener;)V
iput-object v0, p0, Lcom/instagram/android/i/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/i/f;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/i/f;)Lcom/instagram/realtimeclient/RealtimeClient;
.registers 2
iget-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/i/f;)Lcom/instagram/realtimeclient/RealtimeOperationManager;
.registers 2
iget-object v0, p0, Lcom/instagram/android/i/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/i/f;)Lcom/instagram/android/i/d;
.registers 2
iget-object v0, p0, Lcom/instagram/android/i/f;->c:Lcom/instagram/android/i/d;
return-object v0
.end method
.method public static c()Lcom/instagram/android/i/f;
.registers 1
sget-object v0, Lcom/instagram/android/i/i;->a:Lcom/instagram/android/i/f;
return-object v0
.end method
.method public final a()V
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->unsubscribe()V
return-void
.end method
.method public final a(Landroid/content/Context;Lcom/instagram/common/c/j;Lcom/instagram/android/i/a;)V
.registers 8
new-instance v0, Lcom/instagram/android/i/d;
invoke-direct {v0}, Lcom/instagram/android/i/d;-><init>()V
iput-object v0, p0, Lcom/instagram/android/i/f;->c:Lcom/instagram/android/i/d;
invoke-virtual {p2}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "AuthHelper.BROADCAST_USER_CHANGED"
new-instance v2, Lcom/instagram/android/i/h;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/instagram/android/i/h;-><init>(Lcom/instagram/android/i/f;B)V
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
new-instance v0, Lcom/instagram/realtimeclient/RealtimeClient;
invoke-direct {v0, p1}, Lcom/instagram/realtimeclient/RealtimeClient;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
iget-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-virtual {v0, p0}, Lcom/instagram/realtimeclient/RealtimeClient;->setEventHandler(Lcom/instagram/realtimeclient/RealtimeEventHandler;)V
invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V
sget-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
iput-object v0, p0, Lcom/instagram/android/i/f;->d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
iput-object p3, p0, Lcom/instagram/android/i/f;->e:Lcom/instagram/android/i/a;
return-void
.end method
.method public final a(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/i/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->setPatchRange(Lcom/instagram/realtimeclient/RealtimePatchRange;)V
return-void
.end method
.method public final a(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-static {}, Lcom/instagram/common/o/a;->b()Z
move-result v0
if-eqz v0, :cond_13
invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/a;->i()Z
move-result v0
if-nez v0, :cond_2
:cond_13
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;
move-result-object v0
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v1
if-eqz v1, :cond_2
invoke-virtual {v0}, Lcom/instagram/common/l/b/b;->b()Z
move-result v0
if-nez v0, :cond_2
iget-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeClient;->setSubscription(Lcom/instagram/realtimeclient/RealtimeSubscription;)V
iget-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->subscribe()V
goto :goto_2
.end method
.method public final a(Ljava/util/Map;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/i/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->handlePatches(Ljava/util/Map;)V
return-void
.end method
.method public final b()V
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/android/i/f;->b:Lcom/instagram/realtimeclient/RealtimeClient;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->subscribe()V
return-void
.end method
.method public final d()Lcom/instagram/realtimeclient/RealtimePatchRange;
.registers 2
iget-object v0, p0, Lcom/instagram/android/i/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
invoke-virtual {v0}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->getPatchRange()Lcom/instagram/realtimeclient/RealtimePatchRange;
move-result-object v0
return-object v0
.end method
.method public final e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
.registers 2
iget-object v0, p0, Lcom/instagram/android/i/f;->d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
return-object v0
.end method
.method public onConnectionStatusChanged(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/i/f;->d:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
invoke-static {}, Lcom/instagram/common/o/a;->b()Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lcom/instagram/android/i/f;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/i/f;->e:Lcom/instagram/android/i/a;
invoke-virtual {v0, p1}, Lcom/instagram/android/i/a;->a(Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
:cond_f
return-void
.end method
.method public onFeedRefreshRequested()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/i/f;->c:Lcom/instagram/android/i/d;
invoke-static {}, Lcom/instagram/android/i/d;->a()V
return-void
.end method
.method public onPatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/i/f;->f:Lcom/instagram/realtimeclient/RealtimeOperationManager;
invoke-virtual {v0, p1}, Lcom/instagram/realtimeclient/RealtimeOperationManager;->handlePatchEvent(Lcom/instagram/realtimeclient/RealtimePatchEvent;)V
return-void
.end method