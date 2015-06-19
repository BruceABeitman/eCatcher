.class public Lcom/pinguo/camera360/order/CityPickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "CityPickerFragment.java"
.implements Lkankan/wheel/widget/OnWheelChangedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.field private static final TAG:Ljava/lang/String;
.field private mArea:Lkankan/wheel/widget/WheelView;
.field private mAreaDatasMap:Ljava/util/Map;
.field private mCitisDatasMap:Ljava/util/Map;
.field private mCity:Lkankan/wheel/widget/WheelView;
.field private mCurrentAreaName:Ljava/lang/String;
.field private mCurrentCityName:Ljava/lang/String;
.field private mCurrentProviceName:Ljava/lang/String;
.field private mPickerResult:Lcom/pinguo/camera360/order/CityPickerFragment$CityPickerResult;
.field private mProvince:Lkankan/wheel/widget/WheelView;
.field private mProvinceDatas:[Ljava/lang/String;
.field private mRegion:Lcom/pinguo/camera360/order/model/Region;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/CityPickerFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCitisDatasMap:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mAreaDatasMap:Ljava/util/Map;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
return-void
.end method
.method private initDatas()V
.registers 22
new-instance v7, Lcom/google/gson/Gson;
invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/CityPickerFragment;->mRegion:Lcom/pinguo/camera360/order/model/Region;
move-object/from16 v17, v0
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/order/model/Region;->getData()Ljava/lang/String;
move-result-object v17
const-class v18, Lcom/pinguo/camera360/order/model/Region$RegionListResponse;
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/pinguo/camera360/order/model/Region$RegionListResponse;
const/4 v10, 0x0
:goto_1c
move-object/from16 v0, v16
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Region$RegionListResponse;->data:Ljava/lang/Object;
move-object/from16 v17, v0
check-cast v17, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Data;
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Data;->list:Ljava/util/List;
move-object/from16 v17, v0
invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
move-result v17
move/from16 v0, v17
if-lt v10, v0, :cond_33
return-void
:cond_33
move-object/from16 v0, v16
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Region$RegionListResponse;->data:Ljava/lang/Object;
move-object/from16 v17, v0
check-cast v17, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Data;
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Data;->list:Ljava/util/List;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Country;
iget-object v0, v6, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Country;->country:Ljava/lang/String;
move-object/from16 v17, v0
const-string/jumbo v18, "\u4e2d\u56fd"
invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_79
iget-object v0, v6, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Country;->provinces:Ljava/util/List;
move-object/from16 v17, v0
invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
move-result v17
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvinceDatas:[Ljava/lang/String;
const/4 v11, 0x0
iget-object v0, v6, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Country;->provinces:Ljava/util/List;
move-object/from16 v17, v0
invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v17
:goto_73
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v18
if-nez v18, :cond_7c
:cond_79
add-int/lit8 v10, v10, 0x1
goto :goto_1c
:cond_7c
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvinceDatas:[Ljava/lang/String;
move-object/from16 v18, v0
add-int/lit8 v12, v11, 0x1
iget-object v0, v15, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;->province:Ljava/lang/String;
move-object/from16 v19, v0
aput-object v19, v18, v11
const/4 v8, 0x0
iget-object v0, v15, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;->cities:Ljava/util/List;
move-object/from16 v18, v0
invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I
move-result v18
move/from16 v0, v18
new-array v4, v0, [Ljava/lang/String;
iget-object v0, v15, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;->cities:Ljava/util/List;
move-object/from16 v18, v0
invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v18
:goto_a5
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z
move-result v19
if-nez v19, :cond_be
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCitisDatasMap:Ljava/util/Map;
move-object/from16 v18, v0
iget-object v0, v15, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$Province;->province:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move v11, v12
goto :goto_73
:cond_be
invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;
add-int/lit8 v9, v8, 0x1
iget-object v0, v5, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;->city:Ljava/lang/String;
move-object/from16 v19, v0
aput-object v19, v4, v8
iget-object v0, v5, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;->areas:Ljava/util/List;
move-object/from16 v19, v0
if-nez v19, :cond_d4
move v8, v9
goto :goto_a5
:cond_d4
const/4 v13, 0x0
iget-object v0, v5, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;->areas:Ljava/util/List;
move-object/from16 v19, v0
invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
move-result v19
move/from16 v0, v19
new-array v3, v0, [Ljava/lang/String;
iget-object v0, v5, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;->areas:Ljava/util/List;
move-object/from16 v19, v0
invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v19
:goto_e9
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z
move-result v20
if-nez v20, :cond_102
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/CityPickerFragment;->mAreaDatasMap:Ljava/util/Map;
move-object/from16 v19, v0
iget-object v0, v5, Lcom/pinguo/camera360/order/model/Region$RegionListResponse$City;->city:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move v8, v9
goto :goto_a5
:cond_102
invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
add-int/lit8 v14, v13, 0x1
aput-object v2, v3, v13
move v13, v14
goto :goto_e9
.end method
.method private initPositions()V
.registers 13
const/4 v11, 0x1
const/4 v10, 0x0
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_11
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->updateCities()V
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->updateAreas()V
:cond_10
:goto_10
return-void
:cond_11
iget-object v5, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
const/4 v6, 0x0
:goto_16
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvinceDatas:[Ljava/lang/String;
array-length v8, v8
if-lt v6, v8, :cond_5f
:goto_1b
iput-object v5, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCitisDatasMap:Ljava/util/Map;
iget-object v9, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, [Ljava/lang/String;
if-nez v2, :cond_30
new-array v2, v11, [Ljava/lang/String;
const-string/jumbo v8, ""
aput-object v8, v2, v10
:cond_30
const/4 v6, 0x0
:goto_31
array-length v8, v2
if-lt v6, v8, :cond_81
:goto_34
iput-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mAreaDatasMap:Ljava/util/Map;
iget-object v9, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/String;
if-nez v1, :cond_49
new-array v1, v11, [Ljava/lang/String;
const-string/jumbo v8, ""
aput-object v8, v1, v10
:cond_49
const/4 v6, 0x0
:goto_4a
array-length v8, v1
if-ge v6, v8, :cond_10
aget-object v0, v1, v6
if-eqz v0, :cond_96
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_96
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v8, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V
goto :goto_10
:cond_5f
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvinceDatas:[Ljava/lang/String;
aget-object v7, v8, v6
if-eqz v7, :cond_7e
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_7e
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v8}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I
move-result v8
if-ne v6, v8, :cond_78
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->updateCities()V
:cond_78
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v8, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V
goto :goto_1b
:cond_7e
add-int/lit8 v6, v6, 0x1
goto :goto_16
:cond_81
aget-object v3, v2, v6
if-eqz v3, :cond_93
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_93
iget-object v8, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v8, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V
goto :goto_34
:cond_93
add-int/lit8 v6, v6, 0x1
goto :goto_31
:cond_96
add-int/lit8 v6, v6, 0x1
goto :goto_4a
.end method
.method private updateAreas()V
.registers 10
const/4 v8, 0x1
const/4 v7, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I
move-result v3
sget-object v4, Lcom/pinguo/camera360/order/CityPickerFragment;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "pCurrent="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "&mCurrentProviceName="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCitisDatasMap:Ljava/util/Map;
iget-object v5, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, [Ljava/lang/String;
if-nez v2, :cond_3d
new-array v2, v8, [Ljava/lang/String;
const-string/jumbo v4, ""
aput-object v4, v2, v7
:cond_3d
aget-object v4, v2, v3
iput-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mAreaDatasMap:Ljava/util/Map;
iget-object v5, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/String;
if-nez v1, :cond_54
new-array v1, v8, [Ljava/lang/String;
const-string/jumbo v4, ""
aput-object v4, v1, v7
:cond_54
new-instance v0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v0, v4, v1}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f070049
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
invoke-virtual {v0, v4}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextColor(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f07004a
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
invoke-virtual {v0, v4}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSelectedColor(I)V
const/16 v4, 0x14
invoke-virtual {v0, v4}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V
const/16 v4, 0x8
invoke-virtual {v0, v4}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextPadding(I)V
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v4, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v4, v7}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V
array-length v4, v1
if-lez v4, :cond_95
aget-object v4, v1, v7
:goto_92
iput-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
return-void
:cond_95
const-string/jumbo v4, ""
goto :goto_92
.end method
.method private updateCities()V
.registers 7
const/4 v5, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v3}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvinceDatas:[Ljava/lang/String;
aget-object v3, v3, v2
iput-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCitisDatasMap:Ljava/util/Map;
iget-object v4, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/String;
if-nez v1, :cond_21
const/4 v3, 0x1
new-array v1, v3, [Ljava/lang/String;
const-string/jumbo v3, ""
aput-object v3, v1, v5
:cond_21
new-instance v0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v0, v3, v1}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f070049
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v0, v3}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextColor(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f07004a
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v0, v3}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSelectedColor(I)V
const/16 v3, 0x14
invoke-virtual {v0, v3}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V
const/16 v3, 0x8
invoke-virtual {v0, v3}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextPadding(I)V
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v3, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v3, v5}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->updateAreas()V
return-void
.end method
.method public getArea()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
return-object v0
.end method
.method public getCity()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
return-object v0
.end method
.method public getProvince()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
return-object v0
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 7
sget-object v2, Lcom/pinguo/camera360/order/CityPickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v3, "onAttach"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V
:try_start_b
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/order/CityPickerFragment$CityPickerResult;
move-object v2, v0
iput-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mPickerResult:Lcom/pinguo/camera360/order/CityPickerFragment$CityPickerResult;
:try_end_11
.catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_11} :catch_12
return-void
:catch_12
move-exception v1
new-instance v2, Ljava/lang/ClassCastException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, " must implement CityPickerResult"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
if-ne p1, v0, :cond_8
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->updateCities()V
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
if-ne p1, v0, :cond_10
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->updateAreas()V
goto :goto_7
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
if-ne p1, v0, :cond_7
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mAreaDatasMap:Ljava/util/Map;
iget-object v1, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
aget-object v0, v0, p3
iput-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
goto :goto_7
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/CityPickerFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_24
:goto_7
const-string v1, " - Lcom/pinguo/camera360/order/CityPickerFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->stopScrolling()V
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->stopScrolling()V
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v0}, Lkankan/wheel/widget/WheelView;->stopScrolling()V
iget-object v0, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mPickerResult:Lcom/pinguo/camera360/order/CityPickerFragment$CityPickerResult;
iget-object v1, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/camera360/order/CityPickerFragment$CityPickerResult;->onCityPickerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7
nop
:pswitch_data_24
.packed-switch 0x7f0a027e
:pswitch_8
.end packed-switch
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 12
const v7, 0x7f07007b
const v6, 0x7f020130
const/4 v5, 0x5
const/4 v4, 0x0
const v2, 0x7f030070
const/4 v3, 0x0
invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/order/model/Region;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/Region;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mRegion:Lcom/pinguo/camera360/order/model/Region;
const v2, 0x7f0a027b
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lkankan/wheel/widget/WheelView;
iput-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
const v2, 0x7f0a027c
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lkankan/wheel/widget/WheelView;
iput-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
const v2, 0x7f0a027d
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lkankan/wheel/widget/WheelView;
iput-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v7}, Lkankan/wheel/widget/WheelView;->setWheelBackground(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v6}, Lkankan/wheel/widget/WheelView;->setWheelForeground(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v4}, Lkankan/wheel/widget/WheelView;->setDrawShadows(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v7}, Lkankan/wheel/widget/WheelView;->setWheelBackground(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v6}, Lkankan/wheel/widget/WheelView;->setWheelForeground(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v4}, Lkankan/wheel/widget/WheelView;->setDrawShadows(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v7}, Lkankan/wheel/widget/WheelView;->setWheelBackground(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v6}, Lkankan/wheel/widget/WheelView;->setWheelForeground(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v4}, Lkankan/wheel/widget/WheelView;->setDrawShadows(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->initDatas()V
new-instance v0, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvinceDatas:[Ljava/lang/String;
invoke-direct {v0, v2, v3}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f07008f
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextColor(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f07004a
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSelectedColor(I)V
const/16 v2, 0x14
invoke-virtual {v0, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextSize(I)V
const/16 v2, 0x8
invoke-virtual {v0, v2}, Lkankan/wheel/widget/adapters/ArrayWheelAdapter;->setTextPadding(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v0}, Lkankan/wheel/widget/WheelView;->setViewAdapter(Lkankan/wheel/widget/adapters/WheelViewAdapter;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, p0}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, p0}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, p0}, Lkankan/wheel/widget/WheelView;->addChangingListener(Lkankan/wheel/widget/OnWheelChangedListener;)V
const v2, 0x7f0a027e
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mProvince:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v5}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCity:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v5}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mArea:Lkankan/wheel/widget/WheelView;
invoke-virtual {v2, v5}, Lkankan/wheel/widget/WheelView;->setVisibleItems(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->initPositions()V
invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-object v1
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/CityPickerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/order/CityPickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/order/CityPickerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDetach()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/order/CityPickerFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onDetach"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V
return-void
.end method
.method public onHiddenChanged(Z)V
.registers 2
if-nez p1, :cond_5
invoke-direct {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->initPositions()V
:cond_5
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onHiddenChanged(Z)V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->isVisible()Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/order/CityPickerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public setArea(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentAreaName:Ljava/lang/String;
return-void
.end method
.method public setCity(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentCityName:Ljava/lang/String;
return-void
.end method
.method public setProvince(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/CityPickerFragment;->mCurrentProviceName:Ljava/lang/String;
return-void
.end method