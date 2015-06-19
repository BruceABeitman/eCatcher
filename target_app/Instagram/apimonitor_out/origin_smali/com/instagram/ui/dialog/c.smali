.class final Lcom/instagram/ui/dialog/c;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/instagram/ui/dialog/b;


# direct methods
.method constructor <init>(Lcom/instagram/ui/dialog/b;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/ui/dialog/c;->c:Lcom/instagram/ui/dialog/b;

    iput-object p2, p0, Lcom/instagram/ui/dialog/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/instagram/ui/dialog/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/ui/dialog/c;->c:Lcom/instagram/ui/dialog/b;

    invoke-static {v0}, Lcom/instagram/ui/dialog/b;->a(Lcom/instagram/ui/dialog/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/ui/dialog/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/ui/dialog/c;->c:Lcom/instagram/ui/dialog/b;

    invoke-static {v2}, Lcom/instagram/ui/dialog/b;->a(Lcom/instagram/ui/dialog/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/api/h/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/ui/dialog/c;->c:Lcom/instagram/ui/dialog/b;

    invoke-static {v2}, Lcom/instagram/ui/dialog/b;->a(Lcom/instagram/ui/dialog/b;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/instagram/ui/dialog/c;->b:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
