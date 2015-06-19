.class  Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsNUXActivity.java"
.field final synthetic this$0:Lco/vine/android/FindFriendsNUXActivity;
.method private constructor <init>(Lco/vine/android/FindFriendsNUXActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXActivity;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/FindFriendsNUXActivity;Lco/vine/android/FindFriendsNUXActivity$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;-><init>(Lco/vine/android/FindFriendsNUXActivity;)V
return-void
.end method
.method public onBulkFollowComplete(Ljava/lang/String;ILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXActivity;
invoke-virtual {v0}, Lco/vine/android/FindFriendsNUXActivity;->dismissDialog()V
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;Z)V
iget-object v0, p0, Lco/vine/android/FindFriendsNUXActivity$FindFriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXActivity;
invoke-virtual {v0}, Lco/vine/android/FindFriendsNUXActivity;->finish()V
return-void
.end method