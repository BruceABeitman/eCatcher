.class public final Lcom/google/android/gms/internal/fx;
.super Lcom/google/android/gms/internal/eh;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.field private GA:Z
.field private GB:Z
.field private GC:I
.field private final GD:Landroid/os/Binder;
.field private final GE:J
.field private final GF:Z
.field private final GG:I
.field private final GH:Z
.field private final Gv:Ljava/lang/String;
.field private final Gw:Ljava/util/Map;
.field private Gx:Lcom/google/android/gms/games/PlayerEntity;
.field private Gy:Lcom/google/android/gms/games/GameEntity;
.field private final Gz:Lcom/google/android/gms/internal/gd;
.field private final vi:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZIZI)V
.registers 22
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p5
move-object v5, p6
move-object v6, p7
invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/google/android/gms/internal/fx;->GA:Z
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/google/android/gms/internal/fx;->GB:Z
iput-object p3, p0, Lcom/google/android/gms/internal/fx;->Gv:Ljava/lang/String;
invoke-static {p4}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iput-object v1, p0, Lcom/google/android/gms/internal/fx;->vi:Ljava/lang/String;
new-instance v1, Landroid/os/Binder;
invoke-direct {v1}, Landroid/os/Binder;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/internal/fx;->GD:Landroid/os/Binder;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/internal/fx;->Gw:Ljava/util/Map;
invoke-static {p0, p8}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/fx;I)Lcom/google/android/gms/internal/gd;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
move-object/from16 v0, p9
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fx;->e(Landroid/view/View;)V
move/from16 v0, p11
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GB:Z
move/from16 v0, p12
iput v0, p0, Lcom/google/android/gms/internal/fx;->GC:I
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v1
int-to-long v1, v1
iput-wide v1, p0, Lcom/google/android/gms/internal/fx;->GE:J
move/from16 v0, p10
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GF:Z
move/from16 v0, p13
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GH:Z
move/from16 v0, p14
iput v0, p0, Lcom/google/android/gms/internal/fx;->GG:I
invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/fx;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/fx;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
return-void
.end method
.method private G(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
.registers 5
new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/a;
invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
const/4 v0, 0x0
:try_start_6
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/a;->getCount()I
move-result v2
if-lez v2, :cond_19
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/a;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
:try_end_19
.catchall {:try_start_6 .. :try_end_19} :catchall_1d
:cond_19
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/a;->close()V
return-object v0
:catchall_1d
move-exception v0
invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/a;->close()V
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fx;->G(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
move-result-object v0
return-object v0
.end method
.method private aw(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
.registers 7
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gb;->aD(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
move-result-object v2
if-eqz v2, :cond_1f
const-string v0, "GamesClientImpl"
const-string v3, "Created native libjingle socket."
invoke-static {v0, v3}, Lcom/google/android/gms/internal/fz;->f(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/gc;
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/gc;-><init>(Landroid/os/ParcelFileDescriptor;)V
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gw:Ljava/util/Map;
invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_1e
return-object v0
:cond_1f
const-string v0, "GamesClientImpl"
const-string v2, "Unable to create native libjingle socket, resorting to old socket."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fz;->f(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gb;->ay(Ljava/lang/String;)Ljava/lang/String;
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
new-instance v0, Lcom/google/android/gms/internal/ge;
invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ge;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gw:Ljava/util/Map;
invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_4b
.catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_4c
goto :goto_1e
:catch_4c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "Unable to create socket. Service died."
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fz;->h(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_1e
:catch_56
move-exception v0
:try_start_57
const-string v2, "GamesClientImpl"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "connect() call failed on socket: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/google/android/gms/internal/fz;->h(Ljava/lang/String;Ljava/lang/String;)V
:try_end_6f
.catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_6f} :catch_4c
move-object v0, v1
goto :goto_1e
.end method
.method private fG()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gw:Ljava/util/Map;
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
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
:try_start_16
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->close()V
:try_end_19
.catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a
goto :goto_a
:catch_1a
move-exception v0
const-string v2, "GamesClientImpl"
const-string v3, "IOException:"
invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/fz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_a
:cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gw:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method private fm()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/fx;->Gx:Lcom/google/android/gms/games/PlayerEntity;
return-void
.end method
.method protected final H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/internal/gb$a;->J(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$an;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$an;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;[BLjava/lang/String;Ljava/lang/String;)I
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
move-result v0
:goto_f
return v0
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_f
.end method
.method public final a([BLjava/lang/String;[Ljava/lang/String;)I
.registers 6
const-string v0, "Participant IDs must not be null"
invoke-static {p3, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_5
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gb;->b([BLjava/lang/String;[Ljava/lang/String;)I
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10
move-result v0
:goto_f
return v0
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_f
.end method
.method public final a(IIZ)Landroid/content/Intent;
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gb;->a(IIZ)Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
.registers 8
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/gb;->a(I[BILjava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "Must provide a non null icon"
invoke-static {p4, v1}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_14
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_10
.end method
.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 5
if-nez p1, :cond_c
if-eqz p3, :cond_c
const-string v0, "show_welcome_popup"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GA:Z
:cond_c
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Landroid/os/IBinder;Landroid/os/Bundle;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->isConnected()Z
move-result v0
if-eqz v0, :cond_f
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gb;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
:goto_f
:cond_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;III)V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ar;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ar;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;III)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;IZZ)V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ak;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ak;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;IZZ)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;I[I)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bq;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bq;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;I[I)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
.registers 8
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$r;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$r;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->fX()Lcom/google/android/gms/games/leaderboard/c;
move-result-object v2
invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/c;->fY()Landroid/os/Bundle;
move-result-object v2
invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Landroid/os/Bundle;II)V
:goto_16
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_16
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
.registers 9
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bi;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bi;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getVariant()I
move-result v2
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getMinPlayers()I
move-result v3
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getInvitedPlayerIds()[Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;II[Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_1e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f
:goto_1e
return-void
:catch_1f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ak;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ak;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;I)V
.registers 10
if-nez p1, :cond_1b
const/4 v1, 0x0
:goto_3
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->fP()Landroid/os/IBinder;
move-result-object v4
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->fO()Landroid/os/Bundle;
move-result-object v5
move-object v2, p2
move v3, p3
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
:goto_1a
return-void
:cond_1b
new-instance v1, Lcom/google/android/gms/internal/fx$d;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$d;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21
goto :goto_3
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V
.registers 14
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$r;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$r;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;IIIZ)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IZZ)V
.registers 12
const-string v0, "playedWith"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid player collection: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1d
:cond_1d
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ak;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ak;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->d(Lcom/google/android/gms/internal/ga;Ljava/lang/String;IZZ)V
:goto_2f
:try_end_2f
.catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2f} :catch_30
return-void
:catch_30
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;JLjava/lang/String;)V
.registers 12
if-nez p1, :cond_10
const/4 v1, 0x0
:goto_3
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
move-object v2, p2
move-wide v3, p3
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;JLjava/lang/String;)V
:goto_f
return-void
:cond_10
new-instance v1, Lcom/google/android/gms/internal/fx$bd;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bd;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16
goto :goto_3
:catch_16
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bk;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/gb;->c(Lcom/google/android/gms/internal/ga;Ljava/lang/String;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Ljava/lang/String;II)V
.registers 12
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ai;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ai;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;Ljava/lang/String;II)V
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Z)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$t;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$t;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/gb;->c(Lcom/google/android/gms/internal/ga;Ljava/lang/String;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 12
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bo;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bo;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
return-void
:catch_13
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
.registers 7
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bo;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bo;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Z)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ak;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ak;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->c(Lcom/google/android/gms/internal/ga;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$at;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$at;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;[Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
.registers 6
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/fx$l;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$l;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;J)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
.registers 11
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/fx$ax;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
move-result-object v2
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
move-result-object v3
invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/fx$ax;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->GD:Landroid/os/Binder;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getVariant()I
move-result v3
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitedPlayerIds()[Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getAutoMatchCriteria()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z
move-result v6
iget-wide v7, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
:goto_2e
:try_end_2e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f
return-void
:catch_2f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2e
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$ax;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ax;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->c(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/google/android/gms/internal/fx;->fG()V
:try_end_11
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method
.method public final a(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
.registers 6
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/fx$x;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$x;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/ga;J)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method public final a(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
.registers 6
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/fx$ao;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$ao;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gb;->c(Lcom/google/android/gms/internal/ga;J)V
:goto_10
:try_end_10
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method protected final a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
.registers 13
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;
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
iget-boolean v1, p0, Lcom/google/android/gms/internal/fx;->GF:Z
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.google.android.gms.games.key.showConnectingPopup"
iget-boolean v1, p0, Lcom/google/android/gms/internal/fx;->GB:Z
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.google.android.gms.games.key.connectingPopupGravity"
iget v1, p0, Lcom/google/android/gms/internal/fx;->GC:I
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "com.google.android.gms.games.key.retryingSignIn"
iget-boolean v1, p0, Lcom/google/android/gms/internal/fx;->GH:Z
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.google.android.gms.games.key.sdkVariant"
iget v1, p0, Lcom/google/android/gms/internal/fx;->GG:I
invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const v2, 0x41f6b8
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/internal/fx;->vi:Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->ea()[Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/google/android/gms/internal/fx;->Gv:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->fP()Landroid/os/IBinder;
move-result-object v7
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/em;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected final aF()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.games.service.START"
return-object v0
.end method
.method protected final aG()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.games.internal.IGamesService"
return-object v0
.end method
.method public final aT(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gd;->setGravity(I)V
return-void
.end method
.method public final aU(I)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gb;->aU(I)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public final au(Ljava/lang/String;)Landroid/content/Intent;
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gb;->au(Ljava/lang/String;)Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final av(Ljava/lang/String;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gb;->aC(Ljava/lang/String;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public final b(IIZ)Landroid/content/Intent;
.registers 6
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gb;->b(IIZ)Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final b(Lcom/google/android/gms/common/api/a$c;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bb;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bb;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_1a
const/4 v0, 0x0
move-object v1, v0
:try_start_4
:goto_4
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->fP()Landroid/os/IBinder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->fO()Landroid/os/Bundle;
move-result-object v3
invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
:goto_19
return-void
:cond_1a
new-instance v0, Lcom/google/android/gms/internal/fx$d;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fx$d;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21
move-object v1, v0
goto :goto_4
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public final b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;I)V
.registers 10
if-nez p1, :cond_1b
const/4 v1, 0x0
:goto_3
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->fP()Landroid/os/IBinder;
move-result-object v4
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->fO()Landroid/os/Bundle;
move-result-object v5
move-object v2, p2
move v3, p3
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/ga;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
:goto_1a
return-void
:cond_1b
new-instance v1, Lcom/google/android/gms/internal/fx$d;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$d;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21
goto :goto_3
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1a
.end method
.method public final b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V
.registers 14
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$r;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$r;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
move-object v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/ga;Ljava/lang/String;IIIZ)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
.end method
.method public final b(Lcom/google/android/gms/common/api/a$c;Z)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$t;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$t;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/ga;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final b(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$at;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$at;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/ga;[Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final b(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
.registers 9
:try_start_0
new-instance v1, Lcom/google/android/gms/internal/fx$ax;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
move-result-object v0
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
move-result-object v2
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
move-result-object v3
invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/fx$ax;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->GD:Landroid/os/Binder;
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitationId()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z
move-result v4
iget-wide v5, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
:try_end_26
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27
:goto_26
return-void
:catch_27
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_26
.end method
.method protected final varargs b([Ljava/lang/String;)V
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
invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
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
invoke-static {v3, v0}, Lcom/google/android/gms/internal/er;->a(ZLjava/lang/Object;)V
goto :goto_39
.end method
.method public final c(Lcom/google/android/gms/common/api/a$c;I)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$o;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$o;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;I)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final c(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 7
if-nez p1, :cond_1a
const/4 v0, 0x0
move-object v1, v0
:try_start_4
:goto_4
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-object v2, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v2}, Lcom/google/android/gms/internal/gd;->fP()Landroid/os/IBinder;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v3}, Lcom/google/android/gms/internal/gd;->fO()Landroid/os/Bundle;
move-result-object v3
invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/ga;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
:goto_19
return-void
:cond_1a
new-instance v0, Lcom/google/android/gms/internal/fx$d;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fx$d;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21
move-object v1, v0
goto :goto_4
:catch_21
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public final c(Lcom/google/android/gms/common/api/a$c;Z)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$f;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$f;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/internal/ga;Z)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final cY()Landroid/os/Bundle;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->cY()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_15
const-class v1, Lcom/google/android/gms/internal/fx;
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
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_15
.end method
.method public final connect()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/internal/fx;->fm()V
invoke-super {p0}, Lcom/google/android/gms/internal/eh;->connect()V
return-void
.end method
.method public final d([BLjava/lang/String;)I
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
const/4 v1, 0x0
invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/gb;->b([BLjava/lang/String;[Ljava/lang/String;)I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
goto :goto_b
.end method
.method public final d(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bi;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bi;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->l(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final disconnect()V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GA:Z
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->isConnected()Z
move-result v0
if-eqz v0, :cond_17
:try_start_9
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fH()V
iget-wide v1, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gb;->n(J)V
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_1e
:cond_17
:goto_17
invoke-direct {p0}, Lcom/google/android/gms/internal/fx;->fG()V
invoke-super {p0}, Lcom/google/android/gms/internal/eh;->disconnect()V
return-void
:catch_1e
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "Failed to notify client disconnect."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_17
.end method
.method public final e(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gd;->f(Landroid/view/View;)V
return-void
.end method
.method public final e(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bi;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bi;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->m(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final f(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bk;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bk;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->o(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final fA()I
.registers 4
const/16 v1, 0x1110
:try_start_2
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fA()I
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d
move-result v0
:goto_c
return v0
:catch_d
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_c
.end method
.method public final fB()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fB()Ljava/lang/String;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fC()I
.registers 4
const/4 v1, 0x2
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fC()I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_b
.end method
.method public final fD()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fD()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fE()I
.registers 4
const/4 v1, 0x2
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fE()I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_b
.end method
.method public final fF()I
.registers 4
const/4 v1, 0x2
:try_start_1
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fF()I
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
move-result v0
:goto_b
return v0
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v2, "service died"
invoke-static {v0, v2}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_b
.end method
.method public final fH()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->isConnected()Z
move-result v0
if-eqz v0, :cond_f
:try_start_6
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fH()V
:goto_f
:cond_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public final fn()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fn()Ljava/lang/String;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fo()Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fo()Ljava/lang/String;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fp()Lcom/google/android/gms/games/Player;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->bm()V
monitor-enter p0
:try_start_4
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gx:Lcom/google/android/gms/games/PlayerEntity;
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_3f
if-nez v0, :cond_2d
:try_start_8
new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fI()Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_17
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_36
invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I
move-result v0
if-lez v0, :cond_2a
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
iput-object v0, p0, Lcom/google/android/gms/internal/fx;->Gx:Lcom/google/android/gms/games/PlayerEntity;
:cond_2a
:try_start_2a
:try_end_2a
.catchall {:try_start_17 .. :try_end_2a} :catchall_31
invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->close()V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_36
:goto_2d
:try_start_2d
:cond_2d
monitor-exit p0
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_3f
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gx:Lcom/google/android/gms/games/PlayerEntity;
return-object v0
:catchall_31
move-exception v0
:try_start_32
invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->close()V
throw v0
:try_end_36
.catchall {:try_start_32 .. :try_end_36} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_36
:catch_36
move-exception v0
:try_start_37
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3e
.catchall {:try_start_37 .. :try_end_3e} :catchall_3f
goto :goto_2d
:catchall_3f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final fq()Lcom/google/android/gms/games/Game;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->bm()V
monitor-enter p0
:try_start_4
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gy:Lcom/google/android/gms/games/GameEntity;
:try_end_6
.catchall {:try_start_4 .. :try_end_6} :catchall_3f
if-nez v0, :cond_2d
:try_start_8
new-instance v1, Lcom/google/android/gms/games/GameBuffer;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fK()Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:try_start_17
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_36
invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I
move-result v0
if-lez v0, :cond_2a
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/GameEntity;
iput-object v0, p0, Lcom/google/android/gms/internal/fx;->Gy:Lcom/google/android/gms/games/GameEntity;
:cond_2a
:try_start_2a
:try_end_2a
.catchall {:try_start_17 .. :try_end_2a} :catchall_31
invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->close()V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_36
:goto_2d
:try_start_2d
:cond_2d
monitor-exit p0
:try_end_2e
.catchall {:try_start_2d .. :try_end_2e} :catchall_3f
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gy:Lcom/google/android/gms/games/GameEntity;
return-object v0
:catchall_31
move-exception v0
:try_start_32
invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->close()V
throw v0
:try_end_36
.catchall {:try_start_32 .. :try_end_36} :catchall_3f
.catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_36
:catch_36
move-exception v0
:try_start_37
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3e
.catchall {:try_start_37 .. :try_end_3e} :catchall_3f
goto :goto_2d
:catchall_3f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final fr()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fr()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fs()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fs()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final ft()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->ft()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fu()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fu()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fv()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-wide v1, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gb;->o(J)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public final fw()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-wide v1, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gb;->p(J)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public final fx()V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
iget-wide v1, p0, Lcom/google/android/gms/internal/fx;->GE:J
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gb;->q(J)V
:goto_b
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
.end method
.method public final fy()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fy()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final fz()Landroid/content/Intent;
.registers 3
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0}, Lcom/google/android/gms/internal/gb;->fz()Landroid/content/Intent;
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_a
.end method
.method public final g(Lcom/google/android/gms/common/api/a$c;)V
.registers 4
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$j;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$j;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gb;->d(Lcom/google/android/gms/internal/ga;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final g(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bg;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bg;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->n(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final h(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
new-instance v1, Lcom/google/android/gms/internal/fx$bm;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fx$bm;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/common/api/a$c;)V
invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gb;->p(Lcom/google/android/gms/internal/ga;Ljava/lang/String;)V
:try_end_e
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f
:goto_e
return-void
:catch_f
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
.end method
.method public final i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
.registers 5
if-eqz p2, :cond_8
invoke-static {p2}, Lcom/google/android/gms/games/multiplayer/ParticipantUtils;->aE(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Bad participant ID"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gw:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
if-eqz v0, :cond_20
invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->isClosed()Z
move-result v1
if-eqz v1, :cond_24
:cond_20
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fx;->aw(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
move-result-object v0
:cond_24
return-object v0
.end method
.method public final l(Ljava/lang/String;I)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gb;->l(Ljava/lang/String;I)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public final m(Ljava/lang/String;I)V
.registers 5
:try_start_0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fx;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gb;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gb;->m(Ljava/lang/String;I)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
const-string v0, "GamesClientImpl"
const-string v1, "service died"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/fz;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method public final onConnected(Landroid/os/Bundle;)V
.registers 3
iget-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GA:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/fx;->Gz:Lcom/google/android/gms/internal/gd;
invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->fN()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GA:Z
:cond_c
return-void
.end method
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->GA:Z
return-void
.end method
.method public final onConnectionSuspended(I)V
.registers 2
return-void
.end method
.method protected final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx;->H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;
move-result-object v0
return-object v0
.end method