.class Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;
.super Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
    .registers 2

    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    #getter for: Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_b

    packed-switch p1, :pswitch_data_22

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    #getter for: Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_b

    :pswitch_17
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    #getter for: Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    invoke-static {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->access$000(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_b

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method
