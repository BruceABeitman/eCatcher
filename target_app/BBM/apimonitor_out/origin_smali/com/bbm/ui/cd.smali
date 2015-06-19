.class final Lcom/bbm/ui/cd;
.super Landroid/support/v4/view/af;
.source "EmoticonStickerPager.java"


# instance fields
.field b:Lcom/bbm/j/u;

.field final synthetic c:Lcom/bbm/ui/EmoticonStickerPager;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bbm/ui/StickerPicker;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-direct {p0}, Landroid/support/v4/view/af;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/cd;->d:Ljava/util/HashSet;

    new-instance v0, Lcom/bbm/ui/ce;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ce;-><init>(Lcom/bbm/ui/cd;)V

    iput-object v0, p0, Lcom/bbm/ui/cd;->e:Lcom/bbm/j/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/cd;->b:Lcom/bbm/j/u;

    iget-object v0, p0, Lcom/bbm/ui/cd;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v1}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 6

    new-instance v1, Lcom/bbm/ui/StickerPicker;

    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonStickerPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbm/ui/StickerPicker;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->q(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/gj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/StickerPicker;->setStickerPreviewListener(Lcom/bbm/ui/gj;)V

    iget-object v0, p0, Lcom/bbm/ui/cd;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/StickerPicker;->setStickerPackId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->l(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/gi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/StickerPicker;->setStickerPickerListener(Lcom/bbm/ui/gi;)V

    :goto_3d
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1

    :cond_42
    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0, v1}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/StickerPicker;

    iget-object v0, p0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->k(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/StickerPicker;

    move-result-object v0

    new-instance v2, Lcom/bbm/ui/cg;

    invoke-direct {v2, p0}, Lcom/bbm/ui/cg;-><init>(Lcom/bbm/ui/cd;)V

    invoke-virtual {v0, v2}, Lcom/bbm/ui/StickerPicker;->setOnCartClickedListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3d
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/cd;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/cd;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :goto_7
    iget-object v0, p0, Lcom/bbm/ui/cd;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/StickerPicker;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/StickerPicker;->setMonitorState(Z)V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Lcom/bbm/ui/cd;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    goto :goto_7

    :cond_23
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
