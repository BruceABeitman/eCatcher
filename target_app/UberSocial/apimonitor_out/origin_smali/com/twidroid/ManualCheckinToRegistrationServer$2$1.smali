.class Lcom/twidroid/ManualCheckinToRegistrationServer$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ManualCheckinToRegistrationServer$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;


# direct methods
.method constructor <init>(Lcom/twidroid/ManualCheckinToRegistrationServer$2;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2$1;->a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$2$1;->a:Lcom/twidroid/ManualCheckinToRegistrationServer$2;

    iget-object v0, v0, Lcom/twidroid/ManualCheckinToRegistrationServer$2;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/d/v;->d(Z)V

    return-void
.end method
