.class  Lco/vine/android/widget/FeedAdapter$7;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;
.field final synthetic val$post:Lco/vine/android/api/VinePost;
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;Lco/vine/android/api/VinePost;)V
.registers 3
iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;
iput-object p2, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/FeedAdapter$7; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$7;->this$0:Lco/vine/android/widget/FeedAdapter;
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mContext:Landroid/content/Context;
iget-object v1, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;
iget-wide v1, v1, Lco/vine/android/api/VinePost;->postId:J
iget-object v3, p0, Lco/vine/android/widget/FeedAdapter$7;->val$post:Lco/vine/android/api/VinePost;
iget-wide v3, v3, Lco/vine/android/api/VinePost;->userId:J
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lco/vine/android/CommentsActivity;->start(Landroid/content/Context;JJZ)V
const-string v1, " - Lco/vine/android/widget/FeedAdapter$7; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method