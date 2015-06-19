.class public Lco/vine/android/widget/ContactsMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactsMenuAdapter.java"
.field private static final STATE_REGULAR:I = 0x2
.field private static final STATE_SECTIONED:I = 0x1
.field private static final STATE_UNKNOWN:I
.field private mRowHeaderStates:[I
.field private final mViewHolders:Landroid/util/SparseArray;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lco/vine/android/widget/ContactsMenuAdapter;->mViewHolders:Landroid/util/SparseArray;
return-void
.end method
.method public addAll(Ljava/util/Collection;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [I
iput-object v0, p0, Lco/vine/android/widget/ContactsMenuAdapter;->mRowHeaderStates:[I
return-void
.end method
.method public getItemId(I)J
.registers 5
invoke-virtual {p0, p1}, Lco/vine/android/widget/ContactsMenuAdapter;->getItem(I)Ljava/lang/Object;
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
.registers 19
if-eqz p2, :cond_a
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v10
instance-of v10, v10, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;
if-nez v10, :cond_d3
:cond_a
invoke-virtual {p0}, Lco/vine/android/widget/ContactsMenuAdapter;->getContext()Landroid/content/Context;
move-result-object v10
invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
const v10, 0x7f030055
const/4 v11, 0x0
move-object/from16 v0, p3
invoke-virtual {v3, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
new-instance v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;
invoke-virtual {p0}, Lco/vine/android/widget/ContactsMenuAdapter;->getContext()Landroid/content/Context;
move-result-object v10
move-object/from16 v0, p2
invoke-direct {v2, v10, v0}, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V
move-object/from16 v0, p2
invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_2c
iget-object v10, p0, Lco/vine/android/widget/ContactsMenuAdapter;->mViewHolders:Landroid/util/SparseArray;
new-instance v11, Ljava/lang/ref/WeakReference;
invoke-direct {v11, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
move/from16 v0, p1
invoke-virtual {v10, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
invoke-virtual/range {p0 .. p1}, Lco/vine/android/widget/ContactsMenuAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/ContactEntry;
iget-object v10, p0, Lco/vine/android/widget/ContactsMenuAdapter;->mRowHeaderStates:[I
aget v10, v10, p1
packed-switch v10, :pswitch_data_148
if-nez p1, :cond_e1
const/4 v9, 0x1
:goto_48
iget-object v11, p0, Lco/vine/android/widget/ContactsMenuAdapter;->mRowHeaderStates:[I
if-eqz v9, :cond_f4
const/4 v10, 0x1
:goto_4d
aput v10, v11, p1
:goto_4f
invoke-virtual {p0}, Lco/vine/android/widget/ContactsMenuAdapter;->getCount()I
move-result v10
add-int/lit8 v10, v10, -0x1
move/from16 v0, p1
if-ge v0, v10, :cond_f7
add-int/lit8 v10, p1, 0x1
invoke-virtual {p0, v10}, Lco/vine/android/widget/ContactsMenuAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lco/vine/android/ContactEntry;
invoke-virtual {v1, v5}, Lco/vine/android/ContactEntry;->isSameSection(Lco/vine/android/ContactEntry;)Z
move-result v6
:goto_65
iget-object v11, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->divider:Landroid/view/View;
if-eqz v6, :cond_fa
const/4 v10, 0x0
:goto_6a
invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V
iget v10, v1, Lco/vine/android/ContactEntry;->typeFlag:I
and-int/lit8 v10, v10, 0x1
if-eqz v10, :cond_fe
const/4 v7, 0x1
:goto_74
iget v10, v1, Lco/vine/android/ContactEntry;->typeFlag:I
and-int/lit8 v10, v10, 0x2
if-eqz v10, :cond_101
const/4 v8, 0x1
:goto_7b
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->username:Landroid/widget/TextView;
iget-object v11, v1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v11, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->emailIndicator:Landroid/widget/ImageView;
if-eqz v7, :cond_104
const/4 v10, 0x0
:goto_87
invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v11, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->phoneIndicator:Landroid/widget/ImageView;
if-eqz v8, :cond_107
const/4 v10, 0x0
:goto_8f
invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V
iget-wide v10, v1, Lco/vine/android/ContactEntry;->contactId:J
iput-wide v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->contactId:J
if-nez p1, :cond_10a
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;
invoke-virtual {p0}, Lco/vine/android/widget/ContactsMenuAdapter;->getContext()Landroid/content/Context;
move-result-object v11
const v12, 0x7f0e008f
invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V
:goto_ae
if-eqz v9, :cond_13f
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionIndicator:Landroid/view/View;
const/4 v11, 0x0
invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V
iget-object v10, v1, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
if-eqz v10, :cond_112
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionSort:Landroid/widget/TextView;
const/4 v11, 0x1
new-array v11, v11, [C
const/4 v12, 0x0
iget-object v13, v1, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;
invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v13
const/4 v14, 0x0
invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C
move-result v13
aput-char v13, v11, v12
const/4 v12, 0x0
const/4 v13, 0x1
invoke-virtual {v10, v11, v12, v13}, Landroid/widget/TextView;->setText([CII)V
:goto_d2
return-object p2
:cond_d3
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;
goto/16 :goto_2c
:pswitch_db
const/4 v9, 0x1
goto/16 :goto_4f
:pswitch_de
const/4 v9, 0x0
goto/16 :goto_4f
:cond_e1
add-int/lit8 v10, p1, -0x1
invoke-virtual {p0, v10}, Lco/vine/android/widget/ContactsMenuAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/ContactEntry;
invoke-virtual {v1, v4}, Lco/vine/android/ContactEntry;->isSameSection(Lco/vine/android/ContactEntry;)Z
move-result v10
if-nez v10, :cond_f2
const/4 v9, 0x1
:goto_f0
goto/16 :goto_48
:cond_f2
const/4 v9, 0x0
goto :goto_f0
:cond_f4
const/4 v10, 0x2
goto/16 :goto_4d
:cond_f7
const/4 v6, 0x1
goto/16 :goto_65
:cond_fa
const/16 v10, 0x8
goto/16 :goto_6a
:cond_fe
const/4 v7, 0x0
goto/16 :goto_74
:cond_101
const/4 v8, 0x0
goto/16 :goto_7b
:cond_104
const/16 v10, 0x8
goto :goto_87
:cond_107
const/16 v10, 0x8
goto :goto_8f
:cond_10a
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;
const/16 v11, 0x8
invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_ae
:cond_112
iget-object v10, v1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
if-eqz v10, :cond_12f
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionSort:Landroid/widget/TextView;
const/4 v11, 0x1
new-array v11, v11, [C
const/4 v12, 0x0
iget-object v13, v1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;
invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v13
const/4 v14, 0x0
invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C
move-result v13
aput-char v13, v11, v12
const/4 v12, 0x0
const/4 v13, 0x1
invoke-virtual {v10, v11, v12, v13}, Landroid/widget/TextView;->setText([CII)V
goto :goto_d2
:cond_12f
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionSort:Landroid/widget/TextView;
const/4 v11, 0x1
new-array v11, v11, [C
const/4 v12, 0x0
const/16 v13, 0x20
aput-char v13, v11, v12
const/4 v12, 0x0
const/4 v13, 0x1
invoke-virtual {v10, v11, v12, v13}, Landroid/widget/TextView;->setText([CII)V
goto :goto_d2
:cond_13f
iget-object v10, v2, Lco/vine/android/widget/ContactsMenuAdapter$ContactsPickerViewHolder;->sectionIndicator:Landroid/view/View;
const/16 v11, 0x8
invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V
goto :goto_d2
nop
:pswitch_data_148
.packed-switch 0x1
:pswitch_db
:pswitch_de
.end packed-switch
.end method