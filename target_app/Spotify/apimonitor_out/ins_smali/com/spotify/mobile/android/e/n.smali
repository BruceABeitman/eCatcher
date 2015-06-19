.class public Lcom/spotify/mobile/android/e/n;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private b:Lcom/spotify/mobile/android/service/SpotifyService;
.field private c:Landroid/content/BroadcastReceiver;
.field private d:Lcom/spotify/mobile/android/service/managers/d;
.field private e:Lcom/spotify/mobile/android/e/p;
.field private f:Landroid/media/AudioManager;
.field private g:Landroid/net/wifi/WifiManager$WifiLock;
.field private h:Lcom/spotify/mobile/android/service/w;
.field private i:Landroid/os/PowerManager$WakeLock;
.field private j:Lcom/spotify/mobile/android/service/aj;
.field private k:Lcom/spotify/mobile/android/service/ai;
.field private l:Lcom/spotify/mobile/android/service/managers/ConnectManager;
.field private final m:Lcom/spotify/mobile/android/service/managers/f;
.field private n:Lcom/spotify/mobile/android/ui/actions/a;
.field private o:Z
.field private p:Lcom/spotify/mobile/android/service/c/b;
.field private q:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/spotify/mobile/android/e/n;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/e/n;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/service/managers/d;Lcom/spotify/mobile/android/e/p;Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/service/aj;Lcom/spotify/mobile/android/service/ai;Lcom/spotify/mobile/android/service/managers/ConnectManager;Lcom/spotify/mobile/android/service/managers/f;)V
.registers 26
invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V
const-class v2, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v2
check-cast v2, Lcom/spotify/mobile/android/ui/actions/a;
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/mobile/android/e/n;->n:Lcom/spotify/mobile/android/ui/actions/a;
const/4 v2, 0x0
move-object/from16 v0, p0
iput-boolean v2, v0, Lcom/spotify/mobile/android/e/n;->o:Z
move-object/from16 v0, p1
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/SpotifyService;->d()Landroid/os/Handler;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/mobile/android/e/n;->q:Landroid/os/Handler;
new-instance v2, Lcom/spotify/mobile/android/service/c/b;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/service/c/b;-><init>(Landroid/app/Service;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/mobile/android/e/n;->p:Lcom/spotify/mobile/android/service/c/b;
move-object/from16 v0, p2
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->d:Lcom/spotify/mobile/android/service/managers/d;
move-object/from16 v0, p3
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
move-object/from16 v0, p5
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->j:Lcom/spotify/mobile/android/service/aj;
move-object/from16 v0, p6
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->k:Lcom/spotify/mobile/android/service/ai;
move-object/from16 v0, p7
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->l:Lcom/spotify/mobile/android/service/managers/ConnectManager;
move-object/from16 v0, p8
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/mobile/android/e/n;->m:Lcom/spotify/mobile/android/service/managers/f;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
const-string v3, "audio"
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/service/SpotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/media/AudioManager;
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/mobile/android/e/n;->f:Landroid/media/AudioManager;
invoke-virtual/range {p4 .. p4}, Lcom/spotify/mobile/android/e/m;->b()Lcom/spotify/mobile/android/service/w;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/mobile/android/e/n;->h:Lcom/spotify/mobile/android/service/w;
new-instance v2, Lcom/spotify/mobile/android/e/n$1;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/spotify/mobile/android/e/n$1;-><init>(Lcom/spotify/mobile/android/e/n;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/mobile/android/e/n;->c:Landroid/content/BroadcastReceiver;
new-instance v2, Lcom/spotify/mobile/android/e/n$8;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/spotify/mobile/android/e/n$8;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v3, Lcom/spotify/mobile/android/e/n$9;
move-object/from16 v0, p0
invoke-direct {v3, v0}, Lcom/spotify/mobile/android/e/n$9;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v4, Lcom/spotify/mobile/android/e/n$10;
move-object/from16 v0, p0
move-object/from16 v1, p3
invoke-direct {v4, v0, v1}, Lcom/spotify/mobile/android/e/n$10;-><init>(Lcom/spotify/mobile/android/e/n;Lcom/spotify/mobile/android/e/p;)V
new-instance v5, Lcom/spotify/mobile/android/e/n$11;
move-object/from16 v0, p0
move-object/from16 v1, p3
invoke-direct {v5, v0, v1}, Lcom/spotify/mobile/android/e/n$11;-><init>(Lcom/spotify/mobile/android/e/n;Lcom/spotify/mobile/android/e/p;)V
new-instance v6, Lcom/spotify/mobile/android/e/n$12;
move-object/from16 v0, p0
invoke-direct {v6, v0}, Lcom/spotify/mobile/android/e/n$12;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v7, Lcom/spotify/mobile/android/e/n$13;
move-object/from16 v0, p0
invoke-direct {v7, v0}, Lcom/spotify/mobile/android/e/n$13;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v8, Lcom/spotify/mobile/android/e/n$14;
move-object/from16 v0, p0
invoke-direct {v8, v0}, Lcom/spotify/mobile/android/e/n$14;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v9, Lcom/spotify/mobile/android/e/n$15;
move-object/from16 v0, p0
invoke-direct {v9, v0}, Lcom/spotify/mobile/android/e/n$15;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v10, Lcom/spotify/mobile/android/e/n$2;
move-object/from16 v0, p0
invoke-direct {v10, v0}, Lcom/spotify/mobile/android/e/n$2;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v11, Lcom/spotify/mobile/android/e/n$3;
move-object/from16 v0, p0
invoke-direct {v11, v0}, Lcom/spotify/mobile/android/e/n$3;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v12, Lcom/spotify/mobile/android/e/n$4;
move-object/from16 v0, p0
invoke-direct {v12, v0}, Lcom/spotify/mobile/android/e/n$4;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v13, Lcom/spotify/mobile/android/e/n$5;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Lcom/spotify/mobile/android/e/n$5;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v14, Lcom/spotify/mobile/android/e/n$6;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Lcom/spotify/mobile/android/e/n$6;-><init>(Lcom/spotify/mobile/android/e/n;)V
new-instance v15, Lcom/spotify/mobile/android/e/n$7;
move-object/from16 v0, p0
invoke-direct {v15, v0}, Lcom/spotify/mobile/android/e/n$7;-><init>(Lcom/spotify/mobile/android/e/n;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Lcom/spotify/mobile/android/e/p;->p()Lcom/spotify/mobile/android/e/d;
move-result-object v16
move-object/from16 v0, v16
invoke-virtual {v0, v14}, Lcom/spotify/mobile/android/e/d;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v14}, Lcom/spotify/mobile/android/e/p;->o()Lcom/spotify/mobile/android/e/f;
move-result-object v14
invoke-virtual {v14, v13}, Lcom/spotify/mobile/android/e/f;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v13}, Lcom/spotify/mobile/android/e/p;->j()Lcom/spotify/mobile/android/e/l;
move-result-object v13
invoke-virtual {v13, v2}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->b()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v5}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->e()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v6}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->f()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v7}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->g()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v8}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->h()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v9}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->k()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v10}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->l()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v11}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v12}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->n()Lcom/spotify/mobile/android/e/l;
move-result-object v2
invoke-virtual {v2, v4}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
invoke-virtual {v2}, Lcom/spotify/mobile/android/e/p;->r()Lcom/spotify/mobile/android/e/s;
move-result-object v2
invoke-virtual {v2, v15}, Lcom/spotify/mobile/android/e/s;->a(Lcom/spotify/mobile/android/e/o;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/n;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n;->g:Landroid/net/wifi/WifiManager$WifiLock;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/n;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n;->i:Landroid/os/PowerManager$WakeLock;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->e:Lcom/spotify/mobile/android/e/p;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/n;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/e/n;->o:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->d:Lcom/spotify/mobile/android/service/managers/d;
return-object v0
.end method
.method static synthetic b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/e/n;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->l:Lcom/spotify/mobile/android/service/managers/ConnectManager;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/w;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->h:Lcom/spotify/mobile/android/service/w;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/e/n;)Landroid/content/BroadcastReceiver;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->c:Landroid/content/BroadcastReceiver;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/SpotifyService;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/e/n;)V
.registers 4
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
const-class v2, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/e/n;->b:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method static synthetic h(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->n:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/e/n;)Landroid/media/AudioManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->f:Landroid/media/AudioManager;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/e/n;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/e/n;->o:Z
return v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->m:Lcom/spotify/mobile/android/service/managers/f;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/e/n;)Landroid/net/wifi/WifiManager$WifiLock;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->g:Landroid/net/wifi/WifiManager$WifiLock;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/aj;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->j:Lcom/spotify/mobile/android/service/aj;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/ai;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->k:Lcom/spotify/mobile/android/service/ai;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/c/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->p:Lcom/spotify/mobile/android/service/c/b;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/e/n;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->q:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/e/n;)Landroid/os/PowerManager$WakeLock;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->i:Landroid/os/PowerManager$WakeLock;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/n;->h:Lcom/spotify/mobile/android/service/w;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/w;->e()V
return-void
.end method