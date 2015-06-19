.class final Lcom/bbm/ui/activities/fs;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v1

    iget-object v2, v1, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v2, v3, :cond_61

    iget-object v2, v1, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v3, "viewTime"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, -0x1

    :cond_2a
    iget-object v1, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/EmoticonInputPanel;->setTimebombValue(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->v(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->v(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->v(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fs;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->B(Lcom/bbm/ui/activities/ConversationActivity;)V

    :cond_60
    const/4 v0, 0x1

    :cond_61
    return v0
.end method
