.class Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;
.super Landroid/webkit/WebViewClient;
.source "PGLoginWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$0(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoadingPage:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$1(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mSuccesUrl:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$2(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mCancel:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$3(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v19

    if-nez v19, :cond_fb

    const-string/jumbo v19, "?"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v19, "&"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    array-length v0, v12

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_4d
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_ff

    const-string/jumbo v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v19, "userInfo"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    :try_start_6b
    const-string/jumbo v19, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_75} :catch_129

    move-result-object v18

    :goto_76
    const-string/jumbo v19, "test"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "userInfo="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_15f

    const-string/jumbo v19, "200"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15f

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mIsBindAccount:Z
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$4(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Z

    move-result v19

    if-eqz v19, :cond_12f

    const-class v19, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v15

    invoke-virtual {v15}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    invoke-virtual {v15}, Lcom/pinguo/camera360/login/model/User;->save()V

    :goto_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->finish()V

    new-instance v5, Lcom/pinguo/camera360/login/model/LoginResultEvent;

    const/16 v19, 0xc8

    const-string/jumbo v20, "ok"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_fb
    :goto_fb
    invoke-super/range {p0 .. p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_ff
    aget-object v9, v12, v19

    const-string/jumbo v21, "="

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_119

    :goto_115
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4d

    :cond_119
    const/16 v21, 0x0

    aget-object v21, v8, v21

    const/16 v22, 0x1

    aget-object v22, v8, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_115

    :catch_129
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_76

    :cond_12f
    const-class v19, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoginMode:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$5(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;

    new-instance v15, Lcom/pinguo/camera360/login/model/User;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V

    invoke-virtual {v15}, Lcom/pinguo/camera360/login/model/User;->save()V

    goto/16 :goto_db

    :cond_15f
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1fb

    const-string/jumbo v19, "10002"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1fb

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mIsBindAccount:Z
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$4(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Z

    move-result v19

    if-eqz v19, :cond_1cc

    const-class v19, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v15

    invoke-virtual {v15}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v7, Lcom/pinguo/camera360/login/model/User$Info;->third:Lcom/pinguo/camera360/login/model/User$Info$ThirdSites;

    invoke-virtual {v15}, Lcom/pinguo/camera360/login/model/User;->save()V

    :goto_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->finish()V

    new-instance v5, Lcom/pinguo/camera360/login/model/LoginResultEvent;

    const/16 v19, 0xc8

    const-string/jumbo v20, "ok"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_fb

    :cond_1cc
    const-class v19, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/pinguo/camera360/login/model/User$Info;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->mLoginMode:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->access$5(Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/pinguo/camera360/login/model/User$Info;->loginmode:Ljava/lang/String;

    new-instance v15, Lcom/pinguo/camera360/login/model/User;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V

    invoke-virtual {v15}, Lcom/pinguo/camera360/login/model/User;->save()V

    goto :goto_1aa

    :cond_1fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->finish()V

    const/4 v5, 0x0

    :try_start_205
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/pinguo/camera360/cloud/login/StatusErrorCodeMessage;->getServerStatusErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v19, v0

    const v20, 0x7f0801a5

    invoke-virtual/range {v19 .. v20}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_228
    new-instance v5, Lcom/pinguo/camera360/login/model/LoginResultEvent;

    invoke-direct {v5, v4, v3}, Lcom/pinguo/camera360/login/model/LoginResultEvent;-><init>(ILjava/lang/String;)V
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_22d} :catch_238

    :goto_22d
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_fb

    :catch_238
    move-exception v2

    new-instance v5, Lcom/pinguo/camera360/login/model/LoginResultEvent;

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity$2;->this$0:Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0801a5

    invoke-virtual/range {v20 .. v21}, Lcom/pinguo/camera360/login/ui/PGLoginWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lcom/pinguo/camera360/login/model/LoginResultEvent;-><init>(ILjava/lang/String;)V

    goto :goto_22d
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
