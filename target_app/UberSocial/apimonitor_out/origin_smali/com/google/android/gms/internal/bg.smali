.class public final Lcom/google/android/gms/internal/bg;
.super Lcom/google/android/gms/internal/bu;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/internal/bq;

.field private c:Lcom/google/android/gms/internal/bl;

.field private d:Lcom/google/android/gms/internal/ec;

.field private e:Lcom/google/android/gms/internal/bi;

.field private f:Lcom/google/android/gms/internal/bo;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private i:Z

.field private j:Z

.field private k:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bu;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bg;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bg;->j:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bq;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/db;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bq;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/bq;)V

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private c(Z)V
    .registers 14

    const/16 v1, 0x400

    const/4 v11, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget v1, v1, Lcom/google/android/gms/internal/bq;->k:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bg;->a(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_28

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/du;->a(Landroid/view/Window;)V

    :cond_28
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->e()Lcom/google/android/gms/internal/ef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ef;->a()Z

    move-result v3

    if-eqz p1, :cond_ca

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ec;->d()Lcom/google/android/gms/internal/ab;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v5, v5, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/sw;Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/ec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->e()Lcom/google/android/gms/internal/ef;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v8, v0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v9, v0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/bp;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->e()Lcom/google/android/gms/internal/ef;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/bg$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bg$1;-><init>(Lcom/google/android/gms/internal/bg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ef;->a(Lcom/google/android/gms/internal/eh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ec;->loadUrl(Ljava/lang/String;)V

    :goto_92
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/bg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0, v1, v11, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_a5

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->b()V

    :cond_a5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/bg;->a(Z)V

    return-void

    :cond_a9
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v5, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v6, v0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v7, v0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ec;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_c2
    new-instance v0, Lcom/google/android/gms/internal/bh;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ec;->setContext(Landroid/content/Context;)V

    goto :goto_92
.end method

.method private k()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bg;->j:Z

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bg;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/bi;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ec;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/bi;

    iget-object v0, v0, Lcom/google/android/gms/internal/bi;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/bi;

    iget v2, v2, Lcom/google/android/gms/internal/bi;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/bi;

    iget-object v3, v3, Lcom/google/android/gms/internal/bi;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bk;->o()V

    goto :goto_c
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public a(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/bg;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bg;->i:Z

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    if-nez v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/bh;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Lcom/google/android/gms/internal/bh; {:try_start_c .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    if-nez p1, :cond_54

    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bk;->p()V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->l:I

    if-eq v0, v2, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tk;->r()V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->l:I

    packed-switch v0, :pswitch_data_9e

    new-instance v0, Lcom/google/android/gms/internal/bh;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bh;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bg;->c(Z)V

    goto :goto_31

    :pswitch_68
    new-instance v0, Lcom/google/android/gms/internal/bi;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bi;-><init>(Lcom/google/android/gms/internal/ec;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/bi;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bg;->c(Z)V

    goto :goto_31

    :pswitch_78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bg;->c(Z)V

    goto :goto_31

    :pswitch_7d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bg;->i:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_31

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v1, v1, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-object v2, v2, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/be;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bp;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_9c
    .catch Lcom/google/android/gms/internal/bh; {:try_start_34 .. :try_end_9c} :catch_24

    goto :goto_31

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_63
        :pswitch_68
        :pswitch_78
        :pswitch_7d
    .end packed-switch
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bg;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public a(Z)V
    .registers 6

    const/4 v3, -0x2

    if-eqz p1, :cond_30

    const/16 v0, 0x32

    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/bo;

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/bo;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/bg;->f:Lcom/google/android/gms/internal/bo;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_33

    const/16 v0, 0xb

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->f:Lcom/google/android/gms/internal/bo;

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/bq;->h:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bo;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->f:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_30
    const/16 v0, 0x20

    goto :goto_5

    :cond_33
    const/16 v0, 0x9

    goto :goto_1c
.end method

.method public b()Lcom/google/android/gms/internal/bl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    return-object v0
.end method

.method public b(IIII)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/bl;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ec;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/bg;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->e()Lcom/google/android/gms/internal/ef;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ef;->a(Z)V

    :cond_24
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bg;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->f:Lcom/google/android/gms/internal/bo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->f:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bo;->a(Z)V

    :cond_9
    return-void
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->a(I)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bg;->g:Landroid/widget/FrameLayout;

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/bg;->h:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_29
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->b:Lcom/google/android/gms/internal/bq;

    iget v0, v0, Lcom/google/android/gms/internal/bq;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bg;->i:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-static {v0}, Lcom/google/android/gms/internal/ds;->b(Landroid/webkit/WebView;)V

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bg;->i:Z

    goto :goto_14
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bl;->c()V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bg;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->e:Lcom/google/android/gms/internal/bi;

    if-nez v0, :cond_21

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-static {v0}, Lcom/google/android/gms/internal/ds;->a(Landroid/webkit/WebView;)V

    :cond_21
    invoke-direct {p0}, Lcom/google/android/gms/internal/bg;->k()V

    return-void
.end method

.method public h()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bg;->k()V

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->c:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bl;->a()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->d:Lcom/google/android/gms/internal/ec;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/bg;->k()V

    return-void
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/bg;->f:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bg;->a(Z)V

    return-void
.end method
