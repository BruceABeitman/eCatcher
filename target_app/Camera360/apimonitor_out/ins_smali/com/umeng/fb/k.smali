.class  Lcom/umeng/fb/k;
.super Ljava/lang/Object;
.source "FeedbackAgent.java"
.implements Lcom/umeng/fb/model/Conversation$SyncListener;
.field final synthetic a:Lcom/umeng/fb/FeedbackAgent;
.method constructor <init>(Lcom/umeng/fb/FeedbackAgent;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/k;->a:Lcom/umeng/fb/FeedbackAgent;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onReceiveDevReply(Ljava/util/List;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x1
if-eqz p1, :cond_a
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v0, v3, :cond_b
:cond_a
:goto_a
return-void
:cond_b
const-string/jumbo v0, ""
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v3, :cond_4b
iget-object v0, p0, Lcom/umeng/fb/k;->a:Lcom/umeng/fb/FeedbackAgent;
invoke-static {v0}, Lcom/umeng/fb/FeedbackAgent;->a(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lcom/umeng/fb/k;->a:Lcom/umeng/fb/FeedbackAgent;
invoke-static {v1}, Lcom/umeng/fb/FeedbackAgent;->a(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/fb/b/e;->c(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
new-array v3, v3, [Ljava/lang/Object;
invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/fb/model/DevReply;
invoke-virtual {v0}, Lcom/umeng/fb/model/DevReply;->getContent()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_40
:try_start_40
iget-object v1, p0, Lcom/umeng/fb/k;->a:Lcom/umeng/fb/FeedbackAgent;
invoke-static {v1, v0}, Lcom/umeng/fb/FeedbackAgent;->a(Lcom/umeng/fb/FeedbackAgent;Ljava/lang/String;)V
:try_end_45
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_46
goto :goto_a
:catch_46
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
:cond_4b
iget-object v0, p0, Lcom/umeng/fb/k;->a:Lcom/umeng/fb/FeedbackAgent;
invoke-static {v0}, Lcom/umeng/fb/FeedbackAgent;->a(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lcom/umeng/fb/k;->a:Lcom/umeng/fb/FeedbackAgent;
invoke-static {v1}, Lcom/umeng/fb/FeedbackAgent;->a(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/fb/b/e;->d(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
new-array v2, v3, [Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_40
.end method
.method public onSendUserReply(Ljava/util/List;)V
.registers 2
return-void
.end method