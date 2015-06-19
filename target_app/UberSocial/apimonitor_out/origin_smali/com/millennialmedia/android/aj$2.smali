.class Lcom/millennialmedia/android/aj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/aj;->b()Landroid/widget/RelativeLayout;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcom/millennialmedia/android/VideoImage;

.field final synthetic c:Lcom/millennialmedia/android/aj;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/aj;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/android/aj$2;->c:Lcom/millennialmedia/android/aj;

    iput-object p2, p0, Lcom/millennialmedia/android/aj$2;->a:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/millennialmedia/android/aj$2;->b:Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/aj$2;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/aj$2;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/aj$2;->c:Lcom/millennialmedia/android/aj;

    iget-object v0, v0, Lcom/millennialmedia/android/aj;->m:Lcom/millennialmedia/android/az;

    iget-object v1, p0, Lcom/millennialmedia/android/aj$2;->b:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/millennialmedia/android/az;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/aj$2;->c:Lcom/millennialmedia/android/aj;

    iget-object v1, p0, Lcom/millennialmedia/android/aj$2;->b:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aj;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/aj$2;->c:Lcom/millennialmedia/android/aj;

    iget-object v1, p0, Lcom/millennialmedia/android/aj$2;->b:Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/aj;->a(Lcom/millennialmedia/android/VideoImage;)V

    return-void
.end method
