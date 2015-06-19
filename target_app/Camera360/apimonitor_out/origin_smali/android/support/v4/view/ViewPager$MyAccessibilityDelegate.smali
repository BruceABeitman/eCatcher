.class Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_75

    :goto_21
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    if-ltz v0, :cond_4d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4d

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_4d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    if-lez v0, :cond_74

    iget-object v0, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v0}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_74

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_74
    return-void

    :cond_75
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    sparse-switch p2, :sswitch_data_74

    move v0, v1

    goto :goto_8

    :sswitch_e
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    if-ltz v2, :cond_40

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v3}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_40

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_40
    move v0, v1

    goto :goto_8

    :sswitch_42
    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    if-lez v2, :cond_72

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v3}, Landroid/support/v4/view/ViewPager;->access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_72

    iget-object v1, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroid/support/v4/view/ViewPager;

    #getter for: Landroid/support/v4/view/ViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/support/v4/view/ViewPager;->access$300(Landroid/support/v4/view/ViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_72
    move v0, v1

    goto :goto_8

    :sswitch_data_74
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_42
    .end sparse-switch
.end method
