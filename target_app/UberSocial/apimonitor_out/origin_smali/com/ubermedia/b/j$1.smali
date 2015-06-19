.class Lcom/ubermedia/b/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubermedia/b/j;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/b/j;


# direct methods
.method constructor <init>(Lcom/ubermedia/b/j;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/b/j$1;->a:Lcom/ubermedia/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/ubermedia/b/j$1;->a:Lcom/ubermedia/b/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ubermedia/b/j;->b(Z)Z

    return-void
.end method
