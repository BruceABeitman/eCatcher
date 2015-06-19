.class final Lcom/bbm/ui/c/gj;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/gf;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/gf;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/gj;->a:Lcom/bbm/ui/c/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/c/gj;->a:Lcom/bbm/ui/c/gf;

    iget-object v0, v0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;

    sget-object v1, Lcom/bbm/ui/c/gy;->b:Lcom/bbm/ui/c/gy;

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Lcom/bbm/ui/c/gy;)V

    return-void
.end method
