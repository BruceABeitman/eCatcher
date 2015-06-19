.class final Lcom/bbm/ui/activities/fx;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 7

    const/4 v3, 0x1

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    packed-switch v0, :pswitch_data_19e

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    const-string v0, "invite more onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const-class v2, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_20
    const-string v2, "com.bbm.excludedcontacts"

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/google/b/c/p;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    :try_end_37
    .catch Lcom/bbm/j/z; {:try_start_20 .. :try_end_37} :catch_19b

    :goto_37
    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0, v1, v3}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    :pswitch_3d
    const-string v0, "attach onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(I)V

    goto :goto_6

    :pswitch_54
    const-string v0, "suggest contact onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->J(Lcom/bbm/ui/activities/ConversationActivity;)V

    goto :goto_6

    :pswitch_6a
    const-string v0, "send onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->b()V

    goto :goto_6

    :pswitch_80
    const-string v0, "ping onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->K(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/bbm/d/cm;

    invoke-direct {v2, v1}, Lcom/bbm/d/cm;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->L(Lcom/bbm/ui/activities/ConversationActivity;)I

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;J)J

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->C(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->M(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->C(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->M(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :pswitch_e6
    const-string v0, "copy chat onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->N(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/activities/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ja;->c()V

    goto/16 :goto_6

    :pswitch_101
    const-string v0, "email chat onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->O(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/activities/jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/jb;->c()V

    goto/16 :goto_6

    :pswitch_11c
    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    const-string v0, "save onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->P(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto/16 :goto_6

    :pswitch_137
    const-string v0, "set as bbm display onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->Q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto/16 :goto_6

    :pswitch_152
    const-string v0, "share onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/fy;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/fy;-><init>(Lcom/bbm/ui/activities/fx;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    goto/16 :goto_6

    :pswitch_163
    const-string v0, "save onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->S(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    goto/16 :goto_6

    :pswitch_17e
    const-string v0, "start meeting onItemClick"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/meetings/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fx;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    goto/16 :goto_6

    :catch_19b
    move-exception v0

    goto/16 :goto_37

    :pswitch_data_19e
    .packed-switch 0x7f0a0086
        :pswitch_3d
        :pswitch_6
        :pswitch_6
        :pswitch_e6
        :pswitch_6
        :pswitch_6
        :pswitch_101
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_80
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_11c
        :pswitch_163
        :pswitch_6a
        :pswitch_137
        :pswitch_152
        :pswitch_54
        :pswitch_6
        :pswitch_6
        :pswitch_17e
    .end packed-switch
.end method
