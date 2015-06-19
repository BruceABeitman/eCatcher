.class Lcom/twidroid/activity/AccountDialogActivity$2;
.super Lcom/twidroid/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/AccountDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/AccountDialogActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/AccountDialogActivity;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-direct {p0, p2}, Lcom/twidroid/c/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V

    return-void
.end method

.method public a(I)V
    .registers 9

    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v1

    sget-object v2, Lcom/twidroid/activity/AccountDialogActivity$4;->a:[I

    iget-object v3, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v3}, Lcom/twidroid/activity/AccountDialogActivity;->a(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/activity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/activity/a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e0

    :goto_1f
    invoke-virtual {p0}, Lcom/twidroid/activity/AccountDialogActivity$2;->dismiss()V

    return-void

    :pswitch_23
    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    const-class v4, Lcom/twidroid/service/RetweetService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "account_id"

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tweet_id"

    iget-object v3, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v3}, Lcom/twidroid/activity/AccountDialogActivity;->b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v3

    iget-wide v3, v3, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/AccountDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V

    goto :goto_1f

    :pswitch_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v2}, Lcom/twidroid/activity/AccountDialogActivity;->b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v2}, Lcom/twidroid/activity/AccountDialogActivity;->b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v2

    const/4 v5, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v6}, Lcom/twidroid/activity/AccountDialogActivity;->b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v6}, Lcom/twidroid/activity/AccountDialogActivity;->b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v4, p1

    invoke-static/range {v0 .. v6}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V

    goto/16 :goto_1f

    :pswitch_b3
    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    const-class v4, Lcom/twidroid/service/FavoriteService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "account_id"

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tweet_id"

    iget-object v3, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-static {v3}, Lcom/twidroid/activity/AccountDialogActivity;->b(Lcom/twidroid/activity/AccountDialogActivity;)Lcom/twidroid/model/twitter/Tweet;

    move-result-object v3

    iget-wide v3, v3, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/AccountDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$2;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V

    goto/16 :goto_1f

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_4f
        :pswitch_b3
    .end packed-switch
.end method
