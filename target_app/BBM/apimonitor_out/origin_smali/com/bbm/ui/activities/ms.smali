.class final Lcom/bbm/ui/activities/ms;
.super Lcom/bbm/ui/cj;
.source "GroupConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ms;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ms;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->d(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    return-void
.end method

.method public final a(I)V
    .registers 3

    packed-switch p1, :pswitch_data_a

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/bbm/ui/activities/ms;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->b()V

    goto :goto_3

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ms;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->c(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    return-void
.end method
