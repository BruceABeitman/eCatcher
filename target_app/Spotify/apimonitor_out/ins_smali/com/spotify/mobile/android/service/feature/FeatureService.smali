.class public Lcom/spotify/mobile/android/service/feature/FeatureService;
.super Landroid/app/Service;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/service/b/b;
.field private b:Lcom/spotify/mobile/android/service/session/e;
.field private c:Z
.field private d:Lcom/spotify/mobile/android/service/session/d;
.field private e:Lcom/spotify/mobile/android/service/b/b;
.field private final f:Landroid/os/IBinder;
.field private g:Lcom/spotify/mobile/android/ui/fragments/logic/i;
.field private final h:Ljava/util/List;
.field private final i:Landroid/support/v4/app/z;
.field private final j:Landroid/support/v4/app/z;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/service/feature/FeatureService$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/feature/FeatureService$1;-><init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->d:Lcom/spotify/mobile/android/service/session/d;
new-instance v0, Lcom/spotify/mobile/android/service/feature/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/feature/b;-><init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->f:Landroid/os/IBinder;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/i;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->g:Lcom/spotify/mobile/android/ui/fragments/logic/i;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->h:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/feature/FeatureService$2;-><init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->i:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/service/feature/FeatureService$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/feature/FeatureService$3;-><init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->j:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/service/session/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/e;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->b:Lcom/spotify/mobile/android/service/session/e;
return-void
.end method
.method private a()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->c:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const-string v0, " -- starting loaders"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->e:Lcom/spotify/mobile/android/service/b/b;
if-nez v0, :cond_2a
new-instance v0, Lcom/spotify/mobile/android/service/b/b;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/b/b;-><init>()V
:goto_19
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->a:Lcom/spotify/mobile/android/service/b/b;
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->a:Lcom/spotify/mobile/android/service/b/b;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->i:Landroid/support/v4/app/z;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->a:Lcom/spotify/mobile/android/service/b/b;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->j:Landroid/support/v4/app/z;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V
goto :goto_4
:cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->e:Lcom/spotify/mobile/android/service/b/b;
goto :goto_19
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->a()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/feature/FeatureService;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->c:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->g:Lcom/spotify/mobile/android/ui/fragments/logic/i;
return-object v0
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->a:Lcom/spotify/mobile/android/service/b/b;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->a:Lcom/spotify/mobile/android/service/b/b;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->i:Landroid/support/v4/app/z;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->b(Landroid/support/v4/app/z;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->a:Lcom/spotify/mobile/android/service/b/b;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->j:Landroid/support/v4/app/z;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->b(Landroid/support/v4/app/z;)V
:cond_12
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
.registers 4
const-string v0, "Notifying listeners"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/feature/a;
iget-object v2, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->g:Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/feature/a;->a()V
goto :goto_e
:cond_20
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/feature/a;)V
.registers 5
const/4 v2, 0x0
const-string v0, "Adding listener"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->g:Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z
move-result v0
if-eqz v0, :cond_2a
const-string v0, " -- Flags are ready to use, notifying listeners"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->g:Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-interface {p1}, Lcom/spotify/mobile/android/service/feature/a;->a()V
:goto_29
return-void
:cond_2a
invoke-direct {p0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->a()V
const-string v0, "Flags are not available yet"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_29
.end method
.method public final b(Lcom/spotify/mobile/android/service/feature/a;)V
.registers 5
const/4 v2, 0x0
const-string v0, "Removing listener"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_17
const-string v0, "FeatureService does not contain this listener"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->f:Landroid/os/IBinder;
return-object v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/service/feature/FeatureService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string v0, "onCreate()"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->b:Lcom/spotify/mobile/android/service/session/e;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->d:Lcom/spotify/mobile/android/service/session/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->b:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V
const-string v1, " - Lcom/spotify/mobile/android/service/feature/FeatureService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/service/feature/FeatureService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "onDestroy()"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->b:Lcom/spotify/mobile/android/service/session/e;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->d:Lcom/spotify/mobile/android/service/session/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->b(Lcom/spotify/mobile/android/service/session/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService;->b:Lcom/spotify/mobile/android/service/session/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b()V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
const-string v1, " - Lcom/spotify/mobile/android/service/feature/FeatureService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method