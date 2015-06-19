.class final Lcom/bbm/ui/c/ic;
.super Lcom/bbm/j/u;
.source "UpdatesFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 9

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, "mOpenGroupUpdateSingleshotMonitor activated with no mUpdateToOpen"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v2

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0}, Lcom/bbm/ui/c/hk;->isAdded()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    move v0, v2

    goto :goto_13

    :cond_26
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/g/ak;

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->l:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_3c

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->k:Lcom/bbm/g/al;

    if-ne v1, v4, :cond_a0

    :cond_3c
    iget-object v1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v4, v0, Lcom/bbm/g/ak;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v5}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v5

    iget-object v5, v5, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/bbm/g/am;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v1

    sget-object v4, Lcom/bbm/ui/c/hu;->b:[I

    invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_2c4

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0, v7}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/ew;)Lcom/bbm/util/ew;

    move v0, v2

    goto :goto_13

    :pswitch_64
    move v0, v3

    goto :goto_13

    :pswitch_66
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    const v3, 0x7f0e0736

    invoke-virtual {v1, v3}, Lcom/bbm/ui/c/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5d

    :pswitch_79
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bbm/ui/activities/GroupEventDetailsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "groupUri"

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "eventUri"

    iget-object v0, v0, Lcom/bbm/g/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/hk;->startActivity(Landroid/content/Intent;)V

    goto :goto_5d

    :cond_a0
    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->h:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_be

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->e:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_be

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->g:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_be

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->f:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_be

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->d:Lcom/bbm/g/al;

    if-ne v1, v4, :cond_1ac

    :cond_be
    iget-object v1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v4, v0, Lcom/bbm/g/ak;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v5}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v5

    iget-object v5, v5, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/bbm/g/am;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v1

    sget-object v4, Lcom/bbm/ui/c/hu;->b:[I

    invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_2ce

    goto/16 :goto_5d

    :pswitch_e1
    iget-object v1, v0, Lcom/bbm/g/ak;->d:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13f

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v3, Lcom/bbm/g/al;->h:Lcom/bbm/g/al;

    if-ne v1, v3, :cond_117

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "groupUri"

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "listUri"

    iget-object v0, v0, Lcom/bbm/g/ak;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/hk;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5d

    :cond_117
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "groupUri"

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "listUri"

    iget-object v0, v0, Lcom/bbm/g/ak;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/hk;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5d

    :cond_13f
    move v0, v3

    goto/16 :goto_13

    :pswitch_142
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    const v3, 0x7f0e0743

    invoke-virtual {v1, v3}, Lcom/bbm/ui/c/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_5d

    :pswitch_156
    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v3, Lcom/bbm/g/al;->h:Lcom/bbm/g/al;

    if-ne v1, v3, :cond_184

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bbm/ui/activities/GroupListsCommentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "groupUri"

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "listUri"

    iget-object v0, v0, Lcom/bbm/g/ak;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/hk;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5d

    :cond_184
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bbm/ui/activities/GroupListItemsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "groupUri"

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "listUri"

    iget-object v0, v0, Lcom/bbm/g/ak;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/hk;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5d

    :cond_1ac
    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->i:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_1be

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->c:Lcom/bbm/g/al;

    if-eq v1, v4, :cond_1be

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->b:Lcom/bbm/g/al;

    if-ne v1, v4, :cond_22f

    :cond_1be
    iget-object v1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v4, v0, Lcom/bbm/g/ak;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v5}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v5

    iget-object v5, v5, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/bbm/g/am;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v1

    sget-object v4, Lcom/bbm/ui/c/hu;->b:[I

    invoke-virtual {v1}, Lcom/bbm/util/bh;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_2d8

    goto/16 :goto_5d

    :pswitch_1e1
    move v0, v3

    goto/16 :goto_13

    :pswitch_1e4
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    const v3, 0x7f0e074c

    invoke-virtual {v1, v3}, Lcom/bbm/ui/c/hk;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_5d

    :pswitch_1f8
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "groupUri"

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->h(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "pictureUri"

    iget-object v0, v0, Lcom/bbm/g/ak;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/c/hk;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    const v1, 0x7f040001

    const v3, 0x7f040004

    invoke-virtual {v0, v1, v3}, Lcom/bbm/ui/activities/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_5d

    :cond_22f
    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    sget-object v4, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;

    if-ne v1, v4, :cond_5d

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iget-object v4, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v4}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v5, v0, Lcom/bbm/g/ak;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v4

    sget-object v5, Lcom/bbm/ui/c/hu;->b:[I

    iget-object v6, v4, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;

    invoke-virtual {v6}, Lcom/bbm/util/bh;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2e2

    goto/16 :goto_5d

    :pswitch_254
    move v0, v3

    goto/16 :goto_13

    :pswitch_257
    const-string v1, "Cannot find GroupContact with URI %s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/bbm/g/ak;->c:Ljava/lang/String;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    goto/16 :goto_5d

    :pswitch_266
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v5, v4, Lcom/bbm/g/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;

    move-result-object v5

    sget-object v0, Lcom/bbm/ui/c/hu;->b:[I

    iget-object v6, v5, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;

    invoke-virtual {v6}, Lcom/bbm/util/bh;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_2ec

    move-object v0, v1

    :goto_282
    sget-object v1, Lcom/bbm/ui/c/hu;->b:[I

    invoke-virtual {v0}, Lcom/bbm/util/bh;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2f6

    goto/16 :goto_5d

    :pswitch_28f
    move v0, v3

    goto/16 :goto_13

    :pswitch_292
    move v0, v3

    goto/16 :goto_13

    :pswitch_295
    sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    goto :goto_282

    :pswitch_298
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->f(Lcom/bbm/ui/c/hk;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v1, v5, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    goto :goto_282

    :pswitch_2a7
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v0

    iget-object v1, v4, Lcom/bbm/g/o;->e:Ljava/lang/String;

    iget-object v3, v4, Lcom/bbm/g/o;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5d

    :pswitch_2b6
    iget-object v0, p0, Lcom/bbm/ui/c/ic;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v5, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5d

    nop

    :pswitch_data_2c4
    .packed-switch 0x1
        :pswitch_64
        :pswitch_66
        :pswitch_79
    .end packed-switch

    :pswitch_data_2ce
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_142
        :pswitch_156
    .end packed-switch

    :pswitch_data_2d8
    .packed-switch 0x1
        :pswitch_1e1
        :pswitch_1e4
        :pswitch_1f8
    .end packed-switch

    :pswitch_data_2e2
    .packed-switch 0x1
        :pswitch_254
        :pswitch_257
        :pswitch_266
    .end packed-switch

    :pswitch_data_2ec
    .packed-switch 0x1
        :pswitch_292
        :pswitch_295
        :pswitch_298
    .end packed-switch

    :pswitch_data_2f6
    .packed-switch 0x1
        :pswitch_28f
        :pswitch_2a7
        :pswitch_2b6
    .end packed-switch
.end method
