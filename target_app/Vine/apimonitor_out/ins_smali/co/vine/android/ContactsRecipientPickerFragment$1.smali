.class  Lco/vine/android/ContactsRecipientPickerFragment$1;
.super Lco/vine/android/OnContactEntryClickedListener;
.source "ContactsRecipientPickerFragment.java"
.field final synthetic this$0:Lco/vine/android/ContactsRecipientPickerFragment;
.method constructor <init>(Lco/vine/android/ContactsRecipientPickerFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ContactsRecipientPickerFragment$1;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
invoke-direct {p0}, Lco/vine/android/OnContactEntryClickedListener;-><init>()V
return-void
.end method
.method protected onContactEntryClicked(Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lco/vine/android/ContactsRecipientPickerFragment$1;->this$0:Lco/vine/android/ContactsRecipientPickerFragment;
#calls: Lco/vine/android/ContactsRecipientPickerFragment;->onContactEntryClicked(Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
invoke-static {v0, p1, p2, p3, p4}, Lco/vine/android/ContactsRecipientPickerFragment;->access$200(Lco/vine/android/ContactsRecipientPickerFragment;Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
return-void
.end method