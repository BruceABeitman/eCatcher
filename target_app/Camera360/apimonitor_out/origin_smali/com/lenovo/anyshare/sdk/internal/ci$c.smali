.class Lcom/lenovo/anyshare/sdk/internal/ci$c;
.super Ljava/lang/Object;
.source "WifiMaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/ci;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ci;)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ci;Lcom/lenovo/anyshare/sdk/internal/ci$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ci$c;-><init>(Lcom/lenovo/anyshare/sdk/internal/ci;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->c(Lcom/lenovo/anyshare/sdk/internal/ci;)Lcom/lenovo/anyshare/sdk/internal/ck;

    move-result-object v0

    const-string/jumbo v1, "WifiMaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/ci;->d()Lcom/lenovo/anyshare/sdk/internal/cd;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", counter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_45

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/ci;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    :cond_45
    const-string/jumbo v2, "WifiMaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanresult is not contains "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_70

    const-string/jumbo v1, "null"

    :goto_59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ci;->b(Lcom/lenovo/anyshare/sdk/internal/ci;Z)V

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->d(Lcom/lenovo/anyshare/sdk/internal/ci;)V

    :goto_6f
    return-void

    :cond_70
    iget-object v1, v0, Lcom/lenovo/anyshare/sdk/internal/ck;->a:Ljava/lang/String;

    goto :goto_59

    :cond_73
    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ck;->c()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->d(Lcom/lenovo/anyshare/sdk/internal/ci;)V

    goto :goto_6f

    :cond_7f
    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/ci;->d()Lcom/lenovo/anyshare/sdk/internal/cd;

    move-result-object v2

    if-ne v1, v2, :cond_a2

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/ci$a;->c:Lcom/lenovo/anyshare/sdk/internal/ci$a;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/ci;->e()Lcom/lenovo/anyshare/sdk/internal/ci$a;

    move-result-object v2

    if-ne v1, v2, :cond_a2

    iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->b:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_a2

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ck;->a()Z

    iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->b:I

    goto :goto_6f

    :cond_a2
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ci$c;->a:Lcom/lenovo/anyshare/sdk/internal/ci;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ci;->d(Lcom/lenovo/anyshare/sdk/internal/ci;)V

    goto :goto_6f
.end method
