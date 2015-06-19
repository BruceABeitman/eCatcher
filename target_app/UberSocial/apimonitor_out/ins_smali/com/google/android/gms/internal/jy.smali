.class public final Lcom/google/android/gms/internal/jy;
.super Lcom/google/android/gms/internal/gl;
.implements Lcom/google/android/gms/common/api/h;
.implements Lcom/google/android/gms/common/api/i;
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/util/Map;
.field private i:Lcom/google/android/gms/games/PlayerEntity;
.field private j:Lcom/google/android/gms/games/GameEntity;
.field private final k:Lcom/google/android/gms/internal/na;
.field private l:Z
.field private m:Z
.field private n:I
.field private final o:Landroid/os/Binder;
.field private final p:J
.field private final q:Z
.field private final r:I
.field private final s:Z
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;ILandroid/view/View;ZZIZI)V
.registers 22
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p5
move-object v5, p6
move-object v6, p7
invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;[Ljava/lang/String;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/google/android/gms/internal/jy;->l:Z
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/google/android/gms/internal/jy;->m:Z
iput-object p3, p0, Lcom/google/android/gms/internal/jy;->f:Ljava/lang/String;
invoke-static {p4}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/internal/jy;->g:Ljava/lang/String;
new-instance v1, Landroid/os/Binder;
invoke-direct {v1}, Landroid/os/Binder;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/internal/jy;->o:Landroid/os/Binder;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/util/Map;
invoke-static {p0, p8}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/jy;I)Lcom/google/android/gms/internal/na;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
move-object/from16 v0, p9
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jy;->a(Landroid/view/View;)V
move/from16 v0, p11
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->m:Z
move/from16 v0, p12
iput v0, p0, Lcom/google/android/gms/internal/jy;->n:I
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v1
int-to-long v1, v1
iput-wide v1, p0, Lcom/google/android/gms/internal/jy;->p:J
move/from16 v0, p10
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->q:Z
move/from16 v0, p13
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->s:Z
move/from16 v0, p14
iput v0, p0, Lcom/google/android/gms/internal/jy;->r:I
invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/h;)V
invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/i;)V
return-void
.end method
.method private F()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/jy;->i:Lcom/google/android/gms/games/PlayerEntity;
return-void
.end method
.method private G()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/e;
:try_start_16
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/e;->b()V
:try_end_19
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a
goto :goto_a
:catch_1a
move-exception v0
const-string v2, "GamesClientImpl"
const-string v3, "IOException:"
invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/mr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_a
:cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method private a(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
.registers 5
new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/k;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/k;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
const/4 v0, 0x0
:try_start_6
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/k;->a()I
move-result v2
if-lez v2, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/k;->b(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_1d
:cond_19
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/k;->b()V
return-object v0
:catchall_1d
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/k;->b()V
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
return-object v0
.end method
.method private c(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/e;
.registers 7
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mw;->h(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
move-result-object v2
if-eqz v2, :cond_1f
const-string v0, "GamesClientImpl"
const-string v3, "Created native libjingle socket."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/mr;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/mz;
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mz;-><init>(Landroid/os/ParcelFileDescriptor;)V
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/util/Map;
invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_1e
return-object v0
:cond_1f
const-string v0, "GamesClientImpl"
const-string v2, "Unable to create native libjingle socket, resorting to old socket."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/mr;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mw;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_34
move-object v0, v1
goto :goto_1e
:cond_34
new-instance v2, Landroid/net/LocalSocket;
invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V
:try_start_39
:try_end_39
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_39} :catch_4c
new-instance v3, Landroid/net/LocalSocketAddress;
invoke-direct {v3, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
:try_end_41
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_56
.catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_41} :catch_4c
:try_start_41
new-instance v0, Lcom/google/android/gms/internal/nd;
invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/nd;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/util/Map;
invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_4b
.catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_4c
goto :goto_1e
:catch_4c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "Unable to create socket. Service died."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/mr;->c(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_1e
:catch_56
move-exception v0
:try_start_57
const-string v2, "GamesClientImpl"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "connect() call failed on socket: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/google/android/gms/internal/mr;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_73
.catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_73} :catch_4c
move-object v0, v1
goto :goto_1e
.end method
.method public A()I
.registers 4
const/4 v1, 0x2
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->i()I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_b
.end method
.method public B()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->u()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public C()I
.registers 4
const/4 v1, 0x2
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->s()I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_b
.end method
.method public D()I
.registers 4
const/4 v1, 0x2
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->t()I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_b
.end method
.method public E()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->c()Z
move-result v0
if-eqz v0, :cond_f
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->c()V
:goto_f
:cond_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/d;[BLjava/lang/String;Ljava/lang/String;)I
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kn;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kn;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/d;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;[BLjava/lang/String;Ljava/lang/String;)I
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
move-result v0
:goto_f
return v0
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_f
.end method
.method public a([BLjava/lang/String;)I
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
const/4 v1, 0x0
invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/mw;->a([BLjava/lang/String;[Ljava/lang/String;)I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_b
.end method
.method public a([BLjava/lang/String;[Ljava/lang/String;)I
.registers 6
const-string v0, "Participant IDs must not be null"
invoke-static {p3, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mw;->a([BLjava/lang/String;[Ljava/lang/String;)I
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10
move-result v0
:goto_f
return v0
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_f
.end method
.method public a(IIZ)Landroid/content/Intent;
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mw;->a(IIZ)Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
.registers 8
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/mw;->a(I[BILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "Must provide a non null icon"
invoke-static {p4, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "com.google.android.gms.games.REQUEST_ITEM_ICON"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:goto_14
:try_end_14
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15
return-object v0
:catch_15
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_14
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->i()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_10
.end method
.method public a(Ljava/lang/String;)Landroid/content/Intent;
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mw;->g(Ljava/lang/String;)Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/e;
.registers 5
if-eqz p2, :cond_8
invoke-static {p2}, Lcom/google/android/gms/games/multiplayer/l;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Bad participant ID"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->h:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/e;
if-eqz v0, :cond_20
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/e;->c()Z
move-result v1
if-eqz v1, :cond_24
:cond_20
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/jy;->c(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/e;
move-result-object v0
:cond_24
return-object v0
.end method
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mw;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/mx;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mw;
move-result-object v0
return-object v0
.end method
.method public a()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/jy;->F()V
invoke-super {p0}, Lcom/google/android/gms/internal/gl;->a()V
return-void
.end method
.method public a(I)V
.registers 2
return-void
.end method
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 5
if-nez p1, :cond_c
if-eqz p3, :cond_c
const-string v0, "show_welcome_popup"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->l:Z
:cond_c
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gl;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/internal/jy;->l:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v0}, Lcom/google/android/gms/internal/na;->a()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->l:Z
:cond_c
return-void
.end method
.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->c()Z
move-result v0
if-eqz v0, :cond_f
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/mw;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
:goto_f
:cond_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/na;->a(Landroid/view/View;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/t;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/ma;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ma;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mw;->d(Lcom/google/android/gms/internal/mt;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;I)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/mf;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mf;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;I)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;III)V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kr;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kr;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;III)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;IZZ)V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;IZZ)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;I[I)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lr;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;I[I)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/games/b/d;II)V
.registers 8
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/mi;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mi;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-virtual {p2}, Lcom/google/android/gms/games/b/d;->f()Lcom/google/android/gms/games/b/o;
move-result-object v2
invoke-virtual {v2}, Lcom/google/android/gms/games/b/o;->a()Landroid/os/Bundle;
move-result-object v2
invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Landroid/os/Bundle;II)V
:goto_16
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_16
.end method
.method public a(Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/games/multiplayer/turnbased/e;)V
.registers 9
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lj;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lj;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/e;->a()I
move-result v2
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/e;->b()I
move-result v3
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/e;->c()[Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/e;->d()Landroid/os/Bundle;
move-result-object v5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;II[Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_1e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f
:goto_1e
return-void
:catch_1f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1e
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;I)V
.registers 10
if-nez p1, :cond_1b
const/4 v1, 0x0
:goto_3
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v2}, Lcom/google/android/gms/internal/na;->c()Landroid/os/IBinder;
move-result-object v4
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v2}, Lcom/google/android/gms/internal/na;->b()Landroid/os/Bundle;
move-result-object v5
move-object v2, p2
move v3, p3
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
:goto_1a
return-void
:cond_1b
new-instance v1, Lcom/google/android/gms/internal/lu;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lu;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21
goto :goto_3
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;IIIZ)V
.registers 14
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/mi;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mi;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;IIIZ)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;IZZ)V
.registers 12
const-string v0, "playedWith"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid player collection: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_21
:cond_21
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->d(Lcom/google/android/gms/internal/mt;Ljava/lang/String;IZZ)V
:try_end_33
.catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_34
:goto_33
return-void
:catch_34
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_33
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;JLjava/lang/String;)V
.registers 12
if-nez p1, :cond_10
const/4 v1, 0x0
:goto_3
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
move-object v2, p2
move-wide v3, p3
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;JLjava/lang/String;)V
:goto_f
return-void
:cond_10
new-instance v1, Lcom/google/android/gms/internal/le;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/le;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16
goto :goto_3
:catch_16
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/ll;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ll;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/mw;->c(Lcom/google/android/gms/internal/mt;Ljava/lang/String;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;Ljava/lang/String;II)V
.registers 12
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/ki;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;Ljava/lang/String;II)V
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;Z)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/mk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mk;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/mw;->c(Lcom/google/android/gms/internal/mt;Ljava/lang/String;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 12
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lp;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lp;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lp;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lp;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;Z)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->c(Lcom/google/android/gms/internal/mt;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/api/t;[Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kt;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;[Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public a(Lcom/google/android/gms/common/b;)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->l:Z
return-void
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/h;)V
.registers 6
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/mc;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mc;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/h;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-wide v2, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;J)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/f;)V
.registers 11
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/kx;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->a()Lcom/google/android/gms/games/multiplayer/realtime/j;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->c()Lcom/google/android/gms/games/multiplayer/realtime/i;
move-result-object v2
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->d()Lcom/google/android/gms/games/multiplayer/realtime/a;
move-result-object v3
invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/kx;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/a;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->o:Landroid/os/Binder;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->e()I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->f()[Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->g()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->h()Z
move-result v6
iget-wide v7, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
:goto_2e
:try_end_2e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f
return-void
:catch_2f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2e
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/j;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kx;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kx;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/j;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->c(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/jy;->G()V
:try_end_11
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method public a(Lcom/google/android/gms/games/multiplayer/turnbased/c;)V
.registers 6
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/mo;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mo;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/turnbased/c;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-wide v2, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mw;->b(Lcom/google/android/gms/internal/mt;J)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method public a(Lcom/google/android/gms/games/request/d;)V
.registers 6
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/ko;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ko;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/request/d;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-wide v2, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mw;->c(Lcom/google/android/gms/internal/mt;J)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method protected a(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/gq;)V
.registers 13
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->p()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v8
new-instance v9, Landroid/os/Bundle;
invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
const-string v0, "com.google.android.gms.games.key.isHeadless"
iget-boolean v1, p0, Lcom/google/android/gms/internal/jy;->q:Z
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.google.android.gms.games.key.showConnectingPopup"
iget-boolean v1, p0, Lcom/google/android/gms/internal/jy;->m:Z
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.google.android.gms.games.key.connectingPopupGravity"
iget v1, p0, Lcom/google/android/gms/internal/jy;->n:I
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "com.google.android.gms.games.key.retryingSignIn"
iget-boolean v1, p0, Lcom/google/android/gms/internal/jy;->s:Z
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.google.android.gms.games.key.sdkVariant"
iget v1, p0, Lcom/google/android/gms/internal/jy;->r:I
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const v2, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->p()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/internal/jy;->g:Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->q()[Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/google/android/gms/internal/jy;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v0}, Lcom/google/android/gms/internal/na;->c()Landroid/os/IBinder;
move-result-object v7
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/hh;->a(Lcom/google/android/gms/internal/he;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/mw;->b(Ljava/lang/String;I)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method protected varargs a([Ljava/lang/String;)V
.registers 9
const/4 v4, 0x1
const/4 v1, 0x0
move v0, v1
move v2, v1
move v3, v1
:goto_5
array-length v5, p1
if-ge v0, v5, :cond_20
aget-object v5, p1, v0
const-string v6, "https://www.googleapis.com/auth/games"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_16
move v3, v4
:cond_13
:goto_13
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_16
const-string v6, "https://www.googleapis.com/auth/games.firstparty"
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_13
move v2, v4
goto :goto_13
:cond_20
if-eqz v2, :cond_3c
if-nez v3, :cond_3a
move v0, v4
:goto_25
const-string v2, "Cannot have both %s and %s!"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const-string v5, "https://www.googleapis.com/auth/games"
aput-object v5, v3, v1
const-string v1, "https://www.googleapis.com/auth/games.firstparty"
aput-object v1, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
:goto_39
return-void
:cond_3a
move v0, v1
goto :goto_25
:cond_3c
const-string v0, "Games APIs requires %s to function."
new-array v2, v4, [Ljava/lang/Object;
const-string v4, "https://www.googleapis.com/auth/games"
aput-object v4, v2, v1
invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V
goto :goto_39
.end method
.method public b(IIZ)Landroid/content/Intent;
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/mw;->b(IIZ)Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public b()Landroid/os/Bundle;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->b()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_15
const-class v1, Lcom/google/android/gms/internal/jy;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
:goto_15
:cond_15
return-object v0
:catch_16
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_15
.end method
.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jy;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mw;
move-result-object v0
return-object v0
.end method
.method public b(Lcom/google/android/gms/common/api/t;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lc;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lc;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public b(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_1a
const/4 v0, 0x0
move-object v1, v0
:try_start_4
:goto_4
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v2}, Lcom/google/android/gms/internal/na;->c()Landroid/os/IBinder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v3}, Lcom/google/android/gms/internal/na;->b()Landroid/os/Bundle;
move-result-object v3
invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
:goto_19
return-void
:cond_1a
new-instance v0, Lcom/google/android/gms/internal/lu;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/lu;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21
move-object v1, v0
goto :goto_4
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public b(Lcom/google/android/gms/common/api/t;Ljava/lang/String;I)V
.registers 10
if-nez p1, :cond_1b
const/4 v1, 0x0
:goto_3
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v2}, Lcom/google/android/gms/internal/na;->c()Landroid/os/IBinder;
move-result-object v4
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v2}, Lcom/google/android/gms/internal/na;->b()Landroid/os/Bundle;
move-result-object v5
move-object v2, p2
move v3, p3
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/mw;->b(Lcom/google/android/gms/internal/mt;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
:goto_1a
return-void
:cond_1b
new-instance v1, Lcom/google/android/gms/internal/lu;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lu;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21
goto :goto_3
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public b(Lcom/google/android/gms/common/api/t;Ljava/lang/String;IIIZ)V
.registers 14
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/mi;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mi;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/mw;->b(Lcom/google/android/gms/internal/mt;Ljava/lang/String;IIIZ)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
.end method
.method public b(Lcom/google/android/gms/common/api/t;Z)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/mk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mk;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->b(Lcom/google/android/gms/internal/mt;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public b(Lcom/google/android/gms/common/api/t;[Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/kt;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->b(Lcom/google/android/gms/internal/mt;[Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public b(Lcom/google/android/gms/games/multiplayer/realtime/f;)V
.registers 9
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/kx;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->a()Lcom/google/android/gms/games/multiplayer/realtime/j;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->c()Lcom/google/android/gms/games/multiplayer/realtime/i;
move-result-object v2
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->d()Lcom/google/android/gms/games/multiplayer/realtime/a;
move-result-object v3
invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/kx;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/games/multiplayer/realtime/j;Lcom/google/android/gms/games/multiplayer/realtime/i;Lcom/google/android/gms/games/multiplayer/realtime/a;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->o:Landroid/os/Binder;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/f;->h()Z
move-result v4
iget-wide v5, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
:try_end_26
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27
:goto_26
return-void
:catch_27
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
.end method
.method public b(Ljava/lang/String;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mw;->f(Ljava/lang/String;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public b(Ljava/lang/String;I)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/mw;->a(Ljava/lang/String;I)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public c(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/na;->b(I)V
return-void
.end method
.method public c(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_1a
const/4 v0, 0x0
move-object v1, v0
:try_start_4
:goto_4
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-object v2, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v2}, Lcom/google/android/gms/internal/na;->c()Landroid/os/IBinder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/jy;->k:Lcom/google/android/gms/internal/na;
invoke-virtual {v3}, Lcom/google/android/gms/internal/na;->b()Landroid/os/Bundle;
move-result-object v3
invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/mw;->b(Lcom/google/android/gms/internal/mt;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
:goto_19
return-void
:cond_1a
new-instance v0, Lcom/google/android/gms/internal/lu;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/lu;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21
move-object v1, v0
goto :goto_4
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public c(Lcom/google/android/gms/common/api/t;Z)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lw;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lw;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->a(Lcom/google/android/gms/internal/mt;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public c_()V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/jy;->l:Z
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->c()Z
move-result v0
if-eqz v0, :cond_17
:try_start_9
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->c()V
iget-wide v1, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mw;->a(J)V
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_1e
:cond_17
:goto_17
invoke-direct {p0}, Lcom/google/android/gms/internal/jy;->G()V
invoke-super {p0}, Lcom/google/android/gms/internal/gl;->c_()V
return-void
:catch_1e
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "Failed to notify client disconnect."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_17
.end method
.method public d(I)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mw;->a(I)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public d(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lj;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lj;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->l(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public e(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lj;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lj;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->m(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method protected f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.games.internal.IGamesService"
return-object v0
.end method
.method public f(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/ll;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ll;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->o(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method protected g()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.games.service.START"
return-object v0
.end method
.method public g(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/lh;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/lh;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->n(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public h()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->d()Ljava/lang/String;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public h(Lcom/google/android/gms/common/api/t;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
new-instance v1, Lcom/google/android/gms/internal/ln;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ln;-><init>(Lcom/google/android/gms/internal/jy;Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/mw;->p(Lcom/google/android/gms/internal/mt;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public i()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->e()Ljava/lang/String;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public j()Lcom/google/android/gms/games/Player;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->r()V
monitor-enter p0
:try_start_4
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->i:Lcom/google/android/gms/games/PlayerEntity;
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_3f
if-nez v0, :cond_2d
:try_start_8
new-instance v1, Lcom/google/android/gms/games/p;
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->f()Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/games/p;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_17
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_36
invoke-virtual {v1}, Lcom/google/android/gms/games/p;->a()I
move-result v0
if-lez v0, :cond_2a
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/p;->a(I)Lcom/google/android/gms/games/Player;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
iput-object v0, p0, Lcom/google/android/gms/internal/jy;->i:Lcom/google/android/gms/games/PlayerEntity;
:cond_2a
:try_start_2a
:try_end_2a
.catchall {:try_start_17 .. :try_end_2a} :catchall_31
invoke-virtual {v1}, Lcom/google/android/gms/games/p;->b()V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_36
:goto_2d
:try_start_2d
:cond_2d
monitor-exit p0
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_3f
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->i:Lcom/google/android/gms/games/PlayerEntity;
return-object v0
:catchall_31
move-exception v0
:try_start_32
invoke-virtual {v1}, Lcom/google/android/gms/games/p;->b()V
throw v0
:try_end_36
.catchall {:try_start_32 .. :try_end_36} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_36
:catch_36
move-exception v0
:try_start_37
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:catchall_3f
move-exception v0
monitor-exit p0
:try_end_41
.catchall {:try_start_37 .. :try_end_41} :catchall_3f
throw v0
.end method
.method public k()Lcom/google/android/gms/games/Game;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->r()V
monitor-enter p0
:try_start_4
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->j:Lcom/google/android/gms/games/GameEntity;
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_3f
if-nez v0, :cond_2d
:try_start_8
new-instance v1, Lcom/google/android/gms/games/a;
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->h()Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/games/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_17
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_36
invoke-virtual {v1}, Lcom/google/android/gms/games/a;->a()I
move-result v0
if-lez v0, :cond_2a
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/a;->a(I)Lcom/google/android/gms/games/Game;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/games/Game;->i()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/GameEntity;
iput-object v0, p0, Lcom/google/android/gms/internal/jy;->j:Lcom/google/android/gms/games/GameEntity;
:cond_2a
:try_start_2a
:try_end_2a
.catchall {:try_start_17 .. :try_end_2a} :catchall_31
invoke-virtual {v1}, Lcom/google/android/gms/games/a;->b()V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_36
:goto_2d
:try_start_2d
:cond_2d
monitor-exit p0
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_3f
iget-object v0, p0, Lcom/google/android/gms/internal/jy;->j:Lcom/google/android/gms/games/GameEntity;
return-object v0
:catchall_31
move-exception v0
:try_start_32
invoke-virtual {v1}, Lcom/google/android/gms/games/a;->b()V
throw v0
:try_end_36
.catchall {:try_start_32 .. :try_end_36} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_36
:catch_36
move-exception v0
:try_start_37
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:catchall_3f
move-exception v0
monitor-exit p0
:try_end_41
.catchall {:try_start_37 .. :try_end_41} :catchall_3f
throw v0
.end method
.method public l()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->k()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public m()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->l()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public n()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->m()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public o()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->n()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public t()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-wide v1, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mw;->b(J)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public u()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-wide v1, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mw;->c(J)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public v()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
iget-wide v1, p0, Lcom/google/android/gms/internal/jy;->p:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/mw;->d(J)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public w()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->o()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public x()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->p()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public y()I
.registers 4
const/16 v1, 0x1110
:try_start_2
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->r()I
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d
move-result v0
:goto_c
return v0
:catch_d
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_c
.end method
.method public z()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->s()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/mw;
invoke-interface {v0}, Lcom/google/android/gms/internal/mw;->a()Ljava/lang/String;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/mr;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method