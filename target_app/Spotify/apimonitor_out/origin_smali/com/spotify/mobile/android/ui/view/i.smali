.class final Lcom/spotify/mobile/android/ui/view/i;
.super Lcom/spotify/mobile/android/ui/adapter/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/i;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/i;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->e(I)I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/i;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/spotify/android/paste/widget/SectionHeaderView;

    const/4 v2, 0x0

    sget v3, Lcom/spotify/android/paste/b;->C:I

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/i;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/spotify/android/paste/widget/SectionHeaderView;

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/SectionHeaderView;-><init>(Landroid/content/Context;)V

    goto :goto_1d
.end method
