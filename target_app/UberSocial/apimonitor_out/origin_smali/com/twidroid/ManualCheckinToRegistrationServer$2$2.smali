.class Lcom/twidroid/ManualCheckinToRegistrationServer$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ManualCheckinToRegistrationServer$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;


# direct methods
.method constructor <init>(Lcom/twidroid/ManualCheckinToRegistrationServer$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2$2;->a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2$2;->a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;

    iget-object v0, v0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->c:Lcom/twidroid/ManualCheckinToRegistrationServer;

    const-string v1, "Checkin complete"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2$2;->a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;

    iget-object v0, v0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->c:Lcom/twidroid/ManualCheckinToRegistrationServer;

    invoke-virtual {v0}, Lcom/twidroid/ManualCheckinToRegistrationServer;->finish()V

    return-void
.end method
