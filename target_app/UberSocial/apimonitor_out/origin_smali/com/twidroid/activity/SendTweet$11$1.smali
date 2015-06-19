.class Lcom/twidroid/activity/SendTweet$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet$11;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet$11;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet$11;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0, v3}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Z)Z

    :try_start_13
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->e(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/SendTweet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->d()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3c} :catch_7e

    :goto_3c
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->e(Lcom/twidroid/activity/SendTweet;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->a()V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->N:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cm()Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_74
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    const/16 v1, 0x188

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    :goto_7d
    return-void

    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_83
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    const v2, 0x7f0c0176

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/SendTweet;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$11$1;->a:Lcom/twidroid/activity/SendTweet$11;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet$11;->c:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->finish()V

    goto :goto_7d
.end method
