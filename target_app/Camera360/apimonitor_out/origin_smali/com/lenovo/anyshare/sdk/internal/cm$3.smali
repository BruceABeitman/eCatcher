.class Lcom/lenovo/anyshare/sdk/internal/cm$3;
.super Ljava/lang/Object;
.source "QuietUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/anyshare/sdk/internal/cm;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/cm;


# direct methods
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cm;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cm$3;->a:Lcom/lenovo/anyshare/sdk/internal/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cm$3;->a:Lcom/lenovo/anyshare/sdk/internal/cm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->b(Lcom/lenovo/anyshare/sdk/internal/cm;Z)V

    return-void
.end method
