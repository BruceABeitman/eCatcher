.class Landroid/support/v4/widget/ListPopupWindowCompat$KitKatListPopupWindowImpl;
.super Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/ListPopupWindowCompat$BaseListPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 4

    invoke-static {p1, p2}, Landroid/support/v4/widget/ListPopupWindowCompatKitKat;->createDragToOpenListener(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
