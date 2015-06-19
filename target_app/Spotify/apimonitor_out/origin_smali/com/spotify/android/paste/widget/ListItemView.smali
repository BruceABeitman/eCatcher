.class public Lcom/spotify/android/paste/widget/ListItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final q:[I

.field private static final r:[I


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/spotify/android/paste/widget/internal/a;

.field private e:Lcom/spotify/android/paste/widget/internal/a;

.field private f:Lcom/spotify/android/paste/widget/internal/a;

.field private g:I

.field private h:Landroid/content/res/ColorStateList;

.field private i:I

.field private j:Landroid/content/res/ColorStateList;

.field private k:Z

.field private l:Z

.field private m:Lcom/spotify/android/paste/widget/internal/c;

.field private n:Z

.field private o:I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Lcom/spotify/android/paste/widget/ListItemView;->q:[I

    new-array v0, v3, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    sput-object v0, Lcom/spotify/android/paste/widget/ListItemView;->r:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/spotify/android/paste/b;->p:I

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v0, Lcom/spotify/android/paste/widget/ListItemView;->r:[I

    invoke-virtual {p1, p2, v0, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/spotify/android/paste/e;->o:[I

    invoke-virtual {p1, p2, v0, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/spotify/android/paste/widget/ListItemView;->g:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/spotify/android/paste/widget/ListItemView;->h:Landroid/content/res/ColorStateList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/spotify/android/paste/widget/ListItemView;->i:I

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/spotify/android/paste/widget/ListItemView;->j:Landroid/content/res/ColorStateList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/spotify/android/paste/widget/ListItemView;->o:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3, v7, v3, v7}, Lcom/spotify/android/paste/widget/ListItemView;->setPadding(IIII)V

    invoke-virtual {p0, v4}, Lcom/spotify/android/paste/widget/ListItemView;->setMinimumHeight(I)V

    invoke-virtual {p0, v7}, Lcom/spotify/android/paste/widget/ListItemView;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setGravity(I)V

    sget v0, Lcom/spotify/android/paste/d;->e:I

    invoke-static {p1, v0, p0}, Lcom/spotify/android/paste/widget/ListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/spotify/android/paste/c;->r:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->b:Landroid/widget/TextView;

    sget v0, Lcom/spotify/android/paste/c;->o:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_8d

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->b:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_8d
    iget v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->g:I

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->g:I

    invoke-static {p1, v0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_98
    if-eqz v2, :cond_9f

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9f
    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_aa
    new-instance v1, Lcom/spotify/android/paste/widget/internal/a;

    sget v0, Lcom/spotify/android/paste/c;->k:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->d:Lcom/spotify/android/paste/widget/internal/a;

    new-instance v1, Lcom/spotify/android/paste/widget/internal/a;

    sget v0, Lcom/spotify/android/paste/c;->p:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->e:Lcom/spotify/android/paste/widget/internal/a;

    new-instance v1, Lcom/spotify/android/paste/widget/internal/a;

    sget v0, Lcom/spotify/android/paste/c;->a:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->f:Lcom/spotify/android/paste/widget/internal/a;

    new-instance v0, Lcom/spotify/android/paste/widget/internal/ListItemImageView;

    invoke-direct {v0, p1}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V

    new-instance v0, Lcom/spotify/android/paste/widget/internal/c;

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/internal/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->m:Lcom/spotify/android/paste/widget/internal/c;

    invoke-virtual {p0, v8}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V

    invoke-virtual {p0, v7}, Lcom/spotify/android/paste/widget/ListItemView;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->d:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ListItemView has a prefix view set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->d:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/spotify/android/paste/widget/ListItemView;->n:Z

    sget v0, Lcom/spotify/android/paste/c;->k:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->m:Lcom/spotify/android/paste/widget/internal/c;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->n:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->m:Lcom/spotify/android/paste/widget/internal/c;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/c;->a()I

    move-result v0

    :goto_17
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_1a
    return-void

    :cond_1b
    move v0, v1

    goto :goto_17

    :cond_1d
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1a
.end method

.method public final b()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->f:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->l:Z

    if-eqz v1, :cond_1d

    iput-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->l:Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    iget v3, p0, Lcom/spotify/android/paste/widget/ListItemView;->g:I

    invoke-static {v1, v2, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->h:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/spotify/android/paste/widget/ListItemView;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1d
    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v0, 0x8

    :cond_27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Z)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->d:Lcom/spotify/android/paste/widget/internal/a;

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->f:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->c()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->c()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V

    :cond_18
    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V

    invoke-virtual {p0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setActivated(Z)V

    return-void
.end method

.method public final c()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .registers 5

    iget-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->l:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->l:Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/spotify/android/paste/widget/ListItemView;->i:I

    invoke-static {v0, v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1d
    iget-object v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x8

    :goto_27
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public final c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/android/paste/widget/ListItemView;->k:Z

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->refreshDrawableState()V

    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V

    return-void
.end method

.method public final e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->d:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->f:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->p:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public final h()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/android/paste/widget/ListItemView;->k:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/spotify/android/paste/widget/ListItemView;->q:[I

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->mergeDrawableStates([I[I)[I

    :cond_f
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->n:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->m:Lcom/spotify/android/paste/widget/internal/c;

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/spotify/android/paste/widget/internal/c;->a(Landroid/graphics/Canvas;II)V

    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->p:Z

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->f:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    if-nez v0, :cond_61

    sget v0, Lcom/spotify/android/paste/c;->a:I

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/spotify/android/paste/widget/ListItemView;->o:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/spotify/android/paste/widget/ListItemView;->o:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    if-gtz v2, :cond_39

    if-lez v3, :cond_61

    :cond_39
    if-lez v2, :cond_49

    iget v4, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_49
    if-lez v3, :cond_59

    iget v2, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_59
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v1, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_61
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->d:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->a()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->f:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->a()V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/ListItemView;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->a()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
