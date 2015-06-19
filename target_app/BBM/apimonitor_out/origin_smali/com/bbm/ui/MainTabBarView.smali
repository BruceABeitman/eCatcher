.class public Lcom/bbm/ui/MainTabBarView;
.super Landroid/widget/LinearLayout;
.source "MainTabBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/bbm/ui/dx;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/ImageView;

.field private final f:[I

.field private g:I

.field private final h:I

.field private final i:Landroid/view/animation/Animation;

.field private final j:Landroid/view/animation/Animation;

.field private k:Lcom/bbm/ui/dw;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 15

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->f:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/MainTabBarView;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->k:Lcom/bbm/ui/dw;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030134

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v1, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v2, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v3, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v4, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v5, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v6, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v7, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v8, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    new-instance v9, Lcom/bbm/ui/dx;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/bbm/ui/dx;-><init>(Lcom/bbm/ui/MainTabBarView;B)V

    const v0, 0x7f0a05d9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05dc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05da

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05db

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05d0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v2, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05d2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05d1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05e1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v3, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v3, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v3, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0399

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05e2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05c6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v4, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v4, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v4, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05c9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05c7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05c8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05cb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v5, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v5, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v5, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05ce

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05cc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05cd

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05dd

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v6, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v6, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v6, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05e0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05de

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05df

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v6, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05d4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v7, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v7, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v7, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05d7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05d5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05d6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05c3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v8, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v8, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05c4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05c5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05e3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v9, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    iget-object v0, v9, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v9, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a05e6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    const v0, 0x7f0a05e4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05ca

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a05cf

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a05d3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a05d8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->b:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/bbm/ui/MainTabBarView;->f:[I

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/bbm/ui/MainTabBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0202c0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/MainTabBarView;->h:I

    invoke-virtual {p0}, Lcom/bbm/ui/MainTabBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0b0390

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/MainTabBarView;->g:I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-direct {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->i:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->i:Landroid/view/animation/Animation;

    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->i:Landroid/view/animation/Animation;

    const-wide/16 v10, 0x96

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-direct {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/bbm/ui/MainTabBarView;->j:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->j:Landroid/view/animation/Animation;

    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->j:Landroid/view/animation/Animation;

    const-wide/16 v10, 0x96

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/MainTabBarView;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->h:I

    return v0
.end method

.method private a(IZ)V
    .registers 5

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->j:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bbm/ui/du;

    invoke-direct {v1, p0}, Lcom/bbm/ui/du;-><init>(Lcom/bbm/ui/MainTabBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_c
    invoke-virtual {p0, p1}, Lcom/bbm/ui/MainTabBarView;->d(I)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->i:Landroid/view/animation/Animation;

    :goto_14
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, p1}, Lcom/bbm/ui/MainTabBarView;->b(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_26

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->i:Landroid/view/animation/Animation;

    :goto_1f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_23
    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->j:Landroid/view/animation/Animation;

    goto :goto_14

    :cond_26
    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->j:Landroid/view/animation/Animation;

    goto :goto_1f
.end method

.method private a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/dv;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bbm/ui/dv;-><init>(Lcom/bbm/ui/MainTabBarView;Landroid/view/ViewGroup;ZLandroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/MainTabBarView;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->g:I

    return v0
.end method

.method static synthetic c(Lcom/bbm/ui/MainTabBarView;)[I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->f:[I

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2d

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    :cond_28
    packed-switch p1, :pswitch_data_d6

    :cond_2b
    :goto_2b
    iput p1, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    :cond_2d
    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->k:Lcom/bbm/ui/dw;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->k:Lcom/bbm/ui/dw;

    invoke-interface {v0, p1}, Lcom/bbm/ui/dw;->a(I)V

    :cond_36
    return-void

    :pswitch_37
    invoke-virtual {p0, p1}, Lcom/bbm/ui/MainTabBarView;->setLeftTabVisibility(I)V

    invoke-direct {p0, p1, v2}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto :goto_2b

    :pswitch_49
    invoke-virtual {p0, p1}, Lcom/bbm/ui/MainTabBarView;->setLeftTabVisibility(I)V

    invoke-direct {p0, p1, v2}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v4}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto :goto_2b

    :pswitch_5b
    invoke-virtual {p0, p1}, Lcom/bbm/ui/MainTabBarView;->setLeftTabVisibility(I)V

    invoke-direct {p0, p1, v2}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v2}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto :goto_2b

    :pswitch_6d
    invoke-virtual {p0, p1}, Lcom/bbm/ui/MainTabBarView;->setLeftTabVisibility(I)V

    invoke-direct {p0, p1, v2}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v5}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto :goto_2b

    :pswitch_7f
    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    if-ne v0, v1, :cond_94

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    invoke-direct {p0, v0, v3}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto :goto_2b

    :cond_94
    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    if-ne v0, v4, :cond_a9

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    invoke-direct {p0, v0, v3}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v4}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto :goto_2b

    :cond_a9
    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    if-ne v0, v2, :cond_bf

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    invoke-direct {p0, v0, v3}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v2}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto/16 :goto_2b

    :cond_bf
    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    if-ne v0, v5, :cond_2b

    iget v0, p0, Lcom/bbm/ui/MainTabBarView;->l:I

    invoke-direct {p0, v0, v3}, Lcom/bbm/ui/MainTabBarView;->a(IZ)V

    invoke-virtual {p0, v5}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/MainTabBarView;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/bbm/ui/MainTabBarView;->a(Landroid/view/ViewGroup;Landroid/widget/ImageView;Z)V

    goto/16 :goto_2b

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_5b
        :pswitch_7f
        :pswitch_7f
        :pswitch_37
        :pswitch_49
        :pswitch_6d
    .end packed-switch
.end method

.method public final b(I)Landroid/widget/TextView;
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/dx;

    iget-object v0, v0, Lcom/bbm/ui/dx;->c:Landroid/widget/TextView;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final c(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/dx;

    iget-object v0, v0, Lcom/bbm/ui/dx;->a:Landroid/view/ViewGroup;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final d(I)Landroid/widget/ImageView;
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/dx;

    iget-object v0, v0, Lcom/bbm/ui/dx;->b:Landroid/widget/ImageView;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clicked. ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/MainTabBarView;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    if-eq v0, v3, :cond_2d

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_31

    :cond_2d
    invoke-virtual {p0, v3}, Lcom/bbm/ui/MainTabBarView;->a(I)V

    :goto_30
    return-void

    :cond_31
    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->a(I)V

    goto :goto_30
.end method

.method public setBadgeEnabled(IZ)V
    .registers 7

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/MainTabBarView;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/dx;

    if-eqz v0, :cond_13

    packed-switch p1, :pswitch_data_38

    :cond_13
    :goto_13
    :pswitch_13
    return-void

    :pswitch_14
    iget-object v3, v0, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_21

    :goto_18
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_13

    :cond_21
    move v1, v2

    goto :goto_18

    :pswitch_23
    iget-object v0, v0, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_2b

    :goto_27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    :cond_2b
    move v1, v2

    goto :goto_27

    :pswitch_2d
    iget-object v0, v0, Lcom/bbm/ui/dx;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_35

    :goto_31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    :cond_35
    const/16 v1, 0x8

    goto :goto_31

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_23
        :pswitch_2d
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public setLeftTabVisibility(I)V
    .registers 8

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_3c

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v4, :cond_3e

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v5, :cond_40

    move v0, v1

    :goto_21
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_42

    move v0, v1

    :goto_2d
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x7

    if-ne p1, v3, :cond_44

    :goto_38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3c
    move v0, v2

    goto :goto_d

    :cond_3e
    move v0, v2

    goto :goto_17

    :cond_40
    move v0, v2

    goto :goto_21

    :cond_42
    move v0, v2

    goto :goto_2d

    :cond_44
    move v1, v2

    goto :goto_38
.end method

.method public setOnTabClickListener(Lcom/bbm/ui/dw;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/MainTabBarView;->k:Lcom/bbm/ui/dw;

    return-void
.end method
