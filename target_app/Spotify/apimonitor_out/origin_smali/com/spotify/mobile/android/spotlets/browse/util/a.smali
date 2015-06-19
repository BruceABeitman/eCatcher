.class public final Lcom/spotify/mobile/android/spotlets/browse/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Landroid/view/View;
    .registers 5

    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/spotify/mobile/android/ui/stuff/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;

    return-object v0
.end method
