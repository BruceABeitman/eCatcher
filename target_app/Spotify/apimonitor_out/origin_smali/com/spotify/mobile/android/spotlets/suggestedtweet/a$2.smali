.class final Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Has already shown dialog (most likely in other activity), skip"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->b(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->c(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$2;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->d(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Landroid/content/Intent;I)V

    goto :goto_15
.end method
