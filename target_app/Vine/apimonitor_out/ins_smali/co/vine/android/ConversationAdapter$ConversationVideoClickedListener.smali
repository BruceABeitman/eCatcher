.class public Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;
.super Lco/vine/android/player/OnListVideoClickListener;
.source "ConversationAdapter.java"
.field final synthetic this$0:Lco/vine/android/ConversationAdapter;
.method public constructor <init>(Lco/vine/android/ConversationAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;->this$0:Lco/vine/android/ConversationAdapter;
invoke-direct {p0, p1}, Lco/vine/android/player/OnListVideoClickListener;-><init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/player/OnListVideoClickListener;->onClick(Landroid/view/View;)V
iget-object v0, p0, Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;->this$0:Lco/vine/android/ConversationAdapter;
const/4 v1, -0x1
#setter for: Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I
invoke-static {v0, v1}, Lco/vine/android/ConversationAdapter;->access$802(Lco/vine/android/ConversationAdapter;I)I
const-string v1, " - Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method