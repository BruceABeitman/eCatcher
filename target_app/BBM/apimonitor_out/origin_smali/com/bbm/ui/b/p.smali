.class public final Lcom/bbm/ui/b/p;
.super Landroid/app/Dialog;
.source "ClickableToast.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;

.field private final f:Landroid/os/Handler;

.field private g:I

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V
    .registers 16

    const v0, 0x7f0f0075

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/b/p;->f:Landroid/os/Handler;

    new-instance v0, Lcom/bbm/ui/b/q;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/q;-><init>(Lcom/bbm/ui/b/p;)V

    iput-object v0, p0, Lcom/bbm/ui/b/p;->h:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/bbm/ui/b/p;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/p;->requestWindowFeature(I)Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/b/p;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/b/p;->c:Landroid/view/View;

    const v1, 0x7f0a0582

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/b/p;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/p;->c:Landroid/view/View;

    const v1, 0x7f0a0583

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/b/p;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/b/p;->c:Landroid/view/View;

    const v1, 0x7f0a0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/b/p;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/b/p;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/p;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/p;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/p;->setCancelable(Z)V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/bbm/ui/b/r;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/r;-><init>(Lcom/bbm/ui/b/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/bbm/ui/b/p;->b:Landroid/widget/TextView;

    int-to-double v2, v0

    const-wide v4, 0x3ffccccccccccccdL

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/b/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-gtz p8, :cond_97

    if-gtz p9, :cond_97

    if-lez p7, :cond_d8

    :cond_97
    invoke-virtual {v0, p7}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p9, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_a6
    if-eqz p4, :cond_f9

    iget-object v0, p0, Lcom/bbm/ui/b/p;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_be
    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/ui/b/p;->g:I

    if-nez p5, :cond_108

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/bbm/ui/b/p;->g:I

    :cond_c7
    :goto_c7
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d2

    invoke-virtual {p0}, Lcom/bbm/ui/b/p;->show()V

    :cond_d2
    if-eqz p6, :cond_d7

    invoke-virtual {p0, p6}, Lcom/bbm/ui/b/p;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_d7
    return-void

    :cond_d8
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_a6

    :cond_f9
    iget-object v0, p0, Lcom/bbm/ui/b/p;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_be

    :cond_108
    const/4 v0, 0x1

    if-ne p5, v0, :cond_110

    const/16 v0, 0xdac

    iput v0, p0, Lcom/bbm/ui/b/p;->g:I

    goto :goto_c7

    :cond_110
    if-lez p5, :cond_c7

    iput p5, p0, Lcom/bbm/ui/b/p;->g:I

    goto :goto_c7
.end method


# virtual methods
.method public final dismiss()V
    .registers 3

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/b/p;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/b/p;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onStart()V
    .registers 5

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget v0, p0, Lcom/bbm/ui/b/p;->g:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/b/p;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/ui/b/p;->h:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bbm/ui/b/p;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method
