.class Lcom/twidroid/ManualCheckinToRegistrationServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ManualCheckinToRegistrationServer;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ManualCheckinToRegistrationServer;


# direct methods
.method constructor <init>(Lcom/twidroid/ManualCheckinToRegistrationServer;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$1;->a:Lcom/twidroid/ManualCheckinToRegistrationServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ManualCheckinToRegistrationServer$1;->a:Lcom/twidroid/ManualCheckinToRegistrationServer;

    invoke-virtual {v0}, Lcom/twidroid/ManualCheckinToRegistrationServer;->finish()V

    return-void
.end method
