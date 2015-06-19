.class final Lcom/google/zxing/client/android/book/c;
.super Ljava/lang/Object;
.source "SearchBookContentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/zxing/client/android/book/b;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/book/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/client/android/book/c;->a:Lcom/google/zxing/client/android/book/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/book/c;->a:Lcom/google/zxing/client/android/book/b;

    invoke-static {v0}, Lcom/google/zxing/client/android/book/b;->a(Lcom/google/zxing/client/android/book/b;)V

    return-void
.end method
