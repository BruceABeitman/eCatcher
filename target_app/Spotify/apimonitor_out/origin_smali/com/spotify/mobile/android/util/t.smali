.class public final Lcom/spotify/mobile/android/util/t;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/t;->a:Landroid/app/Activity;

    return-void
.end method

.method private varargs a()[Ljava/lang/Long;
    .registers 7

    const/4 v5, 0x0

    new-instance v0, Lcom/spotify/mobile/android/service/ao;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/t;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/ao;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    :try_start_f
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ao;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    new-instance v3, Lcom/spotify/mobile/android/util/db;

    invoke-direct {v3, v2}, Lcom/spotify/mobile/android/util/db;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/db;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_25
    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ao;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    new-instance v2, Lcom/spotify/mobile/android/util/db;

    invoke-direct {v2, v0}, Lcom/spotify/mobile/android/util/db;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/db;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_3b
    return-object v1

    :cond_3c
    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_48} :catch_49

    goto :goto_25

    :catch_49
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/spotify/mobile/android/util/t;->cancel(Z)Z

    goto :goto_3b

    :cond_4e
    const/4 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    :try_start_54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5a} :catch_49

    goto :goto_3b
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/t;->a()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 7

    check-cast p1, [Ljava/lang/Long;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/t;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x200000

    cmp-long v1, v1, v3

    if-gez v1, :cond_20

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.spotify.music.broadcast.settings_low.error"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z

    :cond_20
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x3200000

    cmp-long v1, v1, v3

    if-gez v1, :cond_38

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.spotify.music.broadcast.cache_low.error"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/Intent;)Z

    :cond_38
    return-void
.end method
