.class final Lcom/mapquest/android/maps/ch;
.super Ljava/lang/Object;
.source "TouchEventHandler.java"


# static fields
.field static final a:I


# instance fields
.field b:Lcom/mapquest/android/maps/ck;

.field private c:Lcom/mapquest/android/maps/MapView;

.field private d:Lcom/mapquest/android/maps/cn;

.field private e:Landroid/view/GestureDetector;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/mapquest/android/maps/ch;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/mapquest/android/maps/ch;->f:Z

    iput-boolean v2, p0, Lcom/mapquest/android/maps/ch;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/ch;->b:Lcom/mapquest/android/maps/ck;

    iput-object p1, p0, Lcom/mapquest/android/maps/ch;->c:Lcom/mapquest/android/maps/MapView;

    new-instance v0, Lcom/mapquest/android/maps/cn;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/cn;-><init>(Lcom/mapquest/android/maps/ch;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mapquest/android/maps/cj;

    invoke-direct {v1, p0, v2}, Lcom/mapquest/android/maps/cj;-><init>(Lcom/mapquest/android/maps/ch;B)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ch;->e:Landroid/view/GestureDetector;

    new-instance v0, Lcom/mapquest/android/maps/ck;

    invoke-direct {v0, p0, p1}, Lcom/mapquest/android/maps/ck;-><init>(Lcom/mapquest/android/maps/ch;Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ch;->b:Lcom/mapquest/android/maps/ck;

    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    iget-object v0, v0, Lcom/mapquest/android/maps/cn;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    iget-object v1, p0, Lcom/mapquest/android/maps/ch;->b:Lcom/mapquest/android/maps/ck;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cn;->a(Lcom/mapquest/android/maps/cl;)V

    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    new-instance v1, Lcom/mapquest/android/maps/cm;

    iget-object v2, p0, Lcom/mapquest/android/maps/ch;->c:Lcom/mapquest/android/maps/MapView;

    invoke-direct {v1, p0, v2}, Lcom/mapquest/android/maps/cm;-><init>(Lcom/mapquest/android/maps/ch;Lcom/mapquest/android/maps/MapView;)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cn;->a(Lcom/mapquest/android/maps/cl;)V

    return-void
.end method

.method static synthetic a(Lcom/mapquest/android/maps/ch;)Lcom/mapquest/android/maps/cn;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    return-object v0
.end method

.method protected static a()V
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/mapquest/android/maps/ch;)Lcom/mapquest/android/maps/MapView;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->c:Lcom/mapquest/android/maps/MapView;

    return-object v0
.end method

.method static synthetic c(Lcom/mapquest/android/maps/ch;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mapquest/android/maps/ch;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/mapquest/android/maps/ch;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ch;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    invoke-virtual {v2, p1}, Lcom/mapquest/android/maps/cn;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/mapquest/android/maps/ch;->d:Lcom/mapquest/android/maps/cn;

    iget v3, v3, Lcom/mapquest/android/maps/cn;->e:I

    and-int/2addr v2, v3

    if-ne v2, v0, :cond_23

    iget-boolean v0, p0, Lcom/mapquest/android/maps/ch;->f:Z

    if-eqz v0, :cond_21

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/mapquest/android/maps/g;->a(I)V

    iput-boolean v1, p0, Lcom/mapquest/android/maps/ch;->f:Z

    :cond_21
    iput-boolean v1, p0, Lcom/mapquest/android/maps/ch;->g:Z

    :cond_23
    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->e:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mapquest/android/maps/ch;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a

    :cond_2e
    move v0, v1

    goto :goto_a
.end method
