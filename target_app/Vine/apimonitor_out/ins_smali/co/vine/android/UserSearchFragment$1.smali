.class  Lco/vine/android/UserSearchFragment$1;
.super Ljava/lang/Object;
.source "UserSearchFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/UserSearchFragment;
.method constructor <init>(Lco/vine/android/UserSearchFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/UserSearchFragment$1;->this$0:Lco/vine/android/UserSearchFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/UserSearchFragment$1;->this$0:Lco/vine/android/UserSearchFragment;
iget-object v0, v0, Lco/vine/android/UserSearchFragment;->mDbHelper:Lco/vine/android/provider/VineDatabaseHelper;
invoke-virtual {v0}, Lco/vine/android/provider/VineDatabaseHelper;->cleanUserSearchResults()V
return-void
.end method