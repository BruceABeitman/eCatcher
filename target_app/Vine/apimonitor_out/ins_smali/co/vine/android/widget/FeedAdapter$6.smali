.class  Lco/vine/android/widget/FeedAdapter$6;
.super Ljava/lang/Object;
.source "FeedAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/widget/FeedAdapter;
.field final synthetic val$userId:J
.method constructor <init>(Lco/vine/android/widget/FeedAdapter;J)V
.registers 4
iput-object p1, p0, Lco/vine/android/widget/FeedAdapter$6;->this$0:Lco/vine/android/widget/FeedAdapter;
iput-wide p2, p0, Lco/vine/android/widget/FeedAdapter$6;->val$userId:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/widget/FeedAdapter$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/FeedAdapter$6;->this$0:Lco/vine/android/widget/FeedAdapter;
iget-object v0, v0, Lco/vine/android/widget/FeedAdapter;->mTimelineFragment:Lco/vine/android/BaseTimelineFragment;
iget-wide v1, p0, Lco/vine/android/widget/FeedAdapter$6;->val$userId:J
invoke-virtual {v0, v1, v2}, Lco/vine/android/BaseTimelineFragment;->onRevineBySpanClicked(J)V
const-string v1, " - Lco/vine/android/widget/FeedAdapter$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method