.class final Lcom/bbm/ui/c/gm;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/b/o;

.field final synthetic c:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/c/gm;->c:Lcom/bbm/ui/c/fu;

    iput-object p2, p0, Lcom/bbm/ui/c/gm;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/ui/c/gm;->b:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/bbm/ui/c/fu;->b()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/gm;->a:Ljava/lang/String;

    new-instance v2, Lcom/bbm/d/ch;

    invoke-direct {v2, v1}, Lcom/bbm/d/ch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gm;->b:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->cancel()V

    return-void
.end method
