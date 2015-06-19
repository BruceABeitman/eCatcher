.class final Lcom/bbm/ui/activities/mq;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/mq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 6

    packed-switch p2, :pswitch_data_3e

    :goto_3
    iget-object v0, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/mq;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->b(Lcom/bbm/ui/activities/GroupConversationActivity;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->b(Lcom/bbm/ui/activities/GroupConversationActivity;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;Lcom/bbm/ui/c/fm;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/mq;->b:Lcom/bbm/ui/activities/GroupConversationActivity;

    const v2, 0x7f0e04ec

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
