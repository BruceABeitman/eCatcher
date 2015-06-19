.class public abstract Lco/vine/android/BaseSearchFragment;
.super Lco/vine/android/BaseCursorListFragment;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCallback:Lco/vine/android/SearchActivity;

.field protected mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;

.field protected mEncodedQueryString:Ljava/lang/String;

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mProjection:[Ljava/lang/String;

.field protected mQueryString:Ljava/lang/String;

.field private mSearchHint:Landroid/widget/TextView;

.field private mSearchHintContainer:Landroid/view/ViewGroup;

.field protected mSortOrder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseCursorListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cleanSearchResults()V
.end method

.method protected abstract fetchContent(I)V
.end method

.method public abstract getMinimumSearchQueryLength()I
.end method

.method public getQueryText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public hideSearchHint()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, -0x1

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03008c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0a01ed

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lco/vine/android/BaseSearchFragment;->mSearchHint:Landroid/widget/TextView;

    iput-object v2, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseCursorListFragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseSearchFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseSearchFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    instance-of v0, p1, Lco/vine/android/SearchActivity;

    if-eqz v0, :cond_18

    check-cast p1, Lco/vine/android/SearchActivity;

    iput-object p1, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseSearchFragment instances must be added to a SearchActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->cleanSearchResults()V

    invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lco/vine/android/BaseCursorListFragment;->onResume()V

    iget-object v1, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    invoke-virtual {v1, p0}, Lco/vine/android/SearchActivity;->setCurrentTab(Lco/vine/android/BaseSearchFragment;)V

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->initLoader()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lco/vine/android/BaseSearchFragment;->hideProgress(I)V

    iget-object v1, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    iget-object v2, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lco/vine/android/SearchActivity;->restoreQueryText(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v1, p0, Lco/vine/android/BaseSearchFragment;->mCallback:Lco/vine/android/SearchActivity;

    invoke-virtual {v1}, Lco/vine/android/SearchActivity;->getQueryText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getMinimumSearchQueryLength()I

    move-result v2

    if-lt v1, v2, :cond_25

    invoke-virtual {p0}, Lco/vine/android/BaseSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lco/vine/android/BaseSearchFragment;->showSearchHint(Landroid/content/res/Resources;Ljava/lang/String;)V

    goto :goto_25
.end method

.method protected abstract performSearch()V
.end method

.method public setQueryText(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/BaseSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/client/VineAPI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseSearchFragment;->mEncodedQueryString:Ljava/lang/String;

    return-void
.end method

.method public showSearchHint(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_26

    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    :cond_15
    iget-object v0, p0, Lco/vine/android/BaseSearchFragment;->mSearchHint:Landroid/widget/TextView;

    const v1, 0x7f0e01ba

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method
