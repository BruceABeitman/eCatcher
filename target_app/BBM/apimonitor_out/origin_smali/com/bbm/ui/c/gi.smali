.class final Lcom/bbm/ui/c/gi;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gf;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gf;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/gi;->a:Lcom/bbm/ui/c/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/gi;->a:Lcom/bbm/ui/c/gf;

    invoke-virtual {v0}, Lcom/bbm/ui/c/gf;->cancel()V

    return-void
.end method
