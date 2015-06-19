.class final Lcom/bbm/ui/c/gv;
.super Ljava/lang/Object;
.source "StickerDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/c/fu;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/gv;->b:Lcom/bbm/ui/c/fu;

    iput-object p2, p0, Lcom/bbm/ui/c/gv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "Artist Channel button clicked"

    const-class v1, Lcom/bbm/ui/c/fu;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/gv;->b:Lcom/bbm/ui/c/fu;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bbmi:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/c/gv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/c/fu;->a(Lcom/bbm/ui/c/fu;Ljava/lang/String;)V

    return-void
.end method
