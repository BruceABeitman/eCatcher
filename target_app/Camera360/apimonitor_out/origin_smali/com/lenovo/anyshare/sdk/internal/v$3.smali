.class Lcom/lenovo/anyshare/sdk/internal/v$3;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/v;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/v;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/v$3;->a:Lcom/lenovo/anyshare/sdk/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/v$3;->a:Lcom/lenovo/anyshare/sdk/internal/v;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/v;->j()V

    return-void
.end method
