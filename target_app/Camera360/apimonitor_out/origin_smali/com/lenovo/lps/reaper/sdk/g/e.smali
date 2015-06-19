.class final Lcom/lenovo/lps/reaper/sdk/g/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_5

    const-string/jumbo p1, ""

    :cond_5
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/g/e;->a:Ljava/lang/String;

    if-nez p2, :cond_c

    const-string/jumbo p2, ""

    :cond_c
    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/g/e;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/e;->b:Ljava/lang/String;

    return-object v0
.end method
