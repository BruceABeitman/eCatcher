.class final Lcom/bbm/n/c;
.super Lcom/bbm/j/k;
.source "MediaCallManager.java"


# instance fields
.field final synthetic a:Lcom/bbm/n/b;


# direct methods
.method constructor <init>(Lcom/bbm/n/b;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/n/c;->a:Lcom/bbm/n/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/bbm/n/c;->a:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->d(Lcom/bbm/n/b;)Lcom/bbm/util/cv;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/cv;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/bbm/n/c;->a:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->a(Lcom/bbm/n/b;)Lcom/bbm/j/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    move v1, v2

    :goto_29
    iget-object v0, p0, Lcom/bbm/n/c;->a:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->e(Lcom/bbm/n/b;)I

    move-result v0

    if-eq v0, v2, :cond_48

    if-eq v1, v2, :cond_48

    iget-object v0, p0, Lcom/bbm/n/c;->a:Lcom/bbm/n/b;

    invoke-static {v0}, Lcom/bbm/n/b;->f(Lcom/bbm/n/b;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmMediaCallService;

    iget-object v2, p0, Lcom/bbm/n/c;->a:Lcom/bbm/n/b;

    invoke-static {v2}, Lcom/bbm/n/b;->e(Lcom/bbm/n/b;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/rim/bbm/BbmMediaCallService;->endCall(II)I

    :cond_48
    return-void

    :pswitch_49
    const/4 v0, 0x0

    move v1, v0

    goto :goto_29

    :pswitch_4c
    const/4 v0, 0x1

    move v1, v0

    goto :goto_29

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_49
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method
