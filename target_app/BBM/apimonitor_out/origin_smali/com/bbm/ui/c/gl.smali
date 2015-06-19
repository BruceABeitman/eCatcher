.class final Lcom/bbm/ui/c/gl;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/b/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/gl;->b:Lcom/bbm/ui/c/fu;

    iput-object p2, p0, Lcom/bbm/ui/c/gl;->a:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/gl;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->cancel()V

    return-void
.end method
