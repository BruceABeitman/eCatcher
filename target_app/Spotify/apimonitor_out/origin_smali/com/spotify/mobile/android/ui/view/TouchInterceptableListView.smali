.class public Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/spotify/mobile/android/ui/view/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->a:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView$1;-><init>(Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->b:Lcom/spotify/mobile/android/ui/view/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->a:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView$1;-><init>(Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->b:Lcom/spotify/mobile/android/ui/view/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->a:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView$1;-><init>(Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->b:Lcom/spotify/mobile/android/ui/view/t;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->b:Lcom/spotify/mobile/android/ui/view/t;

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/TouchInterceptableListView;->b:Lcom/spotify/mobile/android/ui/view/t;

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
