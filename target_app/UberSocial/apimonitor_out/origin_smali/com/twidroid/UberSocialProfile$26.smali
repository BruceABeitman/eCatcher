.class Lcom/twidroid/UberSocialProfile$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/UberSocialProfile;->e(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/twidroid/UberSocialProfile;


# direct methods
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Z)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/UberSocialProfile$26;->b:Lcom/twidroid/UberSocialProfile;

    iput-boolean p2, p0, Lcom/twidroid/UberSocialProfile$26;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile$26;->a:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$26;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->at(Lcom/twidroid/UberSocialProfile;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$26;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->au(Lcom/twidroid/UberSocialProfile;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/twidroid/UberSocialProfile$26;->b:Lcom/twidroid/UberSocialProfile;

    invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->av(Lcom/twidroid/UberSocialProfile;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_18
.end method
