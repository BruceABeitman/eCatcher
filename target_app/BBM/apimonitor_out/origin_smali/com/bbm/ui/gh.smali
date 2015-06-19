.class final Lcom/bbm/ui/gh;
.super Lcom/bbm/ui/ef;
.source "StickerPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/d/gf;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/StickerPicker;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/StickerPicker;Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gf;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/gh;->b:Lcom/bbm/ui/StickerPicker;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    new-instance v0, Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/gh;->b:Lcom/bbm/ui/StickerPicker;

    invoke-virtual {v1}, Lcom/bbm/ui/StickerPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/SquaredObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/d/gf;

    iget-object v0, p1, Lcom/bbm/d/gf;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lcom/bbm/d/gf;

    iget-object v0, p2, Lcom/bbm/d/gf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Ljava/lang/String;)V

    return-void
.end method
