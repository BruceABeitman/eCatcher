.class final Lcom/bbm/ui/activities/ll;
.super Ljava/lang/Object;
.source "GroupChatHistorySettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ll;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "headerActionBar Positive Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ll;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/g/r;

    move-result-object v0

    if-nez v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/activities/ll;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Lcom/bbm/g/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/g/r;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/g/bh;->a(Ljava/lang/String;)Lcom/bbm/g/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ll;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->a:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/activities/ll;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->b(Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bbm/g/bg;

    invoke-direct {v3, v2, v0}, Lcom/bbm/g/bg;-><init>(Ljava/lang/String;Lcom/bbm/g/bh;)V

    invoke-virtual {v1, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ll;->a:Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupChatHistorySettingsActivity;->finish()V

    goto :goto_f
.end method
