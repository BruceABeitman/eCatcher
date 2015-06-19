.class public abstract Lcom/lenovo/anyshare/sdk/internal/bp;
.super Lcom/lenovo/anyshare/sdk/internal/bo;
.source "BaseLocalContentLoader.java"


# instance fields
.field protected b:Lcom/lenovo/content/base/ContentSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/content/base/ContentSource;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bo;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/bp;->b:Lcom/lenovo/content/base/ContentSource;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "QieZi/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bd;->b(Landroid/content/Context;)Lcom/lenovo/anyshare/sdk/internal/bd$a;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/bd$a;->b:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/aq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method
