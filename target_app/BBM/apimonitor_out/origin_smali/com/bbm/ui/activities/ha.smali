.class final Lcom/bbm/ui/activities/ha;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 9

    const/16 v7, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->o(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v2

    iget-object v1, v2, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v1, v3, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v1, v2, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v3, :cond_c5

    iget-object v1, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v3, v2, Lcom/bbm/d/fw;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v3

    iget-object v1, v3, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v1, v4, :cond_19

    iget-object v0, v3, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_c5

    iget-object v0, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->v(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/fw;Lcom/bbm/d/ec;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_c5

    iget-object v0, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->f:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_66
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    iget-object v1, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const v6, 0x7f0e0696

    invoke-virtual {v1, v6}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_7a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, v3, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, v3, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v2, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a9

    iget-object v1, v2, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a9
    iget-object v1, v2, Lcom/bbm/d/fw;->d:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bbm/d/do;->e:Lcom/bbm/d/do;

    invoke-static {v2, v0, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/d/do;)Lcom/bbm/d/dn;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bbm/d/dn;->c(Lorg/json/JSONObject;)Lcom/bbm/d/dn;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_c5
    iget-object v0, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->k()V

    const/4 v0, 0x1

    goto/16 :goto_19

    :cond_cd
    iget-object v0, p0, Lcom/bbm/ui/activities/ha;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->an(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_66
.end method
