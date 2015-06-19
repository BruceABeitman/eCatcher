.class final Lcom/spotify/mobile/android/service/flow/login/n;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/l;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/service/flow/login/l;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/flow/login/l;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/n;-><init>(Lcom/spotify/mobile/android/service/flow/login/l;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->a(Lcom/spotify/mobile/android/service/flow/login/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isSignUpFlow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/l;->a(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/login/l;Ljava/lang/String;)V

    goto :goto_1e

    :cond_25
    if-nez p1, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/n;->a:Lcom/spotify/mobile/android/service/flow/login/l;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/l;->b(Lcom/spotify/mobile/android/service/flow/login/l;)V

    goto :goto_1e
.end method
