.class Lcom/lenovo/anyshare/sdk/internal/w$2;
.super Ljava/lang/Object;
.source "ServerPipeAcceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/w;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/w;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/w;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/w$2;->a:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/w$2;->a:Lcom/lenovo/anyshare/sdk/internal/w;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/w;->f()V

    return-void
.end method
