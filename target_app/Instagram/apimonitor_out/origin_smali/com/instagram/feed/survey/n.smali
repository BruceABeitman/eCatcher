.class final Lcom/instagram/feed/survey/n;
.super Landroid/os/Handler;
.source "SurveyToolHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/h;


# direct methods
.method private constructor <init>(Lcom/instagram/feed/survey/h;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/feed/survey/h;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/n;-><init>(Lcom/instagram/feed/survey/h;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->c(Lcom/instagram/feed/survey/h;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->c(Lcom/instagram/feed/survey/h;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->f(Lcom/instagram/feed/survey/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->g(Lcom/instagram/feed/survey/h;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    iget-object v1, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v1}, Lcom/instagram/feed/survey/h;->h(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/survey/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/h;->a(Lcom/instagram/feed/survey/b;)V

    goto :goto_5

    :cond_38
    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->i(Lcom/instagram/feed/survey/h;)V

    goto :goto_5

    :pswitch_3e
    iget-object v0, p0, Lcom/instagram/feed/survey/n;->a:Lcom/instagram/feed/survey/h;

    invoke-static {v0}, Lcom/instagram/feed/survey/h;->j(Lcom/instagram/feed/survey/h;)Z

    goto :goto_5

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_6
        :pswitch_18
        :pswitch_3e
    .end packed-switch
.end method
