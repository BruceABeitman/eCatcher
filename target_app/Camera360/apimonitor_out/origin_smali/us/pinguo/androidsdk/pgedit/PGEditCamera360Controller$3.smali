.class Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$3;
.super Ljava/lang/Object;
.source "PGEditCamera360Controller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;->showFirstForOrg(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCamera360Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    return v0
.end method
