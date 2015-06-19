.class final Lcom/bbm/ui/activities/hp;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/d/fg;
.field final synthetic b:Landroid/view/View;
.field final synthetic c:Landroid/view/View;
.field final synthetic d:Lcom/bbm/ui/activities/ho;
.method constructor <init>(Lcom/bbm/ui/activities/ho;Lcom/bbm/d/fg;Landroid/view/View;Landroid/view/View;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iput-object p2, p0, Lcom/bbm/ui/activities/hp;->a:Lcom/bbm/d/fg;
iput-object p3, p0, Lcom/bbm/ui/activities/hp;->b:Landroid/view/View;
iput-object p4, p0, Lcom/bbm/ui/activities/hp;->c:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 7
const/4 v1, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/hp;->a:Lcom/bbm/d/fg;
iget-object v3, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v3
iget-object v0, v3, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_1a
move v0, v1
:goto_19
return v0
:cond_1a
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->b:Landroid/view/View;
instance-of v0, v0, Landroid/widget/TextView;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v4, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->b:Landroid/view/View;
check-cast v0, Landroid/widget/TextView;
invoke-static {v4, v0}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
:goto_2b
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v0
if-nez v0, :cond_6c
const-string v0, "ConversationActivity"
new-array v3, v2, [Ljava/lang/Object;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Got and unexpected class type =>"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/bbm/ui/activities/hp;->c:Landroid/view/View;
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v0, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v2
goto :goto_19
:cond_59
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v4, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->b:Landroid/view/View;
const v5, 0x7f0a0456
invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {v4, v0}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
goto :goto_2b
:cond_6c
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v0
instance-of v0, v0, Lcom/bbm/ui/LinkifyTextView;
if-eqz v0, :cond_93
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v0
check-cast v0, Lcom/bbm/ui/LinkifyTextView;
iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z
if-nez v0, :cond_93
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v0
check-cast v0, Lcom/bbm/ui/LinkifyTextView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V
:cond_93
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v1, v1, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->av(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/TextView;
move-result-object v1
const v4, 0x7f09006d
const v5, 0x7f09011e
invoke-static {v0, v1, v4, v5}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Landroid/widget/TextView;II)V
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v3, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->d(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/hp;->a:Lcom/bbm/d/fg;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/fg;)Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v1, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->a:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v3, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;
if-ne v0, v3, :cond_ff
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const v3, 0x7f0e02c6
invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_d5
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ConversationActivity;->e(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->g(Lcom/bbm/ui/activities/ConversationActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v1, v1, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/c/fm;)V
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->o()V
move v0, v2
goto/16 :goto_19
:cond_ff
iget-object v0, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v0, v0, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/hp;->d:Lcom/bbm/ui/activities/ho;
iget-object v3, v3, Lcom/bbm/ui/activities/ho;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/hp;->a:Lcom/bbm/d/fg;
invoke-static {v0, v3, v4}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v0
goto :goto_d5
.end method