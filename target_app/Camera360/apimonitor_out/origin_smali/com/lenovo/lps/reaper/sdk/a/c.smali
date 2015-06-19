.class final Lcom/lenovo/lps/reaper/sdk/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/a/i;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "AddSessionInternalConfig"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/a/c;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/16 v0, 0x7530

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/a/c;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/a/c;->b:I

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/a/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/lps/reaper/sdk/a/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "AddSessionInterval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/a/c;->b:I

    return v0
.end method
