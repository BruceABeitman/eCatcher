.class final Landroid/support/v7/internal/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/s;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_3d

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    iget v1, v1, Landroid/support/v7/internal/widget/ListPopupWindow;->a:I

    if-gt v0, v1, :cond_3d

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V

    :cond_3d
    return-void
.end method
