.class final Lcom/bbm/ui/activities/ys;
.super Lcom/bbm/j/k;
.source "NewChannelCategoryActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/yt;

.field final synthetic b:Lcom/bbm/d/en;

.field final synthetic c:Lcom/bbm/ui/activities/yr;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/yr;Lcom/bbm/ui/activities/yt;Lcom/bbm/d/en;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iput-object p2, p0, Lcom/bbm/ui/activities/ys;->a:Lcom/bbm/ui/activities/yt;

    iput-object p3, p0, Lcom/bbm/ui/activities/ys;->b:Lcom/bbm/d/en;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iget-object v0, v0, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v0

    if-ltz v0, :cond_6a

    iget-object v0, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iget-object v0, v0, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->O()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iget-object v2, v2, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ef;

    iget-object v2, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iget-object v2, v2, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/d/ef;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->P(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iget-object v2, v2, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/en;

    iget-object v2, p0, Lcom/bbm/ui/activities/ys;->a:Lcom/bbm/ui/activities/yt;

    iget-object v2, v2, Lcom/bbm/ui/activities/yt;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/bbm/ui/activities/ys;->c:Lcom/bbm/ui/activities/yr;

    iget-object v3, v3, Lcom/bbm/ui/activities/yr;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I

    move-result v3

    if-ltz v3, :cond_68

    iget-object v3, p0, Lcom/bbm/ui/activities/ys;->b:Lcom/bbm/d/en;

    invoke-virtual {v3, v0}, Lcom/bbm/d/en;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    :goto_64
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_67
    return-void

    :cond_68
    move v0, v1

    goto :goto_64

    :cond_6a
    iget-object v0, p0, Lcom/bbm/ui/activities/ys;->a:Lcom/bbm/ui/activities/yt;

    iget-object v0, v0, Lcom/bbm/ui/activities/yt;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_67
.end method
