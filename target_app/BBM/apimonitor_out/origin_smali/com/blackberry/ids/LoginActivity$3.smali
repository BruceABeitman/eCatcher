.class Lcom/blackberry/ids/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/LoginActivity;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/LoginActivity$3;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$3;->a:Lcom/blackberry/ids/LoginActivity;

    iget-boolean v0, v0, Lcom/blackberry/ids/WebActivity;->d:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$3;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v0}, Lcom/blackberry/ids/LoginActivity;->b(Lcom/blackberry/ids/LoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$3;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v0}, Lcom/blackberry/ids/LoginActivity;->b(Lcom/blackberry/ids/LoginActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    :cond_1c
    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$3;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v0}, Lcom/blackberry/ids/LoginActivity;->c(Lcom/blackberry/ids/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/blackberry/ids/LoginActivity$3;->a:Lcom/blackberry/ids/LoginActivity;

    invoke-static {v0}, Lcom/blackberry/ids/LoginActivity;->c(Lcom/blackberry/ids/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2e
    return-void
.end method
