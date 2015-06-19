.class final Lcom/bbm/ui/ge;
.super Ljava/lang/Object;
.source "StickerPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/gj;

.field final synthetic b:Lcom/bbm/ui/StickerPicker;


# direct methods
.method constructor <init>(Lcom/bbm/ui/StickerPicker;Lcom/bbm/ui/gj;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;

    iput-object p2, p0, Lcom/bbm/ui/ge;->a:Lcom/bbm/ui/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;

    invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->b(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gh;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/gh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gf;

    iget-object v1, p0, Lcom/bbm/ui/ge;->a:Lcom/bbm/ui/gj;

    invoke-interface {v1, v0}, Lcom/bbm/ui/gj;->a(Lcom/bbm/d/gf;)V

    iget-object v0, p0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;

    invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->e(Lcom/bbm/ui/StickerPicker;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/gf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/gf;-><init>(Lcom/bbm/ui/ge;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    return v0
.end method
