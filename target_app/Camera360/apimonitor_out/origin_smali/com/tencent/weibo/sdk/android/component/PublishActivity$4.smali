.class Lcom/tencent/weibo/sdk/android/component/PublishActivity$4;
.super Ljava/lang/Object;
.source "PublishActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/component/PublishActivity;->setonclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->edstring:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$6(Lcom/tencent/weibo/sdk/android/component/PublishActivity;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gbk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    rsub-int v3, v3, 0x8c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "contentafter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$4;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;

    #getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->textView_num:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$7(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_35
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_35
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10

    :try_start_0
    const-string/jumbo v1, "contentafter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gbk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1f
.end method
