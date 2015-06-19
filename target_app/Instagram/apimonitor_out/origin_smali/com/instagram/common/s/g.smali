.class final Lcom/instagram/common/s/g;
.super Lcom/instagram/common/s/a;
.source "ShakeSensorHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/s/f;


# direct methods
.method constructor <init>(Lcom/instagram/common/s/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/s/g;->a:Lcom/instagram/common/s/f;

    invoke-direct {p0}, Lcom/instagram/common/s/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/s/g;->a:Lcom/instagram/common/s/f;

    invoke-static {v0}, Lcom/instagram/common/s/f;->a(Lcom/instagram/common/s/f;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/instagram/common/s/g;->a:Lcom/instagram/common/s/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/common/s/f;->a(Lcom/instagram/common/s/f;Z)Z

    iget-object v0, p0, Lcom/instagram/common/s/g;->a:Lcom/instagram/common/s/f;

    invoke-virtual {v0}, Lcom/instagram/common/s/f;->a()V

    :cond_13
    return-void
.end method
