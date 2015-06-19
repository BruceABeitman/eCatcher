.class final Lcom/bbm/ui/e/y;
.super Ljava/lang/Object;
.source "FileTransferHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/w;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/w;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/y;->a:Lcom/bbm/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/e/y;->a:Lcom/bbm/ui/e/w;

    iget-object v0, v0, Lcom/bbm/ui/e/w;->a:Lcom/bbm/ui/e/s;

    invoke-static {v0}, Lcom/bbm/ui/e/s;->h(Lcom/bbm/ui/e/s;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
