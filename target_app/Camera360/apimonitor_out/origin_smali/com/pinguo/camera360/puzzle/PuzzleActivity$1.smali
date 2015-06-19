.class Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;
.super Ljava/lang/Object;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/PuzzleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #calls: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->hidePopWindow()Z
    invoke-static {v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$0(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Z

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleSystem:Lcom/pinguo/camera360/puzzle/PuzzleSystem;
    invoke-static {v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$1(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleSystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleSystem;->getCurrState()Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    move-result-object v2

    sget-object v3, Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;->IDLE:Lcom/pinguo/camera360/puzzle/interfaces/PuzzleSystemInterface$PuzzleSystemState;

    if-eq v2, v3, :cond_1c

    sget-object v2, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, " do not change template, puzzle system is not IDLE."

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getSelection()I

    move-result v2

    if-eq v2, p3, :cond_1b

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->setSelection(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #calls: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->getTemplate(ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;
    invoke-static {v2, p3, v0}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$2(Lcom/pinguo/camera360/puzzle/PuzzleActivity;ILcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;)Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mPuzzleTempId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$3(Lcom/pinguo/camera360/puzzle/PuzzleActivity;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleActivity$1;->this$0:Lcom/pinguo/camera360/puzzle/PuzzleActivity;

    #getter for: Lcom/pinguo/camera360/puzzle/PuzzleActivity;->mTemplateEntity:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;
    invoke-static {v2}, Lcom/pinguo/camera360/puzzle/PuzzleActivity;->access$4(Lcom/pinguo/camera360/puzzle/PuzzleActivity;)Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity;->setTemplate(Lcom/pinguo/camera360/puzzle/template/PuzzleTemplate;)V

    goto :goto_1b
.end method
