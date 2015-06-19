.class public Lcom/tencent/weibo/sdk/android/component/FriendActivity;
.super Landroid/app/Activity;
.source "FriendActivity.java"

# interfaces
.implements Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;


# instance fields
.field private adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

.field private child:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/ProgressDialog;

.field private editText:Landroid/widget/EditText;

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

.field private listView:Landroid/widget/ExpandableListView;

.field private newchild:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;"
        }
    .end annotation
.end field

.field private newgourp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nums:[I

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->groups:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)[I
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method private ex(Ljava/util/List;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_30

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/FriendActivity$3;

    invoke-direct {v2, p0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity$3;-><init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/FriendActivity$4;

    invoke-direct {v2, p0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity$4;-><init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity$5;-><init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity$6;-><init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getJsonData(Lorg/json/JSONObject;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    const-string/jumbo v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "info"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v4, v6, :cond_2c

    new-instance v6, Lcom/tencent/weibo/sdk/android/api/util/FirendCompare;

    invoke-direct {v6}, Lcom/tencent/weibo/sdk/android/api/util/FirendCompare;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_24} :catch_85

    :goto_24
    const/4 v4, 0x0

    :goto_25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_8a

    return-void

    :cond_2c
    :try_start_2c
    new-instance v2, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-direct {v2}, Lcom/tencent/weibo/sdk/android/model/Firend;-><init>()V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string/jumbo v7, "nick"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->setNick(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->setName(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string/jumbo v8, "headurl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "\\/"

    const-string/jumbo v9, "/"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/180"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->setHeadurl(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_82} :catch_85

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :catch_85
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_24

    :cond_8a
    iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d3

    iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_cf
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_25

    :cond_d3
    const-string/jumbo v7, "group"

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v6}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/weibo/sdk/android/api/util/HypyUtil;->cn2py(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf
.end method

.method private getdate()V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_19

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_19
    new-instance v0, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;

    new-instance v1, Lcom/tencent/weibo/sdk/android/model/AccountModel;

    invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ACCESS_TOKEN"

    invoke-static {v2, v3}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/weibo/sdk/android/model/AccountModel;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    const/4 v3, 0x0

    const/16 v7, 0xa

    move-object v1, p0

    move-object v2, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;->mutual_list(Landroid/content/Context;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;IIII)V

    return-void
.end method

.method private initview()Landroid/view/View;
    .registers 25

    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const-string/jumbo v19, "up_bg2x"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xf

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v19, 0x9

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xf

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "return_btn2x"

    aput-object v20, v4, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "return_btn_hover"

    aput-object v20, v4, v19

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->createBgByImageIds([Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v19, "  \u8fd4\u56de"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Lcom/tencent/weibo/sdk/android/component/FriendActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity$1;-><init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v19, "\u597d\u53cb\u5217\u8868"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v19, 0x41c0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xd

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/high16 v23, 0x3f80

    invoke-direct/range {v20 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x14

    const/16 v21, 0x0

    const/16 v22, 0xa

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/EditText;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string/jumbo v20, "searchbg_"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string/jumbo v20, "search_"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string/jumbo v20, "\u641c\u7d22"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/high16 v20, 0x4190

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/weibo/sdk/android/component/FriendActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity$2;-><init>(Lcom/tencent/weibo/sdk/android/component/FriendActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->editText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v19, Landroid/widget/ExpandableListView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;

    const/16 v19, 0x1e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x4190

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, "\u5e38\u7528\u8054\u7cfb\u4eba"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v19, "#b0bac3"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v19, Lcom/tencent/weibo/sdk/android/component/LetterListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/LetterListView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->setOnTouchingLetterChangedListener(Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x32

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v15, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v18
.end method

.method private totle(I)I
    .registers 4

    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->totle(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_16
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->initview()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->getdate()V

    invoke-virtual {p0, v0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .registers 7

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    if-eqz p1, :cond_62

    move-object v2, p1

    check-cast v2, Lcom/tencent/weibo/sdk/android/model/ModelResult;

    invoke-virtual {v2}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_62

    move-object v2, p1

    check-cast v2, Lcom/tencent/weibo/sdk/android/model/ModelResult;

    invoke-virtual {v2}, Lcom/tencent/weibo/sdk/android/model/ModelResult;->getObj()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->getJsonData(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    const/4 v0, 0x0

    :goto_33
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    array-length v2, v2

    if-lt v0, v2, :cond_63

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->setB(Ljava/util/List;)V

    new-instance v2, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    invoke-direct {v2, p0, v3, v4}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->ex(Ljava/util/List;Ljava/util/Map;)V

    const-string/jumbo v2, "\u53d1\u9001\u6210\u529f"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void

    :cond_63
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    invoke-direct {p0, v0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->totle(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onTouchingLetterChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->listView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .registers 8

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6f

    const-string/jumbo v3, "size"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    const/4 v0, 0x0

    :goto_48
    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    array-length v3, v3

    if-lt v0, v3, :cond_112

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/tencent/weibo/sdk/android/component/LetterListView;->setB(Ljava/util/List;)V

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->setChild(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->setGroup(Ljava/util/List;)V

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

    invoke-virtual {v3}, Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->ex(Ljava/util/List;Ljava/util/Map;)V

    return-void

    :cond_6f
    const/4 v1, 0x0

    :goto_70
    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_87

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_87
    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-virtual {v3}, Lcom/tencent/weibo/sdk/android/model/Firend;->getNick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e9

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_ec

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newgourp:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e9
    :goto_e9
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_ec
    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->newchild:Ljava/util/Map;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->child:Ljava/util/Map;

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->group:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/weibo/sdk/android/model/Firend;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    :cond_112
    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->nums:[I

    invoke-direct {p0, v0}, Lcom/tencent/weibo/sdk/android/component/FriendActivity;->totle(I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_48
.end method
