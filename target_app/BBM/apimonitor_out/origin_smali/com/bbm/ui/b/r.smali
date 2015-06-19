.class final Lcom/bbm/ui/b/r;
.super Ljava/lang/Object;
.source "ClickableToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/p;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/p;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/b/r;->a:Lcom/bbm/ui/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/b/r;->a:Lcom/bbm/ui/b/p;

    invoke-virtual {v0}, Lcom/bbm/ui/b/p;->dismiss()V

    return-void
.end method
