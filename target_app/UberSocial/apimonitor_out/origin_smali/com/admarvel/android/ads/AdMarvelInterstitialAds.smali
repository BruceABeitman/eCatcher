.class public Lcom/admarvel/android/ads/AdMarvelInterstitialAds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEFAULT_IMAGE_WEB_VIEW_CSS:Ljava/lang/String;

.field private static DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

.field private static DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

.field private static DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

.field private static DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

.field protected static final GUID:Ljava/lang/String;

.field private static IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT:Ljava/lang/String;

.field private static ORMMA_WEB_VIEW_CSS:Ljava/lang/String;

.field private static checkForUpdatedPackage:Lcom/admarvel/android/b/c;

.field private static enableClickRedirect:Z

.field private static enableNetworkActivity:Z

.field public static enableOfflineSDK:Z

.field private static final listener:Lcom/admarvel/android/ads/i;


# instance fields
.field private final admarvelInterstitialAds:Ljava/util/HashMap;

.field private final backgroundColor:I

.field contextReference:Ljava/lang/ref/WeakReference;

.field private enableAutoScaling:Z

.field private final handler:Landroid/os/Handler;

.field private final internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

.field private final lockTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private optionalFlags:Ljava/util/Map;

.field private final textBackgroundColor:I

.field private final textBorderColor:I

.field private final textFontColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    const-string v0, "<style>#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S{display:table;height:100%;width:100%;margin:0;padding:0;background-color:transparent;}#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S>div{display:table-cell;vertical-align:middle;text-align:center;}</style>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_CSS:Ljava/lang/String;

    const-string v0, "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type=\'text/javascript\' src=\'http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js\'></script>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->ORMMA_WEB_VIEW_CSS:Ljava/lang/String;

    const-string v0, "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    const-string v0, "<html><head>%s</head><body id=\"u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S\"><div>%s</div></body></html>"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    const-string v0, "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />"

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    new-instance v0, Lcom/admarvel/android/ads/i;

    invoke-direct {v0}, Lcom/admarvel/android/ads/i;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableClickRedirect:Z

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->GUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 11

    const/4 v4, 0x0

    const/high16 v3, -0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->lockTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;-><init>(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    if-nez p2, :cond_3b

    iput v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    :goto_32
    if-nez p3, :cond_40

    iput v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBackgroundColor:I

    :goto_36
    iput p4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textFontColor:I

    iput p5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBorderColor:I

    return-void

    :cond_3b
    or-int v0, v3, p2

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    goto :goto_32

    :cond_40
    or-int v0, v3, p3

    iput v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBackgroundColor:I

    goto :goto_36
.end method

.method static synthetic access$000()Lcom/admarvel/android/b/c;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    return-object v0
.end method

.method static synthetic access$002(Lcom/admarvel/android/b/c;)Lcom/admarvel/android/b/c;
    .registers 1

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    return-object p0
.end method

.method static synthetic access$100(Lcom/admarvel/android/ads/AdMarvelInterstitialAds;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Lcom/admarvel/android/ads/i;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    return-object v0
.end method

.method public static declared-synchronized disableNetworkActivity()V
    .registers 3

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private displayPendingAdMarvelAd(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 9

    const/high16 v5, 0x1000

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_73

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_73

    sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-eqz v2, :cond_74

    new-instance v2, Lcom/admarvel/android/b/a;

    invoke-direct {v2}, Lcom/admarvel/android/b/a;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p2, v1, v4}, Lcom/admarvel/android/b/a;->a(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;Landroid/os/Handler;)V

    :cond_43
    :goto_43
    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_83

    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "html"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "GUID"

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_73
    :goto_73
    return-void

    :cond_74
    sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    if-nez v2, :cond_43

    new-instance v2, Lcom/admarvel/android/ads/ab;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    invoke-direct {v2, v1, v4}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, p2}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto :goto_43

    :cond_83
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "source"

    const-string v4, "campaign"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "html"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "xml"

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getXml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "backgroundcolor"

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isInterstitial"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isInterstitialClick"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "GUID"

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V

    :try_start_bf
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    const-string v3, "serialized_admarvelad"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d8} :catch_dc

    :goto_d8
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_73

    :catch_dc
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d8
.end method

