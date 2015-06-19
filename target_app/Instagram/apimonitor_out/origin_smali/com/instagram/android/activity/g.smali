.class final Lcom/instagram/android/activity/g;
.super Landroid/os/AsyncTask;
.source "FlickrAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/FlickrAuthActivity;

.field private final b:Ljava/lang/String;

.field private c:Loauth/signpost/OAuthProvider;

.field private d:Loauth/signpost/OAuthConsumer;


# direct methods
.method public constructor <init>(Lcom/instagram/android/activity/FlickrAuthActivity;Ljava/lang/String;Loauth/signpost/OAuthProvider;Loauth/signpost/OAuthConsumer;)V
    .registers 5

    iput-object p1, p0, Lcom/instagram/android/activity/g;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/activity/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/activity/g;->c:Loauth/signpost/OAuthProvider;

    iput-object p4, p0, Lcom/instagram/android/activity/g;->d:Loauth/signpost/OAuthConsumer;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/activity/g;->c:Loauth/signpost/OAuthProvider;

    iget-object v1, p0, Lcom/instagram/android/activity/g;->d:Loauth/signpost/OAuthConsumer;

    iget-object v2, p0, Lcom/instagram/android/activity/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/instagram/android/activity/g;->d:Loauth/signpost/OAuthConsumer;

    invoke-interface {v0}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/g;->d:Loauth/signpost/OAuthConsumer;

    invoke-interface {v1}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/share/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/share/c/a;

    iget-object v0, p0, Lcom/instagram/android/activity/g;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/instagram/android/activity/g;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/FlickrAuthActivity;->setResult(I)V

    iget-object v0, p0, Lcom/instagram/android/activity/g;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->finish()V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/instagram/android/activity/g;->a:Lcom/instagram/android/activity/FlickrAuthActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/FlickrAuthActivity;->d(Lcom/instagram/android/activity/FlickrAuthActivity;)V

    goto :goto_28
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/activity/g;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/instagram/android/activity/g;->a(Ljava/lang/Boolean;)V

    return-void
.end method
