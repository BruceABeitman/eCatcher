.class Lcom/twidroid/ac$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ac$2$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ac$2$1;


# direct methods
.method constructor <init>(Lcom/twidroid/ac$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ac$2$1$2;->a:Lcom/twidroid/ac$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/ac$2$1$2;->a:Lcom/twidroid/ac$2$1;

    iget-object v0, v0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/twidroid/ac$2$1$2;->a:Lcom/twidroid/ac$2$1;

    iget-object v0, v0, Lcom/twidroid/ac$2$1;->a:Lcom/twidroid/ac$2;

    iget-object v0, v0, Lcom/twidroid/ac$2;->a:Lcom/twidroid/ac;

    iget-object v0, v0, Lcom/twidroid/ac;->b:Lcom/twidroid/UberSocialProfile;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->n()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
