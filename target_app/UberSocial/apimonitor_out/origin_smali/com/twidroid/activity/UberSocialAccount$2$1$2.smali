.class Lcom/twidroid/activity/UberSocialAccount$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccount$2$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount$2$1;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$2;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$2;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$2;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->d(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method
