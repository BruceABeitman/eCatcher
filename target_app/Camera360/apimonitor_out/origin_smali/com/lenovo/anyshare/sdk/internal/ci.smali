.class public Lcom/lenovo/anyshare/sdk/internal/ci;
.super Ljava/lang/Object;
.source "WifiMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/ci$3;,
        Lcom/lenovo/anyshare/sdk/internal/ci$c;,
        Lcom/lenovo/anyshare/sdk/internal/ci$b;,
        Lcom/lenovo/anyshare/sdk/internal/ci$a;,
        Lcom/lenovo/anyshare/sdk/internal/ci$d;
    }
.end annotation


# static fields
.field private static final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/lenovo/anyshare/sdk/internal/cd;

.field public b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/ci$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private final g:Landroid/net/wifi/WifiManager;

.field private final h:Lcom/lenovo/anyshare/sdk/internal/cf;

.field private i:Landroid/net/wifi/WifiManager$WifiLock;

.field private j:Lcom/lenovo/anyshare/sdk/internal/ck;

.field private k:Ljava/lang/String;

.field private l:Landroid/net/wifi/WifiConfiguration;

.field private final m:Ljava/util/concurrent/ScheduledExecutorService;

.field private n:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final q:Landroid/content/BroadcastReceiver;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string/jumbo v2, "WIFI_STATE_DISABLING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string/jumbo v2, "WIFI_STATE_DISABLED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "WIFI_STATE_ENABLING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "WIFI_STATE_ENABLED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "WIFI_STATE_UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string/jumbo v2, "WIFI_AP_STATE_DISABLING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string/jumbo v2, "WIFI_AP_STATE_DISABLED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string/jumbo v2, "WIFI_AP_STATE_ENABLING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string/jumbo v2, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string/jumbo v2, "WIFI_AP_STATE_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci$a;->a:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ci$1;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/ci$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/ci;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->q:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->m:Ljava/util/concurrent/ScheduledExecutorService;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cf;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cf;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    :goto_43
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->h()V

    return-void

    :cond_47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    goto :goto_43
.end method

