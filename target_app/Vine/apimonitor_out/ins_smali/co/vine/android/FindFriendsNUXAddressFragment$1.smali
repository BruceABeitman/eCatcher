.class  Lco/vine/android/FindFriendsNUXAddressFragment$1;
.super Ljava/lang/Object;
.source "FindFriendsNUXAddressFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/FindFriendsNUXAddressFragment;
.method constructor <init>(Lco/vine/android/FindFriendsNUXAddressFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/FindFriendsNUXAddressFragment$1;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$1;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;
#getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterLoaderIsReady:Z
invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$100(Lco/vine/android/FindFriendsNUXAddressFragment;)Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$1;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;
invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsNUXAddressFragment;->initLoader(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$1;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;
#setter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterLoaderIsReady:Z
invoke-static {v0, v1}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$102(Lco/vine/android/FindFriendsNUXAddressFragment;Z)Z
:goto_13
return-void
:cond_14
iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$1;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;
invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsNUXAddressFragment;->restartLoader(I)Z
goto :goto_13
.end method