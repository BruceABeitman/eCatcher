.class public Lcom/facebook/katana/HomeActivity$ReelListener;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReelListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v2}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v2

    #getter for: Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->access$0(Lcom/facebook/katana/HomeActivity$ReelAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPost;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    const-class v3, Lcom/facebook/katana/FeedbackActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_post_id"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_wall"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra_uid"

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v3}, Lcom/facebook/katana/HomeActivity;->access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v0

    #getter for: Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->access$0(Lcom/facebook/katana/HomeActivity$ReelAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v0

    #getter for: Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->access$0(Lcom/facebook/katana/HomeActivity$ReelAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p3

    const/4 v1, 0x6

    if-ge v0, v1, :cond_43

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v0

    #getter for: Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->access$0(Lcom/facebook/katana/HomeActivity$ReelAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_43

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelListener;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;
    invoke-static {v1}, Lcom/facebook/katana/HomeActivity;->access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getLastPost()Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/HomeActivity;->streamGet(Lcom/facebook/katana/service/api/FacebookPost;)V

    :cond_43
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
