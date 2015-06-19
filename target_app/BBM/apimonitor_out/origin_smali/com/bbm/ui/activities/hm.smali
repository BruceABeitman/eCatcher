.class final Lcom/bbm/ui/activities/hm;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/ui/bo;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4b

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ad(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/voice/OutgoingCallActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->z(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2d
    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->e(Lcom/bbm/ui/activities/ConversationActivity;Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V

    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V

    return-void

    :cond_4b
    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->e(Lcom/bbm/ui/activities/ConversationActivity;Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchInterceptEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->as(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->at(Lcom/bbm/ui/activities/ConversationActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/hm;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->au(Lcom/bbm/ui/activities/ConversationActivity;)V

    goto :goto_3b
.end method
