.class final Lcom/instagram/i/c/p;
.super Ljava/lang/Object;
.source "NewsfeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/i/c/n;


# direct methods
.method constructor <init>(Lcom/instagram/i/c/n;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;

    iget-object v0, v0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;

    sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/g;I)V

    iget-object v0, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;

    sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/i/c/n;->a(I)V

    iget-object v0, p0, Lcom/instagram/i/c/p;->a:Lcom/instagram/i/c/n;

    iget-object v0, v0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;

    invoke-static {v0}, Lcom/instagram/i/c/g;->e(Lcom/instagram/i/c/g;)V

    return-void
.end method
