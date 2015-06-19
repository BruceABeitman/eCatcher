.class final Lcom/instagram/user/e/a/a/d;
.super Ljava/lang/Object;
.source "RequestedUserRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/user/e/a/a/e;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/instagram/user/e/a/a/e;I)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/user/e/a/a/d;->a:Lcom/instagram/user/e/a/a/e;

    iput p2, p0, Lcom/instagram/user/e/a/a/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/user/e/a/a/d;->a:Lcom/instagram/user/e/a/a/e;

    iget v1, p0, Lcom/instagram/user/e/a/a/d;->b:I

    invoke-interface {v0, v1}, Lcom/instagram/user/e/a/a/e;->f(I)V

    return-void
.end method
