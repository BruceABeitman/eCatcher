.class public Lcom/twidroid/net/oauth/RequestTokenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic b:Z = false

.field private static d:J = 0x0L

.field private static final e:Ljava/text/SimpleDateFormat; = null

.field private static final f:Ljava/lang/String; = "RewuestTokenActivity"

.field private static final g:I = 0x0

.field private static final h:I = 0x1


# instance fields
.field protected a:Lcom/twidroid/UberSocialApplication;

.field private c:Lcom/ubermedia/net/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->b:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->d:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->e:Ljava/text/SimpleDateFormat;

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/oauth/RequestTokenActivity;)J
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/ubermedia/net/b/a;)Lcom/ubermedia/net/b/a;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    return-object p1
.end method

.method public static a()Ld/a/b/b;
    .registers 4

    new-instance v0, Ld/a/b/b;

    const-string v1, "https://api.twitter.com/oauth/request_token"

    const-string v2, "https://api.twitter.com/oauth/access_token"

    const-string v3, "https://api.twitter.com/oauth/authorize"

    invoke-direct {v0, v1, v2, v3}, Ld/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c()J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/twidroid/net/oauth/RequestTokenActivity;->d:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twidroid/net/oauth/b;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Lcom/twidroid/net/oauth/a;

    invoke-virtual {p0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twidroid/net/oauth/b;

    invoke-virtual {v0}, Lcom/twidroid/net/oauth/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/net/oauth/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/twidroid/net/oauth/b;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UberSocialPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "oauth_token"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oauth_token_secret"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/twidroid/net/oauth/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected b()V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://api.twitter.com/1.1/application/rate_limit_status.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    const-string v1, "Date"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1c} :catch_54
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_59

    move-result v2

    if-nez v2, :cond_4b

    :try_start_1f
    sget-object v2, Lcom/twidroid/net/oauth/RequestTokenActivity;->e:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT"

    const-string v4, "+0000"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTC"

    const-string v4, "+0000"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->d:J

    const-string v1, "RewuestTokenActivity"

    const-string v2, "Corrected timestamp successfuly"

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->d:J

    sput-wide v1, Lcom/twidroid/net/a/c/c;->k:J
    :try_end_4b
    .catch Ljava/text/ParseException; {:try_start_1f .. :try_end_4b} :catch_4f
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_4b} :catch_54
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_4b} :catch_59

    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :goto_4e
    return-void

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_53
    .catch Ljava/net/MalformedURLException; {:try_start_4b .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_53} :catch_59

    goto :goto_4b

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_4e

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iput-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;

    const-string v0, "https://auth.twidroyd.com/success"

    invoke-static {}, Lcom/twidroid/net/oauth/RequestTokenActivity;->a()Ld/a/b/b;

    move-result-object v2

    invoke-virtual {p0, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->a(Landroid/content/Context;)Lcom/twidroid/net/oauth/b;

    move-result-object v3

    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$1;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/twidroid/net/oauth/RequestTokenActivity$1;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Landroid/webkit/WebView;Ld/a/e;Ld/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubermedia/net/b/a;

    iput-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    invoke-virtual {v0, p0}, Lcom/ubermedia/net/b/a;->b(Landroid/app/Activity;)V

    :goto_4c
    return-void

    :cond_4d
    if-eqz p1, :cond_56

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_4c

    :cond_56
    new-instance v0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/twidroid/net/oauth/RequestTokenActivity;Ld/a/e;Ld/a/d;)V

    iput-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    goto :goto_4c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_2c

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0084

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c008b

    new-instance v3, Lcom/twidroid/net/oauth/RequestTokenActivity$3;

    invoke-direct {v3, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$3;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0114

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_2b
    :goto_2b
    return-object v0

    :cond_2c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_55

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c013d

    new-instance v2, Lcom/twidroid/net/oauth/RequestTokenActivity$5;

    invoke-direct {v2, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$5;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$4;

    invoke-direct {v1, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$4;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2b

    :cond_55
    sget-boolean v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->b:Z

    if-nez v1, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    invoke-virtual {v0}, Lcom/ubermedia/net/b/a;->b()V

    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->showDialog(I)V

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity;->c:Lcom/ubermedia/net/b/a;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V

    return-void
.end method
