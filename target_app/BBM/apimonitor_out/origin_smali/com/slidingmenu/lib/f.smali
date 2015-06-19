.class final Lcom/slidingmenu/lib/f;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/SlidingMenu;I)V
    .registers 3

    iput-object p1, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iput p2, p0, Lcom/slidingmenu/lib/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v4, 0x0

    const-string v1, "SlidingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "changing layerType. hardware? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/slidingmenu/lib/f;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_45

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/slidingmenu/lib/f;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/slidingmenu/lib/f;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/slidingmenu/lib/f;->a:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_44
    return-void

    :cond_45
    const/4 v0, 0x0

    goto :goto_10
.end method
