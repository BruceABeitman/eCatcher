.class public final Lcom/instagram/g/a;
.super Lcom/instagram/base/a/a;
.source "FeedbackAlertDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/g/a;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "feedback_message"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "feedback_title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "feedback_title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    new-instance v4, Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/g/a;->l()Landroid/support/v4/app/k;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v3

    if-eqz v0, :cond_2b

    invoke-virtual {v3, v0}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;

    :cond_2b
    const-string v0, "feedback_url"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "feedback_appeal_label"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    invoke-static {v4}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    new-instance v5, Lcom/instagram/g/b;

    invoke-direct {v5, p0, v0, v4}, Lcom/instagram/g/b;-><init>(Lcom/instagram/g/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    :cond_4b
    const-string v0, "feedback_ignore_label"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    sget v0, Lcom/facebook/az;->dismiss:I

    invoke-virtual {p0, v0}, Lcom/instagram/g/a;->c(I)Ljava/lang/String;

    move-result-object v0

    :cond_5d
    invoke-virtual {v3, v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_66
    move-object v0, v1

    goto :goto_19
.end method
