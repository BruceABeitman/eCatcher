.class final Lcom/userzoom/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/userzoom/ay;

.field private synthetic b:I

.field private synthetic c:I


# direct methods
.method constructor <init>(Lcom/userzoom/ay;II)V
    .registers 4

    iput-object p1, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iput p2, p0, Lcom/userzoom/az;->b:I

    iput p3, p0, Lcom/userzoom/az;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x3c

    const-string v0, "InterceptDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Metrics density: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/userzoom/az;->b:I

    if-eqz v4, :cond_104

    iget v4, p0, Lcom/userzoom/az;->b:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/userzoom/az;->c:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_56
    iget-object v4, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v4, v4, Lcom/userzoom/ay;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_93

    iget-object v4, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v4, v4, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v4}, Luserzoom/com/InterceptDialog;->d(Luserzoom/com/InterceptDialog;)I

    move-result v4

    int-to-float v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const-string v1, "InterceptDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LANDSCAPE ORIENTATION!! with width "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v1, v1, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v1}, Luserzoom/com/InterceptDialog;->e(Luserzoom/com/InterceptDialog;)I

    :cond_93
    iget-object v1, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v1, v1, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v1, v1, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;

    move-result-object v1

    iget-object v4, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v4, v4, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Luserzoom/com/a;->a(Landroid/webkit/WebView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    const-string v0, "InterceptDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "screen size: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/userzoom/ba;

    invoke-direct {v1, p0}, Lcom/userzoom/ba;-><init>(Lcom/userzoom/az;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_103
    return-void

    :cond_104
    iget-object v4, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v4, v4, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v4}, Luserzoom/com/InterceptDialog;->c(Luserzoom/com/InterceptDialog;)I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v4, v4, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v4}, Luserzoom/com/InterceptDialog;->d(Luserzoom/com/InterceptDialog;)I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_122} :catch_124

    goto/16 :goto_56

    :catch_124
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_103
.end method
