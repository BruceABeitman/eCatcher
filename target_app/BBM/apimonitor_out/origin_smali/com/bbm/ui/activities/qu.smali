.class final Lcom/bbm/ui/activities/qu;
.super Lcom/bbm/j/k;
.source "GroupPictureActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v3, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v3

    iget-object v0, v3, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v4, :cond_18

    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x0

    iget-object v4, v3, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v0, v3, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_27
    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    iget-wide v5, v3, Lcom/bbm/g/a;->h:J

    long-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_40
    iget-object v4, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/GroupPictureActivity;->a(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/ObservingImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->b(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v4, v3, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->c(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v0

    iget-object v4, v3, Lcom/bbm/g/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->c(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/ui/InlineImageTextView;

    move-result-object v4

    iget-object v0, v3, Lcom/bbm/g/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b8

    move v0, v1

    :goto_6e
    invoke-virtual {v4, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->d(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v4, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    iget-object v4, v4, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v3, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->e(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->d()I

    move-result v0

    if-lez v0, :cond_ba

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->e(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->f(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    goto/16 :goto_17

    :cond_b8
    move v0, v2

    goto :goto_6e

    :cond_ba
    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->e(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qu;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->f(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    goto/16 :goto_17
.end method
