.class final Lcom/instagram/camera/o;
.super Landroid/os/Handler;
.source "FocusManager.java"


# instance fields
.field final synthetic a:Lcom/instagram/camera/m;


# direct methods
.method private constructor <init>(Lcom/instagram/camera/m;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/camera/o;->a:Lcom/instagram/camera/m;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/camera/m;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/camera/o;-><init>(Lcom/instagram/camera/m;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/instagram/camera/o;->a:Lcom/instagram/camera/m;

    invoke-static {v0}, Lcom/instagram/camera/m;->a(Lcom/instagram/camera/m;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
