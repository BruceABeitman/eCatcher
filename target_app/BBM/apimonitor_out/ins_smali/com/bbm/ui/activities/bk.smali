.class final Lcom/bbm/ui/activities/bk;
.super Landroid/webkit/WebChromeClient;
.source "CarrierBillingActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/CarrierBillingActivity;
.method constructor <init>(Lcom/bbm/ui/activities/CarrierBillingActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/bk;->a:Lcom/bbm/ui/activities/CarrierBillingActivity;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
.registers 8
const/4 v1, 0x0
iget-object v2, p0, Lcom/bbm/ui/activities/bk;->a:Lcom/bbm/ui/activities/CarrierBillingActivity;
const/16 v0, 0x64
if-ne p2, v0, :cond_4d
invoke-static {v1}, Lcom/bbm/ui/activities/CarrierBillingActivity;->a(Z)V
invoke-virtual {v2}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_4d
new-instance v3, Landroid/graphics/Rect;
invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
invoke-virtual {v2}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v4
sget-boolean v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->b:Z
if-eqz v0, :cond_51
const/4 v0, -0x2
:goto_29
iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I
invoke-virtual {v2}, Lcom/bbm/ui/activities/CarrierBillingActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
iget-object v0, v2, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_4d
iget-object v3, v2, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;
sget-boolean v0, Lcom/bbm/ui/activities/CarrierBillingActivity;->b:Z
if-eqz v0, :cond_5c
const/16 v0, 0x8
:goto_3e
invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, v2, Lcom/bbm/ui/activities/CarrierBillingActivity;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
sget-boolean v2, Lcom/bbm/ui/activities/CarrierBillingActivity;->b:Z
if-eqz v2, :cond_5e
:goto_4b
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_4d
invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
return-void
:cond_51
invoke-virtual {v3}, Landroid/graphics/Rect;->height()I
move-result v0
int-to-float v0, v0
const v3, 0x3f733333
mul-float/2addr v0, v3
float-to-int v0, v0
goto :goto_29
:cond_5c
move v0, v1
goto :goto_3e
:cond_5e
iget v1, v4, Landroid/view/WindowManager$LayoutParams;->height:I
goto :goto_4b
.end method