.class Lcom/twidroid/activity/LoginDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/LoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/LoginDialog;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/LoginDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v1}, Lcom/twidroid/activity/LoginDialog;->b(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v1}, Lcom/twidroid/activity/LoginDialog;->c(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v1}, Lcom/twidroid/activity/LoginDialog;->d(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->d(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v4}, Lcom/twidroid/model/twitter/c;->b(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    sget-object v1, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v2}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Lcom/twidroid/activity/j;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-direct {v0, v1, v3}, Lcom/twidroid/activity/j;-><init>(Lcom/twidroid/activity/LoginDialog;Lcom/twidroid/activity/LoginDialog$1;)V

    new-array v1, v4, [Lcom/twidroid/model/twitter/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v3, v3, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/j;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    :goto_7e
    return-void

    :cond_7f
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    const v2, 0x7f0c0180

    invoke-virtual {v1, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/LoginDialog;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$2;->a:Lcom/twidroid/activity/LoginDialog;

    iget-object v0, v0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0, v3, v3}, Lcom/twidroid/model/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/activity/LoginDialog$2$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/LoginDialog$2$1;-><init>(Lcom/twidroid/activity/LoginDialog$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7e
.end method
