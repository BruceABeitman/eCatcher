.class final Lcom/bbm/ui/b/h;
.super Ljava/lang/Object;
.source "BBGenericDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/g;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/b/h;->a:Lcom/bbm/ui/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/b/h;->a:Lcom/bbm/ui/b/g;

    invoke-virtual {v0}, Lcom/bbm/ui/b/g;->dismiss()V

    return-void
.end method
