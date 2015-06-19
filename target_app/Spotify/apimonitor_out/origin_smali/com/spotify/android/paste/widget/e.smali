.class public final Lcom/spotify/android/paste/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/spotify/android/paste/widget/internal/a;

.field private final f:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    sget v1, Lcom/spotify/android/paste/c;->j:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/android/paste/widget/e;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/android/paste/widget/e;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/android/paste/widget/e;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    sget v1, Lcom/spotify/android/paste/c;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/spotify/android/paste/widget/internal/a;

    invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/spotify/android/paste/widget/e;->e:Lcom/spotify/android/paste/widget/internal/a;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    sget v1, Lcom/spotify/android/paste/c;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/android/paste/widget/e;->f:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/spotify/android/paste/d;->b:I

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v1, Lcom/spotify/android/paste/widget/e;

    invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/e;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public static a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    sget v0, Lcom/spotify/android/paste/c;->j:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/e;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view doesn\'t have a ListTile associated with it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final b()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->a()V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/spotify/android/paste/widget/internal/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    check-cast v0, Lcom/spotify/android/paste/widget/internal/b;

    invoke-interface {v0, p1}, Lcom/spotify/android/paste/widget/internal/b;->a(Z)V

    :cond_d
    return-void
.end method

.method public final c()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d(Z)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/android/paste/widget/e;->f:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_9
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public final e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/android/paste/widget/e;->e:Lcom/spotify/android/paste/widget/internal/a;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
