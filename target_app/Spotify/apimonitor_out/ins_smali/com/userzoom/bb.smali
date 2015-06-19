.class final Lcom/userzoom/bb;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private synthetic a:I
.field private synthetic b:Landroid/util/DisplayMetrics;
.field private synthetic c:I
.field private synthetic d:Lcom/userzoom/ay;
.method constructor <init>(Lcom/userzoom/ay;ILandroid/util/DisplayMetrics;I)V
.registers 5
iput-object p1, p0, Lcom/userzoom/bb;->d:Lcom/userzoom/ay;
iput p2, p0, Lcom/userzoom/bb;->a:I
iput-object p3, p0, Lcom/userzoom/bb;->b:Landroid/util/DisplayMetrics;
iput p4, p0, Lcom/userzoom/bb;->c:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/userzoom/bb;->d:Lcom/userzoom/ay;
iget-object v0, v0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
iget v1, p0, Lcom/userzoom/bb;->a:I
int-to-float v1, v1
iget-object v2, p0, Lcom/userzoom/bb;->b:Landroid/util/DisplayMetrics;
iget v2, v2, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iget v1, p0, Lcom/userzoom/bb;->c:I
int-to-float v1, v1
iget-object v2, p0, Lcom/userzoom/bb;->b:Landroid/util/DisplayMetrics;
iget v2, v2, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
iget-object v1, p0, Lcom/userzoom/bb;->d:Lcom/userzoom/ay;
iget-object v1, v1, Lcom/userzoom/ay;->b:Landroid/content/Context;
check-cast v1, Luserzoom/com/InterceptDialog;
iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
invoke-virtual {v1, v2, v3}, Luserzoom/com/InterceptDialog;->a(II)V
iget-object v1, p0, Lcom/userzoom/bb;->d:Lcom/userzoom/ay;
iget-object v1, v1, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/userzoom/bb;->d:Lcom/userzoom/ay;
iget-object v0, v0, Lcom/userzoom/ay;->a:Luserzoom/com/InterceptDialog;
invoke-static {v0}, Luserzoom/com/InterceptDialog;->f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method