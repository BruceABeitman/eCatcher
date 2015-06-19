.class public Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;
.super Ljava/lang/Object;
.source "LoadingLayoutProxy.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/ILoadingLayout;


# instance fields
.field private final mLoadingLayouts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addLayout(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_6
.end method

.method public setVisibility(I)V
    .registers 5

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_6
.end method
