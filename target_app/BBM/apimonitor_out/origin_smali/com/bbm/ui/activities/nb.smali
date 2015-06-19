.class final Lcom/bbm/ui/activities/nb;
.super Lcom/bbm/ui/activities/nc;
.source "GroupConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/nb;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/activities/nc;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/nb;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;)V
    .registers 9

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/nb;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message/rfc822"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/bbm/ui/activities/nb;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v4}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e03d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v1, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/bbm/ui/activities/nb;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v6, v0}, Lcom/bbm/util/bm;->a(Landroid/content/Context;Lcom/bbm/g/q;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bbm/ui/activities/nb;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/nb;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e03da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
