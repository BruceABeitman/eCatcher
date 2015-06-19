.class Lcom/twidroid/activity/UberSocialBaseActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialBaseActivity$9;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/model/twitter/User;

.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity$9;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$9;Lcom/twidroid/model/twitter/User;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->a:Lcom/twidroid/model/twitter/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->a:Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const v2, 0x7f0c02da

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v3, v3, Lcom/twidroid/activity/UberSocialBaseActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2c
    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const v3, 0x7f0c0166

    invoke-virtual {v2, v3}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v2, v2, Lcom/twidroid/activity/UberSocialBaseActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->ac:I

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_75} :catch_76

    goto :goto_2c

    :catch_76
    move-exception v0

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    iput-boolean v4, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$9$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$9;

    iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$9;->b:Lcom/twidroid/activity/UberSocialBaseActivity;

    invoke-virtual {v0, v4}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    goto :goto_2c
.end method
