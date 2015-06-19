.class final Lcom/bbm/ui/activities/na;
.super Lcom/bbm/ui/activities/nc;
.source "GroupConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/na;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/activities/nc;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/na;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "simple text"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/na;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v1, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/na;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/na;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    const v2, 0x7f0e0228

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
