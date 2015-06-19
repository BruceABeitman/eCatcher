.class Lcom/pinguo/share/website/WebSiteShareMainActivity$8;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/website/WebSiteShareMainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curCs:Ljava/lang/CharSequence;

.field selectEnd:I

.field selectStart:I

.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 10

    const/16 v6, 0x8c

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mContentWCountText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$30(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    iput v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->selectStart:I

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    iput v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->selectEnd:I

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->curCs:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_6b

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->curCs:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit16 v1, v3, -0x8c

    iget v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->selectStart:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->selectEnd:I

    invoke-interface {p1, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget v2, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->selectEnd:I

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6b
    invoke-static {}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$12()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "[%d, %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;

    #getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$31(Lcom/pinguo/share/website/WebSiteShareMainActivity;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$8;->curCs:Ljava/lang/CharSequence;

    return-void
.end method
