.class public Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "AtActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/at/AtActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;


# direct methods
.method public constructor <init>(Lcom/pinguo/share/at/AtActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;->this$0:Lcom/pinguo/share/at/AtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;->this$0:Lcom/pinguo/share/at/AtActivity;

    #calls: Lcom/pinguo/share/at/AtActivity;->discardFetchResult()Z
    invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$0(Lcom/pinguo/share/at/AtActivity;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;->this$0:Lcom/pinguo/share/at/AtActivity;

    iget-object v1, p0, Lcom/pinguo/share/at/AtActivity$MyOnPageChangeListener;->this$0:Lcom/pinguo/share/at/AtActivity;

    #getter for: Lcom/pinguo/share/at/AtActivity;->mTitleView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/pinguo/share/at/AtActivity;->access$18(Lcom/pinguo/share/at/AtActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #calls: Lcom/pinguo/share/at/AtActivity;->notifyListDataChanged(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/pinguo/share/at/AtActivity;->access$19(Lcom/pinguo/share/at/AtActivity;Landroid/view/View;)V

    :cond_17
    return-void
.end method
