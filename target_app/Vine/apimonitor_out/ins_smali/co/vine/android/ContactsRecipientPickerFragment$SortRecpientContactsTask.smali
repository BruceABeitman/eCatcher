.class  Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;
.super Lco/vine/android/SortContactsTask;
.source "ContactsRecipientPickerFragment.java"
.field private mId:I
.field final synthetic this$0:Lco/vine/android/ContactsRecipientPickerFragment;
.method public constructor <init>(Lco/vine/android/ContactsRecipientPickerFragment;I)V
.registers 3
iput-object p1, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
invoke-direct {p0}, Lco/vine/android/SortContactsTask;-><init>()V
iput p2, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->mId:I
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/ArrayList;
invoke-virtual {p0, p1}, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->onPostExecute(Ljava/util/ArrayList;)V
return-void
.end method
.method protected onPostExecute(Ljava/util/ArrayList;)V
.registers 4
iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
#getter for: Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;
invoke-static {v0}, Lco/vine/android/ContactsRecipientPickerFragment;->access$100(Lco/vine/android/ContactsRecipientPickerFragment;)Lco/vine/android/ContactsPickerAdapter;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/ContactsPickerAdapter;->clear()V
iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
#getter for: Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;
invoke-static {v0}, Lco/vine/android/ContactsRecipientPickerFragment;->access$100(Lco/vine/android/ContactsRecipientPickerFragment;)Lco/vine/android/ContactsPickerAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lco/vine/android/ContactsPickerAdapter;->addAll(Ljava/util/Collection;)V
iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
iget-object v0, v0, Lco/vine/android/ContactsRecipientPickerFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
#getter for: Lco/vine/android/ContactsRecipientPickerFragment;->mActiveAdapter:Lco/vine/android/ContactsPickerAdapter;
invoke-static {v1}, Lco/vine/android/ContactsRecipientPickerFragment;->access$100(Lco/vine/android/ContactsRecipientPickerFragment;)Lco/vine/android/ContactsPickerAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method protected prepareEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
.registers 8
iget v3, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->mId:I
if-nez v3, :cond_28
invoke-super {p0, p1}, Lco/vine/android/SortContactsTask;->prepareEntries(Landroid/database/Cursor;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/ContactEntry;
iget-object v3, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
#getter for: Lco/vine/android/ContactsRecipientPickerFragment;->mContactEntryMap:Ljava/util/HashMap;
invoke-static {v3}, Lco/vine/android/ContactsRecipientPickerFragment;->access$000(Lco/vine/android/ContactsRecipientPickerFragment;)Ljava/util/HashMap;
move-result-object v3
iget-wide v4, v1, Lco/vine/android/ContactEntry;->contactId:J
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c
:cond_28
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_2d
:cond_2d
invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
move-result v3
if-eqz v3, :cond_4e
iget-object v3, p0, Lco/vine/android/ContactsRecipientPickerFragment$SortRecpientContactsTask;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
#getter for: Lco/vine/android/ContactsRecipientPickerFragment;->mContactEntryMap:Ljava/util/HashMap;
invoke-static {v3}, Lco/vine/android/ContactsRecipientPickerFragment;->access$000(Lco/vine/android/ContactsRecipientPickerFragment;)Ljava/util/HashMap;
move-result-object v3
const/4 v4, 0x0
invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/ContactEntry;
if-eqz v1, :cond_2d
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2d
:cond_4e
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_51
return-object v0
.end method