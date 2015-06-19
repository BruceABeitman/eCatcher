.class final Lcom/lenovo/lps/reaper/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/lenovo/lps/reaper/sdk/b;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/b;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/e;->a:Lcom/lenovo/lps/reaper/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e;->a:Lcom/lenovo/lps/reaper/sdk/b;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b;->b(Lcom/lenovo/lps/reaper/sdk/b;)Lcom/lenovo/lps/reaper/sdk/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/d/d;->a()V

    return-void
.end method
