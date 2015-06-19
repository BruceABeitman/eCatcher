.class final Lcom/a/a/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/a/a/az;


# direct methods
.method constructor <init>(Lcom/a/a/az;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/bc;->a:Lcom/a/a/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/a/a/bc;->a:Lcom/a/a/az;

    iget-object v0, v0, Lcom/a/a/az;->b:Lcom/a/a/e;

    invoke-static {v1}, Lcom/a/a/e;->b(Z)V

    iget-object v0, p0, Lcom/a/a/bc;->a:Lcom/a/a/az;

    iget-object v0, v0, Lcom/a/a/az;->a:Lcom/a/a/be;

    invoke-virtual {v0, v1}, Lcom/a/a/be;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
