.class public Lco/vine/android/ContactsPickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactsPickerAdapter.java"
.field private static final STATE_REGULAR:I = 0x2
.field private static final STATE_SECTIONED:I = 0x1
.field private static final STATE_UNKNOWN:I
.field private final mFragment:Lco/vine/android/ContactsRecipientPickerFragment;
.field private mRowHeaderStates:[I
.field private mViewHolders:Landroid/util/SparseArray;
.method public constructor <init>(Lco/vine/android/ContactsRecipientPickerFragment;)V
.registers 4
invoke-virtual {p1}, Lco/vine/android/ContactsRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V
iput-object p1, p0, Lco/vine/android/ContactsPickerAdapter;->mFragment:Lco/vine/android/ContactsRecipientPickerFragment;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
return-void
.end method
.method private getSelectionState(Lco/vine/android/ContactEntry;)Ljava/lang/Integer;
.registers 15
const-wide/16 v4, 0x0
const-wide/16 v1, -0x1
const/4 v10, 0x1
iget-object v0, p1, Lco/vine/android/ContactEntry;->valueMimeMap:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v9
const/4 v7, 0x0
const/4 v8, 0x0
invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_11
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4e
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
iget-object v0, p1, Lco/vine/android/ContactEntry;->valueMimeMap:Ljava/util/HashMap;
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v11
if-nez v7, :cond_39
if-ne v11, v10, :cond_39
iget-object v12, p0, Lco/vine/android/ContactsPickerAdapter;->mFragment:Lco/vine/android/ContactsRecipientPickerFragment;
iget-object v0, p1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromEmail(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v0
invoke-virtual {v12, v0}, Lco/vine/android/ContactsRecipientPickerFragment;->isRecipientSelected(Lco/vine/android/api/VineRecipient;)Z
move-result v7
:cond_39
if-nez v8, :cond_4a
const/4 v0, 0x2
if-ne v11, v0, :cond_4a
iget-object v12, p0, Lco/vine/android/ContactsPickerAdapter;->mFragment:Lco/vine/android/ContactsRecipientPickerFragment;
iget-object v0, p1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-static/range {v0 .. v5}, Lco/vine/android/api/VineRecipient;->fromPhone(Ljava/lang/String;JLjava/lang/String;J)Lco/vine/android/api/VineRecipient;
move-result-object v0
invoke-virtual {v12, v0}, Lco/vine/android/ContactsRecipientPickerFragment;->isRecipientSelected(Lco/vine/android/api/VineRecipient;)Z
move-result v8
:cond_4a
if-eqz v7, :cond_11
if-eqz v8, :cond_11
:cond_4e
if-eqz v7, :cond_59
:goto_50
if-eqz v8, :cond_54
or-int/lit8 v10, v10, 0x2
:cond_54
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
:cond_59
const/4 v10, 0x0
goto :goto_50
.end method
.method private invalidateHolderSelectors(Lco/vine/android/ContactEntry;Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;)V
.registers 8
const/4 v4, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1}, Lco/vine/android/ContactsPickerAdapter;->getSelectionState(Lco/vine/android/ContactEntry;)Ljava/lang/Integer;
move-result-object v1
if-eqz v1, :cond_1f
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_c
and-int/lit8 v3, v0, 0x1
if-eqz v3, :cond_21
iget-object v3, p2, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->emailIndicator:Landroid/widget/ImageView;
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V
:goto_15
and-int/lit8 v3, v0, 0x2
if-eqz v3, :cond_27
iget-object v2, p2, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->phoneIndicator:Landroid/widget/ImageView;
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V
:goto_1e
return-void
:cond_1f
move v0, v2
goto :goto_c
:cond_21
iget-object v3, p2, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->emailIndicator:Landroid/widget/ImageView;
invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V
goto :goto_15
:cond_27
iget-object v3, p2, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->phoneIndicator:Landroid/widget/ImageView;
invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V
goto :goto_1e
.end method
.method public addAll(Ljava/util/Collection;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [I
iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter;->mRowHeaderStates:[I
return-void
.end method
.method public getItemId(I)J
.registers 5
invoke-virtual {p0, p1}, Lco/vine/android/ContactsPickerAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/ContactEntry;
if-eqz v0, :cond_b
iget-wide v1, v0, Lco/vine/android/ContactEntry;->contactId:J
:goto_a
return-wide v1
:cond_b
const-wide/16 v1, 0x0
goto :goto_a
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 16
const/16 v9, 0x8
const/4 v6, 0x1
const/4 v7, 0x0
if-nez p2, :cond_99
invoke-virtual {p0}, Lco/vine/android/ContactsPickerAdapter;->getContext()Landroid/content/Context;
move-result-object v8
invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v2
const v8, 0x7f03007e
invoke-virtual {v2, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
new-instance v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;
invoke-direct {v1, p2}, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;-><init>(Landroid/view/View;)V
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_1d
iget-object v8, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
new-instance v10, Ljava/lang/ref/WeakReference;
invoke-direct {v10, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v8, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
invoke-virtual {p0, p1}, Lco/vine/android/ContactsPickerAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/ContactEntry;
invoke-virtual {p0, p1, v0}, Lco/vine/android/ContactsPickerAdapter;->showSeparator(ILco/vine/android/ContactEntry;)Z
move-result v5
iget v8, v0, Lco/vine/android/ContactEntry;->typeFlag:I
and-int/lit8 v8, v8, 0x1
if-eqz v8, :cond_a1
move v3, v6
:goto_38
iget v8, v0, Lco/vine/android/ContactEntry;->typeFlag:I
and-int/lit8 v8, v8, 0x2
if-eqz v8, :cond_a3
move v4, v6
:goto_3f
iget-object v8, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->username:Landroid/widget/TextView;
iget-object v10, v0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v10, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->emailIndicator:Landroid/widget/ImageView;
if-eqz v3, :cond_a5
move v8, v7
:goto_4b
invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v10, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->phoneIndicator:Landroid/widget/ImageView;
if-eqz v4, :cond_a7
move v8, v7
:goto_53
invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V
iget-wide v10, v0, Lco/vine/android/ContactEntry;->contactId:J
iput-wide v10, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->contactId:J
invoke-direct {p0, v0, v1}, Lco/vine/android/ContactsPickerAdapter;->invalidateHolderSelectors(Lco/vine/android/ContactEntry;Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;)V
if-eqz v5, :cond_bd
iget-object v8, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->separator:Landroid/widget/TextView;
invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v8, v0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
if-eqz v8, :cond_a9
iget-object v8, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->separator:Landroid/widget/TextView;
new-array v10, v6, [C
iget-object v11, v0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C
move-result v11
aput-char v11, v10, v7
invoke-virtual {v8, v10, v7, v6}, Landroid/widget/TextView;->setText([CII)V
:goto_7b
add-int/lit8 v6, p1, 0x1
invoke-virtual {p0}, Lco/vine/android/ContactsPickerAdapter;->getCount()I
move-result v8
if-ge v6, v8, :cond_98
iget-object v8, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->divider:Landroid/view/View;
add-int/lit8 v10, p1, 0x1
add-int/lit8 v6, p1, 0x1
invoke-virtual {p0, v6}, Lco/vine/android/ContactsPickerAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/ContactEntry;
invoke-virtual {p0, v10, v6}, Lco/vine/android/ContactsPickerAdapter;->showSeparator(ILco/vine/android/ContactEntry;)Z
move-result v6
if-eqz v6, :cond_c3
:goto_95
invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V
:cond_98
return-object p2
:cond_99
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;
goto/16 :goto_1d
:cond_a1
move v3, v7
goto :goto_38
:cond_a3
move v4, v7
goto :goto_3f
:cond_a5
move v8, v9
goto :goto_4b
:cond_a7
move v8, v9
goto :goto_53
:cond_a9
iget-object v8, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->separator:Landroid/widget/TextView;
new-array v10, v6, [C
iget-object v11, v0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C
move-result v11
aput-char v11, v10, v7
invoke-virtual {v8, v10, v7, v6}, Landroid/widget/TextView;->setText([CII)V
goto :goto_7b
:cond_bd
iget-object v6, v1, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->separator:Landroid/widget/TextView;
invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_7b
:cond_c3
move v9, v7
goto :goto_95
.end method
.method public onRecipientItemAdded(Lco/vine/android/ContactEntry;ILjava/lang/String;)V
.registers 14
const/4 v9, 0x1
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v5, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v5}, Landroid/util/SparseArray;->size()I
move-result v3
const/4 v1, 0x0
:goto_d
if-ge v1, v3, :cond_4b
iget-object v5, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;
if-nez v0, :cond_2f
iget-object v5, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_2c
:cond_2c
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_2f
iget-wide v5, v0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->contactId:J
iget-wide v7, p1, Lco/vine/android/ContactEntry;->contactId:J
cmp-long v5, v5, v7
if-nez v5, :cond_2c
and-int/lit8 v5, p2, 0x1
if-eqz v5, :cond_41
iget-object v5, v0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->emailIndicator:Landroid/widget/ImageView;
invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setSelected(Z)V
goto :goto_2c
:cond_41
and-int/lit8 v5, p2, 0x2
if-eqz v5, :cond_2c
iget-object v5, v0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->phoneIndicator:Landroid/widget/ImageView;
invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setSelected(Z)V
goto :goto_2c
:cond_4b
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v1, 0x0
:goto_50
if-ge v1, v3, :cond_64
iget-object v6, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Integer;
invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
move-result v5
invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_50
:cond_64
return-void
.end method
.method public onRecipientItemRemoved(Lco/vine/android/ContactEntry;ILjava/lang/String;)V
.registers 13
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v5, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v5}, Landroid/util/SparseArray;->size()I
move-result v3
const/4 v1, 0x0
:goto_c
if-ge v1, v3, :cond_3a
iget-object v5, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;
if-nez v0, :cond_2e
iget-object v5, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_2b
:cond_2b
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_2e
iget-wide v5, v0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->contactId:J
iget-wide v7, p1, Lco/vine/android/ContactEntry;->contactId:J
cmp-long v5, v5, v7
if-nez v5, :cond_2b
invoke-direct {p0, p1, v0}, Lco/vine/android/ContactsPickerAdapter;->invalidateHolderSelectors(Lco/vine/android/ContactEntry;Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;)V
goto :goto_2b
:cond_3a
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v1, 0x0
:goto_3f
if-ge v1, v3, :cond_53
iget-object v6, p0, Lco/vine/android/ContactsPickerAdapter;->mViewHolders:Landroid/util/SparseArray;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Integer;
invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
move-result v5
invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:cond_53
return-void
.end method
.method public showSeparator(ILco/vine/android/ContactEntry;)Z
.registers 8
const/4 v4, 0x0
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/ContactsPickerAdapter;->mRowHeaderStates:[I
aget v2, v2, p1
packed-switch v2, :pswitch_data_5a
if-nez p1, :cond_18
const/4 v1, 0x1
:cond_c
:goto_c
iget-object v3, p0, Lco/vine/android/ContactsPickerAdapter;->mRowHeaderStates:[I
if-eqz v1, :cond_58
const/4 v2, 0x1
:goto_11
aput v2, v3, p1
:goto_13
return v1
:pswitch_14
const/4 v1, 0x1
goto :goto_13
:pswitch_16
const/4 v1, 0x0
goto :goto_13
:cond_18
add-int/lit8 v2, p1, -0x1
invoke-virtual {p0, v2}, Lco/vine/android/ContactsPickerAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/ContactEntry;
iget-object v2, v0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
if-eqz v2, :cond_40
iget-object v2, p2, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
if-eqz v2, :cond_40
iget-object v2, v0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
move-result v2
iget-object v3, p2, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
if-eq v2, v3, :cond_c
const/4 v1, 0x1
goto :goto_c
:cond_40
iget-object v2, v0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
move-result v2
iget-object v3, p2, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
if-eq v2, v3, :cond_c
const/4 v1, 0x1
goto :goto_c
:cond_58
const/4 v2, 0x2
goto :goto_11
:pswitch_data_5a
.packed-switch 0x1
:pswitch_14
:pswitch_16
.end packed-switch
.end method