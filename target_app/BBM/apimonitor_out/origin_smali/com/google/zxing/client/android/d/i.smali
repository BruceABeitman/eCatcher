.class public final Lcom/google/zxing/client/android/d/i;
.super Ljava/lang/Object;
.source "ResultButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/zxing/client/android/d/j;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/d/j;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/d/i;->a:Lcom/google/zxing/client/android/d/j;

    iput p2, p0, Lcom/google/zxing/client/android/d/i;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/client/android/d/i;->a:Lcom/google/zxing/client/android/d/j;

    iget v1, p0, Lcom/google/zxing/client/android/d/i;->b:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/d/j;->b(I)V

    return-void
.end method
