.class final Lcom/bbm/ui/activities/hy;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hy;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "quickshare attach location clicked"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/hy;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/util/ck;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bbm/ui/activities/hy;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/bbm/ui/activities/hy;->a:Lcom/bbm/ui/activities/ConversationActivity;

    new-instance v1, Lcom/bbm/ui/activities/hz;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/hz;-><init>(Lcom/bbm/ui/activities/hy;)V

    invoke-static {v0, v1}, Lcom/bbm/util/ck;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    goto :goto_14
.end method
