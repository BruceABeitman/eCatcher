.class final Lcom/google/zxing/client/android/book/d;
.super Ljava/lang/Object;
.source "SearchBookContentsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/zxing/client/android/book/b;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/book/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/client/android/book/d;->a:Lcom/google/zxing/client/android/book/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/16 v0, 0x42

    if-ne p2, v0, :cond_11

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/zxing/client/android/book/d;->a:Lcom/google/zxing/client/android/book/b;

    invoke-static {v0}, Lcom/google/zxing/client/android/book/b;->a(Lcom/google/zxing/client/android/book/b;)V

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
