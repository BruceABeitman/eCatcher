.class Lcom/millennialmedia/android/dn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/dn;->a(Landroid/widget/RelativeLayout;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/dn;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->v()V

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-boolean v0, v0, Lcom/millennialmedia/android/dn;->k:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/dn;->a(I)V

    :goto_2c
    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->q:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1f

    :cond_37
    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-boolean v0, v0, Lcom/millennialmedia/android/dn;->u:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-boolean v0, v0, Lcom/millennialmedia/android/dn;->k:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->j()V

    goto :goto_2c

    :cond_49
    iget-object v0, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget-object v1, p0, Lcom/millennialmedia/android/dn$3;->a:Lcom/millennialmedia/android/dn;

    iget v1, v1, Lcom/millennialmedia/android/dn;->j:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/dn;->a(I)V

    goto :goto_2c
.end method
