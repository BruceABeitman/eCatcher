.class  Lco/vine/android/ConversationAdapter$5;
.super Ljava/lang/Object;
.source "ConversationAdapter.java"
.implements Lco/vine/android/player/VideoViewInterface$OnCompletionListener;
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;
.field final synthetic val$position:I
.field final synthetic val$view:Lco/vine/android/player/SdkVideoView;
.method constructor <init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/SdkVideoView;I)V
.registers 4
iput-object p1, p0, Lco/vine/android/ConversationAdapter$5;->this$0:Lco/vine/android/ConversationAdapter;
iput-object p2, p0, Lco/vine/android/ConversationAdapter$5;->val$view:Lco/vine/android/player/SdkVideoView;
iput p3, p0, Lco/vine/android/ConversationAdapter$5;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompletion(Lco/vine/android/player/VideoViewInterface;)V
.registers 5
iget-object v0, p0, Lco/vine/android/ConversationAdapter$5;->this$0:Lco/vine/android/ConversationAdapter;
iget-object v1, p0, Lco/vine/android/ConversationAdapter$5;->val$view:Lco/vine/android/player/SdkVideoView;
iget v2, p0, Lco/vine/android/ConversationAdapter$5;->val$position:I
#calls: Lco/vine/android/ConversationAdapter;->onLoopFinished(Lco/vine/android/player/VideoViewInterface;I)Z
invoke-static {v0, v1, v2}, Lco/vine/android/ConversationAdapter;->access$600(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/VideoViewInterface;I)Z
move-result v0
if-eqz v0, :cond_1d
const/4 v0, 0x0
invoke-interface {p1, v0}, Lco/vine/android/player/VideoViewInterface;->seekTo(I)V
iget v0, p0, Lco/vine/android/ConversationAdapter$5;->val$position:I
iget-object v1, p0, Lco/vine/android/ConversationAdapter$5;->this$0:Lco/vine/android/ConversationAdapter;
#getter for: Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I
invoke-static {v1}, Lco/vine/android/ConversationAdapter;->access$800(Lco/vine/android/ConversationAdapter;)I
move-result v1
if-eq v0, v1, :cond_1d
invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->start()V
:cond_1d
return-void
.end method