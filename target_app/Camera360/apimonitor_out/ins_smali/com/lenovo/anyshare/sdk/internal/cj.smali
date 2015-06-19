.class public Lcom/lenovo/anyshare/sdk/internal/cj;
.super Lcom/lenovo/anyshare/sdk/internal/ca;
.source "WifiNetworkManager.java"
.field private f:Lcom/lenovo/anyshare/sdk/internal/cc;
.field private final g:Lcom/lenovo/anyshare/sdk/internal/ci;
.field private h:Z
.field private i:Z
.field private j:Ljava/util/Set;
.field private k:Lcom/lenovo/anyshare/sdk/internal/ci$d;
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cb;Lcom/lenovo/tonesdk/IToneSender;Lcom/lenovo/tonesdk/IToneReceiver;Ljava/lang/String;IZ)V
.registers 11
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/anyshare/sdk/internal/ca;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cb;Lcom/lenovo/tonesdk/IToneSender;Lcom/lenovo/tonesdk/IToneReceiver;)V
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->h:Z
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->i:Z
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->j:Ljava/util/Set;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cj$1;
invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/cj$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/cj;)V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->k:Lcom/lenovo/anyshare/sdk/internal/ci$d;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cj$a;
invoke-direct {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/cj;Landroid/content/Context;)V
invoke-virtual {v0, p5, p6}, Lcom/lenovo/anyshare/sdk/internal/cj$a;->setUser(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->b:Lcom/lenovo/network/base/Device;
iput-boolean p7, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->h:Z
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-direct {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/ci;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->b:Lcom/lenovo/network/base/Device;
invoke-virtual {v2}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->k:Lcom/lenovo/anyshare/sdk/internal/ci$d;
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cj;)Lcom/lenovo/network/base/Device;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->c:Lcom/lenovo/network/base/Device;
return-object v0
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cd;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cj;Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->c(Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/cj;Ljava/util/List;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Ljava/util/List;)V
return-void
.end method
.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cd;)V
return-void
.end method
.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/cj;Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
return-void
.end method
.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/cj;)Z
.registers 2
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->i()Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->j:Ljava/util/Set;
return-object v0
.end method
.method static synthetic d(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->d:Ljava/util/List;
return-object v0
.end method
.method static synthetic e(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->d:Ljava/util/List;
return-object v0
.end method
.method static synthetic f(Lcom/lenovo/anyshare/sdk/internal/cj;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->e:Ljava/lang/String;
return-object v0
.end method
.method static synthetic g(Lcom/lenovo/anyshare/sdk/internal/cj;)V
.registers 1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->h()V
return-void
.end method
.method static synthetic h(Lcom/lenovo/anyshare/sdk/internal/cj;)V
.registers 1
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->j()V
return-void
.end method
.method static synthetic i(Lcom/lenovo/anyshare/sdk/internal/cj;)Lcom/lenovo/anyshare/sdk/internal/ci;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
return-object v0
.end method
.method static synthetic j(Lcom/lenovo/anyshare/sdk/internal/cj;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
return-object v0
.end method
.method private w()V
.registers 3
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->h:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ce;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ce;->a(Landroid/content/Context;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->i:Z
goto :goto_4
.end method
.method private x()V
.registers 3
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->i:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->i:Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ce;->a(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ce;->a(Landroid/content/Context;Z)Z
goto :goto_4
.end method
.method protected final a(Lcom/lenovo/anyshare/sdk/internal/bz$a;Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
.registers 6
const/4 v2, 0x0
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_52
:goto_c
:pswitch_c
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cj$2;->a:[I
invoke-virtual {p2}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_5e
:goto_17
return-void
:pswitch_18
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->q()V
goto :goto_c
:pswitch_1c
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
invoke-virtual {p0, v0, v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/anyshare/sdk/internal/cd;Z)V
invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Z)V
goto :goto_c
:pswitch_25
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->x()V
invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Z)V
invoke-virtual {p0, v2}, Lcom/lenovo/anyshare/sdk/internal/cj;->f(Z)V
goto :goto_c
:pswitch_2f
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->r()V
goto :goto_17
:pswitch_33
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->s()V
goto :goto_17
:pswitch_37
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->t()V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->l()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Z)V
goto :goto_17
:pswitch_42
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->w()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->f(Z)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->l()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Z)V
goto :goto_17
nop
:pswitch_data_5e
.packed-switch 0x1
:pswitch_2f
:pswitch_33
:pswitch_37
:pswitch_42
.end packed-switch
:pswitch_data_52
.packed-switch 0x1
:pswitch_18
:pswitch_c
:pswitch_1c
:pswitch_25
.end packed-switch
.end method
.method protected a(Lcom/lenovo/network/base/Device;Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
.registers 15
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->m()Lcom/lenovo/anyshare/sdk/internal/ca$a;
move-result-object v0
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
move-result-object v1
const-string/jumbo v7, "WifiNetworkManager"
const-string/jumbo v8, "doConnect(%s, %s)"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object p1, v9, v10
const/4 v10, 0x1
aput-object p2, v9, v10
invoke-static {v7, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
const-string/jumbo v7, "WifiNetworkManager"
const-string/jumbo v8, "connectMode=%s, connectState=%s, mRemoteDevice=%s"
const/4 v9, 0x3
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object v0, v9, v10
const/4 v10, 0x1
aput-object v1, v9, v10
const/4 v10, 0x2
iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->c:Lcom/lenovo/network/base/Device;
aput-object v11, v9, v10
invoke-static {v7, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->c:Lcom/lenovo/network/base/Device;
if-eqz v7, :cond_61
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->c:Lcom/lenovo/network/base/Device;
invoke-virtual {v7}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v7
invoke-virtual {p1}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_61
const/4 v5, 0x1
:goto_46
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v0, v7, :cond_63
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-eq p2, v7, :cond_63
const-string/jumbo v7, "WifiNetworkManager"
const-string/jumbo v8, "doConnect(): Manually connected, ignore mode: current mode[%s] -> target mode[%s]"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object v0, v9, v10
const/4 v10, 0x1
aput-object p2, v9, v10
invoke-static {v7, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
:goto_60
return-void
:cond_61
const/4 v5, 0x0
goto :goto_46
:cond_63
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne v0, v7, :cond_75
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->c:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne p2, v7, :cond_75
const-string/jumbo v7, "WifiNetworkManager"
const-string/jumbo v8, "doConnect(): Tone connected, ignore auto connect."
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_60
:cond_75
invoke-virtual {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$a;)V
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$b;->d:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-ne v1, v7, :cond_a2
if-eqz v5, :cond_a2
const-string/jumbo v7, "WifiNetworkManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "doConnect(): already manually connected, [ignore] connected to "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
invoke-virtual {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cd;)V
const/4 v7, 0x1
invoke-virtual {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cj;->d(Z)V
goto :goto_60
:cond_a2
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->p()Z
move-result v7
if-eqz v7, :cond_c9
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-eq p2, v7, :cond_c9
if-eqz v5, :cond_c9
const-string/jumbo v7, "WifiNetworkManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "doConnect(): in connecting state, [ignore] connecting to "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_60
:cond_c9
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
if-ne v1, v7, :cond_149
const/4 v2, 0x1
:goto_ce
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-virtual {v7}, Lcom/lenovo/anyshare/sdk/internal/ci;->d()Lcom/lenovo/anyshare/sdk/internal/cd;
move-result-object v7
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
if-ne v7, v8, :cond_14b
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-virtual {v7}, Lcom/lenovo/anyshare/sdk/internal/ci;->e()Lcom/lenovo/anyshare/sdk/internal/ci$a;
move-result-object v7
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;
if-ne v7, v8, :cond_14b
const/4 v3, 0x1
:goto_e3
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-eq p2, v7, :cond_eb
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->b:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne p2, v7, :cond_14d
:cond_eb
const/4 v4, 0x1
:goto_ec
const-string/jumbo v7, "WifiNetworkManager"
const-string/jumbo v8, "isSameDevice=%b, isLogicConnected=%b, isLowLayerConnected=%b, isNotAutoMode=%b"
const/4 v9, 0x4
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x2
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x3
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v7, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v2, :cond_17c
if-eqz v3, :cond_17c
if-eqz v5, :cond_17c
if-eqz v4, :cond_17c
const-string/jumbo v7, "WifiNetworkManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "doConnect(): already connected "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne p2, v7, :cond_14f
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$b;->d:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
:goto_13f
:cond_13f
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;
invoke-virtual {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/cd;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->k()V
goto/16 :goto_60
:cond_149
const/4 v2, 0x0
goto :goto_ce
:cond_14b
const/4 v3, 0x0
goto :goto_e3
:cond_14d
const/4 v4, 0x0
goto :goto_ec
:cond_14f
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$b;->b:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->i()Z
move-result v7
if-eqz v7, :cond_13f
invoke-virtual {p1}, Lcom/lenovo/network/base/Device;->getNickname()Ljava/lang/String;
move-result-object v7
invoke-virtual {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cj;->c(Ljava/lang/String;)V
const-string/jumbo v7, "WifiNetworkManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "doConnect(): ap is already connected, just notify: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13f
:cond_17c
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->c:Lcom/lenovo/network/base/Device;
sget-object v7, Lcom/lenovo/anyshare/sdk/internal/ca$a;->a:Lcom/lenovo/anyshare/sdk/internal/ca$a;
if-ne p2, v7, :cond_1b9
sget-object v6, Lcom/lenovo/anyshare/sdk/internal/ca$b;->c:Lcom/lenovo/anyshare/sdk/internal/ca$b;
:goto_184
invoke-virtual {p0, v6}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-virtual {p1}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/ci;->b(Ljava/lang/String;)Z
const-string/jumbo v7, "WifiNetworkManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "mNetworkMaster.connectTo("
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->c:Lcom/lenovo/network/base/Device;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " : "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_60
:cond_1b9
sget-object v6, Lcom/lenovo/anyshare/sdk/internal/ca$b;->a:Lcom/lenovo/anyshare/sdk/internal/ca$b;
goto :goto_184
.end method
.method protected f(Z)V
.registers 8
const/4 v5, 0x1
const-string/jumbo v0, "WifiNetworkManager"
const-string/jumbo v1, "enableServer(%b)"
new-array v2, v5, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz p1, :cond_1a
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ca$b;->f:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
:cond_1a
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->f:Lcom/lenovo/anyshare/sdk/internal/cc;
iput-boolean v5, v0, Lcom/lenovo/anyshare/sdk/internal/cc;->d:Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Z)V
return-void
.end method
.method protected k()V
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ca$b;->d:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->n()Lcom/lenovo/anyshare/sdk/internal/ca$b;
move-result-object v1
if-ne v0, v1, :cond_e
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->b(Z)V
:cond_e
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/ca;->k()V
return-void
.end method
.method protected q()V
.registers 3
const-string/jumbo v0, "WifiNetworkManager"
const-string/jumbo v1, "saveNetworkState()"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cc;->a(Landroid/content/Context;)Lcom/lenovo/anyshare/sdk/internal/cc;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->f:Lcom/lenovo/anyshare/sdk/internal/cc;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/cc;->c(Landroid/content/Context;)V
return-void
.end method
.method protected r()V
.registers 3
const-string/jumbo v0, "WifiNetworkManager"
const-string/jumbo v1, "restoreNetworkState()"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->k:Lcom/lenovo/anyshare/sdk/internal/ci$d;
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/content/Context;)Z
:cond_22
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->f:Lcom/lenovo/anyshare/sdk/internal/cc;
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cc;->a(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cc;)V
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->x()V
return-void
.end method
.method protected s()V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Landroid/content/Context;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->f:Lcom/lenovo/anyshare/sdk/internal/cc;
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cc;->b(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cc;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/content/Context;)Z
:cond_17
return-void
.end method
.method protected t()V
.registers 3
const-string/jumbo v0, "WifiNetworkManager"
const-string/jumbo v1, "enableClient"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ca$a;->c:Lcom/lenovo/anyshare/sdk/internal/ca$a;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ca$b;->f:Lcom/lenovo/anyshare/sdk/internal/ca$b;
invoke-virtual {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/ca$a;Lcom/lenovo/anyshare/sdk/internal/ca$b;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->d:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->g:Lcom/lenovo/anyshare/sdk/internal/ci;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->b(Z)V
return-void
.end method
.method public u()Z
.registers 3
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cj;->o()Lcom/lenovo/anyshare/sdk/internal/cd;
move-result-object v0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public v()V
.registers 4
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cj;->k:Lcom/lenovo/anyshare/sdk/internal/ci$d;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ci$d;->a(ZLjava/lang/String;)V
return-void
.end method