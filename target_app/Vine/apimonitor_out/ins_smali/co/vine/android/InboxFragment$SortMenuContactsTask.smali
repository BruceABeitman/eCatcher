.class  Lco/vine/android/InboxFragment$SortMenuContactsTask;
.super Lco/vine/android/SortContactsTask;
.source "InboxFragment.java"
.field final synthetic this$0:Lco/vine/android/InboxFragment;
.method private constructor <init>(Lco/vine/android/InboxFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/InboxFragment$SortMenuContactsTask;->this$0:Lco/vine/android/InboxFragment;
invoke-direct {p0}, Lco/vine/android/SortContactsTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/InboxFragment;Lco/vine/android/InboxFragment$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/InboxFragment$SortMenuContactsTask;-><init>(Lco/vine/android/InboxFragment;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/ArrayList;
invoke-virtual {p0, p1}, Lco/vine/android/InboxFragment$SortMenuContactsTask;->onPostExecute(Ljava/util/ArrayList;)V
return-void
.end method
.method protected onPostExecute(Ljava/util/ArrayList;)V
.registers 7
iget-object v2, p0, Lco/vine/android/InboxFragment$SortMenuContactsTask;->this$0:Lco/vine/android/InboxFragment;
const/4 v3, 0x0
#setter for: Lco/vine/android/InboxFragment;->mSortMenuTask:Lco/vine/android/InboxFragment$SortMenuContactsTask;
invoke-static {v2, v3}, Lco/vine/android/InboxFragment;->access$902(Lco/vine/android/InboxFragment;Lco/vine/android/InboxFragment$SortMenuContactsTask;)Lco/vine/android/InboxFragment$SortMenuContactsTask;
iget-object v2, p0, Lco/vine/android/InboxFragment$SortMenuContactsTask;->this$0:Lco/vine/android/InboxFragment;
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
#setter for: Lco/vine/android/InboxFragment;->mContactEntryMap:Ljava/util/HashMap;
invoke-static {v2, v3}, Lco/vine/android/InboxFragment;->access$1002(Lco/vine/android/InboxFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_14
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_30
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/ContactEntry;
iget-object v2, p0, Lco/vine/android/InboxFragment$SortMenuContactsTask;->this$0:Lco/vine/android/InboxFragment;
#getter for: Lco/vine/android/InboxFragment;->mContactEntryMap:Ljava/util/HashMap;
invoke-static {v2}, Lco/vine/android/InboxFragment;->access$1000(Lco/vine/android/InboxFragment;)Ljava/util/HashMap;
move-result-object v2
iget-wide v3, v0, Lco/vine/android/ContactEntry;->contactId:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_14
:cond_30
iget-object v2, p0, Lco/vine/android/InboxFragment$SortMenuContactsTask;->this$0:Lco/vine/android/InboxFragment;
#setter for: Lco/vine/android/InboxFragment;->mContactEntries:Ljava/util/ArrayList;
invoke-static {v2, p1}, Lco/vine/android/InboxFragment;->access$1102(Lco/vine/android/InboxFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
iget-object v2, p0, Lco/vine/android/InboxFragment$SortMenuContactsTask;->this$0:Lco/vine/android/InboxFragment;
#calls: Lco/vine/android/InboxFragment;->invalidateContactEntries()V
invoke-static {v2}, Lco/vine/android/InboxFragment;->access$1200(Lco/vine/android/InboxFragment;)V
return-void
.end method