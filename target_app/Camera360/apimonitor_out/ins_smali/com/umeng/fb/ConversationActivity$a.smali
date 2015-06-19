.class  Lcom/umeng/fb/ConversationActivity$a;
.super Landroid/widget/BaseAdapter;
.source "ConversationActivity.java"
.field  a:Landroid/content/Context;
.field  b:Landroid/view/LayoutInflater;
.field final synthetic c:Lcom/umeng/fb/ConversationActivity;
.method public constructor <init>(Lcom/umeng/fb/ConversationActivity;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/umeng/fb/ConversationActivity$a;->c:Lcom/umeng/fb/ConversationActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p2, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->b:Landroid/view/LayoutInflater;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->c:Lcom/umeng/fb/ConversationActivity;
invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->a(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;
move-result-object v0
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
goto :goto_d
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->c:Lcom/umeng/fb/ConversationActivity;
invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->a(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
const/4 v3, -0x2
if-nez p2, :cond_7d
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->b:Landroid/view/LayoutInflater;
iget-object v1, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/umeng/fb/b/d;->c(Landroid/content/Context;)I
move-result v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v1, Lcom/umeng/fb/ConversationActivity$a$a;
invoke-direct {v1, p0}, Lcom/umeng/fb/ConversationActivity$a$a;-><init>(Lcom/umeng/fb/ConversationActivity$a;)V
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/fb/b/c;->f(Landroid/content/Context;)I
move-result v0
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/umeng/fb/ConversationActivity$a$a;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/fb/b/c;->b(Landroid/content/Context;)I
move-result v0
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/umeng/fb/ConversationActivity$a$a;->b:Landroid/widget/TextView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_34
iget-object v0, p0, Lcom/umeng/fb/ConversationActivity$a;->c:Lcom/umeng/fb/ConversationActivity;
invoke-static {v0}, Lcom/umeng/fb/ConversationActivity;->a(Lcom/umeng/fb/ConversationActivity;)Lcom/umeng/fb/model/Conversation;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/fb/model/Conversation;->getReplyList()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/fb/model/Reply;
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
instance-of v3, v0, Lcom/umeng/fb/model/DevReply;
if-eqz v3, :cond_85
const/16 v3, 0x9
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v3, v1, Lcom/umeng/fb/ConversationActivity$a$a;->b:Landroid/widget/TextView;
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, v1, Lcom/umeng/fb/ConversationActivity$a$a;->b:Landroid/widget/TextView;
iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
invoke-static {v3}, Lcom/umeng/fb/b/b;->b(Landroid/content/Context;)I
move-result v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V
:goto_62
iget-object v2, v1, Lcom/umeng/fb/ConversationActivity$a$a;->a:Landroid/widget/TextView;
invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v3
invoke-virtual {v0}, Lcom/umeng/fb/model/Reply;->getDatetime()Ljava/util/Date;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v1, Lcom/umeng/fb/ConversationActivity$a$a;->b:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/umeng/fb/model/Reply;->getContent()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object p2
:cond_7d
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/fb/ConversationActivity$a$a;
move-object v1, v0
goto :goto_34
:cond_85
const/16 v3, 0xb
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v3, v1, Lcom/umeng/fb/ConversationActivity$a$a;->b:Landroid/widget/TextView;
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v2, v1, Lcom/umeng/fb/ConversationActivity$a$a;->b:Landroid/widget/TextView;
iget-object v3, p0, Lcom/umeng/fb/ConversationActivity$a;->a:Landroid/content/Context;
invoke-static {v3}, Lcom/umeng/fb/b/b;->a(Landroid/content/Context;)I
move-result v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V
goto :goto_62
.end method