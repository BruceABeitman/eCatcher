.class public Lcom/twidroid/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_22

    move-result-object v0

    :goto_9
    new-instance v1, Lcom/twidroid/d/l$1;

    invoke-direct {v1}, Lcom/twidroid/d/l$1;-><init>()V

    if-eqz v0, :cond_1a

    sget-object v2, Lcom/twidroid/y;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v1, v0}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    sget-object v0, Lcom/twidroid/y;->o:Ljava/lang/String;

    const-string v2, "--"

    invoke-static {p0, v0, v1, v2}, Lcom/twidroid/net/hockeyapp/android/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/d;Ljava/lang/String;)V

    goto :goto_19

    :catch_22
    move-exception v1

    goto :goto_9
.end method
