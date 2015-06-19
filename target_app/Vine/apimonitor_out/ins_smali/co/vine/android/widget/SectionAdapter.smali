.class public Lco/vine/android/widget/SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionAdapter.java"
.implements Lco/vine/android/widget/PinnedHeaderAdapter;
.field public static final TYPE_CARDROW:I = 0x0
.field public static final TYPE_NORMAL:I = 0x1
.field private static final VIEW_TYPE_SECTION:I
.field private final mAdapters:[Landroid/widget/BaseAdapter;
.field private final mCardHeaders:[Z
.field private final mDataSetObserver:Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
.field private final mDefaultType:I
.field  mNotifyOnChange:Z
.field private mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
.field private final mSectionLayout:I
.field private final mStringResIds:[I
.field private final mTypes:[I
.method public constructor <init>([I[I[Landroid/widget/BaseAdapter;)V
.registers 11
const/4 v1, 0x0
const v5, 0x7f03008e
const/4 v6, 0x0
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V
return-void
.end method
.method public constructor <init>([Landroid/widget/BaseAdapter;)V
.registers 9
const/4 v1, 0x0
const v5, 0x7f03008e
const/4 v6, 0x0
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, p1
invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V
return-void
.end method
.method public constructor <init>([Landroid/widget/BaseAdapter;I)V
.registers 10
const/4 v1, 0x0
const v5, 0x7f03008e
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, p1
move v6, p2
invoke-direct/range {v0 .. v6}, Lco/vine/android/widget/SectionAdapter;-><init>([Z[I[I[Landroid/widget/BaseAdapter;II)V
return-void
.end method
.method public constructor <init>([Z[I[I[Landroid/widget/BaseAdapter;II)V
.registers 12
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v4, 0x1
iput-boolean v4, p0, Lco/vine/android/widget/SectionAdapter;->mNotifyOnChange:Z
iput-object p1, p0, Lco/vine/android/widget/SectionAdapter;->mCardHeaders:[Z
iput-object p3, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I
iput-object p4, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
iput p5, p0, Lco/vine/android/widget/SectionAdapter;->mSectionLayout:I
iput-object p2, p0, Lco/vine/android/widget/SectionAdapter;->mTypes:[I
iput p6, p0, Lco/vine/android/widget/SectionAdapter;->mDefaultType:I
new-instance v4, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
invoke-direct {v4, p0}, Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;-><init>(Lco/vine/android/widget/SectionAdapter;)V
iput-object v4, p0, Lco/vine/android/widget/SectionAdapter;->mDataSetObserver:Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
move-object v1, p4
array-length v3, v1
const/4 v2, 0x0
:goto_1c
if-ge v2, v3, :cond_30
aget-object v0, v1, v2
iget-object v4, p0, Lco/vine/android/widget/SectionAdapter;->mDataSetObserver:Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
instance-of v4, v0, Lco/vine/android/widget/PinnedHeaderAdapter;
if-eqz v4, :cond_2d
check-cast v0, Lco/vine/android/widget/PinnedHeaderAdapter;
iput-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
:cond_2d
add-int/lit8 v2, v2, 0x1
goto :goto_1c
:cond_30
return-void
.end method
.method private getAdapterCount(Landroid/widget/BaseAdapter;)I
.registers 4
:try_start_0
invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
move-result v1
:goto_4
return v1
:catch_5
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_4
.end method
.method private hasDivider(I)Z
.registers 3
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I
aget v0, v0, p1
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public areAllItemsEnabled()Z
.registers 5
const/4 v2, 0x0
iget-object v3, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v1, v3
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_e
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v3
if-eqz v3, :cond_18
const/4 v2, 0x1
:cond_e
if-nez v2, :cond_1b
invoke-super {p0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z
move-result v3
if-eqz v3, :cond_1b
const/4 v3, 0x1
:goto_17
return v3
:cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1b
const/4 v3, 0x0
goto :goto_17
.end method
.method public getAdapterIndex(I)I
.registers 9
const/4 v4, 0x0
const/4 v2, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v5, v1
const/4 v3, 0x0
:goto_6
if-ge v3, v5, :cond_18
aget-object v0, v1, v3
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v2
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v6
if-eqz v6, :cond_16
add-int/lit8 v2, v2, 0x1
:cond_16
if-ge p1, v2, :cond_19
:cond_18
return v4
:cond_19
add-int/lit8 v4, v4, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_6
.end method
.method protected getAdapterView(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mTypes:[I
if-eqz v1, :cond_d
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mTypes:[I
aget v0, v1, p3
:goto_8
invoke-virtual {p1, p4, p5, p6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
return-object v1
:cond_d
iget v0, p0, Lco/vine/android/widget/SectionAdapter;->mDefaultType:I
goto :goto_8
.end method
.method public getCount()I
.registers 9
const/4 v6, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v5, v1
const/4 v3, 0x0
:goto_6
if-ge v3, v5, :cond_1e
aget-object v0, v1, v3
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v2
if-lez v2, :cond_19
add-int/2addr v6, v2
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v7
if-eqz v7, :cond_19
add-int/lit8 v6, v6, 0x1
:cond_19
add-int/lit8 v4, v4, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_6
:cond_1e
return v6
.end method
.method public getDataSetObserver()Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
.registers 2
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mDataSetObserver:Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
return-object v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 10
const/4 v6, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v5, v1
const/4 v3, 0x0
:goto_6
if-ge v3, v5, :cond_1a
aget-object v0, v1, v3
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v2
if-lez v2, :cond_2c
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v7
if-eqz v7, :cond_24
add-int/lit8 v2, v2, 0x1
if-nez p1, :cond_1b
:goto_1a
:cond_1a
return-object v6
:cond_1b
if-ge p1, v2, :cond_2b
add-int/lit8 v6, p1, -0x1
invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v6
goto :goto_1a
:cond_24
if-ge p1, v2, :cond_2b
invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v6
goto :goto_1a
:cond_2b
sub-int/2addr p1, v2
:cond_2c
add-int/lit8 v4, v4, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_6
.end method
.method public getItemId(I)J
.registers 11
const-wide/16 v6, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v5, v1
const/4 v3, 0x0
:goto_7
if-ge v3, v5, :cond_1b
aget-object v0, v1, v3
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v2
if-lez v2, :cond_2d
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v8
if-eqz v8, :cond_25
add-int/lit8 v2, v2, 0x1
if-nez p1, :cond_1c
:goto_1b
:cond_1b
return-wide v6
:cond_1c
if-ge p1, v2, :cond_2c
add-int/lit8 v6, p1, -0x1
invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->getItemId(I)J
move-result-wide v6
goto :goto_1b
:cond_25
if-ge p1, v2, :cond_2c
invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J
move-result-wide v6
goto :goto_1b
:cond_2c
sub-int/2addr p1, v2
:cond_2d
add-int/lit8 v4, v4, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_7
.end method
.method public getItemViewType(I)I
.registers 10
const/4 v6, 0x1
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v5, v1
const/4 v3, 0x0
:goto_6
if-ge v3, v5, :cond_39
aget-object v0, v1, v3
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v2
if-lez v2, :cond_2f
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v7
if-eqz v7, :cond_26
add-int/lit8 v2, v2, 0x1
if-nez p1, :cond_1c
const/4 v7, 0x0
:goto_1b
return v7
:cond_1c
if-ge p1, v2, :cond_2e
add-int/lit8 v7, p1, -0x1
invoke-virtual {v0, v7}, Landroid/widget/BaseAdapter;->getItemViewType(I)I
move-result v7
add-int/2addr v7, v6
goto :goto_1b
:cond_26
if-ge p1, v2, :cond_2e
invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I
move-result v7
add-int/2addr v7, v6
goto :goto_1b
:cond_2e
sub-int/2addr p1, v2
:cond_2f
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I
move-result v7
add-int/2addr v6, v7
add-int/lit8 v4, v4, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_6
:cond_39
invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I
move-result v7
goto :goto_1b
.end method
.method public getMyAdapterIndex(Landroid/widget/BaseAdapter;)I
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v4, v0
const/4 v2, 0x0
:goto_5
if-ge v2, v4, :cond_b
aget-object v1, v0, v2
if-ne v1, p1, :cond_c
:cond_b
return v3
:cond_c
add-int/lit8 v3, v3, 0x1
add-int/lit8 v2, v2, 0x1
goto :goto_5
.end method
.method public getNumberOfAdapters()I
.registers 2
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
if-eqz v0, :cond_8
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v0, v0
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public getPinnedHeaderHeight()I
.registers 2
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
invoke-interface {v0}, Lco/vine/android/widget/PinnedHeaderAdapter;->getPinnedHeaderHeight()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPinnedHeaderStatus(I)Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
.registers 3
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
invoke-interface {v0, p1}, Lco/vine/android/widget/PinnedHeaderAdapter;->getPinnedHeaderStatus(I)Lco/vine/android/widget/PinnedHeaderAdapter$PinnedHeaderStatus;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPinnedHeaderView(Landroid/view/View;)Landroid/view/View;
.registers 3
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
invoke-interface {v0, p1}, Lco/vine/android/widget/PinnedHeaderAdapter;->getPinnedHeaderView(Landroid/view/View;)Landroid/view/View;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPositionOffset(I)I
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
:goto_2
if-ge v0, p1, :cond_10
iget-object v2, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
aget-object v2, v2, v0
invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I
move-result v2
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_10
return v1
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 19
invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v11
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v8, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v12, v8
const/4 v10, 0x0
:goto_e
if-ge v10, v12, :cond_84
aget-object v2, v8, v10
invoke-direct {p0, v2}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v9
if-lez v9, :cond_7f
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v1
if-eqz v1, :cond_6b
add-int/lit8 v9, v9, 0x1
if-nez p1, :cond_5b
if-nez p2, :cond_3b
iget v1, p0, Lco/vine/android/widget/SectionAdapter;->mSectionLayout:I
const/4 v5, 0x0
move-object/from16 v0, p3
invoke-virtual {v11, v1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
const v1, 0x7f0a0128
move-object/from16 v0, p2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
move-object/from16 v0, p2
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_3b
iget-object v14, p0, Lco/vine/android/widget/SectionAdapter;->mStringResIds:[I
array-length v1, v14
rem-int v1, v4, v1
aget v13, v14, v1
if-nez v13, :cond_51
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const/4 v5, 0x0
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_4e
move-object/from16 v1, p2
:goto_50
return-object v1
:cond_51
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(I)V
goto :goto_4e
:cond_5b
move/from16 v0, p1
if-ge v0, v9, :cond_7b
add-int/lit8 v5, p1, -0x1
move-object v1, p0
move-object/from16 v6, p2
move-object/from16 v7, p3
invoke-virtual/range {v1 .. v7}, Lco/vine/android/widget/SectionAdapter;->getAdapterView(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
goto :goto_50
:cond_6b
move/from16 v0, p1
if-ge v0, v9, :cond_7b
move-object v1, p0
move/from16 v5, p1
move-object/from16 v6, p2
move-object/from16 v7, p3
invoke-virtual/range {v1 .. v7}, Lco/vine/android/widget/SectionAdapter;->getAdapterView(Landroid/widget/BaseAdapter;IIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
goto :goto_50
:cond_7b
sub-int p1, p1, v9
add-int/lit8 v3, v3, 0x1
:cond_7f
add-int/lit8 v4, v4, 0x1
add-int/lit8 v10, v10, 0x1
goto :goto_e
:cond_84
move-object/from16 v1, p2
goto :goto_50
.end method
.method public getViewTypeCount()I
.registers 7
const/4 v2, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v4, v1
const/4 v3, 0x0
:goto_5
if-ge v3, v4, :cond_11
aget-object v0, v1, v3
invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I
move-result v5
add-int/2addr v2, v5
add-int/lit8 v3, v3, 0x1
goto :goto_5
:cond_11
add-int/lit8 v5, v2, 0x1
return v5
.end method
.method public isEnabled(I)Z
.registers 9
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v5, v1
const/4 v3, 0x0
:goto_5
if-ge v3, v5, :cond_31
aget-object v0, v1, v3
invoke-direct {p0, v0}, Lco/vine/android/widget/SectionAdapter;->getAdapterCount(Landroid/widget/BaseAdapter;)I
move-result v2
if-lez v2, :cond_2c
invoke-direct {p0, v4}, Lco/vine/android/widget/SectionAdapter;->hasDivider(I)Z
move-result v6
if-eqz v6, :cond_24
add-int/lit8 v2, v2, 0x1
if-nez p1, :cond_1b
const/4 v6, 0x0
:goto_1a
return v6
:cond_1b
if-ge p1, v2, :cond_2b
add-int/lit8 v6, p1, -0x1
invoke-virtual {v0, v6}, Landroid/widget/BaseAdapter;->isEnabled(I)Z
move-result v6
goto :goto_1a
:cond_24
if-ge p1, v2, :cond_2b
invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z
move-result v6
goto :goto_1a
:cond_2b
sub-int/2addr p1, v2
:cond_2c
add-int/lit8 v4, v4, 0x1
add-int/lit8 v3, v3, 0x1
goto :goto_5
:cond_31
invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z
move-result v6
goto :goto_1a
.end method
.method public layoutPinnedHeader(Landroid/view/View;IIII)V
.registers 12
iget-object v0, p0, Lco/vine/android/widget/SectionAdapter;->mPinnedHeaderAdapter:Lco/vine/android/widget/PinnedHeaderAdapter;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-interface/range {v0 .. v5}, Lco/vine/android/widget/PinnedHeaderAdapter;->layoutPinnedHeader(Landroid/view/View;IIII)V
return-void
.end method
.method public notifyDataSetChanged()V
.registers 2
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/widget/SectionAdapter;->mNotifyOnChange:Z
return-void
.end method
.method public release()V
.registers 6
iget-object v1, p0, Lco/vine/android/widget/SectionAdapter;->mAdapters:[Landroid/widget/BaseAdapter;
array-length v3, v1
const/4 v2, 0x0
:goto_4
if-ge v2, v3, :cond_10
aget-object v0, v1, v2
iget-object v4, p0, Lco/vine/android/widget/SectionAdapter;->mDataSetObserver:Lco/vine/android/widget/SectionAdapter$AdapterDataSetObserver;
invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
add-int/lit8 v2, v2, 0x1
goto :goto_4
:cond_10
return-void
.end method