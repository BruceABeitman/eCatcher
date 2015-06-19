.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = null

.field public static final INVALID_ID:I = -0x80000000


# instance fields
.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/high16 v1, -0x8000

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    iput v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iput v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-nez p1, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    sget-object v1, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_28

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v0
.end method

.method private createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    sget-object v1, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v1

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_56

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v1, p1, :cond_aa

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :goto_79
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_89
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v2, v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0

    :cond_aa
    invoke-virtual {v0, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_79
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    goto :goto_17

    :cond_2d
    return-object v1
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_a

    :cond_15
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1b
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_37

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_32

    :cond_30
    move v0, v1

    goto :goto_a

    :cond_32
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1b

    :cond_37
    if-nez v0, :cond_3b

    move v0, v1

    goto :goto_a

    :cond_3b
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_47

    move v0, v1

    goto :goto_a

    :cond_47
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_a
.end method

.method private isAccessibilityFocused(I)Z
    .registers 3

    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private manageFocusForChild(IILandroid/os/Bundle;)Z
    .registers 5

    sparse-switch p2, :sswitch_data_10

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    goto :goto_4

    :sswitch_a
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    goto :goto_4

    nop

    :sswitch_data_10
    .sparse-switch
        0x40 -> :sswitch_5
        0x80 -> :sswitch_a
    .end sparse-switch
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .registers 5

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_7
    return v0

    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_7

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    sparse-switch p2, :sswitch_data_e

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_7
    return v0

    :sswitch_8
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->manageFocusForChild(IILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_7

    nop

    :sswitch_data_e
    .sparse-switch
        0x40 -> :sswitch_8
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v1

    if-nez v1, :cond_11

    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    goto :goto_11
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_4
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/high16 v4, -0x8000

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return v1

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    :pswitch_1c
    goto :goto_14

    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    if-eq v2, v4, :cond_30

    :goto_2e
    move v1, v0

    goto :goto_14

    :cond_30
    move v0, v1

    goto :goto_2e

    :pswitch_32
    iget v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-eq v2, v4, :cond_14

    invoke-direct {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    move v1, v0

    goto :goto_14

    nop

    :pswitch_data_3c
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1c
        :pswitch_1d
        :pswitch_32
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$1;)V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .registers 2

    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method public invalidateRoot()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    return-void
.end method

.method public invalidateVirtualView(I)V
    .registers 3

    const/16 v0, 0x800

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public sendEventForVirtualView(II)Z
    .registers 6

    const/4 v0, 0x0

    const/high16 v1, -0x8000

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_d
.end method
