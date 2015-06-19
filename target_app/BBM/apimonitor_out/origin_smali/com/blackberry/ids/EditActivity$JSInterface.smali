.class public Lcom/blackberry/ids/EditActivity$JSInterface;
.super Ljava/lang/Object;
.source "EditActivity.java"


# instance fields
.field final synthetic a:Lcom/blackberry/ids/EditActivity;


# direct methods
.method public constructor <init>(Lcom/blackberry/ids/EditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/EditActivity$JSInterface;->a:Lcom/blackberry/ids/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pageDone()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$JSInterface;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->c(Lcom/blackberry/ids/EditActivity;)V

    return-void
.end method

.method public pageDoneErrorCheck(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "error_description="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$JSInterface;->a:Lcom/blackberry/ids/EditActivity;

    invoke-virtual {v0, p1}, Lcom/blackberry/ids/EditActivity;->b(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
