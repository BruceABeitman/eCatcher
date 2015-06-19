.class public Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
.super Landroid/app/Activity;
.source "ConversationActivity.java"
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;
.field private adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
.field private dialog:Landroid/app/ProgressDialog;
.field private editText:Landroid/widget/EditText;
.field private list:Ljava/util/List;
.field private listView:Landroid/widget/ListView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
return-object v0
.end method
.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
return-object v0
.end method
.method static synthetic access$2(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->click(Ljava/util/List;)V
return-void
.end method
.method private click(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
new-instance v1, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;
invoke-direct {v1, p0, p1}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$4;-><init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;Ljava/util/List;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method
.method private initData(Lorg/json/JSONObject;)Ljava/util/List;
.registers 9
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:try_start_5
const-string/jumbo v4, "data"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
const-string/jumbo v5, "info"
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v2, 0x0
:goto_14
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v4
if-lt v2, v4, :cond_1b
:goto_1a
return-object v3
:cond_1b
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "#"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
const-string/jumbo v6, "text"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "#"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_40
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_40} :catch_43
add-int/lit8 v2, v2, 0x1
goto :goto_14
:catch_43
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_1a
.end method
.method private initview()Landroid/view/View;
.registers 19
new-instance v12, Landroid/widget/LinearLayout;
move-object/from16 v0, p0
invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v10, Landroid/widget/LinearLayout$LayoutParams;
const/4 v13, -0x1
const/4 v14, -0x1
invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v13, 0x1
invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v6, Landroid/widget/LinearLayout;
move-object/from16 v0, p0
invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
const/4 v13, -0x1
const/4 v14, -0x2
invoke-direct {v9, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v13, 0x0
invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V
const-string/jumbo v13, "up_bg2x"
move-object/from16 v0, p0
invoke-static {v13, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v13
invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/16 v13, 0x14
const/4 v14, 0x0
const/16 v15, 0x14
const/16 v16, 0x0
move/from16 v0, v16
invoke-virtual {v6, v13, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V
const/16 v13, 0x10
invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setGravity(I)V
new-instance v3, Landroid/widget/LinearLayout;
move-object/from16 v0, p0
invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v7, Landroid/widget/LinearLayout$LayoutParams;
const/4 v13, -0x1
const/4 v14, -0x2
const/high16 v15, 0x3f80
invoke-direct {v7, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v13, 0x0
const/4 v14, 0x0
const/16 v15, 0xc
const/16 v16, 0x0
move/from16 v0, v16
invoke-virtual {v3, v13, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V
new-instance v13, Landroid/widget/EditText;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSingleLine(Z)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Landroid/widget/EditText;->setLines(I)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const/high16 v14, 0x4190
invoke-virtual {v13, v14}, Landroid/widget/EditText;->setTextSize(F)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const-string/jumbo v14, "\u641c\u7d22\u8bdd\u9898"
invoke-virtual {v13, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const/16 v14, 0x14
const/4 v15, 0x0
const/16 v16, 0xa
const/16 v17, 0x0
invoke-virtual/range {v13 .. v17}, Landroid/widget/EditText;->setPadding(IIII)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const-string/jumbo v14, "huati_input2x"
move-object/from16 v0, p0
invoke-static {v14, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v14
invoke-virtual {v13, v14}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
const-string/jumbo v14, "huati_icon_hover2x"
move-object/from16 v0, p0
invoke-static {v14, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v14
const/4 v15, 0x0
const/16 v16, 0x0
const/16 v17, 0x0
invoke-virtual/range {v13 .. v17}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
invoke-virtual {v13, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v2, Landroid/widget/Button;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const/4 v13, 0x2
new-array v11, v13, [Ljava/lang/String;
const/4 v13, 0x0
const-string/jumbo v14, "sent_btn_22x"
aput-object v14, v11, v13
const/4 v13, 0x1
const-string/jumbo v14, "sent_btn_hover"
aput-object v14, v11, v13
move-object/from16 v0, p0
invoke-static {v11, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
move-result-object v13
invoke-virtual {v2, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const/4 v13, -0x1
invoke-virtual {v2, v13}, Landroid/widget/Button;->setTextColor(I)V
const-string/jumbo v13, "\u53d6\u6d88"
invoke-virtual {v2, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v5, Landroid/widget/LinearLayout;
move-object/from16 v0, p0
invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v8, Landroid/widget/LinearLayout$LayoutParams;
const/4 v13, -0x1
const/4 v14, -0x2
const/high16 v15, 0x3f80
invoke-direct {v8, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v13, Landroid/widget/ListView;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
const-string/jumbo v14, "table_lie_"
move-object/from16 v0, p0
invoke-static {v14, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v14
invoke-virtual {v13, v14}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
invoke-virtual {v13, v10}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->editText:Landroid/widget/EditText;
new-instance v14, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$2;-><init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)V
invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
new-instance v4, Landroid/widget/LinearLayout;
move-object/from16 v0, p0
invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/Button;
move-object/from16 v0, p0
invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const/16 v13, 0x11
invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setGravity(I)V
invoke-virtual {v1, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const-string/jumbo v13, "abc"
invoke-virtual {v1, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
const/high16 v13, -0x100
invoke-virtual {v1, v13}, Landroid/widget/Button;->setTextColor(I)V
new-instance v13, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$3;
move-object/from16 v0, p0
invoke-direct {v13, v0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$3;-><init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)V
invoke-virtual {v2, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
return-object v12
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/tencent/weibo/sdk/android/component/ConversationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v6, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0, v5}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->requestWindowFeature(I)Z
invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->initview()Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/LinearLayout;
invoke-virtual {p0, v7}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->setContentView(Landroid/view/View;)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
new-instance v1, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$1;
invoke-direct {v1, p0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity$1;-><init>(Lcom/tencent/weibo/sdk/android/component/ConversationActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
if-nez v0, :cond_33
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
const-string/jumbo v1, "\u8bf7\u7a0d\u540e..."
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V
:cond_33
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
new-instance v0, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;
new-instance v1, Lcom/tencent/weibo/sdk/android/model/AccountModel;
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-string/jumbo v3, "ACCESS_TOKEN"
invoke-static {v2, v3}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
const/4 v3, 0x0
const/16 v4, 0xf
move-object v1, p0
move-object v2, p0
invoke-virtual/range {v0 .. v6}, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;->recent_used(Landroid/content/Context;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;III)V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/ConversationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResult(Ljava/lang/Object;)V
.registers 5
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
if-eqz p1, :cond_50
move-object v1, p1
check-cast v1, Lcom/tencent/weibo/sdk/android/model/ModelResult;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isSuccess()Z
move-result v1
if-eqz v1, :cond_50
const-string/jumbo v2, "\u53d1\u9001\u6210\u529f"
move-object v1, p1
check-cast v1, Lcom/tencent/weibo/sdk/android/model/ModelResult;
invoke-virtual {v1}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getObj()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
check-cast p1, Lcom/tencent/weibo/sdk/android/model/ModelResult;
invoke-virtual {p1}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getObj()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
invoke-direct {p0, v0}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->initData(Lorg/json/JSONObject;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
new-instance v1, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
invoke-direct {v1, p0, v2}, Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
iput-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->listView:Landroid/widget/ListView;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->list:Ljava/util/List;
invoke-direct {p0, v1}, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->click(Ljava/util/List;)V
:cond_50
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/tencent/weibo/sdk/android/component/ConversationActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStop()V
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/ConversationActivity;->dialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_14
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/ConversationActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method