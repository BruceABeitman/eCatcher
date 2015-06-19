.class public Lcom/umeng/newxp/view/T;
.super Ljava/lang/Object;
.source "FloatContentHelper.java"
.field private static final a:Ljava/lang/String;
.field private b:Ljava/lang/Boolean;
.field private c:Z
.field private d:Lcom/umeng/newxp/view/FloatDialogConfig;
.field private e:Landroid/content/Context;
.field private f:Landroid/app/Dialog;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/newxp/view/T;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/newxp/view/T;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/umeng/newxp/view/FloatDialogConfig;Landroid/content/Context;Landroid/app/Dialog;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/umeng/newxp/view/T;->b:Ljava/lang/Boolean;
iput-boolean v1, p0, Lcom/umeng/newxp/view/T;->c:Z
iput-object p1, p0, Lcom/umeng/newxp/view/T;->d:Lcom/umeng/newxp/view/FloatDialogConfig;
iput-object p2, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
iput-object p3, p0, Lcom/umeng/newxp/view/T;->f:Landroid/app/Dialog;
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/T;)Ljava/lang/Boolean;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/T;->b:Ljava/lang/Boolean;
return-object v0
.end method
.method static synthetic a(Lcom/umeng/newxp/view/T;Ljava/lang/Boolean;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/T;->b:Ljava/lang/Boolean;
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/T;Z)V
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/T;->c:Z
return-void
.end method
.method static synthetic b(Lcom/umeng/newxp/view/T;)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/T;->d:Lcom/umeng/newxp/view/FloatDialogConfig;
return-object v0
.end method
.method static synthetic b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/umeng/newxp/view/T;->a:Ljava/lang/String;
return-object v0
.end method
.method private b(Landroid/webkit/WebView;)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V
invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setInitialScale(I)V
new-instance v0, Lcom/umeng/newxp/view/V;
invoke-direct {v0, p0}, Lcom/umeng/newxp/view/V;-><init>(Lcom/umeng/newxp/view/T;)V
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
new-instance v0, Lcom/umeng/newxp/view/W;
invoke-direct {v0, p0, p1}, Lcom/umeng/newxp/view/W;-><init>(Lcom/umeng/newxp/view/T;Landroid/webkit/WebView;)V
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
return-void
.end method
.method static synthetic c(Lcom/umeng/newxp/view/T;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/T;->f:Landroid/app/Dialog;
return-object v0
.end method
.method private c()Lorg/json/JSONObject;
.registers 4
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iget-object v1, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
invoke-static {v1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_17
const-string/jumbo v2, "device_id"
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_17
iget-object v1, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
invoke-static {v1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_29
const-string/jumbo v2, "mc"
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_29
return-object v0
.end method
.method static synthetic d(Lcom/umeng/newxp/view/T;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
return-object v0
.end method
.method static synthetic e(Lcom/umeng/newxp/view/T;)Z
.registers 2
iget-boolean v0, p0, Lcom/umeng/newxp/view/T;->c:Z
return v0
.end method
.method protected a(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Landroid/view/View;
.registers 6
new-instance v0, Lcom/umeng/newxp/view/GridTemplateConfig;
invoke-direct {v0}, Lcom/umeng/newxp/view/GridTemplateConfig;-><init>()V
new-instance v1, Lcom/umeng/newxp/view/GridTemplate;
iget-object v2, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
invoke-direct {v1, p1, p2, v2, v0}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V
iget-object v0, v1, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;
return-object v0
.end method
.method protected a(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/ExHeader;)Landroid/view/View;
.registers 6
new-instance v0, Lcom/umeng/newxp/view/w;
iget-object v1, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
invoke-direct {v0, v1, p2, p1, p3}, Lcom/umeng/newxp/view/w;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/ExHeader;)V
iget-object v0, v0, Lcom/umeng/newxp/view/w;->a:Landroid/view/View;
return-object v0
.end method
.method protected a()Landroid/webkit/WebView;
.registers 3
new-instance v0, Landroid/webkit/WebView;
iget-object v1, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
invoke-direct {p0, v0}, Lcom/umeng/newxp/view/T;->b(Landroid/webkit/WebView;)V
return-object v0
.end method
.method protected a(Landroid/webkit/WebView;)V
.registers 6
const/4 v0, 0x0
:try_start_1
invoke-direct {p0}, Lcom/umeng/newxp/view/T;->c()Lorg/json/JSONObject;
:try_end_4
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4} :catch_39
move-result-object v0
:goto_5
sget-object v1, Lcom/umeng/newxp/view/T;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "send device info "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "javascript:uGap.setDeviceInfo("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
:catch_39
move-exception v1
goto :goto_5
.end method
.method protected b(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Lcom/umeng/newxp/view/Q;
.registers 9
new-instance v1, Lcom/umeng/newxp/view/Q;
iget-object v0, p0, Lcom/umeng/newxp/view/T;->e:Landroid/content/Context;
invoke-direct {v1, v0}, Lcom/umeng/newxp/view/Q;-><init>(Landroid/content/Context;)V
if-eqz p1, :cond_f
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_3d
:cond_f
const/4 v0, 0x0
:goto_10
new-instance v2, Lcom/umeng/newxp/view/U;
invoke-direct {v2, p0}, Lcom/umeng/newxp/view/U;-><init>(Lcom/umeng/newxp/view/T;)V
invoke-virtual {v1, p2, v0, v2}, Lcom/umeng/newxp/view/Q;->a(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/Promoter;Lcom/umeng/common/net/p$a;)Z
move-result v2
if-nez v2, :cond_3c
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "float-window use FImageView style.but set no match promoter.["
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez v0, :cond_45
const-string/jumbo v0, "promoter is null(may be promoter has filtered by installed-filter.)"
:goto_2a
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "]"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_3c
return-object v1
:cond_3d
const/4 v0, 0x0
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
goto :goto_10
:cond_45
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "promoter.img ="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, v0, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2a
.end method