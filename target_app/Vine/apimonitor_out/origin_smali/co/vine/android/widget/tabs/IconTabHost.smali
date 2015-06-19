.class public Lco/vine/android/widget/tabs/IconTabHost;
.super Landroid/widget/TabHost;
.source "IconTabHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;
    }
.end annotation


# instance fields
.field private mOnTabClickedListener:Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchWindowFocusChanged(Z)V
    .registers 3

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchWindowFocusChanged(Z)V

    :cond_9
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 3

    invoke-virtual {p0}, Lco/vine/android/widget/tabs/IconTabHost;->getCurrentTab()I

    move-result v0

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lco/vine/android/widget/tabs/IconTabHost;->mOnTabClickedListener:Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/widget/tabs/IconTabHost;->mOnTabClickedListener:Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;

    invoke-interface {v0}, Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;->onCurrentTabClicked()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_f
.end method

.method public setOnTabClickedListener(Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/tabs/IconTabHost;->mOnTabClickedListener:Lco/vine/android/widget/tabs/IconTabHost$OnTabClickedListener;

    return-void
.end method

.method public setTabExplicit(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method
