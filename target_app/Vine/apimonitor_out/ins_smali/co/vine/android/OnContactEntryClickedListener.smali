.class public abstract Lco/vine/android/OnContactEntryClickedListener;
.super Ljava/lang/Object;
.source "OnContactEntryClickedListener.java"
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;
.field public static final DIALOG_SELECT_CONTACT_ITEM:I
.field protected mEntry:Lco/vine/android/ContactEntry;
.field protected mValues:[Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/support/v4/app/Fragment;Lco/vine/android/ContactEntry;)V
.registers 7
const/4 v3, 0x0
if-eqz p2, :cond_2f
iget-object v2, p2, Lco/vine/android/ContactEntry;->valueMimeMap:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v2
new-array v2, v2, [Ljava/lang/String;
invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
check-cast v2, [Ljava/lang/String;
iput-object v2, p0, Lco/vine/android/OnContactEntryClickedListener;->mValues:[Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/OnContactEntryClickedListener;->mEntry:Lco/vine/android/ContactEntry;
invoke-static {v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v1
iget-object v2, p0, Lco/vine/android/OnContactEntryClickedListener;->mValues:[Ljava/lang/String;
invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setItems([Ljava/lang/String;)Lco/vine/android/widgets/PromptDialogSupportFragment;
invoke-virtual {v1, p1, v3}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V
invoke-virtual {v1, p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
:cond_2f
return-void
.end method
.method protected abstract onContactEntryClicked(Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
.end method
.method public onDialogDone(Landroid/content/DialogInterface;II)V
.registers 12
const-wide/16 v4, 0x0
const-wide/16 v1, -0x1
iget-object v0, p0, Lco/vine/android/OnContactEntryClickedListener;->mEntry:Lco/vine/android/ContactEntry;
iget-object v0, v0, Lco/vine/android/ContactEntry;->valueMimeMap:Ljava/util/HashMap;
iget-object v3, p0, Lco/vine/android/OnContactEntryClickedListener;->mValues:[Ljava/lang/String;
aget-object v3, v3, p3
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/Integer;
if-eqz v7, :cond_50
const/4 v6, 0x0
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v3, 0x1
if-ne v0, v3, :cond_28
iget-object v0, p0, Lco/vine/android/OnContactEntryClickedListener;->mEntry:Lco/vine/android/ContactEntry;
iget-object v0, v0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
iget-object v3, p0, Lco/vine/android/OnContactEntryClickedListener;->mValues:[Ljava/lang/String;
aget-object v3, v3, p3
invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromEmail(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v6
:cond_28
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v3, 0x2
if-ne v0, v3, :cond_3b
iget-object v0, p0, Lco/vine/android/OnContactEntryClickedListener;->mEntry:Lco/vine/android/ContactEntry;
iget-object v0, v0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
iget-object v3, p0, Lco/vine/android/OnContactEntryClickedListener;->mValues:[Ljava/lang/String;
aget-object v3, v3, p3
invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromPhone(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v6
:cond_3b
if-eqz v6, :cond_50
iget-object v0, p0, Lco/vine/android/OnContactEntryClickedListener;->mEntry:Lco/vine/android/ContactEntry;
iget-wide v0, v0, Lco/vine/android/ContactEntry;->contactId:J
iput-wide v0, v6, Lco/vine/android/api/VineRecipient;->contactId:J
iget-object v0, p0, Lco/vine/android/OnContactEntryClickedListener;->mEntry:Lco/vine/android/ContactEntry;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v1
iget-object v2, p0, Lco/vine/android/OnContactEntryClickedListener;->mValues:[Ljava/lang/String;
aget-object v2, v2, p3
invoke-virtual {p0, v0, v6, v1, v2}, Lco/vine/android/OnContactEntryClickedListener;->onContactEntryClicked(Lco/vine/android/ContactEntry;Lco/vine/android/api/VineRecipient;ILjava/lang/String;)V
:cond_50
return-void
.end method