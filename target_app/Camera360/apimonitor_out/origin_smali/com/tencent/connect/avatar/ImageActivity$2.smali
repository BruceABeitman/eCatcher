.class Lcom/tencent/connect/avatar/ImageActivity$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/avatar/ImageActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    iget-object v0, v0, Lcom/tencent/connect/avatar/ImageActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/avatar/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/connect/avatar/g;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Lcom/tencent/connect/avatar/ImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->c(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/avatar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v1}, Lcom/tencent/connect/avatar/ImageActivity;->b(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/connect/avatar/b;->a(Landroid/graphics/Rect;)V

    return-void
.end method