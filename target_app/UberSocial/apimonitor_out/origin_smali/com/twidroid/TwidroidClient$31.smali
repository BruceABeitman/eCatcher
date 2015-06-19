.class Lcom/twidroid/TwidroidClient$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->a(IILjava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$31;->b:Lcom/twidroid/TwidroidClient;

    iput-object p2, p0, Lcom/twidroid/TwidroidClient$31;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/TwidroidClient$31;->b:Lcom/twidroid/TwidroidClient;

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$31;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$31;->b:Lcom/twidroid/TwidroidClient;

    const v3, 0x7f0c010f

    invoke-virtual {v2, v3}, Lcom/twidroid/TwidroidClient;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method
