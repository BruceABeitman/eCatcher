.class public final Lcom/facebook/widget/h;
.super Landroid/app/Dialog;
.source "WebDialog.java"
.field private a:Ljava/lang/String;
.field private b:Lcom/facebook/widget/o;
.field private c:Landroid/webkit/WebView;
.field private d:Landroid/app/ProgressDialog;
.field private e:Landroid/widget/ImageView;
.field private f:Landroid/widget/FrameLayout;
.field private g:Z
.field private h:Z
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/o;)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-boolean v0, p0, Lcom/facebook/widget/h;->g:Z
iput-boolean v0, p0, Lcom/facebook/widget/h;->h:Z
if-nez p3, :cond_f
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:cond_f
const-string v0, "display"
const-string v1, "touch"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "type"
const-string v1, "user_agent"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "m.facebook.com"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "dialog/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p3}, Lcom/facebook/g/t;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/h;->a:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/widget/h;->b:Lcom/facebook/widget/o;
return-void
.end method
.method private a()V
.registers 2
new-instance v0, Lcom/facebook/ab;
invoke-direct {v0}, Lcom/facebook/ab;-><init>()V
invoke-direct {p0, v0}, Lcom/facebook/widget/h;->a(Ljava/lang/Throwable;)V
return-void
.end method
.method private a(I)V
.registers 7
const/4 v4, -0x1
const/4 v3, 0x0
new-instance v0, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/webkit/WebView;
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
new-instance v2, Lcom/facebook/widget/n;
invoke-direct {v2, p0, v3}, Lcom/facebook/widget/n;-><init>(Lcom/facebook/widget/h;B)V
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/facebook/widget/h;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v1, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v1, p0, Lcom/facebook/widget/h;->f:Landroid/widget/FrameLayout;
invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method private a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/h;->b:Lcom/facebook/widget/o;
if-eqz v0, :cond_11
iget-boolean v0, p0, Lcom/facebook/widget/h;->g:Z
if-nez v0, :cond_11
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/h;->g:Z
iget-object v0, p0, Lcom/facebook/widget/h;->b:Lcom/facebook/widget/o;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Lcom/facebook/widget/o;->a(Landroid/os/Bundle;Lcom/facebook/z;)V
:cond_11
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/h;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/widget/h;->a()V
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/h;Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/widget/h;->a(Landroid/os/Bundle;)V
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/widget/h;->a(Ljava/lang/Throwable;)V
return-void
.end method
.method private a(Ljava/lang/Throwable;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/h;->b:Lcom/facebook/widget/o;
if-eqz v0, :cond_17
iget-boolean v0, p0, Lcom/facebook/widget/h;->g:Z
if-nez v0, :cond_17
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/h;->g:Z
instance-of v0, p1, Lcom/facebook/z;
if-eqz v0, :cond_18
check-cast p1, Lcom/facebook/z;
:goto_11
iget-object v0, p0, Lcom/facebook/widget/h;->b:Lcom/facebook/widget/o;
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Lcom/facebook/widget/o;->a(Landroid/os/Bundle;Lcom/facebook/z;)V
:cond_17
return-void
:cond_18
new-instance v0, Lcom/facebook/z;
invoke-direct {v0, p1}, Lcom/facebook/z;-><init>(Ljava/lang/Throwable;)V
move-object p1, v0
goto :goto_11
.end method
.method private b()V
.registers 3
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
new-instance v1, Lcom/facebook/widget/k;
invoke-direct {v1, p0}, Lcom/facebook/widget/k;-><init>(Lcom/facebook/widget/h;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/au;->com_facebook_close:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method static synthetic b(Lcom/facebook/widget/h;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/h;->h:Z
return v0
.end method
.method static synthetic c(Lcom/facebook/widget/h;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/widget/h;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/h;->f:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/widget/h;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
return-object v0
.end method
.method static synthetic f(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
return-object v0
.end method
.method public final dismiss()V
.registers 2
iget-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/widget/h;->c:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
:cond_9
iget-boolean v0, p0, Lcom/facebook/widget/h;->h:Z
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_1a
invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
:cond_1d
return-void
.end method
.method public final onAttachedToWindow()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/widget/h;->h:Z
invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V
return-void
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/facebook/widget/h; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v4, -0x1
const/4 v3, -0x2
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/facebook/widget/i;
invoke-direct {v0, p0}, Lcom/facebook/widget/i;-><init>(Lcom/facebook/widget/h;)V
invoke-virtual {p0, v0}, Lcom/facebook/widget/h;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
new-instance v0, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z
iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->com_facebook_loading:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/facebook/widget/h;->d:Landroid/app/ProgressDialog;
new-instance v1, Lcom/facebook/widget/j;
invoke-direct {v1, p0}, Lcom/facebook/widget/j;-><init>(Lcom/facebook/widget/h;)V
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {p0, v5}, Lcom/facebook/widget/h;->requestWindowFeature(I)Z
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/h;->f:Landroid/widget/FrameLayout;
invoke-direct {p0}, Lcom/facebook/widget/h;->b()V
iget-object v0, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
invoke-direct {p0, v0}, Lcom/facebook/widget/h;->a(I)V
iget-object v0, p0, Lcom/facebook/widget/h;->f:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/facebook/widget/h;->e:Landroid/widget/ImageView;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/facebook/widget/h;->f:Landroid/widget/FrameLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/h;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const-string v1, " - Lcom/facebook/widget/h; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onDetachedFromWindow()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/h;->h:Z
invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V
return-void
.end method