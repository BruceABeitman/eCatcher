.class final Lcom/bbm/ui/bs;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonStickerPager;


# direct methods
.method constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/bs;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    :goto_8
    return-void

    :sswitch_9
    iget-object v0, p0, Lcom/bbm/ui/bs;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/bs;->a:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1a
    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/s;->b:Lcom/bbm/c/s;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/s;)V

    goto :goto_8

    :sswitch_24
    iget-object v0, p0, Lcom/bbm/ui/bs;->a:Lcom/bbm/ui/EmoticonStickerPager;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;ZI)V

    goto :goto_8

    :sswitch_2b
    iget-object v0, p0, Lcom/bbm/ui/bs;->a:Lcom/bbm/ui/EmoticonStickerPager;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;ZI)V

    goto :goto_8

    :sswitch_data_32
    .sparse-switch
        0x7f0a02b9 -> :sswitch_24
        0x7f0a058e -> :sswitch_9
        0x7f0a0590 -> :sswitch_2b
    .end sparse-switch
.end method