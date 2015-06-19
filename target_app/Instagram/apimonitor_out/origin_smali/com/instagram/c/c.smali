.class final Lcom/instagram/c/c;
.super Ljava/lang/Object;
.source "Appirater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/c/a;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/c/c;->b:Lcom/instagram/c/a;

    iput-object p2, p0, Lcom/instagram/c/c;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/c/c;->b:Lcom/instagram/c/a;

    invoke-static {v0}, Lcom/instagram/c/a;->d(Lcom/instagram/c/a;)I

    iget-object v0, p0, Lcom/instagram/c/c;->b:Lcom/instagram/c/a;

    invoke-static {v0}, Lcom/instagram/c/a;->c(Lcom/instagram/c/a;)V

    iget-object v0, p0, Lcom/instagram/c/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
