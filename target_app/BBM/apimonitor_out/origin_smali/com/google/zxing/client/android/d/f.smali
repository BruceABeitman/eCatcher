.class final Lcom/google/zxing/client/android/d/f;
.super Ljava/lang/Object;
.source "ISBNResultHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/zxing/client/android/d/e;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/d/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/zxing/client/android/d/f;->a:Lcom/google/zxing/client/android/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/client/android/d/f;->a:Lcom/google/zxing/client/android/d/e;

    iget-object v0, v0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/o;

    iget-object v1, p0, Lcom/google/zxing/client/android/d/f;->a:Lcom/google/zxing/client/android/d/e;

    iget-object v0, v0, Lcom/google/zxing/client/a/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/d/e;->g(Ljava/lang/String;)V

    return-void
.end method
