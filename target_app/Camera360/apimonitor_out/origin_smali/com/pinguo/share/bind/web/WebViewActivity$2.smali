.class Lcom/pinguo/share/bind/web/WebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/bind/web/WebViewActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/bind/web/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/web/WebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    const/16 v3, 0x8

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string/jumbo v0, "WebViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "finished url: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$0(Lcom/pinguo/share/bind/web/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mTitleRL:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$1(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2c
    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mWebLL:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$3(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mPgLL:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$4(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_40
    iget-object v0, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mTitleTX:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$2(Lcom/pinguo/share/bind/web/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$0(Lcom/pinguo/share/bind/web/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 21

    const-string/jumbo v13, "WebViewActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "start url: \n"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    #getter for: Lcom/pinguo/share/bind/web/WebViewActivity;->mSuccessUrl:Ljava/lang/String;
    invoke-static {v13}, Lcom/pinguo/share/bind/web/WebViewActivity;->access$5(Lcom/pinguo/share/bind/web/WebViewActivity;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v13, "?value="

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_c6

    const-string/jumbo v13, "WebViewActivity"

    const-string/jumbo v14, "1 find success url"

    invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v13, "&"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    array-length v14, v11

    const/4 v13, 0x0

    :goto_5a
    if-lt v13, v14, :cond_a1

    const-string/jumbo v13, "value"

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_82

    const-string/jumbo v13, "#_=_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_82

    const/4 v13, 0x0

    const-string/jumbo v14, "#_=_"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "value"

    invoke-virtual {v9, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    :try_start_82
    new-instance v6, Ljava/lang/String;

    invoke-static {v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pinguo/share/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/pinguo/share/util/DES;->des([B)[B

    move-result-object v13

    const-string/jumbo v14, "UTF-8"

    invoke-direct {v6, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    invoke-virtual {v13, v6}, Lcom/pinguo/share/bind/web/WebViewActivity;->resultActivity(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9d} :catch_c1

    :cond_9d
    :goto_9d
    invoke-super/range {p0 .. p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_a1
    aget-object v8, v11, v13

    const-string/jumbo v15, "="

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v15, v7

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_b4

    :goto_b1
    add-int/lit8 v13, v13, 0x1

    goto :goto_5a

    :cond_b4
    const/4 v15, 0x0

    aget-object v15, v7, v15

    const/16 v16, 0x1

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    :catch_c1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d

    :cond_c6
    if-ltz v3, :cond_9d

    const-string/jumbo v13, "?value="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v5, v3, v13

    const-string/jumbo v13, "&"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gt v4, v5, :cond_119

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :goto_e2
    const-string/jumbo v13, "WebViewActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "2 find value="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_f8
    new-instance v6, Ljava/lang/String;

    invoke-static {v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/pinguo/share/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v13}, Lcom/pinguo/share/util/DES;->des([B)[B

    move-result-object v13

    const-string/jumbo v14, "UTF-8"

    invoke-direct {v6, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pinguo/share/bind/web/WebViewActivity$2;->this$0:Lcom/pinguo/share/bind/web/WebViewActivity;

    invoke-virtual {v13, v6}, Lcom/pinguo/share/bind/web/WebViewActivity;->resultActivity(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_113} :catch_114

    goto :goto_9d

    :catch_114
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d

    :cond_119
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_e2
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
