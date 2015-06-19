.class Lcom/umeng/newxp/view/aT;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aL;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aL;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aT;->a:Lcom/umeng/newxp/view/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_21

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/aT;->a:Lcom/umeng/newxp/view/aL;

    invoke-static {v1}, Lcom/umeng/newxp/view/aL;->f(Lcom/umeng/newxp/view/aL;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_21
    return-void
.end method
