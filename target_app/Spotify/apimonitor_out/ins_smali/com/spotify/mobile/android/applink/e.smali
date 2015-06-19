.class public final Lcom/spotify/mobile/android/applink/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static x:Z
.field private final a:Lcom/spotify/mobile/android/applink/a;
.field private final b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
.field private final c:Lcom/spotify/mobile/android/service/media/MediaService;
.field private final d:Lcom/spotify/mobile/android/applink/m;
.field private final e:Lcom/spotify/mobile/android/applink/r;
.field private final f:Lcom/spotify/mobile/android/applink/g;
.field private final g:Lcom/spotify/mobile/android/applink/o;
.field private final h:Lcom/spotify/mobile/android/applink/i;
.field private final i:Lcom/spotify/mobile/android/applink/j;
.field private final j:Lcom/spotify/mobile/android/applink/f;
.field private final k:Lcom/spotify/mobile/android/applink/k;
.field private final l:Lcom/spotify/mobile/android/applink/t;
.field private m:Lcom/google/common/base/Optional;
.field private n:Z
.field private o:Z
.field private p:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;
.field private q:Lcom/spotify/mobile/android/applink/c;
.field private r:Lcom/spotify/mobile/android/applink/c;
.field private s:Lcom/spotify/mobile/android/applink/c;
.field private t:Lcom/spotify/mobile/android/applink/c;
.field private u:Lcom/spotify/mobile/android/service/session/d;
.field private v:Lcom/google/common/base/Optional;
.field private w:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/spotify/mobile/android/applink/e;->x:Z
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/applink/a;Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/applink/m;Lcom/spotify/mobile/android/applink/t;Lcom/spotify/mobile/android/applink/r;)V
.registers 9
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->m:Lcom/google/common/base/Optional;
iput-boolean v1, p0, Lcom/spotify/mobile/android/applink/e;->n:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/applink/e;->o:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->p:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->v:Lcom/google/common/base/Optional;
iput-boolean v1, p0, Lcom/spotify/mobile/android/applink/e;->w:Z
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/a;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/media/MediaService;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/m;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->d:Lcom/spotify/mobile/android/applink/m;
invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/t;
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
iput-object p6, p0, Lcom/spotify/mobile/android/applink/e;->e:Lcom/spotify/mobile/android/applink/r;
new-instance v0, Lcom/spotify/mobile/android/applink/g;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/applink/g;-><init>(Lcom/spotify/mobile/android/applink/e;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
new-instance v0, Lcom/spotify/mobile/android/applink/h;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/applink/h;-><init>(Lcom/spotify/mobile/android/applink/e;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->g:Lcom/spotify/mobile/android/applink/o;
new-instance v0, Lcom/spotify/mobile/android/applink/i;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/applink/i;-><init>(Lcom/spotify/mobile/android/applink/e;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->h:Lcom/spotify/mobile/android/applink/i;
new-instance v0, Lcom/spotify/mobile/android/applink/f;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/applink/f;-><init>(Lcom/spotify/mobile/android/applink/e;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->j:Lcom/spotify/mobile/android/applink/f;
new-instance v0, Lcom/spotify/mobile/android/applink/j;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/applink/j;-><init>(Lcom/spotify/mobile/android/applink/e;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->i:Lcom/spotify/mobile/android/applink/j;
new-instance v0, Lcom/spotify/mobile/android/applink/k;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/applink/k;-><init>(Lcom/spotify/mobile/android/applink/e;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->k:Lcom/spotify/mobile/android/applink/k;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->g:Lcom/spotify/mobile/android/applink/o;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/o;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->h:Lcom/spotify/mobile/android/applink/i;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a(Lcom/spotify/mobile/android/applink/p;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->a()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/applink/e;->m:Lcom/google/common/base/Optional;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;)Lcom/spotify/mobile/android/applink/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
return-object v0
.end method
.method private a()V
.registers 5
invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
move-result-wide v1
:try_start_4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->b:Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
invoke-static {}, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;->a()Landroid/bluetooth/BluetoothAdapter;
move-result-object v0
if-eqz v0, :cond_19
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v3, v0}, Lcom/spotify/mobile/android/applink/a;->a(Landroid/bluetooth/BluetoothAdapter;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/a;->a()V
:try_end_19
.catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_19} :catch_1d
:cond_19
:goto_19
invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
return-void
:catch_1d
move-exception v0
sget-boolean v3, Lcom/spotify/mobile/android/applink/e;->x:Z
if-nez v3, :cond_19
const/4 v3, 0x1
sput-boolean v3, Lcom/spotify/mobile/android/applink/e;->x:Z
const-string v3, "Permission problem using Bluetooth"
invoke-static {v3, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_19
.end method
.method private a(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
.registers 12
const/4 v6, 0x1
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/a;->c()Z
move-result v0
if-eqz v0, :cond_66
invoke-virtual {p2}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p2}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
if-eqz v0, :cond_67
:cond_1c
move v3, v6
:goto_1d
invoke-virtual {p2}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_69
invoke-virtual {p2}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->b()I
move-result v0
sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
int-to-long v7, v0
invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v0
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v5, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v2, v0, v1, v3, v5}, Lcom/spotify/mobile/android/applink/a;->a(JZLcom/spotify/mobile/android/applink/d;)V
:goto_3b
invoke-virtual {p1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_71
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getArtistName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->isInCollection()Z
move-result v4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v5, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/spotify/mobile/android/applink/d;)V
:cond_66
:goto_66
return-void
:cond_67
move v3, v4
goto :goto_1d
:cond_69
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/d;)V
goto :goto_3b
:cond_71
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
const-string v1, ""
const-string v2, ""
iget-object v5, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
move v3, v6
invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Ljava/lang/String;ZZLcom/spotify/mobile/android/applink/d;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->c()V
goto :goto_66
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;Lcom/spotify/mobile/android/applink/c;Z)V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->r:Lcom/spotify/mobile/android/applink/c;
if-ne p1, v0, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->m:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->m:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/applink/l;
invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/l;Z)V
:goto_18
return-void
:cond_19
const-string v0, "Tried to show rootlist interaction menu before it was cached."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->e:Lcom/spotify/mobile/android/applink/r;
new-instance v1, Lcom/spotify/mobile/android/applink/e$2;
invoke-direct {v1, p0, p2}, Lcom/spotify/mobile/android/applink/e$2;-><init>(Lcom/spotify/mobile/android/applink/e;Z)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/applink/r;->a(Lcom/spotify/mobile/android/applink/s;)V
goto :goto_18
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
if-ne p1, v0, :cond_37
iput-boolean p2, p0, Lcom/spotify/mobile/android/applink/e;->w:Z
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->f()V
goto :goto_18
:cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->q:Lcom/spotify/mobile/android/applink/c;
if-ne p1, v0, :cond_43
iput-boolean p2, p0, Lcom/spotify/mobile/android/applink/e;->w:Z
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->e()V
goto :goto_18
:cond_43
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->s:Lcom/spotify/mobile/android/applink/c;
if-ne p1, v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->a()V
goto :goto_18
:cond_4d
const-string v0, "An unknown command was selected: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_18
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;Lcom/spotify/mobile/android/applink/l;)V
.registers 4
invoke-static {p1}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->m:Lcom/google/common/base/Optional;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, p1, v1}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/l;Lcom/spotify/mobile/android/applink/d;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;Lcom/spotify/mobile/android/applink/l;Lcom/spotify/mobile/android/applink/c;Z)V
.registers 8
instance-of v0, p2, Lcom/spotify/mobile/android/applink/n;
if-eqz v0, :cond_31
move-object v0, p2
check-cast v0, Lcom/spotify/mobile/android/applink/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/n;->f()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Landroid/net/Uri;)V
const-string v0, "**** Interaction command %s > %s voice %b"
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p2}, Lcom/spotify/mobile/android/applink/c;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_31
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;Lcom/spotify/mobile/android/applink/l;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/l;Z)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/applink/e;Z)V
.registers 9
const/4 v6, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->i()Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_1a
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_49
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v1}, Lcom/spotify/mobile/android/applink/t;->o()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v2}, Lcom/spotify/mobile/android/applink/t;->p()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1, v2, v3}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v1}, Lcom/spotify/mobile/android/applink/t;->q()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
new-instance v0, Lcom/spotify/mobile/android/applink/e$1;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/applink/e$1;-><init>(Lcom/spotify/mobile/android/applink/e;Z)V
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->u:Lcom/spotify/mobile/android/service/session/d;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->u:Lcom/spotify/mobile/android/service/session/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Lcom/spotify/mobile/android/service/session/d;)V
:cond_48
:goto_48
return-void
:cond_49
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->i:Lcom/spotify/mobile/android/applink/j;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Lcom/spotify/mobile/android/service/player/a/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->j:Lcom/spotify/mobile/android/applink/f;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->d:Lcom/spotify/mobile/android/applink/m;
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/applink/a;->e()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v3}, Lcom/spotify/mobile/android/applink/a;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/applink/m;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->a:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->b()Lcom/google/common/base/Optional;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->h()Lcom/google/common/base/Optional;
move-result-object v2
invoke-direct {p0, v2, v1}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
if-eqz p1, :cond_121
new-instance v0, Lcom/spotify/mobile/android/applink/c;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v3}, Lcom/spotify/mobile/android/applink/t;->g()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v4}, Lcom/spotify/mobile/android/applink/t;->h()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v3, v4}, Lcom/spotify/mobile/android/applink/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/applink/c;->a(I)Lcom/spotify/mobile/android/applink/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->r:Lcom/spotify/mobile/android/applink/c;
new-instance v0, Lcom/spotify/mobile/android/applink/c;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v3}, Lcom/spotify/mobile/android/applink/t;->i()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v4}, Lcom/spotify/mobile/android/applink/t;->j()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v3, v4}, Lcom/spotify/mobile/android/applink/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/applink/c;->a(I)Lcom/spotify/mobile/android/applink/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->q:Lcom/spotify/mobile/android/applink/c;
new-instance v0, Lcom/spotify/mobile/android/applink/c;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v3}, Lcom/spotify/mobile/android/applink/t;->k()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v4}, Lcom/spotify/mobile/android/applink/t;->l()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v3, v4}, Lcom/spotify/mobile/android/applink/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/applink/c;->a(I)Lcom/spotify/mobile/android/applink/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
new-instance v0, Lcom/spotify/mobile/android/applink/c;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v3}, Lcom/spotify/mobile/android/applink/t;->m()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v4}, Lcom/spotify/mobile/android/applink/t;->n()Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v3, v4}, Lcom/spotify/mobile/android/applink/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x2
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/applink/c;->a(I)Lcom/spotify/mobile/android/applink/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->s:Lcom/spotify/mobile/android/applink/c;
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->q:Lcom/spotify/mobile/android/applink/c;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/applink/a;->b(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->r:Lcom/spotify/mobile/android/applink/c;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->s:Lcom/spotify/mobile/android/applink/c;
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v3, v4}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_121
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
if-nez v0, :cond_121
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->c()V
iput-boolean v5, p0, Lcom/spotify/mobile/android/applink/e;->o:Z
:cond_121
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->e:Lcom/spotify/mobile/android/applink/r;
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->k:Lcom/spotify/mobile/android/applink/k;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/applink/r;->a(Lcom/spotify/mobile/android/applink/s;)V
invoke-virtual {v2}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_135
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->a()V
goto/16 :goto_48
:cond_135
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_48
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->b()V
goto/16 :goto_48
.end method
.method private a(Lcom/spotify/mobile/android/applink/l;Z)V
.registers 6
invoke-virtual {p1}, Lcom/spotify/mobile/android/applink/l;->c()Ljava/util/Vector;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_b
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/l;Z)V
:goto_14
return-void
:cond_15
const/4 v0, 0x0
goto :goto_b
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/t;->a()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/applink/a;->b(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
goto :goto_14
.end method
.method private a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->p:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->p:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;->a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
:cond_9
return-void
.end method
.method private b()Lcom/google/common/base/Optional;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->g()Lcom/spotify/mobile/android/service/player/model/d;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/applink/e;)Lcom/spotify/mobile/android/service/session/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->u:Lcom/spotify/mobile/android/service/session/d;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/applink/e;Lcom/google/common/base/Optional;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->h()Lcom/google/common/base/Optional;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
invoke-virtual {p1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->q:Lcom/spotify/mobile/android/applink/c;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->v:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->d()Z
move-result v0
if-eq v1, v0, :cond_61
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->d()Z
move-result v0
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->q:Lcom/spotify/mobile/android/applink/c;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/applink/a;->b(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/applink/a;->c(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/t;->b()Ljava/lang/String;
move-result-object v0
:goto_53
iget-boolean v1, p0, Lcom/spotify/mobile/android/applink/e;->w:Z
if-eqz v1, :cond_61
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/applink/e;->w:Z
:cond_61
invoke-virtual {p1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->d()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/applink/e;->v:Lcom/google/common/base/Optional;
:cond_75
return-void
:cond_76
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->q:Lcom/spotify/mobile/android/applink/c;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/applink/a;->c(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->t:Lcom/spotify/mobile/android/applink/c;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/applink/a;->b(Lcom/spotify/mobile/android/applink/c;Lcom/spotify/mobile/android/applink/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/t;->c()Ljava/lang/String;
move-result-object v0
goto :goto_53
.end method
.method static synthetic b(Lcom/spotify/mobile/android/applink/e;Z)V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->b()Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_24
if-eqz p1, :cond_25
iget-boolean v1, p0, Lcom/spotify/mobile/android/applink/e;->n:Z
if-eqz v1, :cond_25
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->b()V
:cond_21
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/applink/e;->n:Z
:goto_24
:cond_24
return-void
:cond_25
if-nez p1, :cond_24
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
if-nez v0, :cond_24
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/applink/e;->n:Z
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->b()V
goto :goto_24
.end method
.method static synthetic c(Lcom/spotify/mobile/android/applink/e;)Lcom/spotify/mobile/android/service/media/MediaService;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
return-object v0
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/a;->a(Lcom/spotify/mobile/android/applink/d;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/applink/e;Lcom/google/common/base/Optional;)V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->b()Lcom/google/common/base/Optional;
move-result-object v0
invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
return-void
.end method
.method static synthetic d(Lcom/spotify/mobile/android/applink/e;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->i:Lcom/spotify/mobile/android/applink/j;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/media/MediaService;->b(Lcom/spotify/mobile/android/service/player/a/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->j:Lcom/spotify/mobile/android/applink/f;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/a;->b(Lcom/spotify/mobile/android/applink/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->d:Lcom/spotify/mobile/android/applink/m;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/applink/a;->e()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v3}, Lcom/spotify/mobile/android/applink/a;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/applink/m;->a(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;->b:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener$AppLinkState;)V
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/applink/e;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/applink/e;->a()V
return-void
.end method
.method static synthetic f(Lcom/spotify/mobile/android/applink/e;)V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/a;->b()V
return-void
.end method
.method static synthetic g(Lcom/spotify/mobile/android/applink/e;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/applink/e;->o:Z
return v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/applink/e;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/applink/e;->o:Z
return v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/applink/e;)V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->b()V
return-void
.end method
.method static synthetic j(Lcom/spotify/mobile/android/applink/e;)V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->d()V
return-void
.end method
.method static synthetic k(Lcom/spotify/mobile/android/applink/e;)V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->c()V
return-void
.end method
.method static synthetic l(Lcom/spotify/mobile/android/applink/e;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->h()Lcom/google/common/base/Optional;
move-result-object v1
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_29
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->isInCollection()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackUri()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->bg:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/service/media/MediaService;->b(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
:goto_29
:cond_29
return-void
:cond_2a
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackUri()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->bg:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/service/media/MediaService;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
goto :goto_29
.end method
.method static synthetic m(Lcom/spotify/mobile/android/applink/e;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->h()Lcom/google/common/base/Optional;
move-result-object v1
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->l:Lcom/spotify/mobile/android/applink/t;
invoke-virtual {v0}, Lcom/spotify/mobile/android/applink/t;->d()Ljava/lang/String;
move-result-object v2
const/4 v0, 0x3
new-array v3, v0, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackName()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
const/4 v4, 0x1
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getArtistName()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
const/4 v4, 0x2
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getAlbumName()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/applink/a;->b(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
iget-object v2, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v1, v0, v2}, Lcom/spotify/mobile/android/applink/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/applink/d;)V
:cond_4e
return-void
.end method
.method public final a(I)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e;->c:Lcom/spotify/mobile/android/service/media/MediaService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/MediaService;->g()Lcom/spotify/mobile/android/service/player/model/d;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_28
sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
int-to-long v2, p1
invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v1
iget-object v3, p0, Lcom/spotify/mobile/android/applink/e;->a:Lcom/spotify/mobile/android/applink/a;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z
move-result v0
iget-object v4, p0, Lcom/spotify/mobile/android/applink/e;->f:Lcom/spotify/mobile/android/applink/g;
invoke-interface {v3, v1, v2, v0, v4}, Lcom/spotify/mobile/android/applink/a;->a(JZLcom/spotify/mobile/android/applink/d;)V
:cond_28
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/applink/e;->p:Lcom/spotify/mobile/android/applink/service/AppLinkStateListener;
return-void
.end method