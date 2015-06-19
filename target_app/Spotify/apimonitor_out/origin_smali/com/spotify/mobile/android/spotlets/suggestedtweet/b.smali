.class final Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
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
.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;-><init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/b;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Z)V

    return-void
.end method
