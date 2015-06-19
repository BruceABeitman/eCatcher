.class Lcom/twidroid/ui/themes/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/themes/q;->a(Lcom/twidroid/UberSocialApplication;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialApplication;

.field final synthetic b:Lcom/twidroid/ui/themes/q;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/themes/q;Lcom/twidroid/UberSocialApplication;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/ui/themes/q$2;->b:Lcom/twidroid/ui/themes/q;

    iput-object p2, p0, Lcom/twidroid/ui/themes/q$2;->a:Lcom/twidroid/UberSocialApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/ui/themes/q$2;->b:Lcom/twidroid/ui/themes/q;

    iget-object v0, v0, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/twidroid/ui/themes/q$2;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/themes/q$2;->b:Lcom/twidroid/ui/themes/q;

    iget-object v1, v1, Lcom/twidroid/ui/themes/q;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/ui/themes/p;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method
