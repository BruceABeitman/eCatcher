.class final Lcom/bbm/ui/c/gk;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/gk;->a:Lcom/bbm/ui/c/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Full sticker close"

    const-class v1, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gk;->a:Lcom/bbm/ui/c/fu;

    invoke-static {v0}, Lcom/bbm/ui/c/fu;->b(Lcom/bbm/ui/c/fu;)V

    return-void
.end method
