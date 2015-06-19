.class public final Lcom/facebook/b/j;
.super Landroid/app/Dialog;
.source "FbDialog.java"
.field static final a:[F
.field static final b:[F
.field static final c:Landroid/widget/FrameLayout$LayoutParams;
.field private d:Ljava/lang/String;
.field private e:Lcom/facebook/b/e;
.field private f:Landroid/app/ProgressDialog;
.field private g:Landroid/widget/ImageView;
.field private h:Landroid/webkit/WebView;
.field private i:Landroid/widget/FrameLayout;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x2
const/4 v1, -0x1
new-array v0, v2, [F
fill-array-data v0, :array_18
sput-object v0, Lcom/facebook/b/j;->a:[F
new-array v0, v2, [F
fill-array-data v0, :array_20
sput-object v0, Lcom/facebook/b/j;->b:[F
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
sput-object v0, Lcom/facebook/b/j;->c:Landroid/widget/FrameLayout$LayoutParams;
return-void
:array_20
.array-data 0x4
0x0t 0x0t 0x20t 0x42t
0x0t 0x0t 0x70t 0x42t
.end array-data
:array_18
.array-data 0x4
0x0t 0x0t 0xa0t 0x41t
0x0t 0x0t 0x70t 0x42t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/e;)V
.registers 5
const v0, 0x1030010
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-object p2, p0, Lcom/facebook/b/j;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/b/j;->e:Lcom/facebook/b/e;
return-void
.end method
.method static synthetic a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->e:Lcom/facebook/b/e;
return-object v0
.end method
.method private a()V
.registers 3
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
new-instance v1, Lcom/facebook/b/k;
invoke-direct {v1, p0}, Lcom/facebook/b/k;-><init>(Lcom/facebook/b/j;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/au;->com_facebook_close:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method private a(I)V
.registers 6
const/4 v3, 0x0
new-instance v0, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/webkit/WebView;
invoke-virtual {p0}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
new-instance v2, Lcom/facebook/b/l;
invoke-direct {v2, p0, v3}, Lcom/facebook/b/l;-><init>(Lcom/facebook/b/j;B)V
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/facebook/b/j;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
sget-object v2, Lcom/facebook/b/j;->c:Landroid/widget/FrameLayout$LayoutParams;
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V
invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v1, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v1, p0, Lcom/facebook/b/j;->i:Landroid/widget/FrameLayout;
invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
return-void
.end method
.method static synthetic b(Lcom/facebook/b/j;)Landroid/app/ProgressDialog;
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->f:Landroid/app/ProgressDialog;
return-object v0
.end method
.method static synthetic c(Lcom/facebook/b/j;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->i:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic d(Lcom/facebook/b/j;)Landroid/webkit/WebView;
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->h:Landroid/webkit/WebView;
return-object v0
.end method
.method static synthetic e(Lcom/facebook/b/j;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
return-object v0
.end method
.method public final onBackPressed()V
.registers 2
invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V
iget-object v0, p0, Lcom/facebook/b/j;->e:Lcom/facebook/b/e;
invoke-interface {v0}, Lcom/facebook/b/e;->a()V
return-void
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/facebook/b/j; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v4, -0x1
const/4 v3, -0x2
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/app/ProgressDialog;
invoke-virtual {p0}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/b/j;->f:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/facebook/b/j;->f:Landroid/app/ProgressDialog;
invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z
iget-object v0, p0, Lcom/facebook/b/j;->f:Landroid/app/ProgressDialog;
const-string v1, "Loading..."
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {p0, v2}, Lcom/facebook/b/j;->requestWindowFeature(I)Z
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/b/j;->i:Landroid/widget/FrameLayout;
invoke-direct {p0}, Lcom/facebook/b/j;->a()V
iget-object v0, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
invoke-direct {p0, v0}, Lcom/facebook/b/j;->a(I)V
iget-object v0, p0, Lcom/facebook/b/j;->i:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/facebook/b/j;->g:Landroid/widget/ImageView;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/facebook/b/j;->i:Landroid/widget/FrameLayout;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/facebook/b/j;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const-string v1, " - Lcom/facebook/b/j; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method