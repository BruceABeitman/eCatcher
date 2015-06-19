.class public Luserzoom/com/InterceptDialog;
.super Landroid/app/Activity;
.field private final a:Landroid/os/Handler;
.field private b:Landroid/webkit/WebView;
.field private c:Landroid/app/Dialog;
.field private d:I
.field private e:I
.field private f:I
.field private g:Landroid/webkit/WebChromeClient;
.field private h:Landroid/os/Handler;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Luserzoom/com/InterceptDialog;->a:Landroid/os/Handler;
const/16 v0, 0x128
iput v0, p0, Luserzoom/com/InterceptDialog;->d:I
const/16 v0, 0x1be
iput v0, p0, Luserzoom/com/InterceptDialog;->e:I
new-instance v0, Lcom/userzoom/aa;
invoke-direct {v0}, Lcom/userzoom/aa;-><init>()V
iput-object v0, p0, Luserzoom/com/InterceptDialog;->g:Landroid/webkit/WebChromeClient;
new-instance v0, Lcom/userzoom/af;
invoke-direct {v0, p0}, Lcom/userzoom/af;-><init>(Luserzoom/com/InterceptDialog;)V
iput-object v0, p0, Luserzoom/com/InterceptDialog;->h:Landroid/os/Handler;
return-void
.end method
.method public static synthetic a(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Luserzoom/com/InterceptDialog;->h:Landroid/os/Handler;
return-object v0
.end method
.method public static synthetic a(Luserzoom/com/InterceptDialog;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v1, ""
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
const v1, 0x1040007
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;
:goto_13
const v1, 0x1040013
new-instance v2, Lcom/userzoom/ae;
invoke-direct {v2, p0}, Lcom/userzoom/ae;-><init>(Luserzoom/com/InterceptDialog;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
:cond_22
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
goto :goto_13
.end method
.method public static synthetic b(Luserzoom/com/InterceptDialog;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
return-object v0
.end method
.method public static synthetic c(Luserzoom/com/InterceptDialog;)I
.registers 2
iget v0, p0, Luserzoom/com/InterceptDialog;->d:I
return v0
.end method
.method public static synthetic d(Luserzoom/com/InterceptDialog;)I
.registers 2
iget v0, p0, Luserzoom/com/InterceptDialog;->e:I
return v0
.end method
.method public static synthetic e(Luserzoom/com/InterceptDialog;)I
.registers 2
const/4 v0, 0x2
iput v0, p0, Luserzoom/com/InterceptDialog;->f:I
return v0
.end method
.method public static synthetic f(Luserzoom/com/InterceptDialog;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
return-object v0
.end method
.method public static synthetic g(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Luserzoom/com/InterceptDialog;->a:Landroid/os/Handler;
return-object v0
.end method
.method public final a(II)V
.registers 6
const-string v0, "InterceptDialog"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "setting intercept width:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " intercept height: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iput p1, p0, Luserzoom/com/InterceptDialog;->d:I
iput p2, p0, Luserzoom/com/InterceptDialog;->e:I
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 9
const-wide/high16 v5, 0x3ff8
const/4 v4, 0x2
const/4 v3, 0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
const-string v0, "InterceptDialog"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "onConfigurationChanged "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Luserzoom/com/InterceptDialog;->d:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Luserzoom/com/InterceptDialog;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
iget v1, p1, Landroid/content/res/Configuration;->orientation:I
if-ne v1, v4, :cond_4d
iget v1, p0, Luserzoom/com/InterceptDialog;->f:I
if-eq v1, v4, :cond_4d
const-string v1, "InterceptDialog"
const-string v2, "Changing orientation to landscape!!"
invoke-static {v1, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p0, Luserzoom/com/InterceptDialog;->d:I
int-to-double v1, v1
mul-double/2addr v1, v5
double-to-int v1, v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iget v1, p0, Luserzoom/com/InterceptDialog;->e:I
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
iput v4, p0, Luserzoom/com/InterceptDialog;->f:I
:cond_4d
iget v1, p1, Landroid/content/res/Configuration;->orientation:I
if-ne v1, v3, :cond_69
iget v1, p0, Luserzoom/com/InterceptDialog;->f:I
if-eq v1, v3, :cond_69
const-string v1, "InterceptDialog"
const-string v2, "Changing orientation to portrait!!"
invoke-static {v1, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget v1, p0, Luserzoom/com/InterceptDialog;->d:I
int-to-double v1, v1
div-double/2addr v1, v5
double-to-int v1, v1
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
iget v1, p0, Luserzoom/com/InterceptDialog;->e:I
iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I
iput v3, p0, Luserzoom/com/InterceptDialog;->f:I
:cond_69
iget-object v1, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iget-object v1, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v1
iget-object v2, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v1, v2}, Luserzoom/com/a;->a(Landroid/webkit/WebView;)Landroid/view/ViewGroup;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/userzoom/ad;
invoke-direct {v1, p0}, Lcom/userzoom/ad;-><init>(Luserzoom/com/InterceptDialog;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Luserzoom/com/InterceptDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x2
const/4 v6, -0x1
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_15
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v1
invoke-virtual {p0}, Luserzoom/com/InterceptDialog;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/userzoom/ar;
iput-object v0, v1, Luserzoom/com/a;->d:Lcom/userzoom/ar;
:cond_15
invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invoke-virtual {p0}, Luserzoom/com/InterceptDialog;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
iput v0, p0, Luserzoom/com/InterceptDialog;->f:I
invoke-virtual {p0}, Luserzoom/com/InterceptDialog;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "MY_URL"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "InterceptDialog"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Extras bundle: *"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "*"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/webkit/WebView;
invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
iget-object v1, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
iget-object v2, p0, Luserzoom/com/InterceptDialog;->g:Landroid/webkit/WebChromeClient;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c8
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0, v5}, Luserzoom/com/InterceptDialog;->requestWindowFeature(I)Z
invoke-virtual {p0}, Luserzoom/com/InterceptDialog;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {p0}, Luserzoom/com/InterceptDialog;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setLayout(II)V
invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V
new-instance v1, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Landroid/app/Dialog;
invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v1
iget-object v2, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v1, v2}, Luserzoom/com/a;->a(Landroid/webkit/WebView;)Landroid/view/ViewGroup;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V
new-instance v1, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->c:Landroid/app/Dialog;
new-instance v1, Lcom/userzoom/ab;
invoke-direct {v1, p0}, Lcom/userzoom/ab;-><init>(Luserzoom/com/InterceptDialog;)V
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
:cond_c8
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " UZLIB"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
new-instance v1, Lcom/userzoom/ay;
iget-object v2, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
invoke-direct {v1, p0, p0, v2}, Lcom/userzoom/ay;-><init>(Luserzoom/com/InterceptDialog;Landroid/content/Context;Landroid/webkit/WebView;)V
const-string v2, "Android"
invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
new-instance v1, Lcom/userzoom/ac;
invoke-direct {v1, p0}, Lcom/userzoom/ac;-><init>(Luserzoom/com/InterceptDialog;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Luserzoom/com/InterceptDialog;->b:Landroid/webkit/WebView;
const-string v1, "https://s.userzoom.com"
sget-object v2, Lcom/userzoom/ap;->a:Ljava/lang/String;
const-string v3, "text/html"
const-string v4, "utf-8"
const-string v5, "https://s.userzoom.com"
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Luserzoom/com/InterceptDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 2
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
iget-object v0, v0, Luserzoom/com/a;->d:Lcom/userzoom/ar;
return-object v0
.end method
.method public onStart()V
.registers 3
const-string v1, " + Luserzoom/com/InterceptDialog; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Luserzoom/com/a;->a(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
const-string v1, " - Luserzoom/com/InterceptDialog; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Luserzoom/com/InterceptDialog; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Luserzoom/com/a;->a()Luserzoom/com/a;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Luserzoom/com/a;->b(Ljava/lang/String;)V
const-string v0, "InterceptDialog"
const-string v1, "InterceptDialog onStop"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
const-string v1, " - Luserzoom/com/InterceptDialog; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method