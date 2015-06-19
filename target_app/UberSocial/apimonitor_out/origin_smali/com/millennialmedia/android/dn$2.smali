.class Lcom/millennialmedia/android/dn$2;
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

    iput-object p1, p0, Lcom/millennialmedia/android/dn$2;->a:Lcom/millennialmedia/android/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/dn$2;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/millennialmedia/android/dn$2;->a:Lcom/millennialmedia/android/dn;

    iget-object v0, v0, Lcom/millennialmedia/android/dn;->l:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_e
    return-void
.end method
