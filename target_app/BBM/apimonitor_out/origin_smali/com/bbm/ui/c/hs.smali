.class final Lcom/bbm/ui/c/hs;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v3, 0x7f0a007d

    iget-object v0, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->p(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/ew;

    sget-object v1, Lcom/bbm/ui/c/hu;->c:[I

    iget-object v2, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    invoke-virtual {v2}, Lcom/bbm/util/ex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    :goto_1c
    :pswitch_1c
    return-void

    :pswitch_1d
    iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/d/fy;

    iget-object v1, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/fy;Landroid/app/Activity;)V

    goto :goto_1c

    :pswitch_30
    iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/b/a;

    iget-object v1, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/b/a;Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_1c

    :pswitch_44
    iget-object v0, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/MainActivity;->b(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/hs;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/MainActivity;->a(I)V

    goto :goto_1c

    nop

    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_30
        :pswitch_1c
        :pswitch_44
    .end packed-switch
.end method
