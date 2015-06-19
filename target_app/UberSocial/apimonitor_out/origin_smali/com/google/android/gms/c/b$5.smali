.class final Lcom/google/android/gms/c/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/b;->b(Landroid/widget/FrameLayout;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/c/b$5;->a:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/c/b$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/c/b$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/c/b$5;->a:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/c/b$5;->b:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