.method public static declared-synchronized enableNetworkActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    const/16 v2, 0xb

    const-class v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    new-instance v0, Lcom/admarvel/android/b/c;

    invoke-direct {v0, p1, p0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v2, :cond_2e

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->run()V
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_37

    :goto_2c
    monitor-exit v1

    return-void

    :cond_2e
    :try_start_2e
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_37

    goto :goto_2c

    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3a
    :try_start_3a
    new-instance v0, Lcom/admarvel/android/b/c;

    invoke-direct {v0, p1, p0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v2, :cond_50

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->run()V

    goto :goto_2c

    :cond_50
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_37

    goto :goto_2c
.end method

.method public static getEnableClickRedirect()Z
    .registers 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableClickRedirect:Z

    return v0
.end method

.method public static getListener()Lcom/admarvel/android/ads/i;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    return-object v0
.end method

.method public static initializeOfflineSDK(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z

    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableNetworkActivity:Z

    if-eqz v1, :cond_2f

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Lcom/admarvel/android/b/c;

    invoke-direct {v1, p1, v0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_30

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$d;->run()V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->checkForUpdatedPackage:Lcom/admarvel/android/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2f
.end method

.method public static setEnableClickRedirect(Z)V
    .registers 1

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableClickRedirect:Z

    return-void
.end method

.method public static setListener(Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;)V
    .registers 2

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/i;->a(Lcom/admarvel/android/ads/AdMarvelInterstitialAds$AdMarvelInterstitialAdListener;)V

    return-void
.end method


# virtual methods
.method protected disableAdRequest(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .registers 14

    const/16 v4, 0x130

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_98

    :try_start_6
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v0, :cond_99

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duration"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_44} :catch_b5

    move-result-object v0

    :goto_45
    if-eqz v0, :cond_98

    const-string v1, "admarvel"

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    move-object v1, p3

    move-object v3, v2

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_98
    return-void

    :cond_99
    :try_start_99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_99 .. :try_end_b3} :catch_b5

    move-result-object v0

    goto :goto_45

    :catch_b5
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_45
.end method

.method public displayInterstitial(Landroid/app/Activity;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 10

    const/4 v0, 0x0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GOOGLEPLAY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_41

    :try_start_5
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_de

    move-result-object v0

    :cond_d
    :goto_d
    if-eqz v0, :cond_ba

    invoke-virtual {v0, p1, p3}, Lcom/admarvel/android/ads/AdMarvelAdapter;->displayInterstitial(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/admarvel/android/ads/ab;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, p4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$c;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, p4, v0}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$c;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    :goto_40
    return-void

    :cond_41
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->RHYTHM:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_4e

    :try_start_45
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_db

    move-result-object v0

    goto :goto_d

    :cond_4e
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->GREYSTRIPE:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_5b

    :try_start_52
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_d8

    move-result-object v0

    goto :goto_d

    :cond_5b
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->MILLENNIAL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_68

    :try_start_5f
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_66} :catch_d5

    move-result-object v0

    goto :goto_d

    :cond_68
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->AMAZON:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_75

    :try_start_6c
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_73} :catch_d2

    move-result-object v0

    goto :goto_d

    :cond_75
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADCOLONY:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_82

    :try_start_79
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_cf

    move-result-object v0

    goto :goto_d

    :cond_82
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->PULSE3D:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_90

    :try_start_86
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_cc

    move-result-object v0

    goto/16 :goto_d

    :cond_90
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->FACEBOOK:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_9e

    :try_start_94
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9b} :catch_c9

    move-result-object v0

    goto/16 :goto_d

    :cond_9e
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->INMOBI:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_ac

    :try_start_a2
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_c6

    move-result-object v0

    goto/16 :goto_d

    :cond_ac
    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->HEYZAP:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v1, :cond_d

    :try_start_b0
    const-string v1, "ADMARVELGUID"

    const-string v2, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"

    invoke-static {v1, v2}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b7} :catch_c3

    move-result-object v0

    goto/16 :goto_d

    :cond_ba
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMARVEL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    if-ne p2, v0, :cond_40

    invoke-direct {p0, p3, p4}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->displayPendingAdMarvelAd(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;)V

    goto/16 :goto_40

    :catch_c3
    move-exception v1

    goto/16 :goto_d

    :catch_c6
    move-exception v1

    goto/16 :goto_d

    :catch_c9
    move-exception v1

    goto/16 :goto_d

    :catch_cc
    move-exception v1

    goto/16 :goto_d

    :catch_cf
    move-exception v1

    goto/16 :goto_d

    :catch_d2
    move-exception v1

    goto/16 :goto_d

    :catch_d5
    move-exception v1

    goto/16 :goto_d

    :catch_d8
    move-exception v1

    goto/16 :goto_d

    :catch_db
    move-exception v1

    goto/16 :goto_d

    :catch_de
    move-exception v1

    goto/16 :goto_d
.end method

.method public getAdMarvelBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    return v0
.end method

.method public getTextBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBackgroundColor:I

    return v0
.end method

.method public getTextBorderColor()I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textBorderColor:I

    return v0
.end method

.method public getTextFontColor()I
    .registers 2

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textFontColor:I

    return v0
.end method

.method public isAutoScalingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    return v0
.end method

.method public requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->contextReference:Ljava/lang/ref/WeakReference;

    const-string v1, "admarvel"

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_ad

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    if-eqz v1, :cond_c9

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c9

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_c9

    const-string v1, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x130

    const/16 v2, 0x130

    invoke-static {v2}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v6

    const/4 v8, 0x0

    const-string v10, ""

    move-object/from16 v2, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v10}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :goto_ac
    return-void

    :cond_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duration"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_c9
    new-instance v1, Lcom/admarvel/android/a/a;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/admarvel/android/a/a;->a()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->lockTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x7d0

    cmp-long v1, v1, v5

    if-lez v1, :cond_150

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/i;->a()V

    const/4 v5, 0x0

    if-eqz p2, :cond_103

    const-string v1, "UNIQUE_ID"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    :cond_103
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_132

    iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, ""

    iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    move-object/from16 v2, p2

    move-object v8, p0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v12}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$b;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_127} :catch_128

    goto :goto_ac

    :catch_128
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto/16 :goto_ac

    :cond_132
    :try_start_132
    iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$a;

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, ""

    iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->handler:Landroid/os/Handler;

    move-object/from16 v2, p2

    move-object v8, p0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v12}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$a;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelInterstitialAds;ILjava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ac

    :cond_150
    const-string v1, "requestNewAd: AD REQUEST PENDING, IGNORING REQUEST"

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x130

    const/16 v1, 0x130

    invoke-static {v1}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v10

    const/4 v12, 0x0

    const-string v14, ""

    move-object/from16 v6, p1

    move-object v11, v4

    move-object/from16 v13, p2

    invoke-virtual/range {v5 .. v14}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_16c} :catch_128

    goto/16 :goto_ac
