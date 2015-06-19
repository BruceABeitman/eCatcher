.class Lcom/twidroid/fragments/base/n;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/base/e;


# direct methods
.method private constructor <init>(Lcom/twidroid/fragments/base/e;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/n;-><init>(Lcom/twidroid/fragments/base/e;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/n;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    iget-object v0, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "Creating binder"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    new-instance v1, Lcom/twidroid/service/f;

    iget-object v2, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;

    invoke-direct {v1, v2}, Lcom/twidroid/service/f;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/service/f;)Lcom/twidroid/service/f;

    iget-object v0, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    iget-object v0, v0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    iget-object v2, v2, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;

    const-class v3, Lcom/twidroid/service/StreamingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2f
    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "Binding..."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/service/f;->a()Z

    :goto_3f
    iget-object v0, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    invoke-static {v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z

    move-result v0

    if-nez v0, :cond_56

    const-wide/16 v0, 0xc8

    :try_start_4d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_3f

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3f

    :cond_56
    const-string v0, "BaseTwetTimelineWithAccountSelection"

    const-string v1, "Service bound successfuly"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/n;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/n;->a:Lcom/twidroid/fragments/base/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/fragments/base/e;Z)V

    return-void
.end method
