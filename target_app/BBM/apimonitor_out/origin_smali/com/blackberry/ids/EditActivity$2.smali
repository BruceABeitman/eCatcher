.class Lcom/blackberry/ids/EditActivity$2;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/EditActivity;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/EditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/EditActivity$2;->a:Lcom/blackberry/ids/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$2;->a:Lcom/blackberry/ids/EditActivity;

    iget-boolean v0, v0, Lcom/blackberry/ids/WebActivity;->d:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$2;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->a(Lcom/blackberry/ids/EditActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$2;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->a(Lcom/blackberry/ids/EditActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    :cond_1c
    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$2;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->b(Lcom/blackberry/ids/EditActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$2;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->b(Lcom/blackberry/ids/EditActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2e
    return-void
.end method
