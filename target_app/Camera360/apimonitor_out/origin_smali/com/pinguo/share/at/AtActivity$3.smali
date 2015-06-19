.class Lcom/pinguo/share/at/AtActivity$3;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/at/AtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/at/AtActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$3;->this$0:Lcom/pinguo/share/at/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_13

    :cond_8
    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$3;->this$0:Lcom/pinguo/share/at/AtActivity;

    #getter for: Lcom/pinguo/share/at/AtActivity;->mBtnClear:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$4(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$3;->this$0:Lcom/pinguo/share/at/AtActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/share/at/AtActivity;->searchUser(Ljava/util/List;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    if-lez p4, :cond_c

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$3;->this$0:Lcom/pinguo/share/at/AtActivity;

    #getter for: Lcom/pinguo/share/at/AtActivity;->mBtnClear:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$4(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method
