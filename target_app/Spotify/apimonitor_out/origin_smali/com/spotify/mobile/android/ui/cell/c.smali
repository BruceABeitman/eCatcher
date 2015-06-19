.class public Lcom/spotify/mobile/android/ui/cell/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/ListItemView;
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {p0, v3}, Lcom/spotify/android/paste/widget/h;->j(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    move-object v1, v0

    :goto_e
    invoke-static {p0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03005d

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Landroid/view/View;)V

    return-object v1

    :cond_26
    invoke-static {p0, v3}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    move-object v1, v0

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/adapter/z;)Lcom/spotify/android/paste/widget/e;
    .registers 7

    invoke-interface {p2}, Lcom/spotify/mobile/android/ui/adapter/z;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    const v0, 0x7f0101c5

    :goto_9
    invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_4e

    const/high16 v1, 0x4250

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->a(I)V

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x4228

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3a
    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->c()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f010198

    invoke-static {p0, v1, v2}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f010199

    invoke-static {p0, v1, v2}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_4e
    invoke-static {p0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V

    return-object v0

    :cond_56
    const v0, 0x7f0101c4

    goto :goto_9
.end method
