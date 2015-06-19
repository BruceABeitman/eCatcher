.class final Lcom/bbm/ui/activities/hb;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/hb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ao(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/bbm/ui/activities/hb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ap(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/activities/hb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->ap(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/activities/hb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aq(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/bbm/ui/activities/hb;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->k()V

    :cond_20
    return-void
.end method
