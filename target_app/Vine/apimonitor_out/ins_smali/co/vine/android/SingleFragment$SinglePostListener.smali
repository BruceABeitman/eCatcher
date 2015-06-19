.class  Lco/vine/android/SingleFragment$SinglePostListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SingleFragment.java"
.field final synthetic this$0:Lco/vine/android/SingleFragment;
.method constructor <init>(Lco/vine/android/SingleFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onGetPostIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 8
iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;
#getter for: Lco/vine/android/SingleFragment;->mWrapper:Lco/vine/android/SingleFragmentWrapper;
invoke-static {v0}, Lco/vine/android/SingleFragment;->access$000(Lco/vine/android/SingleFragment;)Lco/vine/android/SingleFragmentWrapper;
move-result-object v0
invoke-virtual {v0, p4, p5}, Lco/vine/android/SingleFragmentWrapper;->onGetPostIdComplete(J)V
iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lco/vine/android/SingleFragment;->fetchPostContent(I)V
return-void
.end method
.method public onGetSinglePostComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VinePost;)V
.registers 7
iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;
const/4 v1, 0x1
iput-boolean v1, v0, Lco/vine/android/SingleFragment;->mFetched:Z
iget-object v0, p0, Lco/vine/android/SingleFragment$SinglePostListener;->this$0:Lco/vine/android/SingleFragment;
iget-object v0, v0, Lco/vine/android/SingleFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;
check-cast v0, Lco/vine/android/widget/FeedAdapter;
invoke-virtual {v0, p4}, Lco/vine/android/widget/FeedAdapter;->mergePost(Lco/vine/android/api/VinePost;)V
return-void
.end method