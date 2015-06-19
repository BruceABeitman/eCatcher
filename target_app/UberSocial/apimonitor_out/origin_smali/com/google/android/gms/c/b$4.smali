.class Lcom/google/android/gms/c/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Landroid/view/LayoutInflater;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/google/android/gms/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/b;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/c/b$4;->e:Lcom/google/android/gms/c/b;

    iput-object p2, p0, Lcom/google/android/gms/c/b$4;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/c/b$4;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/c/b$4;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/c/b$4;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/google/android/gms/c/a;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/c/b$4;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/c/b$4;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/c/b$4;->e:Lcom/google/android/gms/c/b;

    invoke-static {v1}, Lcom/google/android/gms/c/b;->b(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/b$4;->b:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/gms/c/b$4;->c:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/gms/c/b$4;->d:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/c/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