.method public static a(Landroid/content/Context;)V
    .registers 11

    :try_start_0
    const-string/jumbo v7, "wifi"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_54

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/cg;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const-string/jumbo v7, "WifiMaster"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "auto remove saved ap2p network: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    const/4 v4, 0x1

    goto :goto_14

    :cond_4f
    if-eqz v4, :cond_54

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v2

    const-string/jumbo v7, "WifiMaster"

    invoke-static {v7, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54
.end method

.method private a(Landroid/content/Intent;)V
    .registers 21

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->d()Lcom/lenovo/anyshare/sdk/internal/cd;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->e()Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-result-object v2

    const-string/jumbo v14, "WifiMaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", handleEvent("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v14, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_65

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->c()Z

    move-result v14

    if-eqz v14, :cond_65

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->g()Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Ljava/util/List;)V

    :cond_64
    :goto_64
    return-void

    :cond_65
    const-string/jumbo v14, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11c

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;

    if-ne v14, v7, :cond_11c

    const-string/jumbo v14, "wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Lcom/lenovo/anyshare/sdk/internal/cf$a;->a(I)I

    move-result v11

    const-string/jumbo v15, "WifiMaster"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WIFI_AP_STATE_CHANGED_ACTION state = "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xd

    if-ne v11, v14, :cond_104

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->f()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    invoke-virtual {v14}, Lcom/lenovo/anyshare/sdk/internal/cf;->d()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_f8

    const/4 v9, 0x0

    :goto_b8
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->b()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "WifiMaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ssid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", myssid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->g()Z

    move-result v14

    if-nez v14, :cond_ef

    if-eqz v9, :cond_fb

    invoke-static {v4, v9}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_fb

    :cond_ef
    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto/16 :goto_64

    :cond_f8
    iget-object v9, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_b8

    :cond_fb
    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto/16 :goto_64

    :cond_104
    const/16 v14, 0xb

    if-ne v11, v14, :cond_10c

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-eq v14, v2, :cond_110

    :cond_10c
    const/16 v14, 0xe

    if-ne v11, v14, :cond_64

    :cond_110
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->f()V

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto/16 :goto_64

    :cond_11c
    const-string/jumbo v14, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19e

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    if-ne v14, v7, :cond_19e

    const-string/jumbo v14, "previous_wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v14, "wifi_state"

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v15, "WifiMaster"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WIFI_STATE_CHANGED_ACTION > previousWifiState:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, ", wifiState:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci;->e:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    if-ne v13, v14, :cond_188

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->c:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-eq v14, v2, :cond_188

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    :cond_188
    const/4 v14, 0x1

    if-eq v13, v14, :cond_18d

    if-nez v13, :cond_64

    :cond_18d
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->c()Z

    move-result v14

    if-eqz v14, :cond_64

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/al;->c()Z

    move-result v14

    if-eqz v14, :cond_64

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->m()V

    goto/16 :goto_64

    :cond_19e
    const-string/jumbo v14, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_64

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    if-ne v14, v7, :cond_64

    const-string/jumbo v14, "networkInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    const-string/jumbo v14, "WifiMaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "NETWORK_STATE_CHANGED_ACTION > networkInfo="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", connectionState="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-static {v12}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    if-nez v3, :cond_209

    const-string/jumbo v14, "WifiMaster"

    const-string/jumbo v15, "mWifiProfile is NULL!"

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v14, v2, :cond_64

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto/16 :goto_64

    :cond_209
    const-string/jumbo v14, "WifiMaster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " / currentWifiProfile="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "WifiMaster"

    const-string/jumbo v15, "wifiInfo[NetworkId=%d, SSID=%s, IpAddress=%s]"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v14, v11, :cond_26b

    invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/ck;->c()Z

    move-result v14

    if-eqz v14, :cond_26b

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto/16 :goto_64

    :cond_26b
    sget-object v14, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v14, v11, :cond_64

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v14, v2, :cond_64

    sget-object v14, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto/16 :goto_64
.end method

.method private declared-synchronized a(Lcom/lenovo/anyshare/sdk/internal/cd;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_1b

    :try_start_2
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    if-ne v1, p1, :cond_9

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_1e

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->c:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1e

    :try_start_12
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    if-ne v1, v0, :cond_21

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->f(Z)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1b

    goto :goto_7

    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v1

    :cond_21
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;

    if-ne v1, v0, :cond_7

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->e(Z)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1b

    goto :goto_7
.end method

.method private a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v1, p1, :cond_9

    monitor-exit p0

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_34

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->d()Lcom/lenovo/anyshare/sdk/internal/cd;

    move-result-object v0

    const-string/jumbo v1, "WifiMaster"

    const-string/jumbo v2, "changeConnectionState(%s) networkStatus=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$3;->a:[I

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cd;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    goto :goto_8

    :pswitch_2c
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v1, p1, :cond_37

    invoke-direct {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/ci;->e(Z)V

    goto :goto_8

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    :cond_37
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-eq v1, p1, :cond_3f

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->a:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v1, p1, :cond_8

    :cond_3f
    invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/ci;->e(Z)V

    goto :goto_8

    :pswitch_43
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v1, p1, :cond_4b

    invoke-direct {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/ci;->f(Z)V

    goto :goto_8

    :cond_4b
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-eq v1, p1, :cond_53

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->a:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    if-ne v1, p1, :cond_8

    :cond_53
    invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/ci;->f(Z)V

    goto :goto_8

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_43
    .end packed-switch
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/ci;)V
    .registers 1

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->f()V

    return-void
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/ci;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ci$d;

    :try_start_12
    invoke-interface {v2, p1}, Lcom/lenovo/anyshare/sdk/internal/ci$d;->a(Ljava/util/List;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "WifiMaster"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_22
    return-void
.end method

.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/ci;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci;->d(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/ci;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/ci;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci;->f(Z)V

    return-void
.end method

.method static synthetic c(Lcom/lenovo/anyshare/sdk/internal/ci;)Lcom/lenovo/anyshare/sdk/internal/ck;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    return-object v0
.end method

.method private c(Z)Z
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_d
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    :cond_1d
    const-string/jumbo v1, "WifiMaster"

    const-string/jumbo v2, "enableWifi(%b) result = %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method static synthetic d(Lcom/lenovo/anyshare/sdk/internal/ci;)V
    .registers 1

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->j()V

    return-void
.end method

.method private d(Z)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/cc;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_14

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->l()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    :cond_14
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    :cond_21
    :goto_21
    const-string/jumbo v1, "WifiMaster"

    const-string/jumbo v2, "doEnableHotspot(%b) result is %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_3a
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cf;->f()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    goto :goto_21
.end method

.method private e(Z)V
    .registers 10

    if-eqz p1, :cond_29

    monitor-enter p0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->r:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_4b

    const/16 v4, 0xa

    if-le v3, v4, :cond_29

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    const-string/jumbo v6, "Hotspot10sModel"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ci$d;

    :try_start_3b
    invoke-interface {v2, p1}, Lcom/lenovo/anyshare/sdk/internal/ci$d;->a(Z)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2f

    :catch_3f
    move-exception v0

    const-string/jumbo v4, "WifiMaster"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :catchall_4b
    move-exception v4

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v4

    :cond_4e
    return-void
.end method

.method private declared-synchronized f()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->p:Ljava/util/concurrent/ScheduledFuture;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(Z)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci;->g(Z)V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/lenovo/anyshare/sdk/internal/ck;->e:Ljava/lang/String;

    :cond_d
    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ci$d;

    :try_start_1f
    invoke-interface {v2, p1, v4}, Lcom/lenovo/anyshare/sdk/internal/ci$d;->a(ZLjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_13

    :catch_23
    move-exception v0

    const-string/jumbo v5, "WifiMaster"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2f
    return-void
.end method

.method private g()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    if-nez v1, :cond_26

    const/4 v3, 0x0

    :goto_20
    if-eqz v3, :cond_11

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_26
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/cg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_2d
    return-object v4
.end method

.method private g(Z)V
    .registers 4

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1a

    const-string/jumbo v0, "WifiMaster"

    const-string/jumbo v1, "Create WifiLock."

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "HotspotClientLock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_1a
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "WifiMaster"

    const-string/jumbo v1, "Acquire WifiLock."

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string/jumbo v0, "WifiMaster"

    const-string/jumbo v1, "Release WifiLock."

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->i:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_34
.end method

.method private h()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private declared-synchronized j()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "WifiMaster"

    const-string/jumbo v1, "clearRetryConnectAp()"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->n:Ljava/util/concurrent/ScheduledFuture;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->b(Z)V

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->j()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ck;->b()V

    :cond_10
    return-void
.end method

.method private l()Landroid/net/wifi/WifiConfiguration;
    .registers 6

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cf;->b()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    invoke-virtual {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    const-string/jumbo v2, "WifiMaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHotspotConfiguration result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private m()V
    .registers 6

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ci$d;

    :try_start_12
    invoke-interface {v2}, Lcom/lenovo/anyshare/sdk/internal/ci$d;->a()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    const-string/jumbo v3, "WifiMaster"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->k()V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/ch;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ch;->a(Landroid/content/Context;)Z

    :cond_e
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->m:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->i()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public a(Z)V
    .registers 12

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_90

    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->k()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->c(Z)Z

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/cd;)V

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cf;->d()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    const-string/jumbo v2, "WifiMaster"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", apConfig.SSID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v8, :cond_66

    const-string/jumbo v0, "[NONE]"

    :goto_41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->h:Lcom/lenovo/anyshare/sdk/internal/cf;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cf;->c()I

    move-result v9

    if-eqz v8, :cond_69

    const/16 v0, 0xd

    if-ne v9, v0, :cond_69

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto :goto_4

    :cond_66
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_41

    :cond_69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->l:Landroid/net/wifi/WifiConfiguration;

    :goto_6c
    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/ci$b;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci$b;-><init>(Lcom/lenovo/anyshare/sdk/internal/ci;Z)V

    monitor-enter p0

    :try_start_72
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->f()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->r:J

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->m:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x186a0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->p:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit p0

    goto/16 :goto_4

    :catchall_8d
    move-exception v0

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_72 .. :try_end_8f} :catchall_8d

    throw v0

    :cond_90
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci$a;->a:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto :goto_6c
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->k:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b(Z)V
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_28

    :try_start_3
    invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->f()V

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/cd;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->c(Z)Z

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->o:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_26

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/ci$2;

    invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/ci$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/ci;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->m:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->o:Ljava/util/concurrent/ScheduledFuture;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3f

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->o:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_26

    const-string/jumbo v0, "WifiMaster"

    const-string/jumbo v2, "Stop Scan"

    invoke-static {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->o:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->o:Ljava/util/concurrent/ScheduledFuture;
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3f

    goto :goto_26

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 13

    const/4 v0, 0x0

    const/4 v10, 0x1

    const-string/jumbo v1, "WifiMaster"

    const-string/jumbo v2, "-- connectToAP(%s) --"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo v1, "WifiMaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not in scanned list!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return v0

    :cond_32
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->c:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    invoke-direct {p0, v10}, Lcom/lenovo/anyshare/sdk/internal/ci;->c(Z)Z

    move-result v7

    if-nez v7, :cond_46

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    goto :goto_31

    :cond_46
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_67

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/anyshare/sdk/internal/cg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/content/Context;Landroid/net/wifi/WifiInfo;)Lcom/lenovo/anyshare/sdk/internal/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/ci$a;->d:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/ci;->a(Lcom/lenovo/anyshare/sdk/internal/ci$a;)V

    move v0, v10

    goto :goto_31

    :cond_67
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->f:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/ck;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/ck;

    move-result-object v8

    if-nez v8, :cond_8a

    const-string/jumbo v1, "WifiMaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare wifi configuration failed: ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_8a
    iget v1, v8, Lcom/lenovo/anyshare/sdk/internal/ck;->b:I

    if-ltz v1, :cond_8f

    move v0, v10

    :cond_8f
    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    iput-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->j:Lcom/lenovo/anyshare/sdk/internal/ck;

    monitor-enter p0

    :try_start_95
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->n:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->n:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_9f
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->m:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/lenovo/anyshare/sdk/internal/ci$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/anyshare/sdk/internal/ci$c;-><init>(Lcom/lenovo/anyshare/sdk/internal/ci;Lcom/lenovo/anyshare/sdk/internal/ci$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->n:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit p0

    move v0, v10

    goto/16 :goto_31

    :catchall_b7
    move-exception v0

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_95 .. :try_end_b9} :catchall_b7

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/ci;->d()Lcom/lenovo/anyshare/sdk/internal/cd;

    move-result-object v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->o:Ljava/util/concurrent/ScheduledFuture;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/lenovo/anyshare/sdk/internal/cd;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->a:Lcom/lenovo/anyshare/sdk/internal/cd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/lenovo/anyshare/sdk/internal/ci$a;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci;->b:Lcom/lenovo/anyshare/sdk/internal/ci$a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
