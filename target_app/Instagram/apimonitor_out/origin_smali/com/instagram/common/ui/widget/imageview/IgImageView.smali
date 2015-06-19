.class public Lcom/instagram/common/ui/widget/imageview/IgImageView;
.super Landroid/widget/ImageView;
.source "IgImageView.java"


# instance fields
.field protected a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Lcom/instagram/common/ui/widget/imageview/f;

.field private f:Lcom/instagram/common/ui/widget/imageview/g;

.field private g:Lcom/instagram/common/e/b/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    new-instance v0, Lcom/instagram/common/ui/widget/imageview/e;

    invoke-direct {v0, p0}, Lcom/instagram/common/ui/widget/imageview/e;-><init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/e/b/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    new-instance v0, Lcom/instagram/common/ui/widget/imageview/e;

    invoke-direct {v0, p0}, Lcom/instagram/common/ui/widget/imageview/e;-><init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/e/b/k;

    invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    new-instance v0, Lcom/instagram/common/ui/widget/imageview/e;

    invoke-direct {v0, p0}, Lcom/instagram/common/ui/widget/imageview/e;-><init>(Lcom/instagram/common/ui/widget/imageview/IgImageView;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/e/b/k;

    invoke-direct {p0, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->IgImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->IgImageView_placeholder:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v2, Lcom/instagram/common/ui/widget/imageview/c;

    invoke-direct {v2, v1}, Lcom/instagram/common/ui/widget/imageview/c;-><init>(I)V

    iput-object v2, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->c:Landroid/graphics/drawable/Drawable;

    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/f;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->e:Lcom/instagram/common/ui/widget/imageview/f;

    return-object v0
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    new-instance v0, Lcom/instagram/common/e/b/c;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->g:Lcom/instagram/common/e/b/k;

    invoke-direct {v0, p1, v1}, Lcom/instagram/common/e/b/c;-><init>(Ljava/lang/String;Lcom/instagram/common/e/b/k;)V

    iget-boolean v1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    invoke-virtual {v0, v1}, Lcom/instagram/common/e/b/c;->a(Z)Lcom/instagram/common/e/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/e/b/c;->a()Lcom/instagram/common/e/b/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/common/e/b/c;->b(Z)Lcom/instagram/common/e/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/e/b/c;->b()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->f:Lcom/instagram/common/ui/widget/imageview/g;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->e:Lcom/instagram/common/ui/widget/imageview/f;

    return-void
.end method

.method public setProgressListener(Lcom/instagram/common/ui/widget/imageview/g;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->f:Lcom/instagram/common/ui/widget/imageview/g;

    return-void
.end method

.method public setReportProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/common/ui/widget/imageview/IgImageView;->d:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->a(Ljava/lang/String;Z)V

    return-void
.end method
