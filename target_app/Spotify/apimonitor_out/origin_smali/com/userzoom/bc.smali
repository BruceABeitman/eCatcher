.class final Lcom/userzoom/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/userzoom/ay;


# direct methods
.method constructor <init>(Lcom/userzoom/ay;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iput-object p2, p0, Lcom/userzoom/bc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit8 v2, v0, -0x3c

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    const-class v2, Luserzoom/com/UzSurveyActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "MY_URL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/userzoom/bc;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IS_PRESURVEY"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/userzoom/bc;->b:Lcom/userzoom/ay;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    return-void
.end method
