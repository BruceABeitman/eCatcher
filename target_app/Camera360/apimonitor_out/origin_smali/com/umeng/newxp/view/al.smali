.class public Lcom/umeng/newxp/view/aL;
.super Landroid/app/Activity;
.source "WapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/aL$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "url_key"

.field public static final b:Ljava/lang/String; = "configs"

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/umeng/newxp/controller/ExchangeDataService;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/content/Context;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/String;

.field private p:Lcom/umeng/newxp/view/aU;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/view/aL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/aL;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u83b7\u53d6\u8d44\u6e90ID\u5931\u8d25:(packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    return v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aL;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/aU;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/newxp/view/aL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p2, :cond_e

    new-instance p2, Lcom/umeng/newxp/view/aU;

    invoke-direct {p2}, Lcom/umeng/newxp/view/aU;-><init>()V

    :cond_e
    const-string/jumbo v1, "configs"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sput-object p1, Lcom/umeng/newxp/view/aL;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://ex.mobmore.com/api/wap?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sdk_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&slot_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&app_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string/jumbo v2, "url_key"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_8b
    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .registers 7

    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string/jumbo v1, "setAppCacheEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/webkit/WebSettings;

    const-string/jumbo v1, "setAppCachePath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_51
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5f

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5f
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Landroid/webkit/WebSettings;

    const-string/jumbo v1, "setAppCacheMaxSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/high16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_88
    return-void

    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a5} :catch_a7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_a5} :catch_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a5} :catch_be
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a5} :catch_c0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_a5} :catch_d7

    move-result-object v0

    goto :goto_51

    :catch_a7
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/view/aL;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :catch_be
    move-exception v0

    throw v0

    :catch_c0
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/view/aL;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :catch_d7
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/view/aL;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    :catch_ee
    move-exception v0

    goto :goto_88
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aL;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aL;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/aL;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()V
    .registers 4

    sget-object v0, Lcom/umeng/newxp/view/aL;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Lcom/umeng/newxp/view/aM;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/aM;-><init>(Lcom/umeng/newxp/view/aL;)V

    sget-object v1, Lcom/umeng/newxp/view/aL;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_4
.end method

.method static synthetic c(Lcom/umeng/newxp/view/aL;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "layout"

    const-string/jumbo v2, "umeng_xp_clould_dialog"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->q:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_loading_view"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->w:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "webView"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->v:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_cancel"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->r:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_reflesh"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->u:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_pre"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->s:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_next"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->t:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_web_main"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->B:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_loading_progress"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->C:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "umeng_xp_actionBar"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->D:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "drawable"

    const-string/jumbo v2, "umeng_xp_pre"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->x:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "drawable"

    const-string/jumbo v2, "umeng_xp_pre_no"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->y:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "drawable"

    const-string/jumbo v2, "umeng_xp_next"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->z:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    const-string/jumbo v1, "drawable"

    const-string/jumbo v2, "umeng_xp_next_no"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aL;->A:I

    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/aL;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lcom/umeng/newxp/view/aL;->q:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->setContentView(I)V

    iget v0, p0, Lcom/umeng/newxp/view/aL;->w:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->k:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/umeng/newxp/view/aL;->v:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    iget v0, p0, Lcom/umeng/newxp/view/aL;->B:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->j:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/umeng/newxp/view/aL;->C:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->l:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->j:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/umeng/newxp/view/aL;->D:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->p:Lcom/umeng/newxp/view/aU;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aU;->a:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->p:Lcom/umeng/newxp/view/aU;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aU;->a:Z

    if-eqz v0, :cond_9e

    iget v0, p0, Lcom/umeng/newxp/view/aL;->r:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aN;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aN;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/umeng/newxp/view/aL;->u:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aO;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aO;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/umeng/newxp/view/aL;->s:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aP;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aP;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/umeng/newxp/view/aL;->t:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aQ;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aQ;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9e
    return-void
.end method

.method static synthetic e(Lcom/umeng/newxp/view/aL;)Lcom/umeng/newxp/view/aU;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->p:Lcom/umeng/newxp/view/aU;

    return-object v0
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/aL;->a(Landroid/webkit/WebSettings;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/aR;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aR;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/aS;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aS;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/aT;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aT;-><init>(Lcom/umeng/newxp/view/aL;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic f(Lcom/umeng/newxp/view/aL;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aL;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_16
    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aL;->z:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aL;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_16

    :cond_38
    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aL;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_2a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/16 v3, 0x400

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/umeng/newxp/view/aL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "configs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/aU;

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->p:Lcom/umeng/newxp/view/aU;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->p:Lcom/umeng/newxp/view/aU;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aU;->d:Z

    if-nez v0, :cond_1e

    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->setTheme(I)V

    :cond_1e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/umeng/newxp/view/aL;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->p:Lcom/umeng/newxp/view/aU;

    iget v0, v0, Lcom/umeng/newxp/view/aU;->e:I

    packed-switch v0, :pswitch_data_70

    :goto_2a
    :pswitch_2a
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_38

    invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/aL;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/umeng/newxp/view/aL;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_38
    invoke-direct {p0}, Lcom/umeng/newxp/view/aL;->c()V

    iget v0, p0, Lcom/umeng/newxp/view/aL;->q:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->setContentView(I)V

    invoke-direct {p0}, Lcom/umeng/newxp/view/aL;->d()V

    invoke-direct {p0}, Lcom/umeng/newxp/view/aL;->e()V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/aL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aL;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/umeng/newxp/view/aL;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_62
    return-void

    :pswitch_63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aL;->setRequestedOrientation(I)V

    goto :goto_2a

    :pswitch_68
    invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/aL;->setRequestedOrientation(I)V

    goto :goto_2a

    :cond_6c
    invoke-direct {p0}, Lcom/umeng/newxp/view/aL;->b()V

    goto :goto_62

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_68
        :pswitch_63
        :pswitch_2a
    .end packed-switch
.end method
