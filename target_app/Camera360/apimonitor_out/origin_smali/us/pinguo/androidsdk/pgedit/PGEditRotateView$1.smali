.class Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "PGEditRotateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditRotateView;

    const/4 v1, 0x1

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z
    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;Z)V

    return-void
.end method
