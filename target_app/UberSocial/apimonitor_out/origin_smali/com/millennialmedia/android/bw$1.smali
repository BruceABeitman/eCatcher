.class Lcom/millennialmedia/android/bw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/bw;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/millennialmedia/android/bw;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/bw;Landroid/view/animation/Animation;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/bw$1;->b:Lcom/millennialmedia/android/bw;

    iput-object p2, p0, Lcom/millennialmedia/android/bw$1;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bw$1;->b:Lcom/millennialmedia/android/bw;

    iget-object v0, v0, Lcom/millennialmedia/android/bw;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/millennialmedia/android/bw$1;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
