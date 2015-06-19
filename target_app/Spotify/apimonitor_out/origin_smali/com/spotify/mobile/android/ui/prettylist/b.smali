.class public final Lcom/spotify/mobile/android/ui/prettylist/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/prettylist/c;


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

.field private final b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

.field private c:Lcom/spotify/mobile/android/ui/prettylist/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/spotify/mobile/android/ui/prettylist/b;->setOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x4040

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/b;->setWeightSum(F)V

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x4000

    invoke-direct {v2, v7, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/b;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/b;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    return-object v0
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(I)V

    return-void
.end method

.method public final a(Landroid/support/v4/view/ah;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Landroid/support/v4/view/ah;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/HeaderView;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/prettylist/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->c:Lcom/spotify/mobile/android/ui/prettylist/a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->c:Lcom/spotify/mobile/android/ui/prettylist/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->c:Lcom/spotify/mobile/android/ui/prettylist/a;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/a;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final a(Z)V
    .registers 2

    return-void
.end method

.method public final b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a(Landroid/view/View;)V

    return-void
.end method

.method public final c()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->b(Landroid/view/View;)V

    return-void
.end method

.method public final d()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/spotify/android/paste/widget/HeaderView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->b:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .registers 1

    return-void
.end method

.method public final h()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V

    return-void
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/b;->a:Lcom/spotify/mobile/android/ui/prettylist/StickyListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V

    return-void
.end method

.method public final j()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final k()V
    .registers 1

    return-void
.end method
