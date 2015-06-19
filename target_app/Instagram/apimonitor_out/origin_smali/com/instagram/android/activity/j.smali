.class final Lcom/instagram/android/activity/j;
.super Landroid/os/AsyncTask;
.source "FlickrAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/FlickrAuthActivity;

.field private final b:Landroid/webkit/WebView;

.field private c:Loauth/signpost/OAuthProvider;

.field private d:Loauth/signpost/OAuthConsumer;


# direct methods
.method public constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;Landroid/webkit/WebView;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/activity/j;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/activity/j;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/instagram/android/activity/j;->c:Loauth/signpost/OAuthProvider;

    iput-object p4, p0, Lcom/instagram/android/activity/j;->d:Loauth/signpost/OAuthConsumer;

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/instagram/android/activity/j;->c:Loauth/signpost/OAuthProvider;

    iget-object v2, p0, Lcom/instagram/android/activity/j;->d:Loauth/signpost/OAuthConsumer;

    const-string v3, "instagram://flickr_callback"

    invoke-interface {v1, v2, v3}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/instagram/android/activity/j;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/instagram/android/activity/j;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/instagram/android/activity/j;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->d(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    goto :goto_f
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/activity/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/instagram/android/activity/j;->a(Ljava/lang/String;)V

    return-void
.end method
