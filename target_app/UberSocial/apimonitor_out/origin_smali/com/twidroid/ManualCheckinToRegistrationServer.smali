.class public Lcom/twidroid/ManualCheckinToRegistrationServer;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "ManualCheckinToRegistrationServer"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/twidroid/ManualCheckinToRegistrationServer;->setContentView(I)V

    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/twidroid/ManualCheckinToRegistrationServer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/twidroid/ManualCheckinToRegistrationServer$1;

    invoke-direct {v2, p0}, Lcom/twidroid/ManualCheckinToRegistrationServer$1;-><init>(Lcom/twidroid/ManualCheckinToRegistrationServer;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/twidroid/ManualCheckinToRegistrationServer$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/twidroid/ManualCheckinToRegistrationServer$2;-><init>(Lcom/twidroid/ManualCheckinToRegistrationServer;Lcom/twidroid/UberSocialApplication;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method
