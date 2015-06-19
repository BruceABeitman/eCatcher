.class final Lcom/bbm/ui/c/fz;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fz;->a:Lcom/bbm/ui/c/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Purchase Button clicked"

    const-class v1, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fz;->a:Lcom/bbm/ui/c/fu;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fu;->a()V

    return-void
.end method
