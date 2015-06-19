.class final Lcom/bbm/ui/cg;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/cd;


# direct methods
.method constructor <init>(Lcom/bbm/ui/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/cg;->a:Lcom/bbm/ui/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/cg;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/cg;->a:Lcom/bbm/ui/cd;

    iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_15
    return-void
.end method
