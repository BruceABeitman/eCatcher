.class public final Lcom/spotify/mobile/android/spotlets/collection/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lcom/spotify/mobile/android/util/cz;
.field public static final b:Lcom/spotify/mobile/android/util/cz;
.field public static final c:Lcom/spotify/mobile/android/util/cz;
.field public static final d:Lcom/spotify/mobile/android/util/cz;
.field private final e:Ljava/util/List;
.field private final f:Lcom/spotify/mobile/android/util/av;
.field private final g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private final h:Ljava/lang/String;
.field private final i:Lcom/spotify/mobile/android/util/cx;
.field private final j:Lcom/spotify/mobile/android/util/cz;
.field private final k:Landroid/content/Context;
.field private l:Lcom/spotify/mobile/android/spotlets/collection/b/d;
.field private m:Landroid/content/BroadcastReceiver;
.field private n:Lcom/spotify/mobile/android/util/aw;
.method static constructor <clinit>()V
.registers 1
const-string v0, "albums_show_only_offlined_content"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "artists_show_only_offlined_content"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b:Lcom/spotify/mobile/android/util/cz;
const-string v0, "tracks_show_only_offlined_content"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c:Lcom/spotify/mobile/android/util/cz;
const-string v0, "playlists_show_only_offlined_content"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;ZLcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/b/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/b/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->m:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/b/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->n:Lcom/spotify/mobile/android/util/aw;
new-instance v0, Lcom/spotify/mobile/android/util/av;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->n:Lcom/spotify/mobile/android/util/aw;
const v2, 0x7f0f0218
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/av;-><init>(Lcom/spotify/mobile/android/util/aw;I)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f:Lcom/spotify/mobile/android/util/av;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->e:Ljava/util/List;
if-eqz p4, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->e:Ljava/util/List;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f:Lcom/spotify/mobile/android/util/av;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2d
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->k:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->h:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->i:Lcom/spotify/mobile/android/util/cx;
iput-object p6, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->j:Lcom/spotify/mobile/android/util/cz;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f:Lcom/spotify/mobile/android/util/av;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->i:Lcom/spotify/mobile/android/util/cx;
const/4 v2, 0x0
invoke-virtual {v1, p6, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/av;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->m:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.spotify.mobile.android.spotlets.collection.util.OFFLINE_MODE_CHANGED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/cz;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->j:Lcom/spotify/mobile/android/util/cz;
return-object v0
.end method
.method public static a(Landroid/content/Context;Z)V
.registers 4
invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.spotlets.collection.util.OFFLINE_MODE_CHANGED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/cx;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->i:Lcom/spotify/mobile/android/util/cx;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/av;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f:Lcom/spotify/mobile/android/util/av;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/spotlets/collection/b/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->l:Lcom/spotify/mobile/android/spotlets/collection/b/d;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->h:Ljava/lang/String;
return-object v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->k:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->m:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final a(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->i:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->j:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f:Lcom/spotify/mobile/android/util/av;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/av;->a(Z)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->h:Ljava/lang/String;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bB:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v1, v2, v3, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->l:Lcom/spotify/mobile/android/spotlets/collection/b/d;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->l:Lcom/spotify/mobile/android/spotlets/collection/b/d;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/d;->a()V
:cond_31
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/collection/b/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->l:Lcom/spotify/mobile/android/spotlets/collection/b/d;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/av;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->e:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->e:Ljava/util/List;
return-object v0
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f:Lcom/spotify/mobile/android/util/av;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->a()Z
move-result v0
return v0
.end method