.class final Lcom/slidingmenu/lib/b;
.super Lcom/slidingmenu/lib/d;
.source "CustomViewAbove.java"


# instance fields
.field final synthetic a:Lcom/slidingmenu/lib/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/CustomViewAbove;)V
    .registers 2

    iput-object p1, p0, Lcom/slidingmenu/lib/b;->a:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-direct {p0}, Lcom/slidingmenu/lib/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/slidingmenu/lib/b;->a:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-static {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_b

    packed-switch p1, :pswitch_data_22

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/slidingmenu/lib/b;->a:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-static {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_b

    :pswitch_17
    iget-object v0, p0, Lcom/slidingmenu/lib/b;->a:Lcom/slidingmenu/lib/CustomViewAbove;

    invoke-static {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->a(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_b

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method
