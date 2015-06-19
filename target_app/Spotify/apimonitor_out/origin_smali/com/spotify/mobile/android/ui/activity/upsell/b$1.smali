.class final Lcom/spotify/mobile/android/ui/activity/upsell/b$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/upsell/b;->c()V
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->b(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/m;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->a(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/o;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->c(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/c;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->d(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/c;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/b$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/b;->a(Lcom/spotify/mobile/android/ui/activity/upsell/b;)Lcom/spotify/mobile/android/ui/activity/upsell/o;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/c;->a(Lcom/spotify/mobile/android/ui/activity/upsell/b;)V

    :cond_22
    return-void
.end method
