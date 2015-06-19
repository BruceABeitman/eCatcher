.class Landroid/support/v4/widget/PopupMenuCompat$KitKatPopupMenuImpl;
.super Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/PopupMenuCompat$BasePopupMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/widget/PopupMenuCompatKitKat;->getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
