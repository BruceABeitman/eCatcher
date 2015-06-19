.class final Lcom/instagram/ui/widget/a/c;
.super Landroid/os/Handler;
.source "IgImageButton.java"


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/ui/widget/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/widget/a/c;->a:Lcom/instagram/ui/widget/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/ui/widget/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/ui/widget/a/c;-><init>(Lcom/instagram/ui/widget/a/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/ui/widget/a/c;->a:Lcom/instagram/ui/widget/a/a;

    invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->d(Lcom/instagram/ui/widget/a/a;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/instagram/ui/widget/a/c;->a:Lcom/instagram/ui/widget/a/a;

    invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->c(Lcom/instagram/ui/widget/a/a;)V

    goto :goto_a
.end method
