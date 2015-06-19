.class final Lcom/bbm/ui/gf;
.super Ljava/lang/Object;
.source "StickerPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ge;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ge;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/gf;->a:Lcom/bbm/ui/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :pswitch_7
    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/bbm/ui/gf;->a:Lcom/bbm/ui/ge;

    iget-object v0, v0, Lcom/bbm/ui/ge;->a:Lcom/bbm/ui/gj;

    invoke-interface {v0}, Lcom/bbm/ui/gj;->a()V

    iget-object v0, p0, Lcom/bbm/ui/gf;->a:Lcom/bbm/ui/ge;

    iget-object v0, v0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;

    invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->e(Lcom/bbm/ui/StickerPicker;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    goto :goto_8

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
