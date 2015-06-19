.class final Lcom/bbm/ui/activities/in;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 7

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    packed-switch v0, :pswitch_data_3e

    :goto_5
    iget-object v0, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :pswitch_10
    const-string v0, "on recall message disabled selected"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f09006c

    const v3, 0x7f09000f

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;II)V

    iget-object v0, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/in;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const v2, 0x7f0e04ef

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_3e
    .packed-switch 0x7f0a0092
        :pswitch_10
    .end packed-switch
.end method
