.class Lcom/twidroid/activity/z;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccounts;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/twidroid/ui/widgets/CachedImageView;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 14

    const/4 v3, -0x1

    iput-object p1, p0, Lcom/twidroid/activity/z;->a:Lcom/twidroid/activity/UberSocialAccounts;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/z;->setOrientation(I)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0900f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/activity/z;->b:Landroid/widget/TextView;

    const v0, 0x7f090040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;

    iput-object v0, p0, Lcom/twidroid/activity/z;->d:Lcom/twidroid/ui/widgets/CachedImageView;

    const v0, 0x7f09010e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/activity/z;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/twidroid/activity/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-wide p5, p0, Lcom/twidroid/activity/z;->e:J

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p7

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/activity/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/activity/z;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/z;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/z;->d:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-virtual {v0, v4}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/twidroid/a/d;

    iget-object v1, p0, Lcom/twidroid/activity/z;->d:Lcom/twidroid/ui/widgets/CachedImageView;

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v2

    long-to-int v3, p4

    invoke-virtual {v2, v3}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/twidroid/a/d;-><init>(Lcom/twidroid/ui/widgets/CachedImageView;Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/a/d;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
