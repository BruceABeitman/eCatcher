.class public abstract Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;
.super Ljava/lang/Object;
.source "PGEditTiltShiftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DrawView"
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract drawView(Landroid/graphics/Canvas;)V
.end method

.method public abstract move(Landroid/view/MotionEvent;)V
.end method
