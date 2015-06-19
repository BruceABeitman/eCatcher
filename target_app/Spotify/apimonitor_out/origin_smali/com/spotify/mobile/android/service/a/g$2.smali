.class final Lcom/spotify/mobile/android/service/a/g$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/a/g;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/a/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/a/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/a/g$2;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/a/g$2;->a:Lcom/spotify/mobile/android/service/a/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/a/g;->h(Lcom/spotify/mobile/android/service/a/g;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->h()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->g()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->f()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/service/a/g;->e()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
