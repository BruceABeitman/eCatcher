.class Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ZmanimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gindin/zmanim/android/ZmanimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZmanimGestureListener"
.end annotation


# static fields
.field private static final SWIPE_MIN_DISTANCE:I = 0x78


# instance fields
.field final synthetic this$0:Lcom/gindin/zmanim/android/ZmanimActivity;


# direct methods
.method private constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gindin/zmanim/android/ZmanimActivity;Lcom/gindin/zmanim/android/ZmanimActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;-><init>(Lcom/gindin/zmanim/android/ZmanimActivity;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42f0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    move v1, v3

    :goto_16
    return v1

    :cond_17
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_35

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    #calls: Lcom/gindin/zmanim/android/ZmanimActivity;->moveToNextDay()V
    invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$800(Lcom/gindin/zmanim/android/ZmanimActivity;)V

    :goto_2d
    const/4 v1, 0x1

    goto :goto_16

    :cond_2f
    iget-object v1, p0, Lcom/gindin/zmanim/android/ZmanimActivity$ZmanimGestureListener;->this$0:Lcom/gindin/zmanim/android/ZmanimActivity;

    #calls: Lcom/gindin/zmanim/android/ZmanimActivity;->moveToPrevDay()V
    invoke-static {v1}, Lcom/gindin/zmanim/android/ZmanimActivity;->access$900(Lcom/gindin/zmanim/android/ZmanimActivity;)V

    goto :goto_2d

    :cond_35
    move v1, v3

    goto :goto_16
.end method
