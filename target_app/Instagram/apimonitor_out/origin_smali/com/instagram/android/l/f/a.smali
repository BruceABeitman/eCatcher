.class public final Lcom/instagram/android/l/f/a;
.super Landroid/widget/FrameLayout;
.source "UserListHeader.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/android/l/f/a;->a()V

    return-void
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/l/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->follow_all_header:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/facebook/av;->content:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/l/f/a;->a:Landroid/view/View;

    sget v0, Lcom/facebook/av;->avatar:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/l/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    sget v0, Lcom/facebook/av;->username:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/l/f/a;->c:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->message:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/l/f/a;->d:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->follow_all:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/l/f/a;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/l/f/a;->setUser(Lcom/instagram/user/c/a;)V

    invoke-direct {p0}, Lcom/instagram/android/l/f/a;->b()V

    return-void
.end method

.method private b()V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/instagram/android/l/f/a;->g:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/instagram/android/l/f/a;->f:I

    if-nez v0, :cond_11

    :cond_9
    iget-object v0, p0, Lcom/instagram/android/l/f/a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/instagram/android/l/f/a;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/instagram/android/l/f/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/instagram/android/l/f/a;->f:I

    sget v2, Lcom/instagram/android/l/d/a;->b:I

    if-ne v0, v2, :cond_39

    sget v0, Lcom/facebook/ax;->found_x_contacts:I

    :goto_22
    iget v2, p0, Lcom/instagram/android/l/f/a;->g:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/instagram/android/l/f/a;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/f/a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_39
    sget v0, Lcom/facebook/ax;->found_x_friends:I

    goto :goto_22
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/l/f/a;->g:I

    invoke-direct {p0}, Lcom/instagram/android/l/f/a;->b()V

    return-void
.end method

.method public final setFollowAllEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnFollowAll(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setType$1b988d18(I)V
    .registers 2

    iput p1, p0, Lcom/instagram/android/l/f/a;->f:I

    invoke-direct {p0}, Lcom/instagram/android/l/f/a;->b()V

    return-void
.end method

.method public final setUser(Lcom/instagram/user/c/a;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/instagram/android/l/f/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/l/f/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21
.end method
