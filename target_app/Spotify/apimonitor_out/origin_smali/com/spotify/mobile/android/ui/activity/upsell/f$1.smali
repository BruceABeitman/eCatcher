.class final Lcom/spotify/mobile/android/ui/activity/upsell/f$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/upsell/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/spotify/mobile/android/ui/activity/upsell/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->a(Lcom/spotify/mobile/android/ui/activity/upsell/f;)Lcom/spotify/mobile/android/ui/activity/upsell/m;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/h;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/h;-><init>(ZLjava/util/ArrayList;)V

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Ljava/util/List;)Z

    move-result v2

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/h;

    invoke-direct {v0, v2, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/h;-><init>(ZLjava/util/ArrayList;)V

    goto :goto_13
.end method

.method protected final onCancelled()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->b(Lcom/spotify/mobile/android/ui/activity/upsell/f;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/spotify/mobile/android/ui/activity/upsell/h;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->b(Lcom/spotify/mobile/android/ui/activity/upsell/f;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/f;

    iget-boolean v1, p1, Lcom/spotify/mobile/android/ui/activity/upsell/h;->a:Z

    iget-object v2, p1, Lcom/spotify/mobile/android/ui/activity/upsell/h;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/f;->a(Lcom/spotify/mobile/android/ui/activity/upsell/f;ZLjava/util/ArrayList;)V

    return-void
.end method
