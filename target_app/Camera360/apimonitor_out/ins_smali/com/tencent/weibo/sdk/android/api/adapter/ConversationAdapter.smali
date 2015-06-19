.class public Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationAdapter.java"
.field private ct:Landroid/content/Context;
.field private cvlist:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->ct:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->cvlist:Ljava/util/List;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->cvlist:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getCvlist()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->cvlist:Ljava/util/List;
return-object v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->cvlist:Ljava/util/List;
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
.registers 12
const/16 v7, 0x10
const/16 v6, 0xa
const/4 v5, 0x0
if-nez p2, :cond_53
new-instance v0, Landroid/widget/LinearLayout;
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->ct:Landroid/content/Context;
invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, -0x1
const/4 v4, -0x2
invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const-string/jumbo v3, "topic_"
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->ct:Landroid/content/Context;
invoke-static {v3, v4}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V
invoke-virtual {v0, v6, v5, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V
new-instance v2, Landroid/widget/TextView;
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->ct:Landroid/content/Context;
invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const-string/jumbo v3, "#108ece"
invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {p0, p1}, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V
const/high16 v3, 0x4190
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
move-object p2, v0
invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_52
return-object p2
:cond_53
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {p0, p1}, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_52
.end method
.method public setCvlist(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;->cvlist:Ljava/util/List;
return-void
.end method