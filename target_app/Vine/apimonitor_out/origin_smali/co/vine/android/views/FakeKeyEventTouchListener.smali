.class public Lco/vine/android/views/FakeKeyEventTouchListener;
.super Ljava/lang/Object;
.source "FakeKeyEventTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mCode:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    :goto_8
    return v5

    :pswitch_9
    iget-object v0, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mCode:I

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    iget v4, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mCode:I

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_8

    :pswitch_19
    iget-object v0, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mCode:I

    new-instance v2, Landroid/view/KeyEvent;

    iget v3, p0, Lco/vine/android/views/FakeKeyEventTouchListener;->mCode:I

    invoke-direct {v2, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_8

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
        :pswitch_19
    .end packed-switch
.end method
