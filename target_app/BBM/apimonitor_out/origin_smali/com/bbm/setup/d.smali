.class final Lcom/bbm/setup/d;
.super Lcom/bbm/j/k;
.source "DeviceSwitchActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/DeviceSwitchActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/DeviceSwitchActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/d;->a:Lcom/bbm/setup/DeviceSwitchActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/d;->a:Lcom/bbm/setup/DeviceSwitchActivity;

    invoke-static {v0}, Lcom/bbm/setup/DeviceSwitchActivity;->a(Lcom/bbm/setup/DeviceSwitchActivity;)Lcom/bbm/setup/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;

    sget-object v1, Lcom/bbm/setup/ah;->d:Lcom/bbm/setup/ah;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/bbm/setup/d;->a:Lcom/bbm/setup/DeviceSwitchActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/DeviceSwitchActivity;->b()V

    :cond_15
    return-void
.end method
