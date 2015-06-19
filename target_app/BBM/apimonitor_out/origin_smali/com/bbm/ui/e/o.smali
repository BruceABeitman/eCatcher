.class final Lcom/bbm/ui/e/o;
.super Ljava/lang/Object;
.source "EphemeralTextHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/n;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/n;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/o;->a:Lcom/bbm/ui/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/e/o;->a:Lcom/bbm/ui/e/n;

    iget-object v0, v0, Lcom/bbm/ui/e/n;->a:Lcom/bbm/ui/e/m;

    invoke-static {v0}, Lcom/bbm/ui/e/m;->a(Lcom/bbm/ui/e/m;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/bbm/ui/activities/ConversationActivity;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/bbm/ui/e/o;->a:Lcom/bbm/ui/e/n;

    iget-object v0, v0, Lcom/bbm/ui/e/n;->a:Lcom/bbm/ui/e/m;

    invoke-static {v0}, Lcom/bbm/ui/e/m;->a(Lcom/bbm/ui/e/m;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/e/o;->a:Lcom/bbm/ui/e/n;

    iget-object v1, v1, Lcom/bbm/ui/e/n;->a:Lcom/bbm/ui/e/m;

    invoke-static {v1}, Lcom/bbm/ui/e/m;->b(Lcom/bbm/ui/e/m;)J

    move-result-wide v2

    iget-object v1, v0, Lcom/bbm/ui/activities/ConversationActivity;->c:Landroid/widget/ListView;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/bbm/ui/activities/ConversationActivity;->m:Lcom/bbm/ui/e/au;

    if-eqz v1, :cond_3e

    iget-object v4, v0, Lcom/bbm/ui/activities/ConversationActivity;->m:Lcom/bbm/ui/e/au;

    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v4}, Lcom/bbm/ui/e/au;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_42

    invoke-virtual {v4, v1}, Lcom/bbm/ui/e/au;->getItemId(I)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_3f

    :goto_37
    if-ltz v1, :cond_3e

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_3e
    return-void

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_42
    const/4 v1, -0x1

    goto :goto_37
.end method
