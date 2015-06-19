.class public final Lcom/google/android/gms/internal/cc;
.super Lcom/google/android/gms/internal/ci;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/internal/ce;

.field private c:Lcom/google/android/gms/internal/ca;

.field private d:Lcom/google/android/gms/internal/er;

.field private e:Lcom/google/android/gms/internal/bx;

.field private f:Lcom/google/android/gms/internal/cf;

.field private g:Z

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ci;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->k:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ce;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/ce;->n:Lcom/google/android/gms/internal/dx;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/dx;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ce;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/ce;)V

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_24

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Z)V
    .registers 6

    const/4 v3, -0x2

    if-eqz p1, :cond_30

    const/16 v0, 0x32

    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/cf;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/cf;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cc;->f:Lcom/google/android/gms/internal/cf;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_33

    const/16 v0, 0xb

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->f:Lcom/google/android/gms/internal/cf;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ce;->h:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cf;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->f:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_30
    const/16 v0, 0x20

    goto :goto_5

    :cond_33
    const/16 v0, 0x9

    goto :goto_1c
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
    .registers 15

    const/high16 v5, 0x100

    const/16 v1, 0x400

    const/4 v12, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cc;->g:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget v1, v1, Lcom/google/android/gms/internal/ce;->k:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cc;->a(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2e

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/bw;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v3, v3, Lcom/google/android/gms/internal/ce;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/bw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cc;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->e:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->a()Z

    move-result v3

    if-eqz p1, :cond_ed

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v1, v1, Lcom/google/android/gms/internal/ce;->e:Lcom/google/android/gms/internal/er;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->e()Lcom/google/android/gms/internal/ak;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v5, v5, Lcom/google/android/gms/internal/ce;->n:Lcom/google/android/gms/internal/dx;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;ZZLcom/google/android/gms/internal/lh;Lcom/google/android/gms/internal/dx;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v8, v0, Lcom/google/android/gms/internal/ce;->f:Lcom/google/android/gms/internal/al;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v9, v0, Lcom/google/android/gms/internal/ce;->j:Lcom/google/android/gms/internal/cg;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v11, v0, Lcom/google/android/gms/internal/ce;->o:Lcom/google/android/gms/internal/ap;

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/cg;ZLcom/google/android/gms/internal/ap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cc$1;-><init>(Lcom/google/android/gms/internal/cc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ev;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->m:Ljava/lang/String;

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v1, v1, Lcom/google/android/gms/internal/ce;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->loadUrl(Ljava/lang/String;)V

    :goto_a2
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/cc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_ba

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_ba

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_ba
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_c8

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->c()V

    :cond_c8
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/cc;->b(Z)V

    return-void

    :cond_cc
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->i:Ljava/lang/String;

    if-eqz v0, :cond_e5

    iget-object v5, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v6, v0, Lcom/google/android/gms/internal/ce;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v7, v0, Lcom/google/android/gms/internal/ce;->i:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/er;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    :cond_e5
    new-instance v0, Lcom/google/android/gms/internal/cc$a;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cc$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ed
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->e:Lcom/google/android/gms/internal/er;

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->a(Landroid/content/Context;)V

    goto :goto_a2
.end method

.method private l()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cc;->k:Z

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->e:Lcom/google/android/gms/internal/bx;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->e:Lcom/google/android/gms/internal/bx;

    iget-object v0, v0, Lcom/google/android/gms/internal/bx;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->e:Lcom/google/android/gms/internal/bx;

    iget v2, v2, Lcom/google/android/gms/internal/bx;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/cc;->e:Lcom/google/android/gms/internal/bx;

    iget-object v3, v3, Lcom/google/android/gms/internal/bx;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->d:Lcom/google/android/gms/internal/bz;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->d:Lcom/google/android/gms/internal/bz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bz;->o()V

    goto :goto_c
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cc;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ca;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->j:Z

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ce;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    if-nez v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/cc$a;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cc$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Lcom/google/android/gms/internal/cc$a; {:try_start_c .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cc$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    if-nez p1, :cond_54

    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->d:Lcom/google/android/gms/internal/bz;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->d:Lcom/google/android/gms/internal/bz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bz;->p()V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget v0, v0, Lcom/google/android/gms/internal/ce;->l:I

    if-eq v0, v2, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->c:Lcom/google/android/gms/internal/lr;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v0, v0, Lcom/google/android/gms/internal/ce;->c:Lcom/google/android/gms/internal/lr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/lr;->r()V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget v0, v0, Lcom/google/android/gms/internal/ce;->l:I

    packed-switch v0, :pswitch_data_9e

    new-instance v0, Lcom/google/android/gms/internal/cc$a;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cc$a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cc;->c(Z)V

    goto :goto_31

    :pswitch_68
    new-instance v0, Lcom/google/android/gms/internal/bx;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v1, v1, Lcom/google/android/gms/internal/ce;->e:Lcom/google/android/gms/internal/er;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bx;-><init>(Lcom/google/android/gms/internal/er;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->e:Lcom/google/android/gms/internal/bx;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cc;->c(Z)V

    goto :goto_31

    :pswitch_78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cc;->c(Z)V

    goto :goto_31

    :pswitch_7d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cc;->j:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_31

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v1, v1, Lcom/google/android/gms/internal/ce;->b:Lcom/google/android/gms/internal/cb;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget-object v2, v2, Lcom/google/android/gms/internal/ce;->j:Lcom/google/android/gms/internal/cg;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/bu;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/cg;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_9c
    .catch Lcom/google/android/gms/internal/cc$a; {:try_start_34 .. :try_end_9c} :catch_24

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

.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->g:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/cc;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->f:Lcom/google/android/gms/internal/cf;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->f:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->a(Z)V

    :cond_9
    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ca;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    return-object v0
.end method

.method public final b(IIII)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/ca;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ca;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/er;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cc;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eu;->c()V

    :cond_24
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cc;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget v0, v0, Lcom/google/android/gms/internal/ce;->k:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cc;->a(I)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cc;->h:Landroid/widget/FrameLayout;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cc;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2c
    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method

.method public final e()V
    .registers 1

    return-void
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->b:Lcom/google/android/gms/internal/ce;

    iget v0, v0, Lcom/google/android/gms/internal/ce;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cc;->j:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->b(Landroid/webkit/WebView;)V

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->j:Z

    goto :goto_14
.end method

.method public final g()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ca;->c()V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cc;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->e:Lcom/google/android/gms/internal/bx;

    if-nez v0, :cond_21

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Landroid/webkit/WebView;)V

    :cond_21
    invoke-direct {p0}, Lcom/google/android/gms/internal/cc;->l()V

    return-void
.end method

.method public final h()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/cc;->l()V

    return-void
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->c:Lcom/google/android/gms/internal/ca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ca;->a()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->d:Lcom/google/android/gms/internal/er;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/cc;->l()V

    return-void
.end method

.method public final j()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cc;->g:Z

    return-void
.end method

.method public final k()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->f:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cc;->b(Z)V

    return-void
.end method
