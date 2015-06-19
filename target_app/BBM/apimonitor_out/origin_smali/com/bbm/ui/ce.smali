.class final Lcom/bbm/ui/ce;
.super Lcom/bbm/j/k;
.source "EmoticonStickerPager.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/cd;


# direct methods
.method constructor <init>(Lcom/bbm/ui/cd;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/ce;->a:Lcom/bbm/ui/cd;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/ce;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->m(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/d/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/b/f;->f()Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/ce;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->n(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/ch;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/bbm/ui/ce;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Landroid/support/v4/view/af;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v0, p0, Lcom/bbm/ui/ce;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->o(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/ce;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x0

    :goto_34
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_38
    const/16 v0, 0x8

    goto :goto_34
.end method
