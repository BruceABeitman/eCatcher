.class public abstract Lcom/bbm/ui/activities/cn;
.super Lcom/bbm/ui/activities/ev;
.source "ChannelChildActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bbm/ui/c/fm;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/cn;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/cn;->a:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->C(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected d()V
    .registers 3

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/cn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    :cond_1b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bbm_channel_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    const-string v0, "bbm_channel_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_22
    iput-object v0, p0, Lcom/bbm/ui/activities/cn;->a:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/activities/co;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/co;-><init>(Lcom/bbm/ui/activities/cn;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/cn;->a(Lcom/slidingmenu/lib/a/b;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/cn;->a:Ljava/lang/String;

    const-string v1, "bbm_channel_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
