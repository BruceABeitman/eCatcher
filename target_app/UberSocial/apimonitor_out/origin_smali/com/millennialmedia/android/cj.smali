.class Lcom/millennialmedia/android/cj;
.super Lcom/millennialmedia/android/bp;
.source "SourceFile"


# instance fields
.field final synthetic s:Lcom/millennialmedia/android/ch;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/ch;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/cj;->s:Lcom/millennialmedia/android/ch;

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/bp;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/android/cq;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cj;->s:Lcom/millennialmedia/android/ch;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/ch;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/millennialmedia/android/cq;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6

    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMLayout adding view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/cj;->s:Lcom/millennialmedia/android/ch;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/ch;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cj;->s:Lcom/millennialmedia/android/ch;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/ch;->setClickable(Z)V

    return-void
.end method

.method synthetic d()Lcom/millennialmedia/android/bo;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cj;->u()Lcom/millennialmedia/android/ch;

    move-result-object v0

    return-object v0
.end method

.method e()I
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cj;->s:Lcom/millennialmedia/android/ch;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ch;->getId()I

    move-result v0

    return v0
.end method

.method u()Lcom/millennialmedia/android/ch;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cj;->s:Lcom/millennialmedia/android/ch;

    return-object v0
.end method