.end method

.method public requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->requestNewInterstitialAd(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected requestPendingAdMarvelAd(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
    .registers 13

    const/16 v4, 0x130

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v0, ""

    if-nez p1, :cond_21

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    if-eqz v0, :cond_20

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMARVEL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    const-string v3, ""

    invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    const-string v6, ""

    const/4 v8, 0x0

    const-string v9, ""

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->CUSTOM:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_93

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXhtml()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getPartnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->CUSTOM:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    if-ne v0, v1, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->admarvelInterstitialAds:Ljava/util/HashMap;

    const-string v2, "custom"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_79
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;->ADMARVEL:Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_20

    :cond_93
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->IMAGE:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_219

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_219

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v0

    if-lez v0, :cond_219

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v0

    if-lez v0, :cond_219

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_13f

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_13a

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    :goto_c6
    int-to-float v0, v0

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F

    move-result v1

    div-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device Relative Screen Width :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<a href=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" width=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\" /></a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_IMAGE_WEB_VIEW_CSS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :cond_13a
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v0

    goto :goto_c6

    :cond_13f
    if-eqz p2, :cond_1f2

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_1dd

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v0

    :goto_14b
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_1e3

    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v1

    :goto_155
    iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    if-eqz v2, :cond_1e9

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v3

    invoke-static {p2, v0, v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;II)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v4

    invoke-static {p2, v0, v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;II)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_177
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"><img src=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" width=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" height=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" /></a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :cond_1dd
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_14b

    :cond_1e3
    invoke-static {p2}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_155

    :cond_1e9
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getImageHeight()I

    move-result v0

    goto :goto_177

    :cond_1f2
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_VIEWPORT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :cond_219
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXhtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORMMA_API"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_239

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->ORMMA_WEB_VIEW_CSS:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    :cond_239
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_HTML_FORMAT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->DEFAULT_WEB_VIEW_CSS:Ljava/lang/String;

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXHTML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d
.end method

.method requestPendingAdapterAd(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
    .registers 16

    const/16 v10, 0x130

    :try_start_2
    const-string v0, "ADMARVELGUID"

    invoke-static {v0, p3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    invoke-virtual {v1, p2}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    :cond_11
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->internalAdMarvelInterstitialAdapterListener:Lcom/admarvel/android/ads/AdMarvelInterstitialAds$e;

    iget v5, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->backgroundColor:I

    iget v6, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->textFontColor:I

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelAdapter;->requestIntersitialNewAd(Lcom/admarvel/android/ads/AdMarvelInterstitialAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->listener:Lcom/admarvel/android/ads/i;

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkAdNetwork()Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;

    move-result-object v2

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getPubId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v5

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I

    move-result v7

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    move-object v1, p4

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelUtils$SDKAdNetwork;Ljava/lang/String;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public setAdMarvelBackgroundColor(I)V
    .registers 2

    return-void
.end method

.method public setEnableAutoScaling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableAutoScaling:Z

    return-void
.end method

.method public setOptionalFlags(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->optionalFlags:Ljava/util/Map;

    return-void
.end method

.method public setTextBackgroundColor(I)V
    .registers 2

    return-void
.end method
