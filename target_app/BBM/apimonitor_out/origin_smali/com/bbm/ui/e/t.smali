.class final Lcom/bbm/ui/e/t;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/s;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/t;->a:Lcom/bbm/ui/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/bbm/ui/e/u;

    invoke-direct {v0, p0}, Lcom/bbm/ui/e/u;-><init>(Lcom/bbm/ui/e/t;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    return-void
.end method
