.class public Lcom/facebook/widget/ax;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "fbconnect://success"

.field static final b:Ljava/lang/String; = "fbconnect://cancel"

.field public static final c:I = 0x1030010

.field private static final d:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final e:Ljava/lang/String; = "touch"

.field private static final f:Ljava/lang/String; = "user_agent"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/widget/bc;

.field private i:Landroid/webkit/WebView;

.field private j:Landroid/app/ProgressDialog;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/FrameLayout;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/ax;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->m:Z

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->n:Z

    iput-object p2, p0, Lcom/facebook/widget/ax;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/bc;)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->m:Z

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->n:Z

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

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/facebook/b/p;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ax;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    return-void
.end method

.method private a(I)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/widget/ba;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/ba;-><init>(Lcom/facebook/widget/ax;Lcom/facebook/widget/ax$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/widget/ax;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/widget/ax;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/facebook/widget/ax;->m:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->m:Z

    iget-object v0, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/widget/bc;->a(Landroid/os/Bundle;Lcom/facebook/t;)V

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/ax;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/ax;->b()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/ax;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/widget/ax;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/ax;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/widget/ax;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/facebook/widget/ax;->m:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->m:Z

    instance-of v0, p1, Lcom/facebook/t;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/facebook/t;

    :goto_11
    iget-object v0, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/bc;->a(Landroid/os/Bundle;Lcom/facebook/t;)V

    :cond_17
    return-void

    :cond_18
    new-instance v0, Lcom/facebook/t;

    invoke-direct {v0, p1}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_11
.end method

.method private b()V
    .registers 2

    new-instance v0, Lcom/facebook/v;

    invoke-direct {v0}, Lcom/facebook/v;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/widget/ax;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/widget/ax;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/ax;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/widget/ax;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/widget/ax$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ax$3;-><init>(Lcom/facebook/widget/ax;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/q;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/widget/ax;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ax;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/widget/ax;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/ax;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/widget/bc;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    return-object v0
.end method

.method public a(Lcom/facebook/widget/bc;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ax;->h:Lcom/facebook/widget/bc;

    return-void
.end method

.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/widget/ax;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_9
    iget-boolean v0, p0, Lcom/facebook/widget/ax;->n:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1a
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1d
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->n:Z

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/widget/ax$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/ax$1;-><init>(Lcom/facebook/widget/ax;)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/ax;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/a/t;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/widget/ax;->j:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/widget/ax$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ax$2;-><init>(Lcom/facebook/widget/ax;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v5}, Lcom/facebook/widget/ax;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/ax;->l:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/facebook/widget/ax;->c()V

    iget-object v0, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/widget/ax;->a(I)V

    iget-object v0, p0, Lcom/facebook/widget/ax;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/widget/ax;->k:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/widget/ax;->l:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/ax;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ax;->n:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method
