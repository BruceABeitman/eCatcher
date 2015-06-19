.class public final Lcom/facebook/widget/i;
.super Landroid/app/Dialog;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Lcom/facebook/widget/m;
.field private c:Landroid/webkit/WebView;
.field private d:Landroid/app/ProgressDialog;
.field private e:Landroid/widget/ImageView;
.field private f:Landroid/widget/FrameLayout;
.field private g:Z
.field private h:Z
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/m;)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-boolean v0, p0, Lcom/facebook/widget/i;->g:Z
iput-boolean v0, p0, Lcom/facebook/widget/i;->h:Z
if-nez p3, :cond_f
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:cond_f
const-string v0, "redirect_uri"
const-string v1, "fbconnect://success"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "display"
const-string v1, "touch"
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/facebook/internal/ad;->a()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/facebook/internal/ad;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/dialog/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p3}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/i;->a:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/widget/i;->b:Lcom/facebook/widget/m;
return-void
.end method
.method private static a(IFII)I
.registers 10
const-wide/high16 v0, 0x3fe0
int-to-float v2, p0
div-float/2addr v2, p1
float-to-int v2, v2
if-gt v2, p2, :cond_d
const-wide/high16 v0, 0x3ff0
:cond_9
:goto_9
int-to-double v2, p0
mul-double/2addr v0, v2
double-to-int v0, v0
return v0
:cond_d
if-ge v2, p3, :cond_9
sub-int v2, p3, v2
int-to-double v2, v2
sub-int v4, p3, p2
int-to-double v4, v4
div-double/2addr v2, v4
mul-double/2addr v2, v0
add-double/2addr v0, v2
goto :goto_9
.end method
.method static synthetic a(Lcom/facebook/widget/i;)V
.registers 2
new-instance v0, Lcom/facebook/FacebookOperationCanceledException;
invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V
invoke-direct {p0, v0}, Lcom/facebook/widget/i;->a(Ljava/lang/Throwable;)V
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/i;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/i;->b:Lcom/facebook/widget/m;
if-eqz v0, :cond_11
iget-boolean v0, p0, Lcom/facebook/widget/i;->g:Z
if-nez v0, :cond_11
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/i;->g:Z
iget-object v0, p0, Lcom/facebook/widget/i;->b:Lcom/facebook/widget/m;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Lcom/facebook/widget/m;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
:cond_11
return-void
.end method
.method static synthetic a(Lcom/facebook/widget/i;Ljava/lang/Throwable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/widget/i;->a(Ljava/lang/Throwable;)V
return-void
.end method
.method private a(Ljava/lang/Throwable;)V
.registers 4
iget-object v0, p0, Lcom/facebook/widget/i;->b:Lcom/facebook/widget/m;
if-eqz v0, :cond_17
iget-boolean v0, p0, Lcom/facebook/widget/i;->g:Z
if-nez v0, :cond_17
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/i;->g:Z
instance-of v0, p1, Lcom/facebook/FacebookException;
if-eqz v0, :cond_18
check-cast p1, Lcom/facebook/FacebookException;
:goto_11
iget-object v0, p0, Lcom/facebook/widget/i;->b:Lcom/facebook/widget/m;
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Lcom/facebook/widget/m;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
:cond_17
return-void
:cond_18
new-instance v0, Lcom/facebook/FacebookException;
invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
move-object p1, v0
goto :goto_11
.end method
.method static synthetic b(Lcom/facebook/widget/i;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/i;->h:Z
return v0
.end method
.method static synthetic c(Lcom/facebook/widget/i;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/widget/i;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/i;->f:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/widget/i;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
return-object v0
.end method
.method static synthetic f(Lcom/facebook/widget/i;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
return-object v0
.end method
.method public final dismiss()V
.registers 2
iget-object v0, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V
:cond_9
iget-boolean v0, p0, Lcom/facebook/widget/i;->h:Z
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_1a
invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
:cond_1d
return-void
.end method
.method public final onAttachedToWindow()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/widget/i;->h:Z
invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V
return-void
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lcom/facebook/widget/i; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v10, 0x4
const/4 v9, -0x1
const/4 v8, -0x2
const/4 v7, 0x1
const/4 v6, 0x0
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/facebook/widget/i$1;
invoke-direct {v0, p0}, Lcom/facebook/widget/i$1;-><init>(Lcom/facebook/widget/i;)V
invoke-virtual {p0, v0}, Lcom/facebook/widget/i;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
new-instance v0, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z
iget-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/a/g;->c:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/facebook/widget/i;->d:Landroid/app/ProgressDialog;
new-instance v1, Lcom/facebook/widget/i$2;
invoke-direct {v1, p0}, Lcom/facebook/widget/i$2;-><init>(Lcom/facebook/widget/i;)V
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {p0, v7}, Lcom/facebook/widget/i;->requestWindowFeature(I)Z
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/i;->f:Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
new-instance v2, Landroid/util/DisplayMetrics;
invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I
iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I
if-ge v0, v1, :cond_160
iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I
:goto_67
iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I
iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I
if-ge v1, v3, :cond_164
iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I
:goto_6f
iget v3, v2, Landroid/util/DisplayMetrics;->density:F
const/16 v4, 0x1e0
const/16 v5, 0x320
invoke-static {v0, v3, v4, v5}, Lcom/facebook/widget/i;->a(IFII)I
move-result v0
iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v0
iget v3, v2, Landroid/util/DisplayMetrics;->density:F
const/16 v4, 0x320
const/16 v5, 0x500
invoke-static {v1, v3, v4, v5}, Lcom/facebook/widget/i;->a(IFII)I
move-result v1
iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-virtual {p0}, Lcom/facebook/widget/i;->getWindow()Landroid/view/Window;
move-result-object v2
invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V
invoke-virtual {p0}, Lcom/facebook/widget/i;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
invoke-virtual {p0}, Lcom/facebook/widget/i;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
new-instance v1, Lcom/facebook/widget/i$3;
invoke-direct {v1, p0}, Lcom/facebook/widget/i$3;-><init>(Lcom/facebook/widget/i;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/a/d;->b:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
add-int/lit8 v0, v0, 0x1
new-instance v1, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/webkit/WebView;
invoke-virtual {p0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
new-instance v3, Lcom/facebook/widget/l;
invoke-direct {v3, p0, v6}, Lcom/facebook/widget/l;-><init>(Lcom/facebook/widget/i;B)V
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/facebook/widget/i;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
new-instance v3, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v2, v10}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
iget-object v2, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V
invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v0, p0, Lcom/facebook/widget/i;->c:Landroid/webkit/WebView;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
const/high16 v0, -0x3400
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/facebook/widget/i;->f:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/facebook/widget/i;->f:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/facebook/widget/i;->e:Landroid/widget/ImageView;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/facebook/widget/i;->f:Landroid/widget/FrameLayout;
invoke-virtual {p0, v0}, Lcom/facebook/widget/i;->setContentView(Landroid/view/View;)V
const-string v1, " - Lcom/facebook/widget/i; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_160
iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I
goto/16 :goto_67
:cond_164
iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I
goto/16 :goto_6f
.end method
.method public final onDetachedFromWindow()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/i;->h:Z
invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V
return-void
.end method