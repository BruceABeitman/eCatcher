.class  Lco/vine/android/FindFriendsTwitterFragment$1;
.super Ljava/lang/Object;
.source "FindFriendsTwitterFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/FindFriendsTwitterFragment;
.method constructor <init>(Lco/vine/android/FindFriendsTwitterFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/FindFriendsTwitterFragment$1;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$1;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFilterLoaderIsReady:Z
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$000(Lco/vine/android/FindFriendsTwitterFragment;)Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$1;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->initLoader(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$1;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#setter for: Lco/vine/android/FindFriendsTwitterFragment;->mFilterLoaderIsReady:Z
invoke-static {v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->access$002(Lco/vine/android/FindFriendsTwitterFragment;Z)Z
:goto_13
return-void
:cond_14
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$1;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsTwitterFragment;->restartLoader(I)Z
goto :goto_13
.end method