.class final Lcom/millennialmedia/android/ax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/ax;->a(Lcom/millennialmedia/android/az;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/ax$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/millennialmedia/android/az;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/millennialmedia/android/az;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_5a

    iget-object v2, p1, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    const-string v3, "mmvideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-static {p1}, Lcom/millennialmedia/android/dj;->a(Lcom/millennialmedia/android/az;)Landroid/content/Intent;

    move-result-object v1

    :cond_1f
    :goto_1f
    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Lcom/millennialmedia/android/az;->d()Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v2

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    iget-object v3, p1, Lcom/millennialmedia/android/az;->d:Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object v3, p1, Lcom/millennialmedia/android/az;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/millennialmedia/android/OverlaySettings;->o:Ljava/lang/String;

    :cond_31
    const-string v3, "settings"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_36
    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-class v3, Lcom/millennialmedia/android/g;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    :cond_4a
    :try_start_4a
    iget-object v2, p1, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/az;->c(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-static {v0, v1}, Lcom/millennialmedia/android/dj;->c(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p1, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/az;->b(Landroid/net/Uri;)V
    :try_end_5a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4a .. :try_end_5a} :catch_6d

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    iget-object v2, p1, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/az;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/az;)V

    goto :goto_1f

    :catch_6d
    move-exception v0

    const-string v1, "HttpRedirection"

    const-string v2, "No activity found for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/android/ax$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/az;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/millennialmedia/android/az;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    iget-object v2, v0, Lcom/millennialmedia/android/az;->c:Landroid/net/Uri;

    if-eqz v2, :cond_20

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/ax$1;->a(Lcom/millennialmedia/android/az;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "HttpRedirection"

    const-string v2, "Could not start activity for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
