.class Lcom/pinguo/share/bind/BindActivity$1;
.super Lcom/pinguo/share/bind/MyBroadCastReceiver;
.source "BindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/bind/BindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/bind/BindActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-direct {p0}, Lcom/pinguo/share/bind/MyBroadCastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "rannum"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v0, "FetchCloudBindInfoService.MyBroadCastReceiver"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    iget-wide v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->curRan:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_c9

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v12, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    new-instance v0, Lcom/pinguo/share/bind/BindAdapter;

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->onClick:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity;->access$0(Lcom/pinguo/share/bind/BindActivity;)Landroid/view/View$OnClickListener;

    move-result-object v2

    iget v3, v8, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v6}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/share/bind/DispatchBean;->getArrayForList()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/share/bind/BindAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;FLandroid/widget/CompoundButton$OnCheckedChangeListener;ILjava/util/List;)V

    #setter for: Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v12, v0}, Lcom/pinguo/share/bind/BindActivity;->access$1(Lcom/pinguo/share/bind/BindActivity;Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_8b

    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_8b
    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mBaseAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity;->access$3(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mProgressDialog:Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$4(Lcom/pinguo/share/bind/BindActivity;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->dismiss()V

    :cond_bf
    iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$1;->this$0:Lcom/pinguo/share/bind/BindActivity;

    #getter for: Lcom/pinguo/share/bind/BindActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$2(Lcom/pinguo/share/bind/BindActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_c9
    return-void
.end method
