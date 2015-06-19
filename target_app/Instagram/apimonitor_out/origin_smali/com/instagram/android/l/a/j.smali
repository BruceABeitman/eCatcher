.class final Lcom/instagram/android/l/a/j;
.super Ljava/lang/Object;
.source "UserRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/instagram/android/j/d;

.field final synthetic c:Lcom/instagram/user/c/a;

.field final synthetic d:Landroid/support/v4/app/s;

.field final synthetic e:Lcom/instagram/android/l/a/g;


# direct methods
.method constructor <init>(Lcom/instagram/android/l/a/g;ZLcom/instagram/android/j/d;Lcom/instagram/user/c/a;Landroid/support/v4/app/s;)V
    .registers 6

    iput-object p1, p0, Lcom/instagram/android/l/a/j;->e:Lcom/instagram/android/l/a/g;

    iput-boolean p2, p0, Lcom/instagram/android/l/a/j;->a:Z

    iput-object p3, p0, Lcom/instagram/android/l/a/j;->b:Lcom/instagram/android/j/d;

    iput-object p4, p0, Lcom/instagram/android/l/a/j;->c:Lcom/instagram/user/c/a;

    iput-object p5, p0, Lcom/instagram/android/l/a/j;->d:Landroid/support/v4/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-boolean v0, p0, Lcom/instagram/android/l/a/j;->a:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/instagram/android/l/a/j;->b:Lcom/instagram/android/j/d;

    iget-object v1, p0, Lcom/instagram/android/l/a/j;->c:Lcom/instagram/user/c/a;

    invoke-interface {v0, v1}, Lcom/instagram/android/j/d;->b(Lcom/instagram/user/c/a;)V

    :cond_b
    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/l/a/j;->d:Landroid/support/v4/app/s;

    iget-object v2, p0, Lcom/instagram/android/l/a/j;->c:Lcom/instagram/user/c/a;

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method
