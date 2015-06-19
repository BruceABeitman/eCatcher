.class Lcom/twidroid/UberSocialProfile$13$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile$13;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/UberSocialProfile$13;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile$13;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$13$2;->a:Lcom/twidroid/UberSocialProfile$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$2;->a:Lcom/twidroid/UberSocialProfile$13;

    iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13$2;->a:Lcom/twidroid/UberSocialProfile$13;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;

    const v3, 0x7f0c0172

    invoke-virtual {v2, v3}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/UberSocialProfile$13$2;->a:Lcom/twidroid/UberSocialProfile$13;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;

    iget-object v2, v2, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
