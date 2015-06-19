.class public Lcom/tencent/open/yyb/AppbarActivity;
.super Landroid/app/Activity;
.source "ProGuard"
.implements Landroid/view/View$OnClickListener;
.field private static final FLOATING_DIALOG_HEIGHT:I = 0x64
.field public static final MYAPP_CACHE_PATH:Ljava/lang/String; = "/tencent/tassistant"
.field private static final UA_PREFIX:Ljava/lang/String; = "qqdownloader/"
.field private static final WEBVIEW_PATH:Ljava/lang/String; = "/webview_cache"
.field private static specialModel:Ljava/util/ArrayList;
.field private appid:Ljava/lang/String;
.field private jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
.field private final mDownloadListener:Landroid/webkit/DownloadListener;
.field private mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
.field protected mProgressDialog:Landroid/app/ProgressDialog;
.field private mRootView:Landroid/widget/LinearLayout;
.field private mTitleBar:Lcom/tencent/open/yyb/TitleBar;
.field private mToken:Lcom/tencent/connect/auth/QQToken;
.field private mWebView:Landroid/webkit/WebView;
.field private model:Lcom/tencent/open/yyb/ShareModel;
.field private tencent:Lcom/tencent/tauth/Tencent;
.field private titlebarTop:I
.field private url:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
const-string/jumbo v1, "MT870"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
const-string/jumbo v1, "XT910"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
const-string/jumbo v1, "XT928"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
const-string/jumbo v1, "MT917"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
const-string/jumbo v1, "Lenovo A60"
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Lcom/tencent/open/yyb/c;
invoke-direct {v0, p0}, Lcom/tencent/open/yyb/c;-><init>(Lcom/tencent/open/yyb/AppbarActivity;)V
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mDownloadListener:Landroid/webkit/DownloadListener;
return-void
.end method
.method static synthetic access$200(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/TitleBar;
.registers 2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
return-object v0
.end method
.method static synthetic access$300(Lcom/tencent/open/yyb/AppbarActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity;->setSupportZoom(Z)V
return-void
.end method
.method static synthetic access$400(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/AppbarJsBridge;
.registers 2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
return-object v0
.end method
.method static synthetic access$500(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/connect/auth/QQToken;
.registers 2
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
return-object v0
.end method
.method static synthetic access$600(Lcom/tencent/open/yyb/AppbarActivity;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
return-object v0
.end method
.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
.registers 5
if-nez p1, :cond_b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method private createViews()V
.registers 3
const/4 v1, -0x1
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Landroid/widget/LinearLayout;
invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mRootView:Landroid/widget/LinearLayout;
const/16 v1, 0x11
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mRootView:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mRootView:Landroid/widget/LinearLayout;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v0, Lcom/tencent/open/yyb/TitleBar;
invoke-direct {v0, p0}, Lcom/tencent/open/yyb/TitleBar;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v0}, Lcom/tencent/open/yyb/TitleBar;->getBackBtn()Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v0}, Lcom/tencent/open/yyb/TitleBar;->getSharBtn()Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mRootView:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mRootView:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mRootView:Landroid/widget/LinearLayout;
invoke-virtual {p0, v0}, Lcom/tencent/open/yyb/AppbarActivity;->setContentView(Landroid/view/View;)V
return-void
.end method
.method private getCommonPath(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getCommonRootDir()Ljava/lang/String;
move-result-object v0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1b
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_1b
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/tencent/open/yyb/AppbarActivity;->getPath(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private getCommonRootDir()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->isSDCardExistAndCanWrite()Z
move-result v0
if-eqz v0, :cond_35
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/tencent/tassistant"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_22
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
:cond_30
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_35
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/tencent/tassistant"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_22
.end method
.method private getFloatingDialg()Lcom/tencent/open/yyb/MoreFloatingDialog;
.registers 3
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
if-nez v0, :cond_23
new-instance v0, Lcom/tencent/open/yyb/MoreFloatingDialog;
invoke-direct {v0, p0}, Lcom/tencent/open/yyb/MoreFloatingDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/MoreFloatingDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getQQItem()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getQzoneItem()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_23
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mFloatingDialog:Lcom/tencent/open/yyb/MoreFloatingDialog;
return-object v0
.end method
.method private getPath(Ljava/lang/String;Z)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_32
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
if-eqz p2, :cond_32
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ".nomedia"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_2f
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:goto_32
:try_end_32
.catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_37
:cond_32
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
:catch_37
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_32
.end method
.method private getTencent()Lcom/tencent/tauth/Tencent;
.registers 2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->tencent:Lcom/tencent/tauth/Tencent;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->appid:Ljava/lang/String;
invoke-static {v0, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->tencent:Lcom/tencent/tauth/Tencent;
:cond_c
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->tencent:Lcom/tencent/tauth/Tencent;
return-object v0
.end method
.method private getTitbarTop()I
.registers 4
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
sub-int v0, v1, v0
iput v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->titlebarTop:I
iget v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->titlebarTop:I
return v0
.end method
.method private getToken()Lcom/tencent/connect/auth/QQToken;
.registers 2
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mToken:Lcom/tencent/connect/auth/QQToken;
if-nez v0, :cond_e
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getTencent()Lcom/tencent/tauth/Tencent;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mToken:Lcom/tencent/connect/auth/QQToken;
:cond_e
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mToken:Lcom/tencent/connect/auth/QQToken;
return-object v0
.end method
.method private getWebViewCacheDir()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "/webview_cache"
invoke-direct {p0, v0}, Lcom/tencent/open/yyb/AppbarActivity;->getCommonPath(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private initViews()V
.registers 10
const/4 v8, 0x0
const/4 v7, 0x1
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "qqdownloader/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
invoke-virtual {v2}, Lcom/tencent/open/yyb/AppbarJsBridge;->getVersion()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "/sdk"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_45
const-string/jumbo v0, "setPluginsEnabled"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
if-eqz v0, :cond_64
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_64
.catch Ljava/lang/NoSuchMethodException; {:try_start_45 .. :try_end_64} :catch_134
.catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_64} :catch_13a
:cond_64
:try_start_64
:goto_64
const-string/jumbo v0, "setDomStorageEnabled"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
if-eqz v0, :cond_83
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_83
:try_end_83
.catch Ljava/lang/SecurityException; {:try_start_64 .. :try_end_83} :catch_140
.catch Ljava/lang/NoSuchMethodException; {:try_start_64 .. :try_end_83} :catch_18a
.catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_83} :catch_187
.catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_83} :catch_184
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_83} :catch_181
:goto_83
:try_start_83
const-string/jumbo v0, "removeJavascriptInterface"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Ljava/lang/String;
aput-object v5, v3, v4
invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
if-eqz v0, :cond_a2
iget-object v3, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
const-string/jumbo v6, "searchBoxJavaBridge_"
aput-object v6, v4, v5
invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a2} :catch_146
:cond_a2
:goto_a2
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getWebViewCacheDir()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getWebViewCacheDir()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V
invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V
invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->supportWebViewFullScreen()Z
move-result v0
if-eqz v0, :cond_111
invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/4 v3, 0x7
if-lt v0, v3, :cond_e1
:try_start_c4
const-string/jumbo v0, "setLoadWithOverviewMode"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x1
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_e1
.catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_e1} :catch_17e
:cond_e1
:goto_e1
invoke-static {}, Lcom/tencent/utils/SystemUtils;->isSupportMultiTouch()Z
move-result v0
if-eqz v0, :cond_111
invoke-static {}, Lcom/tencent/utils/SystemUtils;->getAndroidSDKVersion()I
move-result v0
const/16 v1, 0xb
if-ge v0, v1, :cond_14c
:try_start_ef
const-class v0, Landroid/webkit/WebView;
const-string/jumbo v1, "mZoomButtonsController"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
new-instance v1, Landroid/widget/ZoomButtonsController;
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-direct {v1, v2}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V
invoke-virtual {v1}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:goto_111
:try_end_111
.catch Ljava/lang/Exception; {:try_start_ef .. :try_end_111} :catch_17c
:cond_111
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
new-instance v1, Lcom/tencent/open/yyb/AppbarActivity$d;
invoke-direct {v1, p0, v8}, Lcom/tencent/open/yyb/AppbarActivity$d;-><init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/open/yyb/AppbarActivity$2;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
new-instance v1, Lcom/tencent/open/yyb/AppbarActivity$c;
invoke-direct {v1, p0, v8}, Lcom/tencent/open/yyb/AppbarActivity$c;-><init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/open/yyb/AppbarActivity$2;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mDownloadListener:Landroid/webkit/DownloadListener;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->url:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
:catch_134
move-exception v0
invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
goto/16 :goto_64
:catch_13a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
goto/16 :goto_64
:catch_140
move-exception v0
invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
goto/16 :goto_83
:catch_146
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_a2
:try_start_14c
:cond_14c
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-string/jumbo v1, "setDisplayZoomControls"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_179
.catch Ljava/lang/Exception; {:try_start_14c .. :try_end_179} :catch_17a
goto :goto_111
:catch_17a
move-exception v0
goto :goto_111
:catch_17c
move-exception v0
goto :goto_111
:catch_17e
move-exception v0
goto/16 :goto_e1
:catch_181
move-exception v0
goto/16 :goto_83
:catch_184
move-exception v0
goto/16 :goto_83
:catch_187
move-exception v0
goto/16 :goto_83
:catch_18a
move-exception v0
goto/16 :goto_83
.end method
.method private isSDCardExistAndCanWrite()Z
.registers 4
const/4 v0, 0x0
:try_start_1
const-string/jumbo v1, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
:try_end_15
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1a
move-result v1
if-eqz v1, :cond_19
const/4 v0, 0x1
:goto_19
:cond_19
return v0
:catch_1a
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_19
.end method
.method private setSupportZoom(Z)V
.registers 3
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V
:cond_d
return-void
.end method
.method private shareToWX(Z)V
.registers 6
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->shareToWX : wx_appid = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/tencent/open/yyb/AppbarAgent;->wx_appid:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v0, v0, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_46
const-string/jumbo v0, ""
const-string/jumbo v1, ""
invoke-virtual {p0, p0, v0, v1}, Lcom/tencent/open/yyb/AppbarActivity;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/tencent/open/yyb/AppbarActivity$a;
new-instance v1, Lcom/tencent/open/yyb/AppbarActivity$3;
invoke-direct {v1, p0}, Lcom/tencent/open/yyb/AppbarActivity$3;-><init>(Lcom/tencent/open/yyb/AppbarActivity;)V
invoke-direct {v0, v1}, Lcom/tencent/open/yyb/AppbarActivity$a;-><init>(Lcom/tencent/open/yyb/AppbarActivity$b;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v3, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v3, v3, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/tencent/open/yyb/AppbarActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_46
return-void
.end method
.method private supportWebViewFullScreen()Z
.registers 3
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string/jumbo v1, "vivo"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_15
sget-object v1, Lcom/tencent/open/yyb/AppbarActivity;->specialModel:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public login()V
.registers 4
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "-->login : activity~~~"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getTencent()Lcom/tencent/tauth/Tencent;
move-result-object v0
const-string/jumbo v1, "all"
new-instance v2, Lcom/tencent/open/yyb/AppbarActivity$2;
invoke-direct {v2, p0}, Lcom/tencent/open/yyb/AppbarActivity$2;-><init>(Lcom/tencent/open/yyb/AppbarActivity;)V
invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
return-void
.end method
.method public onBackPressed()V
.registers 3
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getFloatingDialg()Lcom/tencent/open/yyb/MoreFloatingDialog;
move-result-object v0
if-eqz v0, :cond_10
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_10
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->dismiss()V
:goto_f
return-void
:cond_10
invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
goto :goto_f
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/tencent/open/yyb/AppbarActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getFloatingDialg()Lcom/tencent/open/yyb/MoreFloatingDialog;
move-result-object v0
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v1}, Lcom/tencent/open/yyb/TitleBar;->getSharBtn()Landroid/widget/ImageView;
move-result-object v1
if-ne p1, v1, :cond_12
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
invoke-virtual {v0}, Lcom/tencent/open/yyb/AppbarJsBridge;->clickCallback()V
:cond_11
:goto_11
const-string v1, " - Lcom/tencent/open/yyb/AppbarActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_12
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getQQItem()Landroid/view/View;
move-result-object v1
if-ne p1, v1, :cond_1c
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToQQ()V
goto :goto_11
:cond_1c
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getQzoneItem()Landroid/view/View;
move-result-object v1
if-ne p1, v1, :cond_26
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToQzone()V
goto :goto_11
:cond_26
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getWXItem()Landroid/view/View;
move-result-object v1
if-ne p1, v1, :cond_30
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToWX()V
goto :goto_11
:cond_30
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getTimelineItem()Landroid/view/View;
move-result-object v0
if-ne p1, v0, :cond_3a
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToTimeline()V
goto :goto_11
:cond_3a
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v0}, Lcom/tencent/open/yyb/TitleBar;->getBackBtn()Landroid/widget/RelativeLayout;
move-result-object v0
if-ne p1, v0, :cond_11
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->finish()V
goto :goto_11
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/tencent/open/yyb/AppbarActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "appid"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->appid:Ljava/lang/String;
invoke-virtual {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string/jumbo v1, "url"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->url:Ljava/lang/String;
const-string/jumbo v0, "openSDK_LOG"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "-->(AppbarActivity)onCreate : appid = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarActivity;->appid:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/yyb/AppbarActivity;->url:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
new-instance v0, Lcom/tencent/open/yyb/AppbarJsBridge;
iget-object v1, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-direct {v0, p0, v1}, Lcom/tencent/open/yyb/AppbarJsBridge;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->jsBridge:Lcom/tencent/open/yyb/AppbarJsBridge;
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->createViews()V
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->initViews()V
const-string v1, " - Lcom/tencent/open/yyb/AppbarActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/tencent/open/yyb/AppbarActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
:cond_22
const-string v1, " - Lcom/tencent/open/yyb/AppbarActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/tencent/open/yyb/AppbarActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getFloatingDialg()Lcom/tencent/open/yyb/MoreFloatingDialog;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_12
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->dismiss()V
:cond_12
const-string v1, " - Lcom/tencent/open/yyb/AppbarActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/tencent/open/yyb/AppbarActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
const-string v1, " - Lcom/tencent/open/yyb/AppbarActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setAppbarTitle(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v0, p1}, Lcom/tencent/open/yyb/TitleBar;->setTitle(Ljava/lang/String;)V
return-void
.end method
.method public setShareModel(Lcom/tencent/open/yyb/ShareModel;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
return-void
.end method
.method public setShareVisibility(Z)V
.registers 4
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v0}, Lcom/tencent/open/yyb/TitleBar;->getSharBtn()Landroid/widget/ImageView;
move-result-object v1
if-eqz p1, :cond_d
const/4 v0, 0x0
:goto_9
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
:cond_d
const/4 v0, 0x4
goto :goto_9
.end method
.method public shareToQQ()V
.registers 7
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v1, Lcom/tencent/connect/share/QQShare;
invoke-direct {v1, p0, v0}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v3, "title"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "targetUrl"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->d:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "summary"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->b:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "imageUrl"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "openSDK_LOG"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "-->(AppbarActivity)shareToQQ : model.mTitle = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v5, v5, Lcom/tencent/open/yyb/ShareModel;->a:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "openSDK_LOG"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "-->(AppbarActivity)shareToQQ : model.mTargetUrl = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v5, v5, Lcom/tencent/open/yyb/ShareModel;->d:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "openSDK_LOG"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "-->(AppbarActivity)shareToQQ : model.mDescription = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v5, v5, Lcom/tencent/open/yyb/ShareModel;->b:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "openSDK_LOG"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "-->(AppbarActivity)shareToQQ : model.mIconUrl = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v5, v5, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/tencent/open/yyb/AppbarActivity$1;
invoke-direct {v3, p0, v0}, Lcom/tencent/open/yyb/AppbarActivity$1;-><init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "200"
const-string/jumbo v2, "SDK.APPBAR.HOME.SHARE.QQ"
invoke-static {v0, v1, v2}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
.end method
.method public shareToQzone()V
.registers 8
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getToken()Lcom/tencent/connect/auth/QQToken;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v1, Lcom/tencent/connect/share/QzoneShare;
invoke-direct {v1, p0, v0}, Lcom/tencent/connect/share/QzoneShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v3, "req_type"
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v3, "title"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "summary"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->b:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "targetUrl"
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->d:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const-string/jumbo v4, "openSDK_LOG"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "-->shareToQzone : mIconUrl = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v6, v6, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->model:Lcom/tencent/open/yyb/ShareModel;
iget-object v4, v4, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string/jumbo v4, "imageUrl"
invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
new-instance v3, Lcom/tencent/open/yyb/AppbarActivity$4;
invoke-direct {v3, p0, v0}, Lcom/tencent/open/yyb/AppbarActivity$4;-><init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/connect/auth/QQToken;)V
invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/connect/share/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
invoke-virtual {v0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "200"
const-string/jumbo v2, "SDK.APPBAR.HOME.SHARE.QZ"
invoke-static {v0, v1, v2}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6
.end method
.method public shareToTimeline()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToWX(Z)V
return-void
.end method
.method public shareToWX()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/tencent/open/yyb/AppbarActivity;->shareToWX(Z)V
return-void
.end method
.method public showFloatingDialog()V
.registers 8
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getFloatingDialg()Lcom/tencent/open/yyb/MoreFloatingDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->show()V
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v2
const/16 v3, 0x30
iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
invoke-direct {p0}, Lcom/tencent/open/yyb/AppbarActivity;->getTitbarTop()I
move-result v3
iget-object v4, p0, Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-virtual {v4}, Lcom/tencent/open/yyb/TitleBar;->getHeight()I
move-result v4
add-int/2addr v3, v4
iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I
invoke-virtual {v0}, Lcom/tencent/open/yyb/MoreFloatingDialog;->getWindow()Landroid/view/Window;
move-result-object v3
invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;
move-result-object v3
invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v3
const/high16 v4, 0x42c8
invoke-virtual {v0, v4}, Lcom/tencent/open/yyb/MoreFloatingDialog;->dip2px(F)I
move-result v0
iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I
invoke-virtual {v3}, Landroid/view/Display;->getWidth()I
move-result v0
int-to-double v3, v0
const-wide v5, 0x3fee666666666666L
mul-double/2addr v3, v5
double-to-int v0, v3
div-int/lit8 v0, v0, 0x2
iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I
iget v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I
div-int/lit8 v0, v0, 0x2
iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I
const-string/jumbo v0, "openSDK_LOG"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "-->(AppbarDialog)showFloatingDialog : params.x = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
return-void
.end method
.method protected showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_9
const-string/jumbo p2, "\u8bf7\u7a0d\u5019"
:cond_9
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_12
const-string/jumbo p3, "\u6b63\u5728\u52a0\u8f7d..."
:cond_12
invoke-static {p1, p2, p3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
move-result-object v0
iput-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mProgressDialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity;->mProgressDialog:Landroid/app/ProgressDialog;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
return-void
.end method