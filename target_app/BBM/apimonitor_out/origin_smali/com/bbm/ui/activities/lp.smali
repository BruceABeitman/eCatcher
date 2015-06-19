.class final Lcom/bbm/ui/activities/lp;
.super Ljava/lang/Object;
.source "GroupChatHistorySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ln;

.field final synthetic b:Lcom/bbm/ui/activities/lo;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/lo;Lcom/bbm/ui/activities/ln;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/lp;->b:Lcom/bbm/ui/activities/lo;

    iput-object p2, p0, Lcom/bbm/ui/activities/lp;->a:Lcom/bbm/ui/activities/ln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "historyRadioButton Positive Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/lp;->b:Lcom/bbm/ui/activities/lo;

    iget-object v0, v0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/g/r;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/lp;->a:Lcom/bbm/ui/activities/ln;

    iget-object v1, v1, Lcom/bbm/ui/activities/ln;->b:Lcom/bbm/g/r;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/activities/lp;->b:Lcom/bbm/ui/activities/lo;

    iget-object v0, v0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/lp;->a:Lcom/bbm/ui/activities/ln;

    iget-object v1, v1, Lcom/bbm/ui/activities/ln;->b:Lcom/bbm/g/r;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;Lcom/bbm/g/r;)Lcom/bbm/g/r;

    iget-object v0, p0, Lcom/bbm/ui/activities/lp;->b:Lcom/bbm/ui/activities/lo;

    iget-object v0, v0, Lcom/bbm/ui/activities/lo;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->c(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/ui/activities/lo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/lo;->notifyDataSetChanged()V

    :cond_2b
    return-void
.end method
