.class public final Lcom/userzoom/bw;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Luserzoom/com/UzSurveyActivity;


# direct methods
.method public constructor <init>(Luserzoom/com/UzSurveyActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/userzoom/bw;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final CloseAndSaveUrl()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "UzSurveyActivity"

    const-string v1, "CloseAndSaveUrl"

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    iget-object v1, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    invoke-static {v1}, Luserzoom/com/UzSurveyActivity;->b(Luserzoom/com/UzSurveyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Luserzoom/com/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    iget-boolean v0, v0, Luserzoom/com/UzSurveyActivity;->a:Z

    if-nez v0, :cond_21

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v0

    invoke-virtual {v0}, Luserzoom/com/a;->f()V

    :cond_21
    iget-object v0, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    invoke-static {v0}, Luserzoom/com/UzSurveyActivity;->c(Luserzoom/com/UzSurveyActivity;)Z

    iget-object v0, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    iget-boolean v0, v0, Luserzoom/com/UzSurveyActivity;->a:Z

    if-nez v0, :cond_33

    invoke-static {}, Lcom/userzoom/n;->b()Lcom/userzoom/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/userzoom/n;->h()V

    :cond_33
    invoke-virtual {p0}, Lcom/userzoom/bw;->closeBrowser()V

    return-void
.end method

.method public final closeBrowser()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    invoke-static {v0}, Luserzoom/com/UzSurveyActivity;->e(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/userzoom/aj;

    invoke-direct {v1, p0}, Lcom/userzoom/aj;-><init>(Lcom/userzoom/bw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final log(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "UzSurveyActivity"

    invoke-static {v0, p1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openBrowser(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "UzSurveyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loading website with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/userzoom/bw;->b:Luserzoom/com/UzSurveyActivity;

    invoke-virtual {v0, v1}, Luserzoom/com/UzSurveyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final processHTML(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public final showConfirmMessage(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "UzSurveyActivity"

    invoke-static {v0, p1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/userzoom/bw;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040013

    new-instance v2, Lcom/userzoom/bx;

    invoke-direct {v2, p0}, Lcom/userzoom/bx;-><init>(Lcom/userzoom/bw;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040009

    new-instance v2, Lcom/userzoom/ai;

    invoke-direct {v2}, Lcom/userzoom/ai;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
