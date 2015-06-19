.class Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$3;
.super Ljava/lang/Object;
.source "PhotoPageControl.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;->onLongPress(Lcom/pinguo/camera360/gallery/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl$3;->this$0:Lcom/pinguo/camera360/gallery/mvc/PhotoPageControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_1f

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1e
    const/4 v1, 0x1

    :cond_1f
    return v1
.end method
