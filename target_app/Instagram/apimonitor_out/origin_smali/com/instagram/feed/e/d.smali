.class final Lcom/instagram/feed/e/d;
.super Ljava/lang/Object;
.source "MegaphoneDismissDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/e/c;


# direct methods
.method constructor <init>(Lcom/instagram/feed/e/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/e/d;->a:Lcom/instagram/feed/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/e/d;->a:Lcom/instagram/feed/e/c;

    invoke-static {v0}, Lcom/instagram/feed/e/c;->a(Lcom/instagram/feed/e/c;)Landroid/app/Dialog;

    return-void
.end method
