.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/o;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_45

    move v0, v1

    :goto_10
    const-string v3, "position is outside adapter length"

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I

    move-result v0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(II)I

    move-result v3

    packed-switch v0, :pswitch_data_104

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is unknown."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_44
    return-void

    :cond_45
    move v0, v2

    goto :goto_10

    :pswitch_47
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->i(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/au;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/av;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/av;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->i(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/au;->notifyDataSetChanged()V

    goto :goto_44

    :pswitch_6f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/u;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/cw;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/adapter/u;->a()I

    move-result v4

    if-ne v4, v3, :cond_100

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->e()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->f()Z

    move-result v4

    if-nez v4, :cond_fe

    :goto_93
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Z)Lcom/spotify/mobile/android/util/cw;

    :cond_96
    :goto_96
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;

    move-result-object v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->k(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/view/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/view/j;->a(Lcom/spotify/mobile/android/util/cw;)V

    :cond_a7
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->e(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aH:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v1, v2, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v1

    const-string v2, "order"

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v2, "reversed"

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cw;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->f(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->d(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_e5
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->h(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->j(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)Lcom/spotify/mobile/android/ui/adapter/u;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/ui/adapter/u;->a(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$3;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;Lcom/spotify/mobile/android/util/cw;)V

    goto/16 :goto_44

    :cond_fe
    move v1, v2

    goto :goto_93

    :cond_100
    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/cw;->a(Z)Lcom/spotify/mobile/android/util/cw;

    goto :goto_96

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_47
        :pswitch_6f
    .end packed-switch
.end method
