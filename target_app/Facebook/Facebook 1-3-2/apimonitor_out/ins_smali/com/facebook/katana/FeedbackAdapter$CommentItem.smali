.class public Lcom/facebook/katana/FeedbackAdapter$CommentItem;
.super Lcom/facebook/katana/FeedbackAdapter$Item;
.source "FeedbackAdapter.java"
.field private final mComment:Lcom/facebook/katana/service/api/FacebookPost$Comment;
.field private final mTime:Ljava/lang/String;
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPost$Comment;)V
.registers 8
const/16 v0, 0x1f
invoke-direct {p0, v0}, Lcom/facebook/katana/FeedbackAdapter$Item;-><init>(I)V
iput-object p2, p0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->mComment:Lcom/facebook/katana/service/api/FacebookPost$Comment;
sget-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->getTime()J
move-result-wide v1
const-wide/16 v3, 0x3e8
mul-long/2addr v1, v3
invoke-static {p1, v0, v1, v2}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->mTime:Ljava/lang/String;
return-void
.end method
.method public getComment()Lcom/facebook/katana/service/api/FacebookPost$Comment;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->mComment:Lcom/facebook/katana/service/api/FacebookPost$Comment;
return-object v0
.end method
.method public getTime()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FeedbackAdapter$CommentItem;->mTime:Ljava/lang/String;
return-object v0
.end method