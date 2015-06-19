.class final Lcom/instagram/android/activity/h;
.super Landroid/webkit/WebViewClient;
.source "FlickrAuthActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/FlickrAuthActivity;


# direct methods
.method private constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/activity/h;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "oauth_verifier"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_10

    move-object v0, v1

    :goto_f
    return-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oauth_verifier"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_f

    :catch_31
    move-exception v0

    iget-object v0, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->d(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    const-string v0, "FlickrAuthActivity"

    const-string v2, "Unable to parse oauth_token"

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    move-object v0, v1

    goto :goto_f
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "oauth/authorize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&perms=write"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    const-string v0, "http://instagram.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->a(Lcom/instagram/android/activity/FlickrAuthActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/i;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/i;-><init>(Lcom/instagram/android/activity/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    :cond_37
    invoke-static {p2}, Lcom/instagram/android/activity/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-direct {p0, p2}, Lcom/instagram/android/activity/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v1, Lcom/instagram/android/activity/g;

    iget-object v2, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    iget-object v3, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v3}, Lcom/instagram/android/activity/FlickrAuthActivity;->b(Lcom/instagram/android/activity/FlickrAuthActivity;)Loauth/signpost/OAuthProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v4}, Lcom/instagram/android/activity/FlickrAuthActivity;->c(Lcom/instagram/android/activity/FlickrAuthActivity;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/instagram/android/activity/g;-><init>(Lcom/instagram/android/activity/FlickrAuthActivity;Ljava/lang/String;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1e

    :cond_5d
    iget-object v0, p0, Lcom/instagram/android/activity/h;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->d(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    const-string v0, "FlickrAuthActivity"

    const-string v1, "Error retrieving access token fragment"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_6a
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1e
.end method
