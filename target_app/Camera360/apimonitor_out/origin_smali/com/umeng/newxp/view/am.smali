.class Lcom/umeng/newxp/view/am;
.super Ljava/lang/Object;
.source "LandingWebViewDialog.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/LandingWebViewDialog;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/am;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/am;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    invoke-static {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->b(Lcom/umeng/newxp/view/LandingWebViewDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
