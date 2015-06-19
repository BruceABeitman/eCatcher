.class Lcom/twidroid/activity/SendTweet$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->w()V
.end annotation


# instance fields
.field a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public a(I)V
    .registers 5

    const-string v0, "com.twidroid.SendTweet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .registers 6

    if-nez p3, :cond_f

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {p0, p2}, Lcom/twidroid/activity/SendTweet$10;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    iput-object p3, v0, Lcom/twidroid/activity/SendTweet;->W:Ljava/lang/String;

    goto :goto_e
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    :cond_14
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    if-nez p2, :cond_25

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/SendTweet$10;->b(I)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_25
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public b(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0, p1}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Z)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$10;->b:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Z)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .registers 3

    return-void
.end method
