.class Lcom/twidroid/c/m$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/m;->a(Landroid/widget/LinearLayout;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/d/n;

.field final synthetic b:Lcom/twidroid/c/m;


# direct methods
.method constructor <init>(Lcom/twidroid/c/m;Lcom/twidroid/d/n;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    iput-object p2, p0, Lcom/twidroid/c/m$2;->a:Lcom/twidroid/d/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-static {v0}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-static {v1}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0159

    invoke-static {v1, v2}, Lcom/twidroid/d/h;->a(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-virtual {v0}, Lcom/twidroid/c/m;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/c/m$2;->a:Lcom/twidroid/d/n;

    invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/m$2;->a:Lcom/twidroid/d/n;

    invoke-virtual {v1}, Lcom/twidroid/d/n;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/m$2;->b:Lcom/twidroid/c/m;

    invoke-static {v2}, Lcom/twidroid/c/m;->c(Lcom/twidroid/c/m;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/twidroid/c/m$2$1;

    invoke-direct {v3, p0}, Lcom/twidroid/c/m$2$1;-><init>(Lcom/twidroid/c/m$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/twidroid/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twidroid/d/a/b;)V

    return-void
.end method
