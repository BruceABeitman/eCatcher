.class Lcom/millennialmedia/android/AdViewOverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdViewOverlayView;->a(Landroid/content/Context;F)Landroid/widget/Button;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "AdViewOverlayView"

    const-string v1, "Close button clicked."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$1;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->l_()V

    return-void
.end method
