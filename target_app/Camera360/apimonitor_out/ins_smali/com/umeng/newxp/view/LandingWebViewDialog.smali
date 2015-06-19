.class public Lcom/umeng/newxp/view/LandingWebViewDialog;
.super Landroid/app/Dialog;
.source "LandingWebViewDialog.java"
.field  a:Landroid/view/animation/Animation;
.field private b:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 10
const/16 v5, 0x8
const/4 v4, -0x1
const/4 v3, 0x1
sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z
if-eqz v0, :cond_e1
const v0, 0x1030011
:goto_b
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-object p1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
invoke-virtual {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I
iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I
const/16 v1, 0x11
iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
invoke-virtual {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
invoke-static {p1}, Lcom/umeng/newxp/a/d;->q(Landroid/content/Context;)I
move-result v0
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
invoke-virtual {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->getWindow()Landroid/view/Window;
move-result-object v1
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
invoke-static {v0, p2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p2, :cond_e0
invoke-direct {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->a()V
iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/newxp/a/c;->G(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
if-ge v2, v5, :cond_e6
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V
:goto_66
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V
sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v2, v5, :cond_8a
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V
:cond_8a
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v2, v3, :cond_b3
:try_start_90
const-class v2, Landroid/webkit/WebSettings;
const-string/jumbo v3, "setDisplayZoomControls"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Class;
const/4 v5, 0x0
sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v6, v4, v5
invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b3
.catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b3} :catch_ed
:goto_b3
:cond_b3
new-instance v1, Lcom/umeng/newxp/view/ak;
invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ak;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
new-instance v1, Lcom/umeng/newxp/view/al;
invoke-direct {v1, p0}, Lcom/umeng/newxp/view/al;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
new-instance v1, Lcom/umeng/newxp/view/am;
invoke-direct {v1, p0}, Lcom/umeng/newxp/view/am;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/newxp/a/c;->e(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/view/an;
invoke-direct {v1, p0}, Lcom/umeng/newxp/view/an;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_e0
return-void
:cond_e1
const v0, 0x1030010
goto/16 :goto_b
:cond_e6
sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
goto/16 :goto_66
:catch_ed
move-exception v1
sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v3, ""
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_b3
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;
if-nez v1, :cond_22
iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I
move-result v2
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;
:cond_22
iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;
new-instance v2, Landroid/view/animation/LinearInterpolator;
invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;
new-instance v2, Lcom/umeng/newxp/view/aj;
invoke-direct {v2, p0}, Lcom/umeng/newxp/view/aj;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
.registers 1
invoke-direct {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->b()V
return-void
.end method
.method static synthetic b(Lcom/umeng/newxp/view/LandingWebViewDialog;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
return-object v0
.end method
.method private b()V
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method