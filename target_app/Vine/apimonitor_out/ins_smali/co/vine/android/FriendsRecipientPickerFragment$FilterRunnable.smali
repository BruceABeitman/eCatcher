.class  Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;
.super Ljava/lang/Object;
.source "FriendsRecipientPickerFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/FriendsRecipientPickerFragment;
.method public constructor <init>(Lco/vine/android/FriendsRecipientPickerFragment;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/FriendsRecipientPickerFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p1, Lco/vine/android/FriendsRecipientPickerFragment;->mQueryString:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/FriendsRecipientPickerFragment;
iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/FriendsRecipientPickerFragment;
iget-object v1, v1, Lco/vine/android/FriendsRecipientPickerFragment;->mQueryString:Ljava/lang/String;
#setter for: Lco/vine/android/FriendsRecipientPickerFragment;->mLastFiredQuery:Ljava/lang/String;
invoke-static {v0, v1}, Lco/vine/android/FriendsRecipientPickerFragment;->access$002(Lco/vine/android/FriendsRecipientPickerFragment;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/FriendsRecipientPickerFragment;
iget-object v0, v0, Lco/vine/android/FriendsRecipientPickerFragment;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/FriendsRecipientPickerFragment$FilterRunnable;->this$0:Lco/vine/android/FriendsRecipientPickerFragment;
iget-object v1, v1, Lco/vine/android/FriendsRecipientPickerFragment;->mQueryString:Ljava/lang/String;
invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->fetchFriendsTypeAhead(Ljava/lang/String;)Ljava/lang/String;
return-void
.end method