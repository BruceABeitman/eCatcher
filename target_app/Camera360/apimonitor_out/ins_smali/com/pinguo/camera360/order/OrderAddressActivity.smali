.class public Lcom/pinguo/camera360/order/OrderAddressActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OrderAddressActivity.java"
.implements Lcom/pinguo/camera360/order/CityPickerFragment$CityPickerResult;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.field private static final TAG:Ljava/lang/String;
.field private mAddressEditText:Landroid/widget/EditText;
.field private mArea:Ljava/lang/String;
.field private mCity:Ljava/lang/String;
.field private mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
.field private mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
.field private mDetailCaption:Landroid/widget/TextView;
.field private mDistrictCaption:Landroid/widget/TextView;
.field private mDistrictTextView:Landroid/widget/TextView;
.field private mMobileCaption:Landroid/widget/TextView;
.field private mMobileEditText:Landroid/widget/EditText;
.field private mNameCaption:Landroid/widget/TextView;
.field private mNameEditText:Landroid/widget/EditText;
.field private mProvince:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/OrderAddressActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/OrderAddressActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mProvince:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCity:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mArea:Ljava/lang/String;
return-void
.end method
.method private checkModification()Z
.registers 7
const/4 v4, 0x1
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v5
invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v5
invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictTextView:Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v5
invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v5
invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_40
:goto_3f
:cond_3f
return v4
:cond_40
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3f
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-virtual {v5}, Lcom/pinguo/camera360/order/model/OrderAddress;->getDistrict()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3f
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3f
const/4 v4, 0x0
goto :goto_3f
.end method
.method private checkValidation()Z
.registers 10
const/4 v6, 0x1
const-string/jumbo v3, ""
const/4 v2, 0x0
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v7
invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_23
const-string/jumbo v3, "\u8bf7\u8f93\u5165\u6536\u8d27\u4eba\u59d3\u540d"
add-int/lit8 v2, v2, 0x1
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameCaption:Landroid/widget/TextView;
invoke-direct {p0, v7, v6}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
:cond_23
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v7
invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_41
const-string/jumbo v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"
add-int/lit8 v2, v2, 0x1
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileCaption:Landroid/widget/TextView;
invoke-direct {p0, v7, v6}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
:cond_41
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictTextView:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v7
invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_5b
const-string/jumbo v3, "\u8bf7\u9009\u62e9\u6240\u5728\u5730\u533a"
add-int/lit8 v2, v2, 0x1
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictCaption:Landroid/widget/TextView;
invoke-direct {p0, v7, v6}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
:cond_5b
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v7
invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_79
const-string/jumbo v3, "\u8bf7\u8f93\u5165\u8be6\u7ec6\u5730\u5740"
add-int/lit8 v2, v2, 0x1
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDetailCaption:Landroid/widget/TextView;
invoke-direct {p0, v7, v6}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
:cond_79
invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_8d
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_97
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
const/16 v8, 0xb
if-ge v7, v8, :cond_97
:cond_8d
const-string/jumbo v3, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"
add-int/lit8 v2, v2, 0x1
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileCaption:Landroid/widget/TextView;
invoke-direct {p0, v7, v6}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
:cond_97
if-le v2, v6, :cond_9c
const-string/jumbo v3, "\u8bf7\u5b8c\u5584\u6536\u8d27\u4fe1\u606f"
:cond_9c
if-lez v2, :cond_a5
invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v7
invoke-virtual {v7}, Landroid/widget/Toast;->show()V
:cond_a5
if-gtz v2, :cond_a8
:goto_a7
return v6
:cond_a8
const/4 v6, 0x0
goto :goto_a7
.end method
.method private saveOrderAddress()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->checkValidation()Z
move-result v1
if-nez v1, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->checkModification()Z
move-result v1
if-nez v1, :cond_11
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->finish()V
goto :goto_6
:cond_11
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mProvince:Ljava/lang/String;
iput-object v2, v1, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCity:Ljava/lang/String;
iput-object v2, v1, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mArea:Ljava/lang/String;
iput-object v2, v1, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
:try_start_59
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/order/model/OrderAddress;->save(Landroid/content/Context;)V
const/4 v1, 0x2
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportAdressLay(I)V
const/4 v1, -0x1
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setResult(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->finish()V
:try_end_69
.catch Ljava/lang/Exception; {:try_start_59 .. :try_end_69} :catch_6a
goto :goto_6
:catch_6a
move-exception v0
const v1, 0x7f08037a
const/4 v2, 0x1
invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
sget-object v1, Lcom/pinguo/camera360/order/OrderAddressActivity;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6
.end method
.method private setDistrictTextView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-static {p2}, Lcom/pinguo/lib/util/Util;->isDirectControlCity(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictTextView:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictTextView:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1c
.end method
.method private setInvalidField(Landroid/widget/TextView;Z)V
.registers 6
if-eqz p2, :cond_11
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f070046
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
:goto_d
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
return-void
:cond_11
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f07008d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
goto :goto_d
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->finish()V
return-void
.end method
.method public onBackPressed()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/CityPickerFragment;->isVisible()Z
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:goto_19
return-void
:cond_1a
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
goto :goto_19
.end method
.method public onCityPickerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setDistrictTextView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mProvince:Ljava/lang/String;
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCity:Ljava/lang/String;
invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mArea:Ljava/lang/String;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/OrderAddressActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
packed-switch v1, :pswitch_data_4c
:cond_7
:goto_7
const-string v1, " - Lcom/pinguo/camera360/order/OrderAddressActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
const-string/jumbo v1, "input_method"
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/order/CityPickerFragment;->isHidden()Z
move-result v1
if-eqz v1, :cond_7
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mProvince:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/order/CityPickerFragment;->setProvince(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCity:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/order/CityPickerFragment;->setCity(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mArea:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/order/CityPickerFragment;->setArea(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto :goto_7
:pswitch_data_4c
.packed-switch 0x7f0a0375
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/pinguo/camera360/order/OrderAddressActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v5, 0x7f0a0375
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v2, 0x7f030093
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setContentView(I)V
const v2, 0x7f0a0370
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/ui/TitleView;
const v2, 0x7f080375
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
const v2, 0x7f080379
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v2, 0x7f0a0372
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
const v2, 0x7f0a0374
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
const v2, 0x7f0a0377
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictTextView:Landroid/widget/TextView;
const v2, 0x7f0a0379
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/EditText;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
const v2, 0x7f0a0371
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameCaption:Landroid/widget/TextView;
const v2, 0x7f0a0373
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileCaption:Landroid/widget/TextView;
const v2, 0x7f0a0376
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictCaption:Landroid/widget/TextView;
const v2, 0x7f0a0378
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDetailCaption:Landroid/widget/TextView;
invoke-static {p0}, Lcom/pinguo/camera360/order/model/OrderAddress;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v4, v4, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-direct {p0, v2, v3, v4}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setDistrictTextView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/order/OrderAddressActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v2, Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-direct {v2}, Lcom/pinguo/camera360/order/CityPickerFragment;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/CityPickerFragment;->setProvince(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/CityPickerFragment;->setCity(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/CityPickerFragment;->setArea(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
const v2, 0x7f0a037a
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mProvince:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCity:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mConsignee:Lcom/pinguo/camera360/order/model/OrderAddress;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mArea:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportAdressLay(I)V
const-string v1, " - Lcom/pinguo/camera360/order/OrderAddressActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/OrderAddressActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x3
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportAdressLay(I)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/order/OrderAddressActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/OrderAddressActivity; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const/4 v7, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v8
packed-switch v8, :pswitch_data_d4
:goto_9
:cond_9
:pswitch_9
const-string v1, " - Lcom/pinguo/camera360/order/OrderAddressActivity; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_a
if-eqz p2, :cond_12
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameCaption:Landroid/widget/TextView;
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto :goto_9
:cond_12
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameEditText:Landroid/widget/EditText;
invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v6
invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mNameCaption:Landroid/widget/TextView;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto :goto_9
:pswitch_2a
if-eqz p2, :cond_32
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileCaption:Landroid/widget/TextView;
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto :goto_9
:cond_32
iget-object v8, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileEditText:Landroid/widget/EditText;
invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v8
invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_5d
invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_5d
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v8
const/16 v9, 0xb
if-ne v8, v9, :cond_5d
move v3, v6
:goto_55
iget-object v8, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mMobileCaption:Landroid/widget/TextView;
if-eqz v3, :cond_5f
:goto_59
invoke-direct {p0, v8, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto :goto_9
:cond_5d
move v3, v7
goto :goto_55
:cond_5f
move v7, v6
goto :goto_59
:pswitch_61
if-eqz p2, :cond_98
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictCaption:Landroid/widget/TextView;
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
const-string/jumbo v6, "input_method"
invoke-virtual {p0, v6}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v6
invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v6
const/4 v7, 0x2
invoke-virtual {v2, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v6}, Lcom/pinguo/camera360/order/CityPickerFragment;->isHidden()Z
move-result v6
if-eqz v6, :cond_9
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v6
invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mCityPickerFragment:Lcom/pinguo/camera360/order/CityPickerFragment;
invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v6
invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto/16 :goto_9
:cond_98
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictTextView:Landroid/widget/TextView;
invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v6
invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDistrictCaption:Landroid/widget/TextView;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto/16 :goto_9
:pswitch_b1
if-eqz p2, :cond_ba
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDetailCaption:Landroid/widget/TextView;
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto/16 :goto_9
:cond_ba
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mAddressEditText:Landroid/widget/EditText;
invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v6
invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderAddressActivity;->mDetailCaption:Landroid/widget/TextView;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
invoke-direct {p0, v6, v7}, Lcom/pinguo/camera360/order/OrderAddressActivity;->setInvalidField(Landroid/widget/TextView;Z)V
goto/16 :goto_9
nop
:pswitch_data_d4
.packed-switch 0x7f0a0372
:pswitch_a
:pswitch_9
:pswitch_2a
:pswitch_61
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_b1
.end packed-switch
.end method
.method public onRightBtnClick()V
.registers 2
const/4 v0, 0x1
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportAdressLay(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderAddressActivity;->saveOrderAddress()V
return-void
.end method