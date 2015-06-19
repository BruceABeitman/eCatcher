.class public Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "IDPhotoSelectListFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private static final TAG:Ljava/lang/String; = "IDPhotoSelectListFragment"
.field private adapterDataSelectedNum:I
.field private mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.field private mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.field private mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.field private mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
.field private mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
.field private mHasExported:Z
.field private mIsShared:Z
.field private mListFirst:Landroid/widget/ListView;
.field private mListSecond:Landroid/widget/ListView;
.field private mListThird:Landroid/widget/ListView;
.field private mPhotoBitmap:Landroid/graphics/Bitmap;
.field private mPhotoPath:Ljava/lang/String;
.field private mReleaseList:Ljava/util/ArrayList;
.field private mSelectedItemList1:Ljava/util/Map;
.field private mSelectedItemList2:Ljava/util/Map;
.field private mSelectedItemList3:Ljava/util/Map;
.field private mTableCenter:Landroid/widget/TextView;
.field private mTableLayout:Landroid/view/View;
.field private mTableLeft:Landroid/widget/TextView;
.field private mTableRight:Landroid/widget/TextView;
.field private mTitle:Lcom/pinguo/camera360/ui/TitleView;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mHasExported:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mIsShared:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList1:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/order/model/Coupon$Info;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mCoupon:Lcom/pinguo/camera360/order/model/Coupon$Info;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
return v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/ui/TitleView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList2:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList3:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mReleaseList:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoPath:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mHasExported:Z
return v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mIsShared:Z
return v0
.end method
.method private clearLastIdData()V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-string/jumbo v2, "pg_id_make_list"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string/jumbo v2, "lastList"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method
.method private initData()V
.registers 8
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/camera360/order/model/IdPassportSort;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/IdPassportSort;
move-result-object v1
new-instance v0, Lcom/google/gson/Gson;
invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/IdPassportSort;->getData()Ljava/lang/String;
move-result-object v4
const-class v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;
invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;
iget-object v4, v2, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v4, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v4, v4, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v3
const-string/jumbo v4, "IDPhotoSelectListFragment"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "size: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, v3}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->showTopTable(I)V
invoke-direct {p0, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->loadListData(Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;)V
return-void
.end method
.method private initUI(Landroid/view/View;)V
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList1:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList2:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList3:Ljava/util/Map;
const v0, 0x7f0a01b0
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0801bb
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->setTitleClickListener()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0802bc
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnClickState(Z)V
const v0, 0x7f0a01b5
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLayout:Landroid/view/View;
const v0, 0x7f0a01b8
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
const v0, 0x7f0a01b9
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableCenter:Landroid/widget/TextView;
const v0, 0x7f0a01ba
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableCenter:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a01b1
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListFirst:Landroid/widget/ListView;
const v0, 0x7f0a01b6
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListSecond:Landroid/widget/ListView;
const v0, 0x7f0a01b7
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListThird:Landroid/widget/ListView;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v0, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListFirst:Landroid/widget/ListView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListSecond:Landroid/widget/ListView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListThird:Landroid/widget/ListView;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->setAdapterSelectedListener()V
return-void
.end method
.method private loadListData(Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;)V
.registers 13
const/4 v7, 0x0
const/4 v10, 0x2
const/4 v9, 0x1
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v4
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
iget-object v0, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;->products:Ljava/util/List;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;->name:Ljava/lang/String;
invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_32
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_93
if-le v4, v9, :cond_65
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
iget-object v1, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;->products:Ljava/util/List;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableCenter:Landroid/widget/TextView;
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;->name:Ljava/lang/String;
invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_5f
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_a6
:cond_65
if-le v4, v10, :cond_92
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
iget-object v2, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;->products:Ljava/util/List;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
iget-object v5, p1, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse;->data:Ljava/lang/Object;
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassPortSortRoot;->categories:Ljava/util/List;
invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/IdPassportSort$PassportSortResponse$PassportCategory;->name:Ljava/lang/String;
invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_8c
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_b9
:cond_92
return-void
:cond_93
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v7, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoBitmap:Landroid/graphics/Bitmap;
invoke-direct {v7, v3, v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;-><init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;Landroid/graphics/Bitmap;)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->add(Ljava/lang/Object;)V
goto :goto_32
:cond_a6
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v7, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoBitmap:Landroid/graphics/Bitmap;
invoke-direct {v7, v3, v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;-><init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;Landroid/graphics/Bitmap;)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->add(Ljava/lang/Object;)V
goto :goto_5f
:cond_b9
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget-object v6, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v7, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;
iget-object v8, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoBitmap:Landroid/graphics/Bitmap;
invoke-direct {v7, v3, v8}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$PassportSelectedItem;-><init>(Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;Landroid/graphics/Bitmap;)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->add(Ljava/lang/Object;)V
goto :goto_8c
.end method
.method private setAdapterSelectedListener()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$2;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setAdapterDataChangeListener(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$3;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setAdapterDataChangeListener(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$4;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$4;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->setAdapterDataChangeListener(Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$AdapterDataChangeListener;)V
return-void
.end method
.method private setTitleClickListener()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment$1;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
return-void
.end method
.method private showTopTable(I)V
.registers 6
const/16 v3, 0x8
const-string/jumbo v0, "IDPhotoSelectListFragment"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "size: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
if-ne p1, v0, :cond_25
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLayout:Landroid/view/View;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLayout:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:goto_24
:cond_24
return-void
:cond_25
const/4 v0, 0x2
if-ne p1, v0, :cond_24
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_24
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
const/16 v3, 0x8
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_b2
:cond_b
:goto_b
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_c
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListFirst:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I
move-result v0
if-eqz v0, :cond_b
const v0, 0x7f0a01b8
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSelectedTabClick(ILjava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableCenter:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListFirst:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListSecond:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListThird:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
goto :goto_b
:pswitch_43
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListSecond:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I
move-result v0
if-eqz v0, :cond_b
const v0, 0x7f0a01b9
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSelectedTabClick(ILjava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableCenter:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListFirst:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListSecond:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListThird:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
goto :goto_b
:pswitch_7a
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListThird:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I
move-result v0
if-eqz v0, :cond_b
const v0, 0x7f0a01ba
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSelectedTabClick(ILjava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableLeft:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableCenter:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTableRight:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListFirst:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListSecond:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mListThird:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
goto/16 :goto_b
:pswitch_data_b2
.packed-switch 0x7f0a01b8
:pswitch_c
:pswitch_43
:pswitch_7a
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportSelectedLay()V
const-string/jumbo v2, "IDPhotoSelectListFragment"
const-string/jumbo v3, "onCreate"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string/jumbo v3, "bundle_key_photo_path"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoPath:Ljava/lang/String;
:try_start_20
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoPath:Ljava/lang/String;
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoBitmap:Landroid/graphics/Bitmap;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_28} :catch_37
.catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_28} :catch_3c
:goto_28
invoke-static {}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getInstance()Lcom/pinguo/camera360/adv/AdvertisementModel;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;
invoke-virtual {v2}, Lcom/pinguo/camera360/adv/AdvertisementModel;->update()V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->clearLastIdData()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_37
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_28
:catch_3c
move-exception v1
iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoPath:Ljava/lang/String;
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mPhotoBitmap:Landroid/graphics/Bitmap;
goto :goto_28
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
const v1, 0x7f030056
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->initUI(Landroid/view/View;)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->initData()V
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "IDPhotoSelectListFragment"
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->clearLastIdData()V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mReleaseList:Ljava/util/ArrayList;
const-string v1, " - Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setHasExported(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mHasExported:Z
return-void
.end method
.method public synchronousSelectedData(Ljava/util/List;)V
.registers 7
const/4 v4, 0x0
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5
:cond_5
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_c
return-void
:cond_c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList1:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_45
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
if-nez v1, :cond_29
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnClickState(Z)V
:cond_29
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList1:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v1, v4}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter1:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->notifyDataSetChanged()V
:cond_45
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList2:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_78
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
if-nez v1, :cond_5c
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnClickState(Z)V
:cond_5c
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList2:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v1, v4}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter2:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->notifyDataSetChanged()V
:cond_78
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList3:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->adapterDataSelectedNum:I
if-nez v1, :cond_8f
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mTitle:Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnClickState(Z)V
:cond_8f
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mSelectedItemList3:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v3, v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;
invoke-interface {v1, v4}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter$IDPhotoSelectListItemAware;->setCheck(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoSelectListFragment;->mAdapter3:Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;
invoke-virtual {v1}, Lcom/pinguo/camera360/IDPhoto/adapter/IDPhotoSelectListAdapter;->notifyDataSetChanged()V
goto/16 :goto_5
.end method